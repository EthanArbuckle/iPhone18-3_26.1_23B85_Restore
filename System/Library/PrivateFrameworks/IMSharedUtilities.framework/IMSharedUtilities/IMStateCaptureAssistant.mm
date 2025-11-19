@interface IMStateCaptureAssistant
+ (unint64_t)registerStateCaptureBlockWithObject:(id)a3 title:(id)a4 queue:(id)a5;
- (IMStateCaptureAssistant)initWithObject:(id)a3 title:(id)a4 queue:(id)a5;
- (void)dealloc;
- (void)deregister;
@end

@implementation IMStateCaptureAssistant

- (IMStateCaptureAssistant)initWithObject:(id)a3 title:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13.receiver = self;
  v13.super_class = IMStateCaptureAssistant;
  v11 = [(IMStateCaptureAssistant *)&v13 init];
  if (v11)
  {
    v11->_handle = [objc_opt_class() registerStateCaptureBlockWithObject:v8 title:v9 queue:v10];
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

+ (unint64_t)registerStateCaptureBlockWithObject:(id)a3 title:(id)a4 queue:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9 || (dispatch_get_global_queue(-32768, 0), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    objc_initWeak(&location, v7);
    v11 = [v8 copy];
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
    v8 = v15;
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