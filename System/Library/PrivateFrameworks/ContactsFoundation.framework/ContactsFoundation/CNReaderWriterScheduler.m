@interface CNReaderWriterScheduler
- (BOOL)isSuspended;
- (CNReaderWriterScheduler)init;
- (CNReaderWriterScheduler)initWithQueue:(id)a3;
- (NSString)description;
- (id)performReaderBlock:(id)a3;
- (id)performWriterBlock:(id)a3;
- (void)activateReader:(id)a3;
- (void)activateWriter:(id)a3;
- (void)addReaderWithIdentifier:(id)a3;
- (void)addWriterWithIdentifier:(id)a3;
- (void)appendDescriptionToBuilder:(id)a3;
- (void)performSynchronousReaderBlock:(id)a3;
- (void)performSynchronousWriterBlock:(id)a3;
- (void)removeReader:(id)a3;
- (void)removeWriter:(id)a3;
- (void)resume;
- (void)setSuspended:(BOOL)a3;
- (void)suspend;
@end

@implementation CNReaderWriterScheduler

- (CNReaderWriterScheduler)initWithQueue:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = CNReaderWriterScheduler;
  v6 = [(CNReaderWriterScheduler *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activeReaders = v7->_activeReaders;
    v7->_activeReaders = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingReaders = v7->_pendingReaders;
    v7->_pendingReaders = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activeWriters = v7->_activeWriters;
    v7->_activeWriters = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingWriters = v7->_pendingWriters;
    v7->_pendingWriters = v14;

    v16 = v7;
  }

  return v7;
}

- (CNReaderWriterScheduler)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);
  v5 = dispatch_queue_create("com.apple.contacts.schedulers.serial-reader-writer", v4);

  v6 = [(CNReaderWriterScheduler *)self initWithQueue:v5];
  return v6;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  [(CNReaderWriterScheduler *)self appendDescriptionToBuilder:v3];
  v4 = [v3 build];

  return v4;
}

- (id)performReaderBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNCancelationToken);
  v6 = [MEMORY[0x1E696AFB0] UUID];
  [(CNReaderWriterScheduler *)self addReaderWithIdentifier:v6];
  v7 = [(CNReaderWriterScheduler *)self queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__CNReaderWriterScheduler_performReaderBlock___block_invoke;
  v14[3] = &unk_1E6ED6078;
  v14[4] = self;
  v15 = v6;
  v17 = v4;
  v8 = v5;
  v16 = v8;
  v9 = v4;
  v10 = v6;
  dispatch_async(v7, v14);

  v11 = v16;
  v12 = v8;

  return v8;
}

uint64_t __46__CNReaderWriterScheduler_performReaderBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) activateReader:*(a1 + 40)];
  v2 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 removeReader:v4];
}

- (id)performWriterBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNCancelationToken);
  v6 = [MEMORY[0x1E696AFB0] UUID];
  [(CNReaderWriterScheduler *)self addWriterWithIdentifier:v6];
  v7 = [(CNReaderWriterScheduler *)self queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__CNReaderWriterScheduler_performWriterBlock___block_invoke;
  v14[3] = &unk_1E6ED6078;
  v14[4] = self;
  v15 = v6;
  v17 = v4;
  v8 = v5;
  v16 = v8;
  v9 = v4;
  v10 = v6;
  dispatch_barrier_async(v7, v14);

  v11 = v16;
  v12 = v8;

  return v8;
}

uint64_t __46__CNReaderWriterScheduler_performWriterBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) activateWriter:*(a1 + 40)];
  v2 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 removeWriter:v4];
}

- (void)performSynchronousReaderBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AFB0] UUID];
  [(CNReaderWriterScheduler *)self addReaderWithIdentifier:v5];
  v6 = [(CNReaderWriterScheduler *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CNReaderWriterScheduler_performSynchronousReaderBlock___block_invoke;
  block[3] = &unk_1E6ED60A0;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_sync(v6, block);
}

uint64_t __57__CNReaderWriterScheduler_performSynchronousReaderBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) activateReader:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 removeReader:v3];
}

- (void)performSynchronousWriterBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AFB0] UUID];
  [(CNReaderWriterScheduler *)self addWriterWithIdentifier:v5];
  v6 = [(CNReaderWriterScheduler *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CNReaderWriterScheduler_performSynchronousWriterBlock___block_invoke;
  block[3] = &unk_1E6ED60A0;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_barrier_sync(v6, block);
}

uint64_t __57__CNReaderWriterScheduler_performSynchronousWriterBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) activateWriter:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 removeWriter:v3];
}

- (void)suspend
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_suspendedCount;
  v2 = [(CNReaderWriterScheduler *)obj queue];
  dispatch_suspend(v2);

  objc_sync_exit(obj);
}

- (void)resume
{
  obj = self;
  objc_sync_enter(obj);
  suspendedCount = obj->_suspendedCount;
  if (!suspendedCount)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"resuming a non-suspended scheduler" userInfo:0];
    objc_exception_throw(v4);
  }

  obj->_suspendedCount = suspendedCount - 1;
  v3 = [(CNReaderWriterScheduler *)obj queue];
  dispatch_resume(v3);

  objc_sync_exit(obj);
}

- (void)appendDescriptionToBuilder:(id)a3
{
  v18 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(CNReaderWriterScheduler *)v4 activeWriters];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v18 appendName:@"active writers" unsignedInteger:v6];
  }

  v8 = [(CNReaderWriterScheduler *)v4 pendingWriters];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [v18 appendName:@"pending writers" unsignedInteger:v9];
  }

  v11 = [(CNReaderWriterScheduler *)v4 activeReaders];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [v18 appendName:@"active readers" unsignedInteger:v12];
  }

  v14 = [(CNReaderWriterScheduler *)v4 pendingReaders];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [v18 appendName:@"pending readers" unsignedInteger:v15];
  }

  if (v4->_suspendedCount)
  {
    v17 = [v18 appendName:@"suspended" integerValue:?];
  }

  objc_sync_exit(v4);
}

- (BOOL)isSuspended
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_suspendedCount != 0;
  objc_sync_exit(v2);

  return v3;
}

- (void)setSuspended:(BOOL)a3
{
  if (a3)
  {
    [(CNReaderWriterScheduler *)self suspend];
  }

  else
  {
    [(CNReaderWriterScheduler *)self resume];
  }
}

- (void)addReaderWithIdentifier:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(CNReaderWriterScheduler *)v4 pendingReaders];
  [v5 addObject:v6];

  objc_sync_exit(v4);
}

- (void)activateReader:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(CNReaderWriterScheduler *)v4 pendingReaders];
  [v5 removeObject:v7];

  v6 = [(CNReaderWriterScheduler *)v4 activeReaders];
  [v6 addObject:v7];

  objc_sync_exit(v4);
}

- (void)removeReader:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(CNReaderWriterScheduler *)v4 pendingReaders];
  [v5 removeObject:v7];

  v6 = [(CNReaderWriterScheduler *)v4 activeReaders];
  [v6 removeObject:v7];

  objc_sync_exit(v4);
}

- (void)addWriterWithIdentifier:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(CNReaderWriterScheduler *)v4 pendingWriters];
  [v5 addObject:v6];

  objc_sync_exit(v4);
}

- (void)activateWriter:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(CNReaderWriterScheduler *)v4 pendingWriters];
  [v5 removeObject:v7];

  v6 = [(CNReaderWriterScheduler *)v4 activeWriters];
  [v6 addObject:v7];

  objc_sync_exit(v4);
}

- (void)removeWriter:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(CNReaderWriterScheduler *)v4 pendingWriters];
  [v5 removeObject:v7];

  v6 = [(CNReaderWriterScheduler *)v4 activeWriters];
  [v6 removeObject:v7];

  objc_sync_exit(v4);
}

@end