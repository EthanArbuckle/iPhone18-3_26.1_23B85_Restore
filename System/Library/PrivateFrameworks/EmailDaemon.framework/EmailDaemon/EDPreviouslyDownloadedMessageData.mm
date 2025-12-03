@interface EDPreviouslyDownloadedMessageData
- (EDPreviouslyDownloadedMessageData)initWithHeadersOnlyData:(id)data partialMessageData:(id)messageData hasFullMessageData:(BOOL)fullMessageData hasPartialMessageData:(BOOL)partialMessageData mimeParts:(id)parts;
@end

@implementation EDPreviouslyDownloadedMessageData

- (EDPreviouslyDownloadedMessageData)initWithHeadersOnlyData:(id)data partialMessageData:(id)messageData hasFullMessageData:(BOOL)fullMessageData hasPartialMessageData:(BOOL)partialMessageData mimeParts:(id)parts
{
  dataCopy = data;
  messageDataCopy = messageData;
  partsCopy = parts;
  v22.receiver = self;
  v22.super_class = EDPreviouslyDownloadedMessageData;
  v16 = [(EDPreviouslyDownloadedMessageData *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_headersOnlyData, data);
    objc_storeStrong(&v17->_partialMessageData, messageData);
    v17->_hasFullMessageData = fullMessageData;
    v17->_hasPartialMessageData = partialMessageData;
    v18 = [partsCopy copy];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v17->_mimeParts, v20);
  }

  return v17;
}

@end