@interface _CLFAppAvailabilityObserver
- (_CLFAppAvailabilityObserver)initWithHandler:(id)handler;
- (void)invalidate;
@end

@implementation _CLFAppAvailabilityObserver

- (_CLFAppAvailabilityObserver)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = _CLFAppAvailabilityObserver;
  v5 = [(_CLFAppAvailabilityObserver *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E12F0180](handlerCopy);
    handler = v5->_handler;
    v5->_handler = v6;

    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v8 = getAPSubjectClass_softClass;
    v19 = getAPSubjectClass_softClass;
    if (!getAPSubjectClass_softClass)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getAPSubjectClass_block_invoke;
      v15[3] = &unk_1E8704E78;
      v15[4] = &v16;
      __getAPSubjectClass_block_invoke(v15);
      v8 = v17[3];
    }

    v9 = v8;
    _Block_object_dispose(&v16, 8);
    subjectMonitorRegistry = [v8 subjectMonitorRegistry];
    v11 = [subjectMonitorRegistry addMonitor:v5 subjectMask:1];
    subscription = v5->_subscription;
    v5->_subscription = v11;
  }

  return v5;
}

- (void)invalidate
{
  subscription = [(_CLFAppAvailabilityObserver *)self subscription];
  [subscription invalidate];
}

@end