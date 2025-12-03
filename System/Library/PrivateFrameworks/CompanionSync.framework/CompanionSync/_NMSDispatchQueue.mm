@interface _NMSDispatchQueue
- (_NMSDispatchQueue)init;
- (_NMSDispatchQueue)initWithName:(id)name attributes:(id)attributes target:(id)target;
- (void)dealloc;
- (void)resume;
- (void)suspend;
@end

@implementation _NMSDispatchQueue

- (_NMSDispatchQueue)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = [(_NMSDispatchQueue *)self initWithName:@"_NMSDispatchQueue" attributes:v3 target:0];

  return v4;
}

- (_NMSDispatchQueue)initWithName:(id)name attributes:(id)attributes target:(id)target
{
  nameCopy = name;
  attributesCopy = attributes;
  targetCopy = target;
  v16.receiver = self;
  v16.super_class = _NMSDispatchQueue;
  v11 = [(_NMSDispatchQueue *)&v16 init];
  if (v11)
  {
    v12 = dispatch_queue_create_with_target_V2([nameCopy UTF8String], attributesCopy, targetCopy);
    q = v11->_q;
    v11->_q = v12;

    [SYQueueDumper registerQueue:v11->_q];
    atomic_store(1u, &v11->_r);
    v14 = v11;
  }

  return v11;
}

- (void)dealloc
{
  [(_NMSDispatchQueue *)self resume];
  v3.receiver = self;
  v3.super_class = _NMSDispatchQueue;
  [(_NMSDispatchQueue *)&v3 dealloc];
}

- (void)suspend
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 1;
  atomic_compare_exchange_strong(&self->_r, &v2, 0);
  if (v2 == 1)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v4 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      label = dispatch_queue_get_label(self->_q);
      v7 = 136446210;
      v8 = label;
      _os_log_impl(&dword_1DF835000, v4, OS_LOG_TYPE_DEFAULT, "Suspending %{public}s", &v7, 0xCu);
    }

    dispatch_suspend(self->_q);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)resume
{
  v2 = 0;
  v9 = *MEMORY[0x1E69E9840];
  atomic_compare_exchange_strong(&self->_r, &v2, 1u);
  if (!v2)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v4 = qword_1EDE73428;
    if (os_log_type_enabled(qword_1EDE73428, OS_LOG_TYPE_DEFAULT))
    {
      label = dispatch_queue_get_label(self->_q);
      v7 = 136446210;
      v8 = label;
      _os_log_impl(&dword_1DF835000, v4, OS_LOG_TYPE_DEFAULT, "Resuming %{public}s", &v7, 0xCu);
    }

    dispatch_resume(self->_q);
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end