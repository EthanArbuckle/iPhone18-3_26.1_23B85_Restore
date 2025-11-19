@interface DDSupportLinkAction
- (id)localizedName;
@end

@implementation DDSupportLinkAction

- (id)localizedName
{
  v2 = [(DDOpenURLAction *)self appLink];
  v3 = [v2 targetApplicationRecord];
  v4 = [v3 localizedName];

  if (dd_isLSTrusted() && [v4 length])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = DDLocalizedString(@"Get Help in %@");
    [v5 localizedStringWithFormat:v6, v4];
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