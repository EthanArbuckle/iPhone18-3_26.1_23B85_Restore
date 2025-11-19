@interface FLApprovedItemsDecorator
+ (void)_updateForExternalUsage:(id)a3;
+ (void)_updateForInternalUsage:(id)a3;
+ (void)decorateUnknownItem:(id)a3;
@end

@implementation FLApprovedItemsDecorator

+ (void)decorateUnknownItem:(id)a3
{
  v7 = a3;
  v4 = +[FLEnvironment currentEnvironment];
  if ([v4 isInternal])
  {
    v5 = +[FLEnvironment currentEnvironment];
    v6 = [v5 shouldShowUnapprovedItems];

    if (v6)
    {
      [a1 _updateForInternalUsage:v7];
      goto LABEL_6;
    }
  }

  else
  {
  }

  [a1 _updateForExternalUsage:v7];
LABEL_6:
}

+ (void)_updateForInternalUsage:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v11 = a3;
  v4 = [v11 informativeText];
  v5 = [v3 stringWithFormat:@"%@\n%@", @"**Internal Only - Follow Up not approved**", v4];
  [v11 setInformativeText:v5];

  v6 = MEMORY[0x277CCACA8];
  v7 = [v11 notification];
  v8 = [v7 title];
  v9 = [v6 stringWithFormat:@"%@\n%@", @"**Internal Only - Follow Up not approved**", v8];
  v10 = [v11 notification];
  [v10 setTitle:v9];

  [v11 setGroupIdentifier:@"com.apple.followup.group.unknown"];
}

+ (void)_updateForExternalUsage:(id)a3
{
  v3 = a3;
  [v3 setTargetBundleIdentifier:0];
  [v3 setNotification:0];
}

@end