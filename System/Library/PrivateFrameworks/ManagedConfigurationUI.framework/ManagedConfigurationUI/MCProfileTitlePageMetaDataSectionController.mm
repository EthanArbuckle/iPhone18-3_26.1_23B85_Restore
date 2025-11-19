@interface MCProfileTitlePageMetaDataSectionController
- (MCProfileTitlePageMetaDataSectionController)initWithProfile:(id)a3;
- (MCProfileTitlePageOrganizationCell)orgCell;
- (MCProfileTitlePageSettingsIconCell)iconCell;
- (MCProfileTitlePageSubtitleCell)subtitleCell;
- (MCProfileTitlePageTitleCell)titleCell;
- (UITableView)tableView;
- (double)heightForRowAtIndex:(unint64_t)a3;
- (id)cellForRowAtIndex:(unint64_t)a3;
- (void)registerCellClassWithTableView:(id)a3;
@end

@implementation MCProfileTitlePageMetaDataSectionController

- (MCProfileTitlePageMetaDataSectionController)initWithProfile:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MCProfileTitlePageMetaDataSectionController;
  v6 = [(MCProfileTitlePageMetaDataSectionController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, a3);
  }

  return v7;
}

- (void)registerCellClassWithTableView:(id)a3
{
  v4 = a3;
  [(MCProfileTitlePageMetaDataSectionController *)self setTableView:v4];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"iconCell"];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"titleCell"];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"subtitleCell"];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"organizationCell"];
}

- (id)cellForRowAtIndex:(unint64_t)a3
{
  if (a3 == 2)
  {
    v11 = [(MCProfileTitlePageMetaDataSectionController *)self profile];
    v12 = [v11 organization];
    v13 = [(MCProfileTitlePageMetaDataSectionController *)self orgCell];
    [v13 setOrganizationName:v12];

    v14 = [(MCProfileTitlePageMetaDataSectionController *)self profile];
    v15 = [v14 payloadsWithClass:objc_opt_class()];
    v16 = [v15 firstObject];
    v17 = [v16 managedAppleID];
    v18 = [(MCProfileTitlePageMetaDataSectionController *)self orgCell];
    [v18 setAppleID:v17];

    v7 = [(MCProfileTitlePageMetaDataSectionController *)self orgCell];
  }

  else if (a3 == 1)
  {
    v8 = MCUILocalizedString(@"USER_ENROLLMENT_DESCRIPTION");
    v9 = [(MCProfileTitlePageMetaDataSectionController *)self subtitleCell];
    v10 = [v9 titleLabel];
    [v10 setText:v8];

    v7 = [(MCProfileTitlePageMetaDataSectionController *)self subtitleCell];
  }

  else if (a3)
  {
    v7 = 0;
  }

  else
  {
    v4 = MCUILocalizedString(@"USER_ENROLLMENT");
    v5 = [(MCProfileTitlePageMetaDataSectionController *)self titleCell];
    v6 = [v5 titleLabel];
    [v6 setText:v4];

    v7 = [(MCProfileTitlePageMetaDataSectionController *)self titleCell];
  }

  return v7;
}

- (double)heightForRowAtIndex:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 75.0;
  }

  if (a3 == 1)
  {
    return *MEMORY[0x277D76F30];
  }

  if (a3)
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