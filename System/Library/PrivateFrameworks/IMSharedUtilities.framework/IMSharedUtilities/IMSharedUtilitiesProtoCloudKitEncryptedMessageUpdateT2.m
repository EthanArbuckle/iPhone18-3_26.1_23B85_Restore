@interface IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT2
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

@implementation IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT2

- (void)dealloc
{
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT2 *)self setMsgid:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT2 *)self setSr:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT2 *)self setPadding:0];
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT2;
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT2 *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT2;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT2 description](&v3, sel_description), -[IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT2 dictionaryRepresentation](self, "dictionaryRepresentation")];
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

  sr = self->_sr;
  if (sr)
  {
    [v3 setObject:sr forKey:@"sr"];
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

  if (self->_sr)
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

  if (self->_sr)
  {
    [a3 setSr:?];
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

  *(v6 + 8) = [(NSString *)self->_msgid copyWithZone:a3];
  *(v6 + 24) = [(NSString *)self->_sr copyWithZone:a3];

  *(v6 + 16) = [(NSData *)self->_padding copyWithZone:a3];
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
    if (!(msgid | *(a3 + 1)) || (v5 = [(NSString *)msgid isEqual:?]) != 0)
    {
      sr = self->_sr;
      if (!(sr | *(a3 + 3)) || (v5 = [(NSString *)sr isEqual:?]) != 0)
      {
        padding = self->_padding;
        if (padding | *(a3 + 2))
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
  v5 = [(NSString *)self->_sr hash];
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
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT2 *)self setMsgid:?];
  }

  if (*(a3 + 3))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT2 *)self setSr:?];
  }

  if (*(a3 + 2))
  {

    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT2 *)self setPadding:?];
  }
}

@end