@interface IMSharedUtilitiesProtoCloudKitEncryptedGroupAction
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation IMSharedUtilitiesProtoCloudKitEncryptedGroupAction

- (void)dealloc
{
  [(IMSharedUtilitiesProtoCloudKitEncryptedGroupAction *)self setOtherHandle:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedGroupAction *)self setPadding:0];
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedGroupAction;
  [(IMSharedUtilitiesProtoCloudKitEncryptedGroupAction *)&v3 dealloc];
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedGroupAction;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[IMSharedUtilitiesProtoCloudKitEncryptedGroupAction description](&v3, sel_description), -[IMSharedUtilitiesProtoCloudKitEncryptedGroupAction dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_version), @"version"}];
    has = self->_has;
  }

  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLongLong:", self->_groupActionType), @"group_action_type"}];
  }

  otherHandle = self->_otherHandle;
  if (otherHandle)
  {
    [dictionary setObject:otherHandle forKey:@"other_handle"];
  }

  padding = self->_padding;
  if (padding)
  {
    [dictionary setObject:padding forKey:@"padding"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_otherHandle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_padding)
  {

    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 8) = self->_version;
    *(to + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(to + 1) = self->_groupActionType;
    *(to + 36) |= 1u;
  }

  if (self->_otherHandle)
  {
    [to setOtherHandle:?];
  }

  if (self->_padding)
  {

    [to setPadding:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_version;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_groupActionType;
    *(v5 + 36) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_otherHandle copyWithZone:zone];
  *(v6 + 24) = [(NSData *)self->_padding copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 36) & 2) == 0 || self->_version != *(equal + 8))
      {
        goto LABEL_16;
      }
    }

    else if ((*(equal + 36) & 2) != 0)
    {
LABEL_16:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(equal + 36) & 1) == 0 || self->_groupActionType != *(equal + 1))
      {
        goto LABEL_16;
      }
    }

    else if (*(equal + 36))
    {
      goto LABEL_16;
    }

    otherHandle = self->_otherHandle;
    if (!(otherHandle | *(equal + 2)) || (v5 = [(NSString *)otherHandle isEqual:?]) != 0)
    {
      padding = self->_padding;
      if (padding | *(equal + 3))
      {

        LOBYTE(v5) = [(NSData *)padding isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_version;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_groupActionType;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSString *)self->_otherHandle hash];
  return v5 ^ [(NSData *)self->_padding hash];
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 36);
  if ((v5 & 2) != 0)
  {
    self->_version = *(from + 8);
    *&self->_has |= 2u;
    v5 = *(from + 36);
  }

  if (v5)
  {
    self->_groupActionType = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 2))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedGroupAction *)self setOtherHandle:?];
  }

  if (*(from + 3))
  {

    [(IMSharedUtilitiesProtoCloudKitEncryptedGroupAction *)self setPadding:?];
  }
}

@end