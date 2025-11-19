@interface IMSharedUtilitiesProtoCloudKitEncryptedMessageAction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IMSharedUtilitiesProtoCloudKitEncryptedMessageAction

- (void)dealloc
{
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageAction *)self setOtherHandle:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageAction *)self setOriginalMessageGuid:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageAction *)self setPadding:0];
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedMessageAction;
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageAction *)&v3 dealloc];
}

- (void)setHasVersion:(BOOL)a3
{
  if (a3)
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
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedMessageAction;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[IMSharedUtilitiesProtoCloudKitEncryptedMessageAction description](&v3, sel_description), -[IMSharedUtilitiesProtoCloudKitEncryptedMessageAction dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_version), @"version"}];
    has = self->_has;
  }

  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLongLong:", self->_messageActionType), @"message_action_type"}];
  }

  otherHandle = self->_otherHandle;
  if (otherHandle)
  {
    [v3 setObject:otherHandle forKey:@"other_handle"];
  }

  originalMessageGuid = self->_originalMessageGuid;
  if (originalMessageGuid)
  {
    [v3 setObject:originalMessageGuid forKey:@"original_message_guid"];
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

  if (self->_originalMessageGuid)
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 10) = self->_version;
    *(a3 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(a3 + 1) = self->_messageActionType;
    *(a3 + 44) |= 1u;
  }

  if (self->_otherHandle)
  {
    [a3 setOtherHandle:?];
  }

  if (self->_originalMessageGuid)
  {
    [a3 setOriginalMessageGuid:?];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_version;
    *(v5 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_messageActionType;
    *(v5 + 44) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_otherHandle copyWithZone:a3];
  *(v6 + 16) = [(NSString *)self->_originalMessageGuid copyWithZone:a3];

  *(v6 + 32) = [(NSData *)self->_padding copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 44) & 2) == 0 || self->_version != *(a3 + 10))
      {
        goto LABEL_18;
      }
    }

    else if ((*(a3 + 44) & 2) != 0)
    {
LABEL_18:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 44) & 1) == 0 || self->_messageActionType != *(a3 + 1))
      {
        goto LABEL_18;
      }
    }

    else if (*(a3 + 44))
    {
      goto LABEL_18;
    }

    otherHandle = self->_otherHandle;
    if (!(otherHandle | *(a3 + 3)) || (v5 = [(NSString *)otherHandle isEqual:?]) != 0)
    {
      originalMessageGuid = self->_originalMessageGuid;
      if (!(originalMessageGuid | *(a3 + 2)) || (v5 = [(NSString *)originalMessageGuid isEqual:?]) != 0)
      {
        padding = self->_padding;
        if (padding | *(a3 + 4))
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
  v4 = 2654435761 * self->_messageActionType;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSString *)self->_otherHandle hash];
  v6 = [(NSString *)self->_originalMessageGuid hash];
  return v5 ^ v6 ^ [(NSData *)self->_padding hash];
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 44);
  if ((v5 & 2) != 0)
  {
    self->_version = *(a3 + 10);
    *&self->_has |= 2u;
    v5 = *(a3 + 44);
  }

  if (v5)
  {
    self->_messageActionType = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 3))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageAction *)self setOtherHandle:?];
  }

  if (*(a3 + 2))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageAction *)self setOriginalMessageGuid:?];
  }

  if (*(a3 + 4))
  {

    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageAction *)self setPadding:?];
  }
}

@end