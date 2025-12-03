@interface IPLocalStateUpdateStreamSink
- (IPLocalStateUpdateStreamSink)initWithUpdateStream:(id)stream;
- (void)resume;
- (void)sendUpdateMessage:(id)message;
@end

@implementation IPLocalStateUpdateStreamSink

- (IPLocalStateUpdateStreamSink)initWithUpdateStream:(id)stream
{
  streamCopy = stream;
  v10.receiver = self;
  v10.super_class = IPLocalStateUpdateStreamSink;
  v5 = [(IPLocalStateUpdateStreamSink *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakStream, streamCopy);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    queuedUpdateMessages = v6->_queuedUpdateMessages;
    v6->_queuedUpdateMessages = v7;

    v6->_resumptionLock._os_unfair_lock_opaque = 0;
    v6->_resumed = 0;
  }

  return v6;
}

- (void)resume
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __38__IPLocalStateUpdateStreamSink_resume__block_invoke;
  v2[3] = &unk_2797B2030;
  v2[4] = self;
  IPDoWithLock(&self->_resumptionLock, v2);
}

void __38__IPLocalStateUpdateStreamSink_resume__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
        [WeakRetained sink:*(a1 + 32) sendMessage:{v7, v12}];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  *(v9 + 16) = 0;

  *(*(a1 + 32) + 28) = 1;
  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendUpdateMessage:(id)message
{
  messageCopy = message;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__IPLocalStateUpdateStreamSink_sendUpdateMessage___block_invoke;
  v6[3] = &unk_2797B1E00;
  v6[4] = self;
  v7 = messageCopy;
  v5 = messageCopy;
  IPDoWithLock(&self->_resumptionLock, v6);
}

void __50__IPLocalStateUpdateStreamSink_sendUpdateMessage___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 28) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 8));
    [WeakRetained sink:*(a1 + 32) sendMessage:*(a1 + 40)];
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    [v3 addObject:v4];
  }
}

@end