@interface HPSAssertion
- (HPSAssertion)initWithIdentifier:(id)a3 assertionType:(unint64_t)a4 connectionProvider:(id)a5;
- (NSString)identifier;
- (void)invalidate;
- (void)invalidateWithCompletion:(id)a3;
@end

@implementation HPSAssertion

- (NSString)identifier
{
  sub_2542E202C();
  v2 = sub_2543A2858();

  return v2;
}

- (HPSAssertion)initWithIdentifier:(id)a3 assertionType:(unint64_t)a4 connectionProvider:(id)a5
{
  sub_2543A2878();
  swift_unknownObjectRetain();
  return Assertion.init(identifier:assertionType:connectionProvider:)();
}

- (void)invalidate
{
  v2 = self;
  sub_2542E2A24();
}

- (void)invalidateWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_2542E2A84(v5, v4);
  _Block_release(v4);
}

@end