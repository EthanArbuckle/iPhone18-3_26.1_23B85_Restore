@interface FLApprovedItemsDecorator
+ (void)_updateForExternalUsage:(id)usage;
+ (void)_updateForInternalUsage:(id)usage;
+ (void)decorateUnknownItem:(id)item;
@end

@implementation FLApprovedItemsDecorator

+ (void)decorateUnknownItem:(id)item
{
  itemCopy = item;
  v4 = +[FLEnvironment currentEnvironment];
  if ([v4 isInternal])
  {
    v5 = +[FLEnvironment currentEnvironment];
    shouldShowUnapprovedItems = [v5 shouldShowUnapprovedItems];

    if (shouldShowUnapprovedItems)
    {
      [self _updateForInternalUsage:itemCopy];
      goto LABEL_6;
    }
  }

  else
  {
  }

  [self _updateForExternalUsage:itemCopy];
LABEL_6:
}

+ (void)_updateForInternalUsage:(id)usage
{
  v3 = MEMORY[0x277CCACA8];
  usageCopy = usage;
  informativeText = [usageCopy informativeText];
  v5 = [v3 stringWithFormat:@"%@\n%@", @"**Internal Only - Follow Up not approved**", informativeText];
  [usageCopy setInformativeText:v5];

  v6 = MEMORY[0x277CCACA8];
  notification = [usageCopy notification];
  title = [notification title];
  v9 = [v6 stringWithFormat:@"%@\n%@", @"**Internal Only - Follow Up not approved**", title];
  notification2 = [usageCopy notification];
  [notification2 setTitle:v9];

  [usageCopy setGroupIdentifier:@"com.apple.followup.group.unknown"];
}

+ (void)_updateForExternalUsage:(id)usage
{
  usageCopy = usage;
  [usageCopy setTargetBundleIdentifier:0];
  [usageCopy setNotification:0];
}

@end