@interface CNReaderWriterScheduler
- (BOOL)isSuspended;
- (CNReaderWriterScheduler)init;
- (CNReaderWriterScheduler)initWithQueue:(id)queue;
- (NSString)description;
- (id)performReaderBlock:(id)block;
- (id)performWriterBlock:(id)block;
- (void)activateReader:(id)reader;
- (void)activateWriter:(id)writer;
- (void)addReaderWithIdentifier:(id)identifier;
- (void)addWriterWithIdentifier:(id)identifier;
- (void)appendDescriptionToBuilder:(id)builder;
- (void)performSynchronousReaderBlock:(id)block;
- (void)performSynchronousWriterBlock:(id)block;
- (void)removeReader:(id)reader;
- (void)removeWriter:(id)writer;
- (void)resume;
- (void)setSuspended:(BOOL)suspended;
- (void)suspend;
@end

@implementation CNReaderWriterScheduler

- (CNReaderWriterScheduler)initWithQueue:(id)queue
{
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = CNReaderWriterScheduler;
  v6 = [(CNReaderWriterScheduler *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
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
  build = [v3 build];

  return build;
}

- (id)performReaderBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(CNCancelationToken);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [(CNReaderWriterScheduler *)self addReaderWithIdentifier:uUID];
  queue = [(CNReaderWriterScheduler *)self queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__CNReaderWriterScheduler_performReaderBlock___block_invoke;
  v14[3] = &unk_1E6ED6078;
  v14[4] = self;
  v15 = uUID;
  v17 = blockCopy;
  v8 = v5;
  v16 = v8;
  v9 = blockCopy;
  v10 = uUID;
  dispatch_async(queue, v14);

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

- (id)performWriterBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(CNCancelationToken);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [(CNReaderWriterScheduler *)self addWriterWithIdentifier:uUID];
  queue = [(CNReaderWriterScheduler *)self queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__CNReaderWriterScheduler_performWriterBlock___block_invoke;
  v14[3] = &unk_1E6ED6078;
  v14[4] = self;
  v15 = uUID;
  v17 = blockCopy;
  v8 = v5;
  v16 = v8;
  v9 = blockCopy;
  v10 = uUID;
  dispatch_barrier_async(queue, v14);

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

- (void)performSynchronousReaderBlock:(id)block
{
  blockCopy = block;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [(CNReaderWriterScheduler *)self addReaderWithIdentifier:uUID];
  queue = [(CNReaderWriterScheduler *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CNReaderWriterScheduler_performSynchronousReaderBlock___block_invoke;
  block[3] = &unk_1E6ED60A0;
  block[4] = self;
  v10 = uUID;
  v11 = blockCopy;
  v7 = blockCopy;
  v8 = uUID;
  dispatch_sync(queue, block);
}

uint64_t __57__CNReaderWriterScheduler_performSynchronousReaderBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) activateReader:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 removeReader:v3];
}

- (void)performSynchronousWriterBlock:(id)block
{
  blockCopy = block;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [(CNReaderWriterScheduler *)self addWriterWithIdentifier:uUID];
  queue = [(CNReaderWriterScheduler *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CNReaderWriterScheduler_performSynchronousWriterBlock___block_invoke;
  block[3] = &unk_1E6ED60A0;
  block[4] = self;
  v10 = uUID;
  v11 = blockCopy;
  v7 = blockCopy;
  v8 = uUID;
  dispatch_barrier_sync(queue, block);
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
  queue = [(CNReaderWriterScheduler *)obj queue];
  dispatch_suspend(queue);

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
  queue = [(CNReaderWriterScheduler *)obj queue];
  dispatch_resume(queue);

  objc_sync_exit(obj);
}

- (void)appendDescriptionToBuilder:(id)builder
{
  builderCopy = builder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeWriters = [(CNReaderWriterScheduler *)selfCopy activeWriters];
  v6 = [activeWriters count];

  if (v6)
  {
    v7 = [builderCopy appendName:@"active writers" unsignedInteger:v6];
  }

  pendingWriters = [(CNReaderWriterScheduler *)selfCopy pendingWriters];
  v9 = [pendingWriters count];

  if (v9)
  {
    v10 = [builderCopy appendName:@"pending writers" unsignedInteger:v9];
  }

  activeReaders = [(CNReaderWriterScheduler *)selfCopy activeReaders];
  v12 = [activeReaders count];

  if (v12)
  {
    v13 = [builderCopy appendName:@"active readers" unsignedInteger:v12];
  }

  pendingReaders = [(CNReaderWriterScheduler *)selfCopy pendingReaders];
  v15 = [pendingReaders count];

  if (v15)
  {
    v16 = [builderCopy appendName:@"pending readers" unsignedInteger:v15];
  }

  if (selfCopy->_suspendedCount)
  {
    v17 = [builderCopy appendName:@"suspended" integerValue:?];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)isSuspended
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_suspendedCount != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setSuspended:(BOOL)suspended
{
  if (suspended)
  {
    [(CNReaderWriterScheduler *)self suspend];
  }

  else
  {
    [(CNReaderWriterScheduler *)self resume];
  }
}

- (void)addReaderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingReaders = [(CNReaderWriterScheduler *)selfCopy pendingReaders];
  [pendingReaders addObject:identifierCopy];

  objc_sync_exit(selfCopy);
}

- (void)activateReader:(id)reader
{
  readerCopy = reader;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingReaders = [(CNReaderWriterScheduler *)selfCopy pendingReaders];
  [pendingReaders removeObject:readerCopy];

  activeReaders = [(CNReaderWriterScheduler *)selfCopy activeReaders];
  [activeReaders addObject:readerCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeReader:(id)reader
{
  readerCopy = reader;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingReaders = [(CNReaderWriterScheduler *)selfCopy pendingReaders];
  [pendingReaders removeObject:readerCopy];

  activeReaders = [(CNReaderWriterScheduler *)selfCopy activeReaders];
  [activeReaders removeObject:readerCopy];

  objc_sync_exit(selfCopy);
}

- (void)addWriterWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingWriters = [(CNReaderWriterScheduler *)selfCopy pendingWriters];
  [pendingWriters addObject:identifierCopy];

  objc_sync_exit(selfCopy);
}

- (void)activateWriter:(id)writer
{
  writerCopy = writer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingWriters = [(CNReaderWriterScheduler *)selfCopy pendingWriters];
  [pendingWriters removeObject:writerCopy];

  activeWriters = [(CNReaderWriterScheduler *)selfCopy activeWriters];
  [activeWriters addObject:writerCopy];

  objc_sync_exit(selfCopy);
}

- (void)removeWriter:(id)writer
{
  writerCopy = writer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingWriters = [(CNReaderWriterScheduler *)selfCopy pendingWriters];
  [pendingWriters removeObject:writerCopy];

  activeWriters = [(CNReaderWriterScheduler *)selfCopy activeWriters];
  [activeWriters removeObject:writerCopy];

  objc_sync_exit(selfCopy);
}

@end