@interface UINavigationItem(MobileSafariFrameworkExtras)
- (BOOL)sf_isEmpty;
- (id)sf_preferredDismissOrDoneButtonItem;
- (void)sf_setPreferredDismissOrDoneButtonItem:()MobileSafariFrameworkExtras;
@end

@implementation UINavigationItem(MobileSafariFrameworkExtras)

- (BOOL)sf_isEmpty
{
  title = [self title];
  if ([title length])
  {
    v3 = 0;
  }

  else
  {
    leftBarButtonItems = [self leftBarButtonItems];
    if ([leftBarButtonItems count])
    {
      v3 = 0;
    }

    else
    {
      rightBarButtonItems = [self rightBarButtonItems];
      v3 = [rightBarButtonItems count] == 0;
    }
  }

  return v3;
}

- (id)sf_preferredDismissOrDoneButtonItem
{
  if ([self _sf_prefersDismissOrDoneButtonOnLeft])
  {
    [self leftBarButtonItem];
  }

  else
  {
    [self rightBarButtonItem];
  }
  v2 = ;

  return v2;
}

- (void)sf_setPreferredDismissOrDoneButtonItem:()MobileSafariFrameworkExtras
{
  v4 = a3;
  if ([self _sf_prefersDismissOrDoneButtonOnLeft])
  {
    [self setLeftBarButtonItem:v4];
  }

  else
  {
    [self setRightBarButtonItem:v4];
  }
}

@end