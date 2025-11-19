@interface IMMessagesToTrack
+ (id)sharedInstance;
- (IMMessagesToTrack)init;
- (unint64_t)currentNumberOfMessages;
- (void)addMessagesID:(id)a3;
- (void)containsMessageID:(id)a3 completion:(id)a4;
@end

@implementation IMMessagesToTrack

+ (id)sharedInstance
{
  if (qword_2814211C8 != -1)
  {
    sub_22B7D88F0();
  }

  v3 = qword_281421050;

  return v3;
}

- (IMMessagesToTrack)init
{
  v8.receiver = self;
  v8.super_class = IMMessagesToTrack;
  v2 = [(IMMessagesToTrack *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:{-[IMMessagesToTrack maxNumberOfMessages](v2, "maxNumberOfMessages")}];
    recentMessageIDs = v2->_recentMessageIDs;
    v2->_recentMessageIDs = v3;

    v5 = dispatch_queue_create("com.apple.private.Messages.IMMessagesToTrack", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v5;
  }

  return v2;
}

- (void)addMessagesID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    internalQueue = self->_internalQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_22B6772D0;
    v7[3] = &unk_278702FA0;
    v7[4] = self;
    v8 = v4;
    dispatch_async(internalQueue, v7);
  }
}

- (void)containsMessageID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    if (v6)
    {
      internalQueue = self->_internalQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_22B677470;
      block[3] = &unk_278702CC8;
      v12 = v7;
      block[4] = self;
      v11 = v6;
      dispatch_async(internalQueue, block);
    }

    else
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (unint64_t)currentNumberOfMessages
{
  v2 = [(IMMessagesToTrack *)self recentMessageIDs];
  v3 = [v2 count];

  return v3;
}

@end