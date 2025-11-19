@interface _MFDAResolveRecipientsConsumer
- (NSError)error;
- (_MFDAResolveRecipientsConsumer)init;
- (id)waitForResolvedRecipients;
- (void)actionFailed:(int64_t)a3 forTask:(id)a4 error:(id)a5;
- (void)resolvedRecipientsByEmailAddress:(id)a3;
@end

@implementation _MFDAResolveRecipientsConsumer

- (_MFDAResolveRecipientsConsumer)init
{
  v6.receiver = self;
  v6.super_class = _MFDAResolveRecipientsConsumer;
  v2 = [(_MFDAResolveRecipientsConsumer *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69AD6A0]) initWithName:@"_MFDAResolveRecipientsConsumer_Lock" condition:0 andDelegate:0];
    conditionLock = v2->_conditionLock;
    v2->_conditionLock = v3;
  }

  return v2;
}

- (NSError)error
{
  [(MFConditionLock *)self->_conditionLock lock];
  v3 = self->_error;
  [(MFConditionLock *)self->_conditionLock unlock];

  return v3;
}

- (id)waitForResolvedRecipients
{
  [(MFConditionLock *)self->_conditionLock lockWhenCondition:1];
  v3 = self->_resolvedRecipientsByEmailAddress;
  [(MFConditionLock *)self->_conditionLock unlock];

  return v3;
}

- (void)resolvedRecipientsByEmailAddress:(id)a3
{
  v6 = a3;
  [(MFConditionLock *)self->_conditionLock lock];
  v4 = [v6 copy];
  resolvedRecipientsByEmailAddress = self->_resolvedRecipientsByEmailAddress;
  self->_resolvedRecipientsByEmailAddress = v4;

  [(MFConditionLock *)self->_conditionLock unlockWithCondition:1];
}

- (void)actionFailed:(int64_t)a3 forTask:(id)a4 error:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  [(MFConditionLock *)self->_conditionLock lock];
  v10 = DALoggingwithCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412546;
    v13 = v8;
    v14 = 2048;
    v15 = a3;
    _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_ERROR, "reslove recipients task %@ failed with code %ld", &v12, 0x16u);
  }

  objc_storeStrong(&self->_error, a5);
  [(MFConditionLock *)self->_conditionLock unlockWithCondition:1];

  v11 = *MEMORY[0x1E69E9840];
}

@end