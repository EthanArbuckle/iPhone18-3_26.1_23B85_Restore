@interface MFDAMailAccountConsumer
- (BOOL)shouldRetryRequest;
- (BOOL)waitUntilDoneBeforeDate:(id)a3;
- (MFDAMailAccountConsumer)initWithAlwaysReportFailures:(BOOL)a3;
- (void)actionFailed:(int64_t)a3 forTask:(id)a4 error:(id)a5;
- (void)setDone:(BOOL)a3;
- (void)waitUntilDone;
@end

@implementation MFDAMailAccountConsumer

- (MFDAMailAccountConsumer)initWithAlwaysReportFailures:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = MFDAMailAccountConsumer;
  v4 = [(MFDAMailAccountConsumer *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69AD6A0]) initWithName:@"MFDAMailAccountConsumer_doneCondition" condition:0 andDelegate:v4];
    doneCondition = v4->_doneCondition;
    v4->_doneCondition = v5;

    v4->_alwaysReportFailures = a3;
  }

  return v4;
}

- (void)setDone:(BOOL)a3
{
  v3 = a3;
  [(NSConditionLock *)self->_doneCondition lock];
  doneCondition = self->_doneCondition;

  [(NSConditionLock *)doneCondition unlockWithCondition:v3];
}

- (BOOL)waitUntilDoneBeforeDate:(id)a3
{
  v4 = a3;
  ECAssertNetworkActivityAllowed();
  v5 = [(NSConditionLock *)self->_doneCondition lockWhenCondition:1 beforeDate:v4];
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

- (void)actionFailed:(int64_t)a3 forTask:(id)a4 error:(id)a5
{
  v13 = a3;
  v7 = a4;
  v8 = a5;
  v12 = v8;
  MFWalkUpDAErrorChain(&v12, &v13);
  v9 = v12;

  v10 = v13;
  v11 = (v13 + 1) > 8 || ((1 << (v13 + 1)) & 0x103) == 0;
  if (v11 || ([(NSConditionLock *)self->_doneCondition lock], self->_shouldRetryRequest = 1, [(NSConditionLock *)self->_doneCondition unlock], self->_alwaysReportFailures))
  {
    [(MFDAMailAccountConsumer *)self taskFailed:v7 statusCode:v10 error:v9];
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