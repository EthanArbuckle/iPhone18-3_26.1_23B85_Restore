@interface IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1
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

@implementation IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1

- (void)dealloc
{
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1 *)self setMsgid:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1 *)self setThreadGuid:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1 *)self setThreadPart:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1 *)self setPadding:0];
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1;
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1 *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1 description](&v3, sel_description), -[IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1 dictionaryRepresentation](self, "dictionaryRepresentation")];
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

  threadGuid = self->_threadGuid;
  if (threadGuid)
  {
    [v3 setObject:threadGuid forKey:@"thread_guid"];
  }

  threadPart = self->_threadPart;
  if (threadPart)
  {
    [v3 setObject:threadPart forKey:@"thread_part"];
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

  if (self->_threadGuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_threadPart)
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
    *(a3 + 10) = self->_version;
    *(a3 + 44) |= 1u;
  }

  if (self->_msgid)
  {
    [a3 setMsgid:?];
  }

  if (self->_threadGuid)
  {
    [a3 setThreadGuid:?];
  }

  if (self->_threadPart)
  {
    [a3 setThreadPart:?];
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
    *(v5 + 40) = self->_version;
    *(v5 + 44) |= 1u;
  }

  *(v6 + 8) = [(NSString *)self->_msgid copyWithZone:a3];
  *(v6 + 24) = [(NSString *)self->_threadGuid copyWithZone:a3];

  *(v6 + 32) = [(NSString *)self->_threadPart copyWithZone:a3];
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
      if ((*(a3 + 44) & 1) == 0 || self->_version != *(a3 + 10))
      {
        goto LABEL_15;
      }
    }

    else if (*(a3 + 44))
    {
LABEL_15:
      LOBYTE(v5) = 0;
      return v5;
    }

    msgid = self->_msgid;
    if (!(msgid | *(a3 + 1)) || (v5 = [(NSString *)msgid isEqual:?]) != 0)
    {
      threadGuid = self->_threadGuid;
      if (!(threadGuid | *(a3 + 3)) || (v5 = [(NSString *)threadGuid isEqual:?]) != 0)
      {
        threadPart = self->_threadPart;
        if (!(threadPart | *(a3 + 4)) || (v5 = [(NSString *)threadPart isEqual:?]) != 0)
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
  v5 = [(NSString *)self->_threadGuid hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_threadPart hash];
  return v6 ^ [(NSData *)self->_padding hash];
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 44))
  {
    self->_version = *(a3 + 10);
    *&self->_has |= 1u;
  }

  if (*(a3 + 1))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1 *)self setMsgid:?];
  }

  if (*(a3 + 3))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1 *)self setThreadGuid:?];
  }

  if (*(a3 + 4))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1 *)self setThreadPart:?];
  }

  if (*(a3 + 2))
  {

    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1 *)self setPadding:?];
  }
}

@end