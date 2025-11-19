@interface HPSDisableAssistantAssertion
- (HPSDisableAssistantAssertion)initWithIdentifier:(id)a3 connectionProvider:(id)a4;
- (NSString)identifier;
- (void)dealloc;
- (void)invalidateWithCompletion:(id)a3;
@end

@implementation HPSDisableAssistantAssertion

- (HPSDisableAssistantAssertion)initWithIdentifier:(id)a3 connectionProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HPSDisableAssistantAssertion;
  v8 = [(HPSDisableAssistantAssertion *)&v12 init];
  if (v8)
  {
    v9 = [[HPSAssertion alloc] initWithIdentifier:v6 assertionType:1 connectionProvider:v7];
    assertion = v8->_assertion;
    v8->_assertion = v9;
  }

  return v8;
}

- (NSString)identifier
{
  v2 = [(HPSDisableAssistantAssertion *)self assertion];
  v3 = [v2 identifier];

  return v3;
}

- (void)invalidateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HPSDisableAssistantAssertion *)self assertion];
  [v5 invalidateWithCompletion:v4];
}

- (void)dealloc
{
  v3 = [(HPSDisableAssistantAssertion *)self assertion];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = HPSDisableAssistantAssertion;
  [(HPSDisableAssistantAssertion *)&v4 dealloc];
}

@end