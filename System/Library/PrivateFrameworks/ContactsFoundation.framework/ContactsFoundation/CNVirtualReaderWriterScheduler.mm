@interface CNVirtualReaderWriterScheduler
- (CNVirtualReaderWriterScheduler)init;
- (CNVirtualReaderWriterScheduler)initWithScheduler:(id)scheduler;
- (id)performReaderBlock:(id)block;
- (id)performWriterBlock:(id)block;
- (void)performSynchronousReaderBlock:(id)block;
- (void)performSynchronousWriterBlock:(id)block;
- (void)resume;
- (void)suspend;
@end

@implementation CNVirtualReaderWriterScheduler

- (CNVirtualReaderWriterScheduler)init
{
  v3 = +[CNScheduler immediateScheduler];
  v4 = [(CNVirtualReaderWriterScheduler *)self initWithScheduler:v3];

  return v4;
}

- (CNVirtualReaderWriterScheduler)initWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v10.receiver = self;
  v10.super_class = CNVirtualReaderWriterScheduler;
  v5 = [(CNVirtualReaderWriterScheduler *)&v10 init];
  if (v5)
  {
    v6 = [CNSuspendableSchedulerDecorator resumedSchedulerWithScheduler:schedulerCopy];
    scheduler = v5->_scheduler;
    v5->_scheduler = v6;

    v8 = v5;
  }

  return v5;
}

- (id)performReaderBlock:(id)block
{
  blockCopy = block;
  scheduler = [(CNVirtualReaderWriterScheduler *)self scheduler];
  v6 = [scheduler performCancelableBlock:blockCopy];

  return v6;
}

- (id)performWriterBlock:(id)block
{
  blockCopy = block;
  scheduler = [(CNVirtualReaderWriterScheduler *)self scheduler];
  v6 = [scheduler performCancelableBlock:blockCopy];

  return v6;
}

- (void)performSynchronousReaderBlock:(id)block
{
  blockCopy = block;
  scheduler = [(CNVirtualReaderWriterScheduler *)self scheduler];
  [scheduler performBlock:blockCopy];
}

- (void)performSynchronousWriterBlock:(id)block
{
  blockCopy = block;
  scheduler = [(CNVirtualReaderWriterScheduler *)self scheduler];
  [scheduler performBlock:blockCopy];
}

- (void)suspend
{
  scheduler = [(CNVirtualReaderWriterScheduler *)self scheduler];
  [scheduler suspend];
}

- (void)resume
{
  scheduler = [(CNVirtualReaderWriterScheduler *)self scheduler];
  [scheduler resume];
}

@end