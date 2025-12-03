@interface HPSAssertion
- (HPSAssertion)initWithIdentifier:(id)identifier assertionType:(unint64_t)type connectionProvider:(id)provider;
- (NSString)identifier;
- (void)invalidate;
- (void)invalidateWithCompletion:(id)completion;
@end

@implementation HPSAssertion

- (NSString)identifier
{
  sub_2542E202C();
  v2 = sub_2543A2858();

  return v2;
}

- (HPSAssertion)initWithIdentifier:(id)identifier assertionType:(unint64_t)type connectionProvider:(id)provider
{
  sub_2543A2878();
  swift_unknownObjectRetain();
  return Assertion.init(identifier:assertionType:connectionProvider:)();
}

- (void)invalidate
{
  selfCopy = self;
  sub_2542E2A24();
}

- (void)invalidateWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_2542E2A84(selfCopy, v4);
  _Block_release(v4);
}

@end