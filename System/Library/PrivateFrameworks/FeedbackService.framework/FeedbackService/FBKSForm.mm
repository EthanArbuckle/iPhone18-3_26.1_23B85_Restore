@interface FBKSForm
- (FBKSForm)initWithIdentifier:(id)identifier;
- (NSString)identifier;
- (void)prefill:(id)prefill answer:(id)answer;
- (void)setAuthenticationMethod:(int64_t)method;
@end

@implementation FBKSForm

- (FBKSForm)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = FBKSForm;
  v5 = [(FBKSForm *)&v9 init];
  if (v5)
  {
    v6 = [[FBKSForm_FrameworkPrivateName alloc] initWithIdentifier:identifierCopy];
    swiftObject = v5->_swiftObject;
    v5->_swiftObject = v6;
  }

  return v5;
}

- (NSString)identifier
{
  swiftObject = [(FBKSForm *)self swiftObject];
  identifier = [swiftObject identifier];

  return identifier;
}

- (void)setAuthenticationMethod:(int64_t)method
{
  swiftObject = [(FBKSForm *)self swiftObject];
  [swiftObject setAuthenticationMethod:method];

  self->_authenticationMethod = method;
}

- (void)prefill:(id)prefill answer:(id)answer
{
  answerCopy = answer;
  prefillCopy = prefill;
  swiftObject = [(FBKSForm *)self swiftObject];
  [swiftObject prefillWithQuestion:prefillCopy answer:answerCopy];
}

@end