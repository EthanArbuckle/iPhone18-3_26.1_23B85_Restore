@interface MCSignInPageTitleSectionController
- (id)cellForRowAtIndex:(unint64_t)index;
@end

@implementation MCSignInPageTitleSectionController

- (id)cellForRowAtIndex:(unint64_t)index
{
  if (index == 1)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = MCUILocalizedString(@"SIGN_IN_TO_%@");
    orgName = [(MCSignInPageTitleSectionController *)self orgName];
    v11 = [v8 stringWithFormat:v9, orgName];
    subtitleCell = [(MCProfileTitlePageMetaDataSectionController *)self subtitleCell];
    titleLabel = [subtitleCell titleLabel];
    [titleLabel setText:v11];

    subtitleCell2 = [(MCProfileTitlePageMetaDataSectionController *)self subtitleCell];
  }

  else if (index)
  {
    subtitleCell2 = 0;
  }

  else
  {
    v4 = MCUILocalizedString(@"SIGN_IN");
    titleCell = [(MCProfileTitlePageMetaDataSectionController *)self titleCell];
    titleLabel2 = [titleCell titleLabel];
    [titleLabel2 setText:v4];

    subtitleCell2 = [(MCProfileTitlePageMetaDataSectionController *)self titleCell];
  }

  return subtitleCell2;
}

@end