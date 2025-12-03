@interface CNUIPRPosterLevelSet
- (CNUIPRPosterLevelSet)initWithWrappedLevelSet:(id)set;
@end

@implementation CNUIPRPosterLevelSet

- (CNUIPRPosterLevelSet)initWithWrappedLevelSet:(id)set
{
  setCopy = set;
  v9.receiver = self;
  v9.super_class = CNUIPRPosterLevelSet;
  v6 = [(CNUIPRPosterLevelSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedLevelSet, set);
  }

  return v7;
}

@end