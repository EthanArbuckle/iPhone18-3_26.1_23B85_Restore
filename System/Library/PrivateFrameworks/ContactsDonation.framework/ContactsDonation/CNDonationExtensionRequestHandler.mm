@interface CNDonationExtensionRequestHandler
- (void)beginRequestWithExtensionContext:(id)context;
- (void)redonateAllValuesWithReason:(unint64_t)reason;
- (void)renewExpirationDateForDonatedValue:(id)value acknowledgementHandler:(id)handler;
- (void)userDidRejectDonatedValue:(id)value;
@end

@implementation CNDonationExtensionRequestHandler

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [contextCopy setRequestHandler:self];
  }

  else
  {
    v4 = objc_opt_class();

    contextCopy = NSStringFromClass(v4);
    NSLog(&cfstr_RemoteContextW.isa, contextCopy);
  }
}

- (void)renewExpirationDateForDonatedValue:(id)value acknowledgementHandler:(id)handler
{
  valueCopy = value;
  handlerCopy = handler;
  selfCopy = self;
  v9 = CNAbstractMethodException();
  objc_exception_throw(v9);
}

- (void)userDidRejectDonatedValue:(id)value
{
  valueCopy = value;
  selfCopy = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

- (void)redonateAllValuesWithReason:(unint64_t)reason
{
  selfCopy = self;
  v4 = CNAbstractMethodException();
  objc_exception_throw(v4);
}

@end