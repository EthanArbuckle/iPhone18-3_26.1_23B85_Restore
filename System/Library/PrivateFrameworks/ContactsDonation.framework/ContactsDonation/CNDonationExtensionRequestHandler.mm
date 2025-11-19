@interface CNDonationExtensionRequestHandler
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)redonateAllValuesWithReason:(unint64_t)a3;
- (void)renewExpirationDateForDonatedValue:(id)a3 acknowledgementHandler:(id)a4;
- (void)userDidRejectDonatedValue:(id)a3;
@end

@implementation CNDonationExtensionRequestHandler

- (void)beginRequestWithExtensionContext:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setRequestHandler:self];
  }

  else
  {
    v4 = objc_opt_class();

    v5 = NSStringFromClass(v4);
    NSLog(&cfstr_RemoteContextW.isa, v5);
  }
}

- (void)renewExpirationDateForDonatedValue:(id)a3 acknowledgementHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = CNAbstractMethodException();
  objc_exception_throw(v9);
}

- (void)userDidRejectDonatedValue:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = CNAbstractMethodException();
  objc_exception_throw(v6);
}

- (void)redonateAllValuesWithReason:(unint64_t)a3
{
  v3 = self;
  v4 = CNAbstractMethodException();
  objc_exception_throw(v4);
}

@end