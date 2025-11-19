@interface DVTStreamManager
- (DVTStreamManager)initWithStream:(id)a3;
- (id)export;
- (int64_t)commit:(const void *)a3 bufferSize:(unint64_t)a4 error:(id *)a5 destructor:(id)a6;
- (int64_t)commit:(id)a3 error:(id *)a4;
- (unint64_t)currentStreamSize;
@end

@implementation DVTStreamManager

- (DVTStreamManager)initWithStream:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v12.receiver = self;
  v12.super_class = DVTStreamManager;
  v6 = [(DVTStreamManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stream, a3);
    snprintf(__str, 0x80uLL, "com.apple.instruments.kperf.streammanager.%llu", atomic_fetch_add_explicit(&qword_27EE84310, 1uLL, memory_order_relaxed));
    v8 = dispatch_queue_create(__str, 0);
    queue = v7->_queue;
    v7->_queue = v8;

    v7->_currentStreamSize = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (int64_t)commit:(const void *)a3 bufferSize:(unint64_t)a4 error:(id *)a5 destructor:(id)a6
{
  v10 = a6;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_247FAEEBC;
  v15[3] = &unk_278EF2BF8;
  v17 = &v21;
  v18 = a3;
  v15[4] = self;
  v16 = v10;
  v19 = a4;
  v20 = a5;
  v12 = v10;
  dispatch_sync(queue, v15);
  v13 = v22[3];

  _Block_object_dispose(&v21, 8);
  return v13;
}

- (int64_t)commit:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_247FAF0C8;
  v11[3] = &unk_278EF2C20;
  v11[4] = self;
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v8 = v6;
  dispatch_sync(queue, v11);
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

- (id)export
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_247FAF20C;
  v10 = sub_247FAF21C;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247FAF224;
  v5[3] = &unk_278EF2738;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unint64_t)currentStreamSize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247FAF334;
  v5[3] = &unk_278EF2738;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end