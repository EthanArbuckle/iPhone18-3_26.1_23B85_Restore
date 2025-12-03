@interface IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1
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

  threadGuid = self->_threadGuid;
  if (threadGuid)
  {
    [dictionary setObject:threadGuid forKey:@"thread_guid"];
  }

  threadPart = self->_threadPart;
  if (threadPart)
  {
    [dictionary setObject:threadPart forKey:@"thread_part"];
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

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 10) = self->_version;
    *(to + 44) |= 1u;
  }

  if (self->_msgid)
  {
    [to setMsgid:?];
  }

  if (self->_threadGuid)
  {
    [to setThreadGuid:?];
  }

  if (self->_threadPart)
  {
    [to setThreadPart:?];
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
    *(v5 + 40) = self->_version;
    *(v5 + 44) |= 1u;
  }

  *(v6 + 8) = [(NSString *)self->_msgid copyWithZone:zone];
  *(v6 + 24) = [(NSString *)self->_threadGuid copyWithZone:zone];

  *(v6 + 32) = [(NSString *)self->_threadPart copyWithZone:zone];
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
      if ((*(equal + 44) & 1) == 0 || self->_version != *(equal + 10))
      {
        goto LABEL_15;
      }
    }

    else if (*(equal + 44))
    {
LABEL_15:
      LOBYTE(v5) = 0;
      return v5;
    }

    msgid = self->_msgid;
    if (!(msgid | *(equal + 1)) || (v5 = [(NSString *)msgid isEqual:?]) != 0)
    {
      threadGuid = self->_threadGuid;
      if (!(threadGuid | *(equal + 3)) || (v5 = [(NSString *)threadGuid isEqual:?]) != 0)
      {
        threadPart = self->_threadPart;
        if (!(threadPart | *(equal + 4)) || (v5 = [(NSString *)threadPart isEqual:?]) != 0)
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

- (void)mergeFrom:(id)from
{
  if (*(from + 44))
  {
    self->_version = *(from + 10);
    *&self->_has |= 1u;
  }

  if (*(from + 1))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1 *)self setMsgid:?];
  }

  if (*(from + 3))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1 *)self setThreadGuid:?];
  }

  if (*(from + 4))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1 *)self setThreadPart:?];
  }

  if (*(from + 2))
  {

    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageUpdateT1 *)self setPadding:?];
  }
}

@end