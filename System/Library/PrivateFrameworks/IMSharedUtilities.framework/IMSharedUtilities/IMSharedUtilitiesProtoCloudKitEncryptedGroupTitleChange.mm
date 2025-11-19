@interface IMSharedUtilitiesProtoCloudKitEncryptedGroupTitleChange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_version), @"version"}];
  }

  groupTitle = self->_groupTitle;
  if (groupTitle)
  {
    [v3 setObject:groupTitle forKey:@"group_title"];
  }

  otherHandle = self->_otherHandle;
  if (otherHandle)
  {
    [v3 setObject:otherHandle forKey:@"other_handle"];
  }

  padding = self->_padding;
  if (padding)
  {
    [v3 setObject:padding forKey:@"padding"];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 8) = self->_version;
    *(a3 + 36) |= 1u;
  }

  if (self->_groupTitle)
  {
    [a3 setGroupTitle:?];
  }

  if (self->_otherHandle)
  {
    [a3 setOtherHandle:?];
  }

  if (self->_padding)
  {

    [a3 setPadding:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_version;
    *(v5 + 36) |= 1u;
  }

  *(v6 + 8) = [(NSString *)self->_groupTitle copyWithZone:a3];
  *(v6 + 16) = [(NSString *)self->_otherHandle copyWithZone:a3];

  *(v6 + 24) = [(NSData *)self->_padding copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 36) & 1) == 0 || self->_version != *(a3 + 8))
      {
        goto LABEL_13;
      }
    }

    else if (*(a3 + 36))
    {
LABEL_13:
      LOBYTE(v5) = 0;
      return v5;
    }

    groupTitle = self->_groupTitle;
    if (!(groupTitle | *(a3 + 1)) || (v5 = [(NSString *)groupTitle isEqual:?]) != 0)
    {
      otherHandle = self->_otherHandle;
      if (!(otherHandle | *(a3 + 2)) || (v5 = [(NSString *)otherHandle isEqual:?]) != 0)
      {
        padding = self->_padding;
        if (padding | *(a3 + 3))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 36))
  {
    self->_version = *(a3 + 8);
    *&self->_has |= 1u;
  }

  if (*(a3 + 1))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedGroupTitleChange *)self setGroupTitle:?];
  }

  if (*(a3 + 2))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedGroupTitleChange *)self setOtherHandle:?];
  }

  if (*(a3 + 3))
  {

    [(IMSharedUtilitiesProtoCloudKitEncryptedGroupTitleChange *)self setPadding:?];
  }
}

@end