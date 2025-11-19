@interface UINavigationItem(MobileSafariFrameworkExtras)
- (BOOL)sf_isEmpty;
- (id)sf_preferredDismissOrDoneButtonItem;
- (void)sf_setPreferredDismissOrDoneButtonItem:()MobileSafariFrameworkExtras;
@end

@implementation UINavigationItem(MobileSafariFrameworkExtras)

- (BOOL)sf_isEmpty
{
  v2 = [a1 title];
  if ([v2 length])
  {
    v3 = 0;
  }

  else
  {
    v4 = [a1 leftBarButtonItems];
    if ([v4 count])
    {
      v3 = 0;
    }

    else
    {
      v5 = [a1 rightBarButtonItems];
      v3 = [v5 count] == 0;
    }
  }

  return v3;
}

- (id)sf_preferredDismissOrDoneButtonItem
{
  if ([a1 _sf_prefersDismissOrDoneButtonOnLeft])
  {
    [a1 leftBarButtonItem];
  }

  else
  {
    [a1 rightBarButtonItem];
  }
  v2 = ;

  return v2;
}

- (void)sf_setPreferredDismissOrDoneButtonItem:()MobileSafariFrameworkExtras
{
  v4 = a3;
  if ([a1 _sf_prefersDismissOrDoneButtonOnLeft])
  {
    [a1 setLeftBarButtonItem:v4];
  }

  else
  {
    [a1 setRightBarButtonItem:v4];
  }
}

@end