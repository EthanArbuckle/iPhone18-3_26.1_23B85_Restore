@interface SSUMatcherWeakRef
- (SNLPSSUMatcher)matcher;
- (SSUMatcherWeakRef)initWithMatcher:(id)a3;
@end

@implementation SSUMatcherWeakRef

- (SNLPSSUMatcher)matcher
{
  WeakRetained = objc_loadWeakRetained(&self->_matcher);

  return WeakRetained;
}

- (SSUMatcherWeakRef)initWithMatcher:(id)a3
{
  v6.receiver = self;
  v6.super_class = SSUMatcherWeakRef;
  v3 = a3;
  v4 = [(SSUMatcherWeakRef *)&v6 init];
  objc_storeWeak(&v4->_matcher, v3);

  return v4;
}

@end