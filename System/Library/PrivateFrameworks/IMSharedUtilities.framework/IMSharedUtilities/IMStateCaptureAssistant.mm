@interface IMStateCaptureAssistant
+ (unint64_t)registerStateCaptureBlockWithObject:(id)object title:(id)title queue:(id)queue;
- (IMStateCaptureAssistant)initWithObject:(id)object title:(id)title queue:(id)queue;
- (void)dealloc;
- (void)deregister;
@end

@implementation IMStateCaptureAssistant

- (IMStateCaptureAssistant)initWithObject:(id)object title:(id)title queue:(id)queue
{
  objectCopy = object;
  titleCopy = title;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = IMStateCaptureAssistant;
  v11 = [(IMStateCaptureAssistant *)&v13 init];
  if (v11)
  {
    v11->_handle = [objc_opt_class() registerStateCaptureBlockWithObject:objectCopy title:titleCopy queue:queueCopy];
  }

  return v11;
}

- (void)dealloc
{
  [(IMStateCaptureAssistant *)self deregister];
  v3.receiver = self;
  v3.super_class = IMStateCaptureAssistant;
  [(IMStateCaptureAssistant *)&v3 dealloc];
}

- (void)deregister
{
  if (self->_handle)
  {
    os_state_remove_handler();
    self->_handle = 0;
  }
}

+ (unint64_t)registerStateCaptureBlockWithObject:(id)object title:(id)title queue:(id)queue
{
  objectCopy = object;
  titleCopy = title;
  queueCopy = queue;
  if (queueCopy || (dispatch_get_global_queue(-32768, 0), (queueCopy = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = queueCopy;
    objc_initWeak(&location, objectCopy);
    v11 = [titleCopy copy];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v14 = objc_opt_class();
      v13 = NSStringFromClass(v14);
    }

    v15 = v13;

    objc_copyWeak(&v18, &location);
    titleCopy = v15;
    v16 = os_state_add_handler();

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end