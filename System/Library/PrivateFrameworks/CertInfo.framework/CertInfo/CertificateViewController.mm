@interface CertificateViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (CertificateViewController)init;
- (CertificateViewController)initWithTrust:(__SecTrust *)trust action:(int)action;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)preferredContentSizeChanged:(id)changed;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CertificateViewController

- (CertificateViewController)init
{
  v7.receiver = self;
  v7.super_class = CertificateViewController;
  v2 = [(CertificateViewController *)&v7 initWithStyle:1];
  v3 = v2;
  if (v2)
  {
    certificateTrust = v2->_certificateTrust;
    v2->_certificateTrust = 0;

    v3->_certUIAction = 2;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_preferredContentSizeChanged_ name:*MEMORY[0x277D76810] object:0];
  }

  return v3;
}

- (CertificateViewController)initWithTrust:(__SecTrust *)trust action:(int)action
{
  v10.receiver = self;
  v10.super_class = CertificateViewController;
  v6 = [(CertificateViewController *)&v10 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_certificateTrust, trust);
    v7->_certUIAction = action;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_preferredContentSizeChanged_ name:*MEMORY[0x277D76810] object:0];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CertificateViewController;
  [(CertificateViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = CertificateViewController;
  [(CertificateViewController *)&v2 viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = CertificateViewController;
  [(CertificateViewController *)&v2 didReceiveMemoryWarning];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if ([(CertificateViewController *)self showCertificateButton])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return section == 1;
  }

  else
  {
    return 3;
  }
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  showCertificateButton = [(CertificateViewController *)self showCertificateButton];
  certificateButtonDescription = 0;
  if (!section && showCertificateButton)
  {
    certificateButtonDescription = [(CertificateViewController *)self certificateButtonDescription];
  }

  return certificateButtonDescription;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy section] && !objc_msgSend(pathCopy, "row"))
  {
    v16 = [viewCopy dequeueReusableCellWithIdentifier:@"CertificateTableCell"];
    if (!v16)
    {
      v16 = [(CertUIItemSummaryCell *)[CertificateSummaryTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"CertificateTableCell"];
    }

    certificateTrust = self->_certificateTrust;
    v9 = v16;
    if (certificateTrust)
    {
      certificateTrust = [(CertificateViewController *)self certificateTrust];
      [(CertificateSummaryTableViewCell *)v9 updateWithCertificateTrust:certificateTrust];
      certificateIssuer = v9;
    }

    else
    {
      certificateTrust = [(CertificateViewController *)self certificateTitle];
      certificateIssuer = [(CertificateViewController *)self certificateIssuer];
      [(CertificateSummaryTableViewCell *)v9 setCertificateName:certificateTrust issuer:certificateIssuer isRoot:[(CertificateViewController *)self certificateIsRoot]];
    }

LABEL_27:

    goto LABEL_28;
  }

  if (![pathCopy section] && objc_msgSend(pathCopy, "row") == 1)
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"CertificateDetailsTableCell"];
    if (!v8)
    {
      v8 = [[CertificateDetailsSummaryCell alloc] initWithStyle:0 reuseIdentifier:@"CertificateDetailsTableCell"];
    }

    v9 = v8;
    v10 = [(CertificateViewController *)self certUIAction]== 1;
    certificateTrust2 = [(CertificateViewController *)self certificateTrust];

    certificateExpiration = [(CertificateViewController *)self certificateExpiration];
    [(CertificateSummaryTableViewCell *)v9 setCertificateTrust:certificateTrust2 certificateExpiration:certificateExpiration certificateIsTrusted:v10];

    goto LABEL_28;
  }

  if ([pathCopy section] || objc_msgSend(pathCopy, "row") != 2)
  {
    if ([pathCopy section] != 1 || objc_msgSend(pathCopy, "row"))
    {
      v9 = 0;
      goto LABEL_28;
    }

    v9 = [viewCopy dequeueReusableCellWithIdentifier:@"CertificateInstallTableCell"];
    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"CertificateInstallTableCell"];
    }

    certificateButtonTitle = [(CertificateViewController *)self certificateButtonTitle];
    textLabel = [(CertificateSummaryTableViewCell *)v9 textLabel];
    [textLabel setText:certificateButtonTitle];

    textLabel2 = [(CertificateSummaryTableViewCell *)v9 textLabel];
    [textLabel2 setTextAlignment:1];

    if ([(CertificateViewController *)self certificateButtonIsDestructiveAction])
    {
      [MEMORY[0x277D75348] systemRedColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemBlueColor];
    }
    certificateTrust = ;
    certificateIssuer = [(CertificateSummaryTableViewCell *)v9 textLabel];
    [certificateIssuer setTextColor:certificateTrust];
    goto LABEL_27;
  }

  v9 = [viewCopy dequeueReusableCellWithIdentifier:@"CertificateMoreDetailsTableCell"];
  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"CertificateMoreDetailsTableCell"];
  }

  v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
  v14 = [v13 localizedStringForKey:@"MORE_DETAILS" value:&stru_28561D260 table:@"CertInfo"];
  textLabel3 = [(CertificateSummaryTableViewCell *)v9 textLabel];
  [textLabel3 setText:v14];

  [(CertificateSummaryTableViewCell *)v9 setAccessoryType:1];
LABEL_28:

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy section] && objc_msgSend(pathCopy, "row") == 2)
  {
    certificateTrust = self->_certificateTrust;
    v8 = [CertificateDetailsViewController alloc];
    if (certificateTrust)
    {
      v9 = [(CertificateDetailsViewController *)v8 initWithTrust:self->_certificateTrust];
    }

    else
    {
      v9 = [(CertificateDetailsViewController *)v8 initWithStyle:1];
      certificateProperties = [(CertificateViewController *)self certificateProperties];
      [(CertificateDetailsViewController *)v9 setCertificateProperties:certificateProperties];
    }

    navigationController = [(CertificateViewController *)self navigationController];
    [navigationController pushViewController:v9 animated:1];

LABEL_11:
    goto LABEL_12;
  }

  if ([pathCopy section] == 1 && !objc_msgSend(pathCopy, "row"))
  {
    certificateButtonActionHandler = [(CertificateViewController *)self certificateButtonActionHandler];
    v9 = certificateButtonActionHandler;
    if (certificateButtonActionHandler)
    {
      (*(certificateButtonActionHandler + 16))(certificateButtonActionHandler);
    }

    goto LABEL_11;
  }

LABEL_12:
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = ![pathCopy section] && objc_msgSend(pathCopy, "row") == 2 || objc_msgSend(pathCopy, "section") == 1 && !objc_msgSend(pathCopy, "row");

  return v5;
}

- (void)preferredContentSizeChanged:(id)changed
{
  tableView = [(CertificateViewController *)self tableView];
  [tableView reloadData];
}

@end