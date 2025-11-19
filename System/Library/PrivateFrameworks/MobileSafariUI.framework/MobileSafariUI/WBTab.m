@interface WBTab
- (id)displayTitle;
@end

@implementation WBTab

- (id)displayTitle
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 url];

    if (v2)
    {
      v1 = [v1 title];
    }

    else
    {
      v3 = +[Application sharedApplication];
      v4 = [v3 automationController];
      v5 = [v4 automationSession];
      v1 = [TabDocument blankTabTitleWithLibraryType:0 controlledByAutomation:v5 != 0];
    }
  }

  return v1;
}

@end