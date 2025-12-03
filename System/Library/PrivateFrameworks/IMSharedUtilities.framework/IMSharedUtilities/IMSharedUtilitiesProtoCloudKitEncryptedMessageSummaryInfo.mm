@interface IMSharedUtilitiesProtoCloudKitEncryptedMessageSummaryInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  messageSummaryInfo = self->_messageSummaryInfo;
  if (messageSummaryInfo)
  {
    [dictionary setObject:messageSummaryInfo forKey:@"message_summary_info"];
  }

  padding = self->_padding;
  if (padding)
  {
    [v4 setObject:padding forKey:@"padding"];
  }

  return v4;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if (self->_messageSummaryInfo)
  {
    [to setMessageSummaryInfo:?];
  }

  if (self->_padding)
  {

    [to setPadding:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  v5[1] = [(NSData *)self->_messageSummaryInfo copyWithZone:zone];
  v5[2] = [(NSData *)self->_padding copyWithZone:zone];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    messageSummaryInfo = self->_messageSummaryInfo;
    if (!(messageSummaryInfo | *(equal + 1)) || (v5 = [(NSData *)messageSummaryInfo isEqual:?]) != 0)
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

  return v5;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageSummaryInfo *)self setMessageSummaryInfo:?];
  }

  if (*(from + 2))
  {

    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageSummaryInfo *)self setPadding:?];
  }
}

@end