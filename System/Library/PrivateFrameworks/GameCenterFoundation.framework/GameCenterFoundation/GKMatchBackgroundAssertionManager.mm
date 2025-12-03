@interface GKMatchBackgroundAssertionManager
+ (GKMatchBackgroundAssertionManager)shared;
- (RBSAssertion)activeAssertion;
- (void)acquire;
- (void)assertionWillInvalidate:(id)invalidate;
- (void)invalidate;
- (void)setActiveAssertion:(id)assertion;
@end

@implementation GKMatchBackgroundAssertionManager

+ (GKMatchBackgroundAssertionManager)shared
{
  matched = static MatchBackgroundAssertionManager.shared.getter();

  return matched;
}

- (RBSAssertion)activeAssertion
{
  matched = MatchBackgroundAssertionManager.activeAssertion.getter();

  return matched;
}

- (void)setActiveAssertion:(id)assertion
{
  assertionCopy = assertion;
  selfCopy = self;
  MatchBackgroundAssertionManager.activeAssertion.setter(assertion);
}

- (void)acquire
{
  selfCopy = self;
  MatchBackgroundAssertionManager.acquire()();
}

- (void)assertionWillInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  MatchBackgroundAssertionManager.assertionWillInvalidate(_:)(invalidateCopy);
}

- (void)invalidate
{
  selfCopy = self;
  MatchBackgroundAssertionManager.invalidate()();
}

@end