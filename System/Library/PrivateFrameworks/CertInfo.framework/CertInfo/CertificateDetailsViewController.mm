@interface CertificateDetailsViewController
- (CertificateDetailsViewController)init;
- (CertificateDetailsViewController)initWithCertificate:(__SecCertificate *)certificate;
- (CertificateDetailsViewController)initWithCertificateProperties:(id)properties;
- (CertificateDetailsViewController)initWithStyle:(int64_t)style;
- (CertificateDetailsViewController)initWithTrust:(__SecTrust *)trust;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_setup;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)preferredContentSizeChanged:(id)changed;
- (void)setCertificateProperties:(id)properties;
- (void)viewDidLoad;
@end

@implementation CertificateDetailsViewController

- (CertificateDetailsViewController)init
{
  v5.receiver = self;
  v5.super_class = CertificateDetailsViewController;
  v2 = [(CertificateDetailsViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CertificateDetailsViewController *)v2 _setup];
  }

  return v3;
}

- (CertificateDetailsViewController)initWithStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = CertificateDetailsViewController;
  v3 = [(CertificateDetailsViewController *)&v6 initWithStyle:style];
  v4 = v3;
  if (v3)
  {
    [(CertificateDetailsViewController *)v3 _setup];
  }

  return v4;
}

- (CertificateDetailsViewController)initWithCertificate:(__SecCertificate *)certificate
{
  v10.receiver = self;
  v10.super_class = CertificateDetailsViewController;
  v4 = [(CertificateDetailsViewController *)&v10 initWithStyle:1];
  if (v4)
  {
    v5 = [[CertUICertificatePropertiesInfo alloc] initWithCertificate:certificate];
    sections = [(CertUICertificatePropertiesInfo *)v5 sections];
    if ([sections count])
    {
      objc_storeStrong(&v4->_keyValueSections, sections);
      sectionTitles = [(CertUICertificatePropertiesInfo *)v5 sectionTitles];
      keyValueSectionTitles = v4->_keyValueSectionTitles;
      v4->_keyValueSectionTitles = sectionTitles;
    }

    [(CertificateDetailsViewController *)v4 _setup];
  }

  return v4;
}

- (CertificateDetailsViewController)initWithCertificateProperties:(id)properties
{
  propertiesCopy = properties;
  v11.receiver = self;
  v11.super_class = CertificateDetailsViewController;
  v5 = [(CertificateDetailsViewController *)&v11 initWithStyle:1];
  if (v5)
  {
    v6 = [[CertUICertificatePropertiesInfo alloc] initWithCertificateProperties:propertiesCopy];
    sections = [(CertUICertificatePropertiesInfo *)v6 sections];
    if ([sections count])
    {
      objc_storeStrong(&v5->_keyValueSections, sections);
      sectionTitles = [(CertUICertificatePropertiesInfo *)v6 sectionTitles];
      keyValueSectionTitles = v5->_keyValueSectionTitles;
      v5->_keyValueSectionTitles = sectionTitles;
    }

    [(CertificateDetailsViewController *)v5 _setup];
  }

  return v5;
}

- (CertificateDetailsViewController)initWithTrust:(__SecTrust *)trust
{
  v11.receiver = self;
  v11.super_class = CertificateDetailsViewController;
  v4 = [(CertificateDetailsViewController *)&v11 initWithStyle:1];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_certificateTrust, trust);
    v6 = [[CertUICertificatePropertiesInfo alloc] initWithTrust:trust];
    sections = [(CertUICertificatePropertiesInfo *)v6 sections];
    if ([sections count])
    {
      objc_storeStrong(&v5->_keyValueSections, sections);
      sectionTitles = [(CertUICertificatePropertiesInfo *)v6 sectionTitles];
      keyValueSectionTitles = v5->_keyValueSectionTitles;
      v5->_keyValueSectionTitles = sectionTitles;
    }

    [(CertificateDetailsViewController *)v5 _setup];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CertificateDetailsViewController;
  [(CertificateDetailsViewController *)&v4 dealloc];
}

- (void)_setup
{
  tableView = [(CertificateDetailsViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"CertificateDetailsKeyDataCell"];

  tableView2 = [(CertificateDetailsViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"CertificateDetailsKeyValueCell"];

  tableView3 = [(CertificateDetailsViewController *)self tableView];
  [tableView3 setCellLayoutMarginsFollowReadableWidth:0];

  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
  v7 = [v6 localizedStringForKey:@"DETAILS" value:&stru_28561D260 table:@"CertInfo"];
  navigationItem = [(CertificateDetailsViewController *)self navigationItem];
  [navigationItem setTitle:v7];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_preferredContentSizeChanged_ name:*MEMORY[0x277D76810] object:0];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = CertificateDetailsViewController;
  [(CertificateDetailsViewController *)&v2 viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = CertificateDetailsViewController;
  [(CertificateDetailsViewController *)&v2 didReceiveMemoryWarning];
}

- (void)setCertificateProperties:(id)properties
{
  firstObject = [properties firstObject];
  v4 = [[CertUICertificatePropertiesInfo alloc] initWithSendableCertificateProperties:firstObject];
  sections = [(CertUICertificatePropertiesInfo *)v4 sections];
  if ([sections count])
  {
    objc_storeStrong(&self->_keyValueSections, sections);
    sectionTitles = [(CertUICertificatePropertiesInfo *)v4 sectionTitles];
    keyValueSectionTitles = self->_keyValueSectionTitles;
    self->_keyValueSectionTitles = sectionTitles;
  }

  tableView = [(CertificateDetailsViewController *)self tableView];
  [tableView reloadData];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  keyValueSections = [(CertificateDetailsViewController *)self keyValueSections];
  v4 = [keyValueSections count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  keyValueSections = [(CertificateDetailsViewController *)self keyValueSections];
  v7 = [keyValueSections count];

  if (v7 <= section)
  {
    return 0;
  }

  keyValueSections2 = [(CertificateDetailsViewController *)self keyValueSections];
  v9 = [keyValueSections2 objectAtIndex:section];

  v10 = ([v9 count] >> 1);
  return v10;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  keyValueSectionTitles = [(CertificateDetailsViewController *)self keyValueSectionTitles];
  v7 = [keyValueSectionTitles count];

  if (v7 <= section)
  {
    v9 = 0;
  }

  else
  {
    keyValueSectionTitles2 = [(CertificateDetailsViewController *)self keyValueSectionTitles];
    v9 = [keyValueSectionTitles2 objectAtIndex:section];
  }

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  keyValueSections = [(CertificateDetailsViewController *)self keyValueSections];
  v9 = [keyValueSections objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  v10 = [v9 objectAtIndex:{2 * objc_msgSend(pathCopy, "row")}];
  v11 = [v9 objectAtIndex:{(2 * objc_msgSend(pathCopy, "row")) | 1}];
  objc_opt_class();
  v12 = @"CertificateDetailsKeyDataCell";
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = @"CertificateDetailsKeyValueCell";
    }
  }

  v13 = [viewCopy dequeueReusableCellWithIdentifier:v12 forIndexPath:pathCopy];
  [v13 setValue:v11 forKey:v10];

  return v13;
}

- (void)preferredContentSizeChanged:(id)changed
{
  tableView = [(CertificateDetailsViewController *)self tableView];
  [tableView reloadData];
}

@end