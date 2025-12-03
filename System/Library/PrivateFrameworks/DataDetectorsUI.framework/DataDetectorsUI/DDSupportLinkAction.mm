@interface DDSupportLinkAction
- (id)localizedName;
@end

@implementation DDSupportLinkAction

- (id)localizedName
{
  appLink = [(DDOpenURLAction *)self appLink];
  targetApplicationRecord = [appLink targetApplicationRecord];
  localizedName = [targetApplicationRecord localizedName];

  if (dd_isLSTrusted() && [localizedName length])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = DDLocalizedString(@"Get Help in %@");
    [v5 localizedStringWithFormat:v6, localizedName];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v6 = DDLocalizedString(@"Get Help");
    [v7 localizedStringWithFormat:v6, v10];
  }
  v8 = ;

  return v8;
}

@end