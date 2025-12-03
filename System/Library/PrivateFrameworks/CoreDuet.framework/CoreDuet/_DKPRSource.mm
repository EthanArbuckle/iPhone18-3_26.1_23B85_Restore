@interface _DKPRSource
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)bundleID;
- (uint64_t)deviceID;
- (uint64_t)groupID;
- (uint64_t)itemID;
- (uint64_t)setUserID:(uint64_t)result;
- (uint64_t)sourceID;
- (uint64_t)userID;
- (unint64_t)hash;
- (void)setBundleID:(uint64_t)d;
- (void)setDeviceID:(uint64_t)d;
- (void)setGroupID:(uint64_t)d;
- (void)setItemID:(uint64_t)d;
- (void)setSourceID:(uint64_t)d;
- (void)writeTo:(id)to;
@end

@implementation _DKPRSource

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _DKPRSource;
  v4 = [(_DKPRSource *)&v8 description];
  dictionaryRepresentation = [(_DKPRSource *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  sourceID = self->_sourceID;
  if (sourceID)
  {
    [dictionary setObject:sourceID forKey:@"sourceID"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v4 setObject:bundleID forKey:@"bundleID"];
  }

  itemID = self->_itemID;
  if (itemID)
  {
    [v4 setObject:itemID forKey:@"itemID"];
  }

  groupID = self->_groupID;
  if (groupID)
  {
    [v4 setObject:groupID forKey:@"groupID"];
  }

  deviceID = self->_deviceID;
  if (deviceID)
  {
    [v4 setObject:deviceID forKey:@"deviceID"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:self->_userID];
    [v4 setObject:v10 forKey:@"userID"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_sourceID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_itemID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_groupID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_deviceID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    userID = self->_userID;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sourceID copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_bundleID copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  v10 = [(NSString *)self->_itemID copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_groupID copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  v14 = [(NSString *)self->_deviceID copyWithZone:zone];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_userID;
    *(v5 + 52) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  sourceID = self->_sourceID;
  if (sourceID | *(equalCopy + 5))
  {
    if (![(NSString *)sourceID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  bundleID = self->_bundleID;
  if (bundleID | *(equalCopy + 1))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  itemID = self->_itemID;
  if (itemID | *(equalCopy + 4))
  {
    if (![(NSString *)itemID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  groupID = self->_groupID;
  if (groupID | *(equalCopy + 3))
  {
    if (![(NSString *)groupID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  deviceID = self->_deviceID;
  if (deviceID | *(equalCopy + 2))
  {
    if (![(NSString *)deviceID isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v10 = (*(equalCopy + 52) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) != 0 && self->_userID == *(equalCopy + 12))
    {
      v10 = 1;
      goto LABEL_17;
    }

LABEL_16:
    v10 = 0;
  }

LABEL_17:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sourceID hash];
  v4 = [(NSString *)self->_bundleID hash];
  v5 = [(NSString *)self->_itemID hash];
  v6 = [(NSString *)self->_groupID hash];
  v7 = [(NSString *)self->_deviceID hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_userID;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (uint64_t)setUserID:(uint64_t)result
{
  if (result)
  {
    *(result + 52) |= 1u;
    *(result + 48) = a2;
  }

  return result;
}

- (void)setSourceID:(uint64_t)d
{
  if (d)
  {
    OUTLINED_FUNCTION_0_8(d, a2, 40);
  }
}

- (void)setBundleID:(uint64_t)d
{
  if (d)
  {
    OUTLINED_FUNCTION_0_8(d, a2, 8);
  }
}

- (void)setItemID:(uint64_t)d
{
  if (d)
  {
    OUTLINED_FUNCTION_0_8(d, a2, 32);
  }
}

- (void)setGroupID:(uint64_t)d
{
  if (d)
  {
    OUTLINED_FUNCTION_0_8(d, a2, 24);
  }
}

- (void)setDeviceID:(uint64_t)d
{
  if (d)
  {
    OUTLINED_FUNCTION_0_8(d, a2, 16);
  }
}

- (uint64_t)sourceID
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)bundleID
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

- (uint64_t)itemID
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)groupID
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (uint64_t)deviceID
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

- (uint64_t)userID
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

@end