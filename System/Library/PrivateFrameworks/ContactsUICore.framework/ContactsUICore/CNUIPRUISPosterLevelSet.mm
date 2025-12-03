@interface CNUIPRUISPosterLevelSet
- (CNUIPRUISPosterLevelSet)initWithWrappedLevelSet:(id)set;
@end

@implementation CNUIPRUISPosterLevelSet

- (CNUIPRUISPosterLevelSet)initWithWrappedLevelSet:(id)set
{
  setCopy = set;
  v9.receiver = self;
  v9.super_class = CNUIPRUISPosterLevelSet;
  v6 = [(CNUIPRUISPosterLevelSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedLevelSet, set);
  }

  return v7;
}

@end