@interface HPSDisableAssistantAssertion
- (HPSDisableAssistantAssertion)initWithIdentifier:(id)identifier connectionProvider:(id)provider;
- (NSString)identifier;
- (void)dealloc;
- (void)invalidateWithCompletion:(id)completion;
@end

@implementation HPSDisableAssistantAssertion

- (HPSDisableAssistantAssertion)initWithIdentifier:(id)identifier connectionProvider:(id)provider
{
  identifierCopy = identifier;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = HPSDisableAssistantAssertion;
  v8 = [(HPSDisableAssistantAssertion *)&v12 init];
  if (v8)
  {
    v9 = [[HPSAssertion alloc] initWithIdentifier:identifierCopy assertionType:1 connectionProvider:providerCopy];
    assertion = v8->_assertion;
    v8->_assertion = v9;
  }

  return v8;
}

- (NSString)identifier
{
  assertion = [(HPSDisableAssistantAssertion *)self assertion];
  identifier = [assertion identifier];

  return identifier;
}

- (void)invalidateWithCompletion:(id)completion
{
  completionCopy = completion;
  assertion = [(HPSDisableAssistantAssertion *)self assertion];
  [assertion invalidateWithCompletion:completionCopy];
}

- (void)dealloc
{
  assertion = [(HPSDisableAssistantAssertion *)self assertion];
  [assertion invalidate];

  v4.receiver = self;
  v4.super_class = HPSDisableAssistantAssertion;
  [(HPSDisableAssistantAssertion *)&v4 dealloc];
}

@end