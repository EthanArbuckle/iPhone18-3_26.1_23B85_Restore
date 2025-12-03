@interface MNNavigationServiceCallbackParameters
- (MNNavigationServiceCallbackParameters)initWithCoder:(id)coder;
- (unint64_t)type;
@end

@implementation MNNavigationServiceCallbackParameters

- (MNNavigationServiceCallbackParameters)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = MNNavigationServiceCallbackParameters;
  return [(MNNavigationServiceCallbackParameters *)&v4 init];
}

- (unint64_t)type
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_1D311E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: [MNNavigationServiceCallbackParameters type] must be implemented by subclasses.", v3, 2u);
  }

  return 0;
}

@end