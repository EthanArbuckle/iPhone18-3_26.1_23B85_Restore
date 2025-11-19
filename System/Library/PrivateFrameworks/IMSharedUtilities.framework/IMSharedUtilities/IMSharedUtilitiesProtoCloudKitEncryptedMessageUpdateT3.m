@interface IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT3
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

@implementation IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT3

- (void)dealloc
{
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT3 *)self setMsgid:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT3 *)self setChatid:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT3 *)self setPadding:0];
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT3;
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT3 *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT3;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT3 description](&v3, sel_description), -[IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT3 dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_version), @"version"}];
  }

  msgid = self->_msgid;
  if (msgid)
  {
    [v3 setObject:msgid forKey:@"msgid"];
  }

  chatid = self->_chatid;
  if (chatid)
  {
    [v3 setObject:chatid forKey:@"chatid"];
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

  if (self->_msgid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_chatid)
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

  if (self->_msgid)
  {
    [a3 setMsgid:?];
  }

  if (self->_chatid)
  {
    [a3 setChatid:?];
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

  *(v6 + 16) = [(NSString *)self->_msgid copyWithZone:a3];
  *(v6 + 8) = [(NSString *)self->_chatid copyWithZone:a3];

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

    msgid = self->_msgid;
    if (!(msgid | *(a3 + 2)) || (v5 = [(NSString *)msgid isEqual:?]) != 0)
    {
      chatid = self->_chatid;
      if (!(chatid | *(a3 + 1)) || (v5 = [(NSString *)chatid isEqual:?]) != 0)
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

  v4 = [(NSString *)self->_msgid hash]^ v3;
  v5 = [(NSString *)self->_chatid hash];
  return v4 ^ v5 ^ [(NSData *)self->_padding hash];
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 36))
  {
    self->_version = *(a3 + 8);
    *&self->_has |= 1u;
  }

  if (*(a3 + 2))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT3 *)self setMsgid:?];
  }

  if (*(a3 + 1))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT3 *)self setChatid:?];
  }

  if (*(a3 + 3))
  {

    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT3 *)self setPadding:?];
  }
}

@end