@interface DMCCertificateDetailsViewController
- (DMCCertificateDetailsViewController)init;
- (DMCCertificateDetailsViewController)initWithCertificate:(__SecCertificate *)certificate;
- (DMCCertificateDetailsViewController)initWithCertificateProperties:(id)properties;
- (DMCCertificateDetailsViewController)initWithStyle:(int64_t)style;
- (DMCCertificateDetailsViewController)initWithTrust:(__SecTrust *)trust;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_setup;
@end

@implementation DMCCertificateDetailsViewController

- (DMCCertificateDetailsViewController)init
{
  v5.receiver = self;
  v5.super_class = DMCCertificateDetailsViewController;
  v2 = [(DMCProfileTableViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DMCCertificateDetailsViewController *)v2 _setup];
  }

  return v3;
}

- (DMCCertificateDetailsViewController)initWithStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = DMCCertificateDetailsViewController;
  v3 = [(DMCProfileTableViewController *)&v6 initWithStyle:style];
  v4 = v3;
  if (v3)
  {
    [(DMCCertificateDetailsViewController *)v3 _setup];
  }

  return v4;
}

- (DMCCertificateDetailsViewController)initWithCertificate:(__SecCertificate *)certificate
{
  v10.receiver = self;
  v10.super_class = DMCCertificateDetailsViewController;
  v4 = [(DMCProfileTableViewController *)&v10 initWithStyle:2];
  if (v4)
  {
    v5 = [[DMCCertificateProperties alloc] initWithCertificate:certificate];
    sections = [(DMCCertificateProperties *)v5 sections];
    if ([sections count])
    {
      objc_storeStrong(&v4->_keyValueSections, sections);
      sectionTitles = [(DMCCertificateProperties *)v5 sectionTitles];
      keyValueSectionTitles = v4->_keyValueSectionTitles;
      v4->_keyValueSectionTitles = sectionTitles;
    }

    [(DMCCertificateDetailsViewController *)v4 _setup];
  }

  return v4;
}

- (DMCCertificateDetailsViewController)initWithCertificateProperties:(id)properties
{
  propertiesCopy = properties;
  v11.receiver = self;
  v11.super_class = DMCCertificateDetailsViewController;
  v5 = [(DMCProfileTableViewController *)&v11 initWithStyle:2];
  if (v5)
  {
    v6 = [[DMCCertificateProperties alloc] initWithCertificateProperties:propertiesCopy];
    sections = [(DMCCertificateProperties *)v6 sections];
    if ([sections count])
    {
      objc_storeStrong(&v5->_keyValueSections, sections);
      sectionTitles = [(DMCCertificateProperties *)v6 sectionTitles];
      keyValueSectionTitles = v5->_keyValueSectionTitles;
      v5->_keyValueSectionTitles = sectionTitles;
    }

    [(DMCCertificateDetailsViewController *)v5 _setup];
  }

  return v5;
}

- (DMCCertificateDetailsViewController)initWithTrust:(__SecTrust *)trust
{
  v11.receiver = self;
  v11.super_class = DMCCertificateDetailsViewController;
  v4 = [(DMCProfileTableViewController *)&v11 initWithStyle:2];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_certificateTrust, trust);
    v6 = [[DMCCertificateProperties alloc] initWithTrust:trust];
    sections = [(DMCCertificateProperties *)v6 sections];
    if ([sections count])
    {
      objc_storeStrong(&v5->_keyValueSections, sections);
      sectionTitles = [(DMCCertificateProperties *)v6 sectionTitles];
      keyValueSectionTitles = v5->_keyValueSectionTitles;
      v5->_keyValueSectionTitles = sectionTitles;
    }

    [(DMCCertificateDetailsViewController *)v5 _setup];
  }

  return v5;
}

- (void)_setup
{
  v7.receiver = self;
  v7.super_class = DMCCertificateDetailsViewController;
  [(DMCProfileTableViewController *)&v7 updateExtendedLayoutIncludesOpaqueBars];
  tableView = [(DMCCertificateDetailsViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"CertificateDetailsCell"];

  v4 = DMCEnrollmentLocalizedString(@"DMC_GENERAL_DETAILS");
  navigationItem = [(DMCCertificateDetailsViewController *)self navigationItem];
  [navigationItem setTitle:v4];

  v6.receiver = self;
  v6.super_class = DMCCertificateDetailsViewController;
  [(DMCProfileTableViewController *)&v6 reloadTableOnContentSizeCategoryChange];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  keyValueSections = [(DMCCertificateDetailsViewController *)self keyValueSections];
  v4 = [keyValueSections count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  keyValueSections = [(DMCCertificateDetailsViewController *)self keyValueSections];
  v7 = [keyValueSections count];

  if (v7 <= section)
  {
    return 0;
  }

  keyValueSections2 = [(DMCCertificateDetailsViewController *)self keyValueSections];
  v9 = [keyValueSections2 objectAtIndex:section];

  v10 = ([v9 count] >> 1);
  return v10;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  keyValueSectionTitles = [(DMCCertificateDetailsViewController *)self keyValueSectionTitles];
  v7 = [keyValueSectionTitles count];

  if (v7 <= section)
  {
    v9 = 0;
  }

  else
  {
    keyValueSectionTitles2 = [(DMCCertificateDetailsViewController *)self keyValueSectionTitles];
    v9 = [keyValueSectionTitles2 objectAtIndex:section];
  }

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  keyValueSections = [(DMCCertificateDetailsViewController *)self keyValueSections];
  v9 = [keyValueSections objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  v10 = [v9 objectAtIndex:{2 * objc_msgSend(pathCopy, "row")}];
  v11 = [v9 objectAtIndex:{(2 * objc_msgSend(pathCopy, "row")) | 1}];
  v12 = [viewCopy dequeueReusableCellWithIdentifier:@"CertificateDetailsCell" forIndexPath:pathCopy];

  [v12 setDetail:v10 value:v11];

  return v12;
}

@end