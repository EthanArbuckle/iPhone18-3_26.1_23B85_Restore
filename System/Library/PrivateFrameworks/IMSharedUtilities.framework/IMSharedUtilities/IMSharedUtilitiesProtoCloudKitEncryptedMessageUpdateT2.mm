@interface IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT2
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_version), @"version"}];
  }

  msgid = self->_msgid;
  if (msgid)
  {
    [dictionary setObject:msgid forKey:@"msgid"];
  }

  sr = self->_sr;
  if (sr)
  {
    [dictionary setObject:sr forKey:@"sr"];
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

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 8) = self->_version;
    *(to + 36) |= 1u;
  }

  if (self->_msgid)
  {
    [to setMsgid:?];
  }

  if (self->_sr)
  {
    [to setSr:?];
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

  *(v6 + 8) = [(NSString *)self->_msgid copyWithZone:zone];
  *(v6 + 24) = [(NSString *)self->_sr copyWithZone:zone];

  *(v6 + 16) = [(NSData *)self->_padding copyWithZone:zone];
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

    msgid = self->_msgid;
    if (!(msgid | *(equal + 1)) || (v5 = [(NSString *)msgid isEqual:?]) != 0)
    {
      sr = self->_sr;
      if (!(sr | *(equal + 3)) || (v5 = [(NSString *)sr isEqual:?]) != 0)
      {
        padding = self->_padding;
        if (padding | *(equal + 2))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 36))
  {
    self->_version = *(from + 8);
    *&self->_has |= 1u;
  }

  if (*(from + 1))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT2 *)self setMsgid:?];
  }

  if (*(from + 3))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT2 *)self setSr:?];
  }

  if (*(from + 2))
  {

    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT2 *)self setPadding:?];
  }
}

@end