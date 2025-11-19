@interface CertificateDetailsViewController
- (CertificateDetailsViewController)init;
- (CertificateDetailsViewController)initWithCertificate:(__SecCertificate *)a3;
- (CertificateDetailsViewController)initWithCertificateProperties:(id)a3;
- (CertificateDetailsViewController)initWithStyle:(int64_t)a3;
- (CertificateDetailsViewController)initWithTrust:(__SecTrust *)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_setup;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)preferredContentSizeChanged:(id)a3;
- (void)setCertificateProperties:(id)a3;
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

- (CertificateDetailsViewController)initWithStyle:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = CertificateDetailsViewController;
  v3 = [(CertificateDetailsViewController *)&v6 initWithStyle:a3];
  v4 = v3;
  if (v3)
  {
    [(CertificateDetailsViewController *)v3 _setup];
  }

  return v4;
}

- (CertificateDetailsViewController)initWithCertificate:(__SecCertificate *)a3
{
  v10.receiver = self;
  v10.super_class = CertificateDetailsViewController;
  v4 = [(CertificateDetailsViewController *)&v10 initWithStyle:1];
  if (v4)
  {
    v5 = [[CertUICertificatePropertiesInfo alloc] initWithCertificate:a3];
    v6 = [(CertUICertificatePropertiesInfo *)v5 sections];
    if ([v6 count])
    {
      objc_storeStrong(&v4->_keyValueSections, v6);
      v7 = [(CertUICertificatePropertiesInfo *)v5 sectionTitles];
      keyValueSectionTitles = v4->_keyValueSectionTitles;
      v4->_keyValueSectionTitles = v7;
    }

    [(CertificateDetailsViewController *)v4 _setup];
  }

  return v4;
}

- (CertificateDetailsViewController)initWithCertificateProperties:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CertificateDetailsViewController;
  v5 = [(CertificateDetailsViewController *)&v11 initWithStyle:1];
  if (v5)
  {
    v6 = [[CertUICertificatePropertiesInfo alloc] initWithCertificateProperties:v4];
    v7 = [(CertUICertificatePropertiesInfo *)v6 sections];
    if ([v7 count])
    {
      objc_storeStrong(&v5->_keyValueSections, v7);
      v8 = [(CertUICertificatePropertiesInfo *)v6 sectionTitles];
      keyValueSectionTitles = v5->_keyValueSectionTitles;
      v5->_keyValueSectionTitles = v8;
    }

    [(CertificateDetailsViewController *)v5 _setup];
  }

  return v5;
}

- (CertificateDetailsViewController)initWithTrust:(__SecTrust *)a3
{
  v11.receiver = self;
  v11.super_class = CertificateDetailsViewController;
  v4 = [(CertificateDetailsViewController *)&v11 initWithStyle:1];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_certificateTrust, a3);
    v6 = [[CertUICertificatePropertiesInfo alloc] initWithTrust:a3];
    v7 = [(CertUICertificatePropertiesInfo *)v6 sections];
    if ([v7 count])
    {
      objc_storeStrong(&v5->_keyValueSections, v7);
      v8 = [(CertUICertificatePropertiesInfo *)v6 sectionTitles];
      keyValueSectionTitles = v5->_keyValueSectionTitles;
      v5->_keyValueSectionTitles = v8;
    }

    [(CertificateDetailsViewController *)v5 _setup];
  }

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CertificateDetailsViewController;
  [(CertificateDetailsViewController *)&v4 dealloc];
}

- (void)_setup
{
  v3 = [(CertificateDetailsViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"CertificateDetailsKeyDataCell"];

  v4 = [(CertificateDetailsViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"CertificateDetailsKeyValueCell"];

  v5 = [(CertificateDetailsViewController *)self tableView];
  [v5 setCellLayoutMarginsFollowReadableWidth:0];

  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
  v7 = [v6 localizedStringForKey:@"DETAILS" value:&stru_28561D260 table:@"CertInfo"];
  v8 = [(CertificateDetailsViewController *)self navigationItem];
  [v8 setTitle:v7];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:self selector:sel_preferredContentSizeChanged_ name:*MEMORY[0x277D76810] object:0];
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

- (void)setCertificateProperties:(id)a3
{
  v9 = [a3 firstObject];
  v4 = [[CertUICertificatePropertiesInfo alloc] initWithSendableCertificateProperties:v9];
  v5 = [(CertUICertificatePropertiesInfo *)v4 sections];
  if ([v5 count])
  {
    objc_storeStrong(&self->_keyValueSections, v5);
    v6 = [(CertUICertificatePropertiesInfo *)v4 sectionTitles];
    keyValueSectionTitles = self->_keyValueSectionTitles;
    self->_keyValueSectionTitles = v6;
  }

  v8 = [(CertificateDetailsViewController *)self tableView];
  [v8 reloadData];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(CertificateDetailsViewController *)self keyValueSections];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(CertificateDetailsViewController *)self keyValueSections];
  v7 = [v6 count];

  if (v7 <= a4)
  {
    return 0;
  }

  v8 = [(CertificateDetailsViewController *)self keyValueSections];
  v9 = [v8 objectAtIndex:a4];

  v10 = ([v9 count] >> 1);
  return v10;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = [(CertificateDetailsViewController *)self keyValueSectionTitles];
  v7 = [v6 count];

  if (v7 <= a4)
  {
    v9 = 0;
  }

  else
  {
    v8 = [(CertificateDetailsViewController *)self keyValueSectionTitles];
    v9 = [v8 objectAtIndex:a4];
  }

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CertificateDetailsViewController *)self keyValueSections];
  v9 = [v8 objectAtIndex:{objc_msgSend(v7, "section")}];

  v10 = [v9 objectAtIndex:{2 * objc_msgSend(v7, "row")}];
  v11 = [v9 objectAtIndex:{(2 * objc_msgSend(v7, "row")) | 1}];
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

  v13 = [v6 dequeueReusableCellWithIdentifier:v12 forIndexPath:v7];
  [v13 setValue:v11 forKey:v10];

  return v13;
}

- (void)preferredContentSizeChanged:(id)a3
{
  v3 = [(CertificateDetailsViewController *)self tableView];
  [v3 reloadData];
}

@end