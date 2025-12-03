@interface IOGPUMetalDeviceAssertion
- (IOGPUMetalDeviceAssertion)initWithDevice:(id)device assertionType:(unint64_t)type options:(unint64_t)options;
- (void)dealloc;
@end

@implementation IOGPUMetalDeviceAssertion

- (IOGPUMetalDeviceAssertion)initWithDevice:(id)device assertionType:(unint64_t)type options:(unint64_t)options
{
  deviceCopy = device;
  if (objc_opt_respondsToSelector())
  {
    deviceCopy = [device originalObject];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (IOGPUDeviceCreateDeviceAssertion([deviceCopy deviceRef], type, options, &self->fSendRight.mrs_name))
    {

      return 0;
    }

    else
    {
      self->fAssertionType = type;
      self->fAssertionOptions = options;
    }
  }

  return self;
}

- (void)dealloc
{
  if (self->fSendRight.mrs_name + 1 >= 2)
  {
    mach_right_send_release();
  }

  v3.receiver = self;
  v3.super_class = IOGPUMetalDeviceAssertion;
  [(IOGPUMetalDeviceAssertion *)&v3 dealloc];
}

@end