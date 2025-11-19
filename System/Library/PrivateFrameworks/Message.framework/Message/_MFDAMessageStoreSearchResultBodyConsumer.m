@interface _MFDAMessageStoreSearchResultBodyConsumer
- (BOOL)waitUntilDoneBeforeDate:(id)a3;
- (_MFDAMessageStoreSearchResultBodyConsumer)init;
- (void)actionFailed:(int64_t)a3 forTask:(id)a4 error:(id)a5;
- (void)didEndStreamingForMailMessage:(id)a3;
- (void)searchResultFetchedWithResponses:(id)a3;
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

- (BOOL)waitUntilDoneBeforeDate:(id)a3
{
  v4 = a3;
  v5 = [(MFConditionLock *)self->_doneCondition lockWhenCondition:1 beforeDate:v4];
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

- (void)actionFailed:(int64_t)a3 forTask:(id)a4 error:(id)a5
{
  v12 = a3;
  v6 = a5;
  v11 = v6;
  MFWalkUpDAErrorChain(&v11, &v12);
  v7 = v11;

  v8 = v12 + 1;
  if ((v12 + 1) <= 0xD)
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

    if (v12 == -1)
    {
      v9 = 1028;
      goto LABEL_12;
    }
  }

  if (v12 == 63 || v12 == 79)
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

- (void)searchResultFetchedWithResponses:(id)a3
{
  [(MFConditionLock *)self->_doneCondition lock];
  doneCondition = self->_doneCondition;

  [(MFConditionLock *)doneCondition unlockWithCondition:1];
}

- (void)didEndStreamingForMailMessage:(id)a3
{
  v5 = a3;
  v4 = [(_MFDAMessageStoreSearchResultBodyConsumer *)self streamConsumer];
  [v4 didEndStreamingForMailMessage:v5];
}

@end