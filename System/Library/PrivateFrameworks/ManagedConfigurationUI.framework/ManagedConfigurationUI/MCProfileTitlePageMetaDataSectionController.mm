@interface MCProfileTitlePageMetaDataSectionController
- (MCProfileTitlePageMetaDataSectionController)initWithProfile:(id)profile;
- (MCProfileTitlePageOrganizationCell)orgCell;
- (MCProfileTitlePageSettingsIconCell)iconCell;
- (MCProfileTitlePageSubtitleCell)subtitleCell;
- (MCProfileTitlePageTitleCell)titleCell;
- (UITableView)tableView;
- (double)heightForRowAtIndex:(unint64_t)index;
- (id)cellForRowAtIndex:(unint64_t)index;
- (void)registerCellClassWithTableView:(id)view;
@end

@implementation MCProfileTitlePageMetaDataSectionController

- (MCProfileTitlePageMetaDataSectionController)initWithProfile:(id)profile
{
  profileCopy = profile;
  v9.receiver = self;
  v9.super_class = MCProfileTitlePageMetaDataSectionController;
  v6 = [(MCProfileTitlePageMetaDataSectionController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, profile);
  }

  return v7;
}

- (void)registerCellClassWithTableView:(id)view
{
  viewCopy = view;
  [(MCProfileTitlePageMetaDataSectionController *)self setTableView:viewCopy];
  [viewCopy registerClass:objc_opt_class() forCellReuseIdentifier:@"iconCell"];
  [viewCopy registerClass:objc_opt_class() forCellReuseIdentifier:@"titleCell"];
  [viewCopy registerClass:objc_opt_class() forCellReuseIdentifier:@"subtitleCell"];
  [viewCopy registerClass:objc_opt_class() forCellReuseIdentifier:@"organizationCell"];
}

- (id)cellForRowAtIndex:(unint64_t)index
{
  if (index == 2)
  {
    profile = [(MCProfileTitlePageMetaDataSectionController *)self profile];
    organization = [profile organization];
    orgCell = [(MCProfileTitlePageMetaDataSectionController *)self orgCell];
    [orgCell setOrganizationName:organization];

    profile2 = [(MCProfileTitlePageMetaDataSectionController *)self profile];
    v15 = [profile2 payloadsWithClass:objc_opt_class()];
    firstObject = [v15 firstObject];
    managedAppleID = [firstObject managedAppleID];
    orgCell2 = [(MCProfileTitlePageMetaDataSectionController *)self orgCell];
    [orgCell2 setAppleID:managedAppleID];

    orgCell3 = [(MCProfileTitlePageMetaDataSectionController *)self orgCell];
  }

  else if (index == 1)
  {
    v8 = MCUILocalizedString(@"USER_ENROLLMENT_DESCRIPTION");
    subtitleCell = [(MCProfileTitlePageMetaDataSectionController *)self subtitleCell];
    titleLabel = [subtitleCell titleLabel];
    [titleLabel setText:v8];

    orgCell3 = [(MCProfileTitlePageMetaDataSectionController *)self subtitleCell];
  }

  else if (index)
  {
    orgCell3 = 0;
  }

  else
  {
    v4 = MCUILocalizedString(@"USER_ENROLLMENT");
    titleCell = [(MCProfileTitlePageMetaDataSectionController *)self titleCell];
    titleLabel2 = [titleCell titleLabel];
    [titleLabel2 setText:v4];

    orgCell3 = [(MCProfileTitlePageMetaDataSectionController *)self titleCell];
  }

  return orgCell3;
}

- (double)heightForRowAtIndex:(unint64_t)index
{
  if (index == 2)
  {
    return 75.0;
  }

  if (index == 1)
  {
    return *MEMORY[0x277D76F30];
  }

  if (index)
  {
    return 0.0;
  }

  v3 = MCUIIsiPhone();
  result = 46.0;
  if (v3)
  {
    return 50.0;
  }

  return result;
}

- (MCProfileTitlePageSettingsIconCell)iconCell
{
  iconCell = self->_iconCell;
  if (!iconCell)
  {
    v4 = objc_opt_new();
    v5 = self->_iconCell;
    self->_iconCell = v4;

    iconCell = self->_iconCell;
  }

  return iconCell;
}

- (MCProfileTitlePageTitleCell)titleCell
{
  titleCell = self->_titleCell;
  if (!titleCell)
  {
    v4 = objc_opt_new();
    v5 = self->_titleCell;
    self->_titleCell = v4;

    titleCell = self->_titleCell;
  }

  return titleCell;
}

- (MCProfileTitlePageSubtitleCell)subtitleCell
{
  subtitleCell = self->_subtitleCell;
  if (!subtitleCell)
  {
    v4 = objc_opt_new();
    v5 = self->_subtitleCell;
    self->_subtitleCell = v4;

    subtitleCell = self->_subtitleCell;
  }

  return subtitleCell;
}

- (MCProfileTitlePageOrganizationCell)orgCell
{
  orgCell = self->_orgCell;
  if (!orgCell)
  {
    v4 = objc_opt_new();
    v5 = self->_orgCell;
    self->_orgCell = v4;

    orgCell = self->_orgCell;
  }

  return orgCell;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

@end