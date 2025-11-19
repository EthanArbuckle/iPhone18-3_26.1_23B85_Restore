@interface DMCCertificateDetailsViewController
- (DMCCertificateDetailsViewController)init;
- (DMCCertificateDetailsViewController)initWithCertificate:(__SecCertificate *)a3;
- (DMCCertificateDetailsViewController)initWithCertificateProperties:(id)a3;
- (DMCCertificateDetailsViewController)initWithStyle:(int64_t)a3;
- (DMCCertificateDetailsViewController)initWithTrust:(__SecTrust *)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
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

- (DMCCertificateDetailsViewController)initWithStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = DMCCertificateDetailsViewController;
  v3 = [(DMCProfileTableViewController *)&v6 initWithStyle:a3];
  v4 = v3;
  if (v3)
  {
    [(DMCCertificateDetailsViewController *)v3 _setup];
  }

  return v4;
}

- (DMCCertificateDetailsViewController)initWithCertificate:(__SecCertificate *)a3
{
  v10.receiver = self;
  v10.super_class = DMCCertificateDetailsViewController;
  v4 = [(DMCProfileTableViewController *)&v10 initWithStyle:2];
  if (v4)
  {
    v5 = [[DMCCertificateProperties alloc] initWithCertificate:a3];
    v6 = [(DMCCertificateProperties *)v5 sections];
    if ([v6 count])
    {
      objc_storeStrong(&v4->_keyValueSections, v6);
      v7 = [(DMCCertificateProperties *)v5 sectionTitles];
      keyValueSectionTitles = v4->_keyValueSectionTitles;
      v4->_keyValueSectionTitles = v7;
    }

    [(DMCCertificateDetailsViewController *)v4 _setup];
  }

  return v4;
}

- (DMCCertificateDetailsViewController)initWithCertificateProperties:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DMCCertificateDetailsViewController;
  v5 = [(DMCProfileTableViewController *)&v11 initWithStyle:2];
  if (v5)
  {
    v6 = [[DMCCertificateProperties alloc] initWithCertificateProperties:v4];
    v7 = [(DMCCertificateProperties *)v6 sections];
    if ([v7 count])
    {
      objc_storeStrong(&v5->_keyValueSections, v7);
      v8 = [(DMCCertificateProperties *)v6 sectionTitles];
      keyValueSectionTitles = v5->_keyValueSectionTitles;
      v5->_keyValueSectionTitles = v8;
    }

    [(DMCCertificateDetailsViewController *)v5 _setup];
  }

  return v5;
}

- (DMCCertificateDetailsViewController)initWithTrust:(__SecTrust *)a3
{
  v11.receiver = self;
  v11.super_class = DMCCertificateDetailsViewController;
  v4 = [(DMCProfileTableViewController *)&v11 initWithStyle:2];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_certificateTrust, a3);
    v6 = [[DMCCertificateProperties alloc] initWithTrust:a3];
    v7 = [(DMCCertificateProperties *)v6 sections];
    if ([v7 count])
    {
      objc_storeStrong(&v5->_keyValueSections, v7);
      v8 = [(DMCCertificateProperties *)v6 sectionTitles];
      keyValueSectionTitles = v5->_keyValueSectionTitles;
      v5->_keyValueSectionTitles = v8;
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
  v3 = [(DMCCertificateDetailsViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"CertificateDetailsCell"];

  v4 = DMCEnrollmentLocalizedString(@"DMC_GENERAL_DETAILS");
  v5 = [(DMCCertificateDetailsViewController *)self navigationItem];
  [v5 setTitle:v4];

  v6.receiver = self;
  v6.super_class = DMCCertificateDetailsViewController;
  [(DMCProfileTableViewController *)&v6 reloadTableOnContentSizeCategoryChange];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(DMCCertificateDetailsViewController *)self keyValueSections];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(DMCCertificateDetailsViewController *)self keyValueSections];
  v7 = [v6 count];

  if (v7 <= a4)
  {
    return 0;
  }

  v8 = [(DMCCertificateDetailsViewController *)self keyValueSections];
  v9 = [v8 objectAtIndex:a4];

  v10 = ([v9 count] >> 1);
  return v10;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(DMCCertificateDetailsViewController *)self keyValueSectionTitles];
  v7 = [v6 count];

  if (v7 <= a4)
  {
    v9 = 0;
  }

  else
  {
    v8 = [(DMCCertificateDetailsViewController *)self keyValueSectionTitles];
    v9 = [v8 objectAtIndex:a4];
  }

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DMCCertificateDetailsViewController *)self keyValueSections];
  v9 = [v8 objectAtIndex:{objc_msgSend(v6, "section")}];

  v10 = [v9 objectAtIndex:{2 * objc_msgSend(v6, "row")}];
  v11 = [v9 objectAtIndex:{(2 * objc_msgSend(v6, "row")) | 1}];
  v12 = [v7 dequeueReusableCellWithIdentifier:@"CertificateDetailsCell" forIndexPath:v6];

  [v12 setDetail:v10 value:v11];

  return v12;
}

@end