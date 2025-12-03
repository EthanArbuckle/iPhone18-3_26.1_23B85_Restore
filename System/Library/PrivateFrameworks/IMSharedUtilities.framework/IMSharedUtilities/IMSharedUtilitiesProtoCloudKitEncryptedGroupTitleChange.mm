@interface IMSharedUtilitiesProtoCloudKitEncryptedGroupTitleChange
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IMSharedUtilitiesProtoCloudKitEncryptedGroupTitleChange

- (void)dealloc
{
  [(IMSharedUtilitiesProtoCloudKitEncryptedGroupTitleChange *)self setGroupTitle:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedGroupTitleChange *)self setOtherHandle:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedGroupTitleChange *)self setPadding:0];
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedGroupTitleChange;
  [(IMSharedUtilitiesProtoCloudKitEncryptedGroupTitleChange *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedGroupTitleChange;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[IMSharedUtilitiesProtoCloudKitEncryptedGroupTitleChange description](&v3, sel_description), -[IMSharedUtilitiesProtoCloudKitEncryptedGroupTitleChange dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_version), @"version"}];
  }

  groupTitle = self->_groupTitle;
  if (groupTitle)
  {
    [dictionary setObject:groupTitle forKey:@"group_title"];
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
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_groupTitle)
  {
    PBDataWriterWriteStringField();
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
  if (*&self->_has)
  {
    *(to + 8) = self->_version;
    *(to + 36) |= 1u;
  }

  if (self->_groupTitle)
  {
    [to setGroupTitle:?];
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
  if (*&self->_has)
  {
    *(v5 + 32) = self->_version;
    *(v5 + 36) |= 1u;
  }

  *(v6 + 8) = [(NSString *)self->_groupTitle copyWithZone:zone];
  *(v6 + 16) = [(NSString *)self->_otherHandle copyWithZone:zone];

  *(v6 + 24) = [(NSData *)self->_padding copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 36) & 1) == 0 || self->_version != *(equal + 8))
      {
        goto LABEL_13;
      }
    }

    else if (*(equal + 36))
    {
LABEL_13:
      LOBYTE(v5) = 0;
      return v5;
    }

    groupTitle = self->_groupTitle;
    if (!(groupTitle | *(equal + 1)) || (v5 = [(NSString *)groupTitle isEqual:?]) != 0)
    {
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
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_groupTitle hash]^ v3;
  v5 = [(NSString *)self->_otherHandle hash];
  return v4 ^ v5 ^ [(NSData *)self->_padding hash];
}

- (void)mergeFrom:(id)from
{
  if (*(from + 36))
  {
    self->_version = *(from + 8);
    *&self->_has |= 1u;
  }

  if (*(from + 1))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedGroupTitleChange *)self setGroupTitle:?];
  }

  if (*(from + 2))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedGroupTitleChange *)self setOtherHandle:?];
  }

  if (*(from + 3))
  {

    [(IMSharedUtilitiesProtoCloudKitEncryptedGroupTitleChange *)self setPadding:?];
  }
}

@end