@interface ICASFastSyncMessageData
- (ICASFastSyncMessageData)initWithCountOfMessagesSent:(id)sent countOfMessagesReceived:(id)received avgMessageSizeInBytes:(id)bytes maxMessageSizeInBytes:(id)inBytes;
- (id)toDict;
@end

@implementation ICASFastSyncMessageData

- (ICASFastSyncMessageData)initWithCountOfMessagesSent:(id)sent countOfMessagesReceived:(id)received avgMessageSizeInBytes:(id)bytes maxMessageSizeInBytes:(id)inBytes
{
  sentCopy = sent;
  receivedCopy = received;
  bytesCopy = bytes;
  inBytesCopy = inBytes;
  v18.receiver = self;
  v18.super_class = ICASFastSyncMessageData;
  v15 = [(ICASFastSyncMessageData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_countOfMessagesSent, sent);
    objc_storeStrong(&v16->_countOfMessagesReceived, received);
    objc_storeStrong(&v16->_avgMessageSizeInBytes, bytes);
    objc_storeStrong(&v16->_maxMessageSizeInBytes, inBytes);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"countOfMessagesSent";
  countOfMessagesSent = [(ICASFastSyncMessageData *)self countOfMessagesSent];
  if (countOfMessagesSent)
  {
    countOfMessagesSent2 = [(ICASFastSyncMessageData *)self countOfMessagesSent];
  }

  else
  {
    countOfMessagesSent2 = objc_opt_new();
  }

  v5 = countOfMessagesSent2;
  v19[0] = countOfMessagesSent2;
  v18[1] = @"countOfMessagesReceived";
  countOfMessagesReceived = [(ICASFastSyncMessageData *)self countOfMessagesReceived];
  if (countOfMessagesReceived)
  {
    countOfMessagesReceived2 = [(ICASFastSyncMessageData *)self countOfMessagesReceived];
  }

  else
  {
    countOfMessagesReceived2 = objc_opt_new();
  }

  v8 = countOfMessagesReceived2;
  v19[1] = countOfMessagesReceived2;
  v18[2] = @"avgMessageSizeInBytes";
  avgMessageSizeInBytes = [(ICASFastSyncMessageData *)self avgMessageSizeInBytes];
  if (avgMessageSizeInBytes)
  {
    avgMessageSizeInBytes2 = [(ICASFastSyncMessageData *)self avgMessageSizeInBytes];
  }

  else
  {
    avgMessageSizeInBytes2 = objc_opt_new();
  }

  v11 = avgMessageSizeInBytes2;
  v19[2] = avgMessageSizeInBytes2;
  v18[3] = @"maxMessageSizeInBytes";
  maxMessageSizeInBytes = [(ICASFastSyncMessageData *)self maxMessageSizeInBytes];
  if (maxMessageSizeInBytes)
  {
    maxMessageSizeInBytes2 = [(ICASFastSyncMessageData *)self maxMessageSizeInBytes];
  }

  else
  {
    maxMessageSizeInBytes2 = objc_opt_new();
  }

  v14 = maxMessageSizeInBytes2;
  v19[3] = maxMessageSizeInBytes2;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end