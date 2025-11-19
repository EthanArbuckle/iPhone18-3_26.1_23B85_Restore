@interface FBKSForm
- (FBKSForm)initWithIdentifier:(id)a3;
- (NSString)identifier;
- (void)prefill:(id)a3 answer:(id)a4;
- (void)setAuthenticationMethod:(int64_t)a3;
@end

@implementation FBKSForm

- (FBKSForm)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FBKSForm;
  v5 = [(FBKSForm *)&v9 init];
  if (v5)
  {
    v6 = [[FBKSForm_FrameworkPrivateName alloc] initWithIdentifier:v4];
    swiftObject = v5->_swiftObject;
    v5->_swiftObject = v6;
  }

  return v5;
}

- (NSString)identifier
{
  v2 = [(FBKSForm *)self swiftObject];
  v3 = [v2 identifier];

  return v3;
}

- (void)setAuthenticationMethod:(int64_t)a3
{
  v5 = [(FBKSForm *)self swiftObject];
  [v5 setAuthenticationMethod:a3];

  self->_authenticationMethod = a3;
}

- (void)prefill:(id)a3 answer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FBKSForm *)self swiftObject];
  [v8 prefillWithQuestion:v7 answer:v6];
}

@end