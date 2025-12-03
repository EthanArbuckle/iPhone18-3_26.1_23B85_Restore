@interface SSUMatcherWeakRef
- (SNLPSSUMatcher)matcher;
- (SSUMatcherWeakRef)initWithMatcher:(id)matcher;
@end

@implementation SSUMatcherWeakRef

- (SNLPSSUMatcher)matcher
{
  WeakRetained = objc_loadWeakRetained(&self->_matcher);

  return WeakRetained;
}

- (SSUMatcherWeakRef)initWithMatcher:(id)matcher
{
  v6.receiver = self;
  v6.super_class = SSUMatcherWeakRef;
  matcherCopy = matcher;
  v4 = [(SSUMatcherWeakRef *)&v6 init];
  objc_storeWeak(&v4->_matcher, matcherCopy);

  return v4;
}

@end