@interface CNUIPRUISPosterLevelSet
- (CNUIPRUISPosterLevelSet)initWithWrappedLevelSet:(id)a3;
@end

@implementation CNUIPRUISPosterLevelSet

- (CNUIPRUISPosterLevelSet)initWithWrappedLevelSet:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNUIPRUISPosterLevelSet;
  v6 = [(CNUIPRUISPosterLevelSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedLevelSet, a3);
  }

  return v7;
}

@end