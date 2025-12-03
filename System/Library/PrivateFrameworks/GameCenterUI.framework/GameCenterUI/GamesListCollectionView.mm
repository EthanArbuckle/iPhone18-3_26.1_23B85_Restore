@interface GamesListCollectionView
- (BOOL)canBecomeFocused;
@end

@implementation GamesListCollectionView

- (BOOL)canBecomeFocused
{
  selfCopy = self;
  v3 = sub_24E2C81C4();

  return v3 & 1;
}

@end