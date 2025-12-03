@interface FavoriteSectionController
- (void)handleLongPress:(id)press;
@end

@implementation FavoriteSectionController

- (void)handleLongPress:(id)press
{
  pressCopy = press;

  if ([pressCopy state] == 3)
  {
    sub_1CFBCD8F8();
  }
}

@end