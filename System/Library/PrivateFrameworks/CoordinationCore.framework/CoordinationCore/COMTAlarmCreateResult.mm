@interface COMTAlarmCreateResult
- (COMTAlarmCreateResult)initWithActionIdentifier:(id)identifier;
- (COMTAlarmCreateResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMTAlarmCreateResult

- (COMTAlarmCreateResult)initWithActionIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = COMTAlarmCreateResult;
  return [(COMTResult *)&v4 initWithActionIdentifier:identifier];
}

- (COMTAlarmCreateResult)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = COMTAlarmCreateResult;
  return [(COMTResult *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = COMTAlarmCreateResult;
  [(COMTResult *)&v3 encodeWithCoder:coder];
}

@end