@interface MCSignInPageTitleSectionController
- (id)cellForRowAtIndex:(unint64_t)a3;
@end

@implementation MCSignInPageTitleSectionController

- (id)cellForRowAtIndex:(unint64_t)a3
{
  if (a3 == 1)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = MCUILocalizedString(@"SIGN_IN_TO_%@");
    v10 = [(MCSignInPageTitleSectionController *)self orgName];
    v11 = [v8 stringWithFormat:v9, v10];
    v12 = [(MCProfileTitlePageMetaDataSectionController *)self subtitleCell];
    v13 = [v12 titleLabel];
    [v13 setText:v11];

    v7 = [(MCProfileTitlePageMetaDataSectionController *)self subtitleCell];
  }

  else if (a3)
  {
    v7 = 0;
  }

  else
  {
    v4 = MCUILocalizedString(@"SIGN_IN");
    v5 = [(MCProfileTitlePageMetaDataSectionController *)self titleCell];
    v6 = [v5 titleLabel];
    [v6 setText:v4];

    v7 = [(MCProfileTitlePageMetaDataSectionController *)self titleCell];
  }

  return v7;
}

@end