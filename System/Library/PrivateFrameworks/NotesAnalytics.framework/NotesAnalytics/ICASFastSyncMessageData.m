@interface ICASFastSyncMessageData
- (ICASFastSyncMessageData)initWithCountOfMessagesSent:(id)a3 countOfMessagesReceived:(id)a4 avgMessageSizeInBytes:(id)a5 maxMessageSizeInBytes:(id)a6;
- (id)toDict;
@end

@implementation ICASFastSyncMessageData

- (ICASFastSyncMessageData)initWithCountOfMessagesSent:(id)a3 countOfMessagesReceived:(id)a4 avgMessageSizeInBytes:(id)a5 maxMessageSizeInBytes:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ICASFastSyncMessageData;
  v15 = [(ICASFastSyncMessageData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_countOfMessagesSent, a3);
    objc_storeStrong(&v16->_countOfMessagesReceived, a4);
    objc_storeStrong(&v16->_avgMessageSizeInBytes, a5);
    objc_storeStrong(&v16->_maxMessageSizeInBytes, a6);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"countOfMessagesSent";
  v3 = [(ICASFastSyncMessageData *)self countOfMessagesSent];
  if (v3)
  {
    v4 = [(ICASFastSyncMessageData *)self countOfMessagesSent];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v19[0] = v4;
  v18[1] = @"countOfMessagesReceived";
  v6 = [(ICASFastSyncMessageData *)self countOfMessagesReceived];
  if (v6)
  {
    v7 = [(ICASFastSyncMessageData *)self countOfMessagesReceived];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v19[1] = v7;
  v18[2] = @"avgMessageSizeInBytes";
  v9 = [(ICASFastSyncMessageData *)self avgMessageSizeInBytes];
  if (v9)
  {
    v10 = [(ICASFastSyncMessageData *)self avgMessageSizeInBytes];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v19[2] = v10;
  v18[3] = @"maxMessageSizeInBytes";
  v12 = [(ICASFastSyncMessageData *)self maxMessageSizeInBytes];
  if (v12)
  {
    v13 = [(ICASFastSyncMessageData *)self maxMessageSizeInBytes];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v19[3] = v13;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end