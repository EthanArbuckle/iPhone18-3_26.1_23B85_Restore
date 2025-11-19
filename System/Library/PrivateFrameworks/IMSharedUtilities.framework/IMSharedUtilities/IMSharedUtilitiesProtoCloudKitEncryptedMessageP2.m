@interface IMSharedUtilitiesProtoCloudKitEncryptedMessageP2
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

@implementation IMSharedUtilitiesProtoCloudKitEncryptedMessageP2

- (void)dealloc
{
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP2 *)self setThreadIdentifier:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP2 *)self setPadding:0];
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedMessageP2;
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP2 *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedMessageP2;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[IMSharedUtilitiesProtoCloudKitEncryptedMessageP2 description](&v3, sel_description), -[IMSharedUtilitiesProtoCloudKitEncryptedMessageP2 dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_version), @"version"}];
  }

  threadIdentifier = self->_threadIdentifier;
  if (threadIdentifier)
  {
    [v3 setObject:threadIdentifier forKey:@"thread_identifier"];
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

  if (self->_threadIdentifier)
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
    *(a3 + 6) = self->_version;
    *(a3 + 28) |= 1u;
  }

  if (self->_threadIdentifier)
  {
    [a3 setThreadIdentifier:?];
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
    *(v5 + 24) = self->_version;
    *(v5 + 28) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_threadIdentifier copyWithZone:a3];
  *(v6 + 8) = [(NSData *)self->_padding copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 28) & 1) == 0 || self->_version != *(a3 + 6))
      {
        goto LABEL_11;
      }
    }

    else if (*(a3 + 28))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    threadIdentifier = self->_threadIdentifier;
    if (!(threadIdentifier | *(a3 + 2)) || (v5 = [(NSString *)threadIdentifier isEqual:?]) != 0)
    {
      padding = self->_padding;
      if (padding | *(a3 + 1))
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
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_threadIdentifier hash]^ v3;
  return v4 ^ [(NSData *)self->_padding hash];
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 28))
  {
    self->_version = *(a3 + 6);
    *&self->_has |= 1u;
  }

  if (*(a3 + 2))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP2 *)self setThreadIdentifier:?];
  }

  if (*(a3 + 1))
  {

    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP2 *)self setPadding:?];
  }
}

@end