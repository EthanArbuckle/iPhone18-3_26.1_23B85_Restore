@interface COMTTimerCreateResult
- (COMTTimerCreateResult)initWithActionIdentifier:(id)identifier;
- (COMTTimerCreateResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMTTimerCreateResult

- (COMTTimerCreateResult)initWithActionIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = COMTTimerCreateResult;
  return [(COMTResult *)&v4 initWithActionIdentifier:identifier];
}

- (COMTTimerCreateResult)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = COMTTimerCreateResult;
  return [(COMTResult *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = COMTTimerCreateResult;
  [(COMTResult *)&v3 encodeWithCoder:coder];
}

@end