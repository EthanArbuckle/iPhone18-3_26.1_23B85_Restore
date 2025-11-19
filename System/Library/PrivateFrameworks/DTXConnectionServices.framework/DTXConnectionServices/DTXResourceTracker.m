@interface DTXResourceTracker
- (DTXResourceTracker)init;
- (unint64_t)maxChunkSize;
- (unint64_t)totalSize;
- (unsigned)acquireSize:(unint64_t)a3;
- (void)forceAcquireSize:(unint64_t)a3;
- (void)releaseSize:(unint64_t)a3;
- (void)resumeLimits;
- (void)setMaxChunkSize:(unint64_t)a3;
- (void)setTotalSize:(unint64_t)a3;
- (void)suspendLimits;
@end

@implementation DTXResourceTracker

- (DTXResourceTracker)init
{
  v8.receiver = self;
  v8.super_class = DTXResourceTracker;
  v2 = [(DTXResourceTracker *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("DTXResourceTracker queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_semaphore_create(0);
    acqSem = v2->_acqSem;
    v2->_acqSem = v5;

    v2->_total = -1;
    v2->_maxChunk = -1;
  }

  return v2;
}

- (unint64_t)totalSize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247F446E8;
  v5[3] = &unk_278EEE8B8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setTotalSize:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_247F44770;
  v4[3] = &unk_278EEE980;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(queue, v4);
}

- (unint64_t)maxChunkSize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247F44874;
  v5[3] = &unk_278EEE8B8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setMaxChunkSize:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_247F448FC;
  v4[3] = &unk_278EEE980;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(queue, v4);
}

- (unsigned)acquireSize:(unint64_t)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = MEMORY[0x277D85DD0];
  do
  {
    queue = self->_queue;
    v9[0] = v5;
    v9[1] = 3221225472;
    v9[2] = sub_247F44A78;
    v9[3] = &unk_278EEE9A8;
    v9[4] = self;
    v9[5] = &v10;
    v9[6] = &v14;
    v9[7] = a3;
    dispatch_sync(queue, v9);
    if (*(v15 + 24) == 1)
    {
      dispatch_semaphore_wait(self->_acqSem, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  while ((v15[3] & 1) != 0);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

- (void)forceAcquireSize:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_247F44B90;
  v4[3] = &unk_278EEE980;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(queue, v4);
}

- (void)releaseSize:(unint64_t)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_247F44C18;
  v4[3] = &unk_278EEE980;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(queue, v4);
}

- (void)suspendLimits
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F44CF0;
  block[3] = &unk_278EEE708;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)resumeLimits
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247F44DC4;
  block[3] = &unk_278EEE708;
  block[4] = self;
  dispatch_sync(queue, block);
}

@end