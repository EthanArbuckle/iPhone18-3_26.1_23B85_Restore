@interface GKMatchBackgroundAssertionManager
+ (GKMatchBackgroundAssertionManager)shared;
- (RBSAssertion)activeAssertion;
- (void)acquire;
- (void)assertionWillInvalidate:(id)a3;
- (void)invalidate;
- (void)setActiveAssertion:(id)a3;
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

- (void)setActiveAssertion:(id)a3
{
  v5 = a3;
  v6 = self;
  MatchBackgroundAssertionManager.activeAssertion.setter(a3);
}

- (void)acquire
{
  v2 = self;
  MatchBackgroundAssertionManager.acquire()();
}

- (void)assertionWillInvalidate:(id)a3
{
  v4 = a3;
  v5 = self;
  MatchBackgroundAssertionManager.assertionWillInvalidate(_:)(v4);
}

- (void)invalidate
{
  v2 = self;
  MatchBackgroundAssertionManager.invalidate()();
}

@end