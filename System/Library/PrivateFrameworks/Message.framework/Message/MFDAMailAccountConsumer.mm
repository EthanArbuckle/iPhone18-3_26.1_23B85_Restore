@interface MFDAMailAccountConsumer
- (BOOL)shouldRetryRequest;
- (BOOL)waitUntilDoneBeforeDate:(id)date;
- (MFDAMailAccountConsumer)initWithAlwaysReportFailures:(BOOL)failures;
- (void)actionFailed:(int64_t)failed forTask:(id)task error:(id)error;
- (void)setDone:(BOOL)done;
- (void)waitUntilDone;
@end

@implementation MFDAMailAccountConsumer

- (MFDAMailAccountConsumer)initWithAlwaysReportFailures:(BOOL)failures
{
  v8.receiver = self;
  v8.super_class = MFDAMailAccountConsumer;
  v4 = [(MFDAMailAccountConsumer *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69AD6A0]) initWithName:@"MFDAMailAccountConsumer_doneCondition" condition:0 andDelegate:v4];
    doneCondition = v4->_doneCondition;
    v4->_doneCondition = v5;

    v4->_alwaysReportFailures = failures;
  }

  return v4;
}

- (void)setDone:(BOOL)done
{
  doneCopy = done;
  [(NSConditionLock *)self->_doneCondition lock];
  doneCondition = self->_doneCondition;

  [(NSConditionLock *)doneCondition unlockWithCondition:doneCopy];
}

- (BOOL)waitUntilDoneBeforeDate:(id)date
{
  dateCopy = date;
  ECAssertNetworkActivityAllowed();
  v5 = [(NSConditionLock *)self->_doneCondition lockWhenCondition:1 beforeDate:dateCopy];
  if (v5)
  {
    [(NSConditionLock *)self->_doneCondition unlock];
  }

  return v5;
}

- (void)waitUntilDone
{
  ECAssertNetworkActivityAllowed();
  [(NSConditionLock *)self->_doneCondition lockWhenCondition:1];
  doneCondition = self->_doneCondition;

  [(NSConditionLock *)doneCondition unlock];
}

- (void)actionFailed:(int64_t)failed forTask:(id)task error:(id)error
{
  failedCopy = failed;
  taskCopy = task;
  errorCopy = error;
  v12 = errorCopy;
  MFWalkUpDAErrorChain(&v12, &failedCopy);
  v9 = v12;

  v10 = failedCopy;
  v11 = (failedCopy + 1) > 8 || ((1 << (failedCopy + 1)) & 0x103) == 0;
  if (v11 || ([(NSConditionLock *)self->_doneCondition lock], self->_shouldRetryRequest = 1, [(NSConditionLock *)self->_doneCondition unlock], self->_alwaysReportFailures))
  {
    [(MFDAMailAccountConsumer *)self taskFailed:taskCopy statusCode:v10 error:v9];
  }

  [(MFDAMailAccountConsumer *)self setDone:1];
}

- (BOOL)shouldRetryRequest
{
  [(NSConditionLock *)self->_doneCondition lock];
  shouldRetryRequest = self->_shouldRetryRequest;
  [(NSConditionLock *)self->_doneCondition unlock];
  return shouldRetryRequest;
}

@end