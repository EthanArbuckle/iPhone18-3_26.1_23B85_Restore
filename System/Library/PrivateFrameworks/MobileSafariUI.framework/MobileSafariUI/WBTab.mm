@interface WBTab
- (id)displayTitle;
@end

@implementation WBTab

- (id)displayTitle
{
  selfCopy = self;
  if (self)
  {
    v2 = [self url];

    if (v2)
    {
      selfCopy = [selfCopy title];
    }

    else
    {
      v3 = +[Application sharedApplication];
      automationController = [v3 automationController];
      automationSession = [automationController automationSession];
      selfCopy = [TabDocument blankTabTitleWithLibraryType:0 controlledByAutomation:automationSession != 0];
    }
  }

  return selfCopy;
}

@end