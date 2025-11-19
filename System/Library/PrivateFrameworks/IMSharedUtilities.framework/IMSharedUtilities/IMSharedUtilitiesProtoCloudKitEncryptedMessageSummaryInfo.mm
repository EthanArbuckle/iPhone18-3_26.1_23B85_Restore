@interface IMSharedUtilitiesProtoCloudKitEncryptedMessageSummaryInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IMSharedUtilitiesProtoCloudKitEncryptedMessageSummaryInfo

- (void)dealloc
{
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageSummaryInfo *)self setMessageSummaryInfo:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageSummaryInfo *)self setPadding:0];
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedMessageSummaryInfo;
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageSummaryInfo *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedMessageSummaryInfo;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[IMSharedUtilitiesProtoCloudKitEncryptedMessageSummaryInfo description](&v3, sel_description), -[IMSharedUtilitiesProtoCloudKitEncryptedMessageSummaryInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  messageSummaryInfo = self->_messageSummaryInfo;
  if (messageSummaryInfo)
  {
    [v3 setObject:messageSummaryInfo forKey:@"message_summary_info"];
  }

  padding = self->_padding;
  if (padding)
  {
    [v4 setObject:padding forKey:@"padding"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_messageSummaryInfo)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_padding)
  {

    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  if (self->_messageSummaryInfo)
  {
    [a3 setMessageSummaryInfo:?];
  }

  if (self->_padding)
  {

    [a3 setPadding:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];

  v5[1] = [(NSData *)self->_messageSummaryInfo copyWithZone:a3];
  v5[2] = [(NSData *)self->_padding copyWithZone:a3];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    messageSummaryInfo = self->_messageSummaryInfo;
    if (!(messageSummaryInfo | *(a3 + 1)) || (v5 = [(NSData *)messageSummaryInfo isEqual:?]) != 0)
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

  return v5;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageSummaryInfo *)self setMessageSummaryInfo:?];
  }

  if (*(a3 + 2))
  {

    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageSummaryInfo *)self setPadding:?];
  }
}

@end