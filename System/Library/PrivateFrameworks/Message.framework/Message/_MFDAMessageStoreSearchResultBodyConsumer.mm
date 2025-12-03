@interface _MFDAMessageStoreSearchResultBodyConsumer
- (BOOL)waitUntilDoneBeforeDate:(id)date;
- (_MFDAMessageStoreSearchResultBodyConsumer)init;
- (void)actionFailed:(int64_t)failed forTask:(id)task error:(id)error;
- (void)didEndStreamingForMailMessage:(id)message;
- (void)searchResultFetchedWithResponses:(id)responses;
- (void)waitUntilDone;
@end

@implementation _MFDAMessageStoreSearchResultBodyConsumer

- (_MFDAMessageStoreSearchResultBodyConsumer)init
{
  v6.receiver = self;
  v6.super_class = _MFDAMessageStoreSearchResultBodyConsumer;
  v2 = [(_MFDAMessageStoreSearchResultBodyConsumer *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69AD6A0]) initWithName:@"done" condition:0 andDelegate:v2];
    doneCondition = v2->_doneCondition;
    v2->_doneCondition = v3;
  }

  return v2;
}

- (BOOL)waitUntilDoneBeforeDate:(id)date
{
  dateCopy = date;
  v5 = [(MFConditionLock *)self->_doneCondition lockWhenCondition:1 beforeDate:dateCopy];
  if (v5)
  {
    [(MFConditionLock *)self->_doneCondition unlock];
  }

  return v5;
}

- (void)waitUntilDone
{
  [(MFConditionLock *)self->_doneCondition lockWhenCondition:1];
  doneCondition = self->_doneCondition;

  [(MFConditionLock *)doneCondition unlock];
}

- (void)actionFailed:(int64_t)failed forTask:(id)task error:(id)error
{
  failedCopy = failed;
  errorCopy = error;
  v11 = errorCopy;
  MFWalkUpDAErrorChain(&v11, &failedCopy);
  v7 = v11;

  v8 = failedCopy + 1;
  if ((failedCopy + 1) <= 0xD)
  {
    if (((1 << v8) & 0x2C0) != 0)
    {
      v9 = 1040;
      goto LABEL_12;
    }

    if (((1 << v8) & 0x2400) != 0)
    {
      v9 = 1033;
      goto LABEL_12;
    }

    if (failedCopy == -1)
    {
      v9 = 1028;
      goto LABEL_12;
    }
  }

  if (failedCopy == 63 || failedCopy == 79)
  {
    v9 = 1032;
  }

  else
  {
    v9 = 1045;
  }

LABEL_12:
  v10 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:v9 localizedDescription:0];
  [(_MFDAMessageStoreSearchResultBodyConsumer *)self setError:v10];
  [(MFConditionLock *)self->_doneCondition lock];
  [(MFConditionLock *)self->_doneCondition unlockWithCondition:1];
}

- (void)searchResultFetchedWithResponses:(id)responses
{
  [(MFConditionLock *)self->_doneCondition lock];
  doneCondition = self->_doneCondition;

  [(MFConditionLock *)doneCondition unlockWithCondition:1];
}

- (void)didEndStreamingForMailMessage:(id)message
{
  messageCopy = message;
  streamConsumer = [(_MFDAMessageStoreSearchResultBodyConsumer *)self streamConsumer];
  [streamConsumer didEndStreamingForMailMessage:messageCopy];
}

@end