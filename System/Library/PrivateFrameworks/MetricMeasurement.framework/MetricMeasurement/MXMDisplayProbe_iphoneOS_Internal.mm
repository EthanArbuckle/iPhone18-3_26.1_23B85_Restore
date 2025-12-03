@interface MXMDisplayProbe_iphoneOS_Internal
+ (id)_allDescriptors;
+ (unint64_t)_displayIndexWithDescriptor:(id)descriptor;
- ($175F2685EF764341F5DD80B75CC65478)_pollDisplayForSample;
- (MXMDisplayProbePlatformDelegate)delegate;
- (id)initPrivateWithDescriptor:(id)descriptor queue:(id)queue;
- (void)_loop;
- (void)_stop;
@end

@implementation MXMDisplayProbe_iphoneOS_Internal

+ (unint64_t)_displayIndexWithDescriptor:(id)descriptor
{
  v3 = MEMORY[0x277CD9E40];
  descriptorCopy = descriptor;
  displays = [v3 displays];
  display = [descriptorCopy display];

  v7 = [displays indexOfObject:display];
  return v7;
}

+ (id)_allDescriptors
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB18];
  displays = [MEMORY[0x277CD9E40] displays];
  v4 = [v2 arrayWithCapacity:{objc_msgSend(displays, "count")}];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  displays2 = [MEMORY[0x277CD9E40] displays];
  v6 = [displays2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(displays2);
        }

        v10 = [[MXMDisplayDescriptor alloc] initWithDisplay:*(*(&v13 + 1) + 8 * i)];
        [v4 addObject:v10];
      }

      v7 = [displays2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)initPrivateWithDescriptor:(id)descriptor queue:(id)queue
{
  descriptorCopy = descriptor;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = MXMDisplayProbe_iphoneOS_Internal;
  v9 = [(MXMDisplayProbe_iphoneOS_Internal *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_displayDescriptor, descriptor);
    v10->_pollRate = 0.0;
    objc_storeStrong(&v10->_queue, queue);
    v10->_lastSample.timestamp = NAN;
  }

  return v10;
}

- (void)_stop
{
  obj = self;
  objc_sync_enter(obj);
  obj->_pollRate = 0.0;
  objc_sync_exit(obj);
}

- (void)_loop
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__MXMDisplayProbe_iphoneOS_Internal__loop__block_invoke;
  block[3] = &unk_2798C9590;
  block[4] = self;
  dispatch_async(queue, block);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pollRate = selfCopy->_pollRate;
  if (pollRate > 0.0)
  {
    usleep((pollRate * 1000000.0));
    [(MXMDisplayProbe_iphoneOS_Internal *)selfCopy _loop];
  }

  objc_sync_exit(selfCopy);
}

- ($175F2685EF764341F5DD80B75CC65478)_pollDisplayForSample
{
  v3 = CACurrentMediaTime();
  [objc_opt_class() _displayIndexWithDescriptor:self->_displayDescriptor];
  FrameCounterByIndex = CARenderServerGetFrameCounterByIndex();
  v5 = v3;
  result.var1 = FrameCounterByIndex;
  result.var0 = v5;
  return result;
}

- (MXMDisplayProbePlatformDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end