@interface CertificateViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (CertificateViewController)init;
- (CertificateViewController)initWithTrust:(__SecTrust *)a3 action:(int)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)preferredContentSizeChanged:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v3 selector:sel_preferredContentSizeChanged_ name:*MEMORY[0x277D76810] object:0];
  }

  return v3;
}

- (CertificateViewController)initWithTrust:(__SecTrust *)a3 action:(int)a4
{
  v10.receiver = self;
  v10.super_class = CertificateViewController;
  v6 = [(CertificateViewController *)&v10 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_certificateTrust, a3);
    v7->_certUIAction = a4;
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel_preferredContentSizeChanged_ name:*MEMORY[0x277D76810] object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return a4 == 1;
  }

  else
  {
    return 3;
  }
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = [(CertificateViewController *)self showCertificateButton];
  v7 = 0;
  if (!a4 && v6)
  {
    v7 = [(CertificateViewController *)self certificateButtonDescription];
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v7 section] && !objc_msgSend(v7, "row"))
  {
    v16 = [v6 dequeueReusableCellWithIdentifier:@"CertificateTableCell"];
    if (!v16)
    {
      v16 = [(CertUIItemSummaryCell *)[CertificateSummaryTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"CertificateTableCell"];
    }

    certificateTrust = self->_certificateTrust;
    v9 = v16;
    if (certificateTrust)
    {
      v18 = [(CertificateViewController *)self certificateTrust];
      [(CertificateSummaryTableViewCell *)v9 updateWithCertificateTrust:v18];
      v19 = v9;
    }

    else
    {
      v18 = [(CertificateViewController *)self certificateTitle];
      v19 = [(CertificateViewController *)self certificateIssuer];
      [(CertificateSummaryTableViewCell *)v9 setCertificateName:v18 issuer:v19 isRoot:[(CertificateViewController *)self certificateIsRoot]];
    }

LABEL_27:

    goto LABEL_28;
  }

  if (![v7 section] && objc_msgSend(v7, "row") == 1)
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"CertificateDetailsTableCell"];
    if (!v8)
    {
      v8 = [[CertificateDetailsSummaryCell alloc] initWithStyle:0 reuseIdentifier:@"CertificateDetailsTableCell"];
    }

    v9 = v8;
    v10 = [(CertificateViewController *)self certUIAction]== 1;
    v11 = [(CertificateViewController *)self certificateTrust];

    v12 = [(CertificateViewController *)self certificateExpiration];
    [(CertificateSummaryTableViewCell *)v9 setCertificateTrust:v11 certificateExpiration:v12 certificateIsTrusted:v10];

    goto LABEL_28;
  }

  if ([v7 section] || objc_msgSend(v7, "row") != 2)
  {
    if ([v7 section] != 1 || objc_msgSend(v7, "row"))
    {
      v9 = 0;
      goto LABEL_28;
    }

    v9 = [v6 dequeueReusableCellWithIdentifier:@"CertificateInstallTableCell"];
    if (!v9)
    {
      v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"CertificateInstallTableCell"];
    }

    v20 = [(CertificateViewController *)self certificateButtonTitle];
    v21 = [(CertificateSummaryTableViewCell *)v9 textLabel];
    [v21 setText:v20];

    v22 = [(CertificateSummaryTableViewCell *)v9 textLabel];
    [v22 setTextAlignment:1];

    if ([(CertificateViewController *)self certificateButtonIsDestructiveAction])
    {
      [MEMORY[0x277D75348] systemRedColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemBlueColor];
    }
    v18 = ;
    v19 = [(CertificateSummaryTableViewCell *)v9 textLabel];
    [v19 setTextColor:v18];
    goto LABEL_27;
  }

  v9 = [v6 dequeueReusableCellWithIdentifier:@"CertificateMoreDetailsTableCell"];
  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"CertificateMoreDetailsTableCell"];
  }

  v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
  v14 = [v13 localizedStringForKey:@"MORE_DETAILS" value:&stru_28561D260 table:@"CertInfo"];
  v15 = [(CertificateSummaryTableViewCell *)v9 textLabel];
  [v15 setText:v14];

  [(CertificateSummaryTableViewCell *)v9 setAccessoryType:1];
LABEL_28:

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (![v6 section] && objc_msgSend(v6, "row") == 2)
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
      v11 = [(CertificateViewController *)self certificateProperties];
      [(CertificateDetailsViewController *)v9 setCertificateProperties:v11];
    }

    v12 = [(CertificateViewController *)self navigationController];
    [v12 pushViewController:v9 animated:1];

LABEL_11:
    goto LABEL_12;
  }

  if ([v6 section] == 1 && !objc_msgSend(v6, "row"))
  {
    v10 = [(CertificateViewController *)self certificateButtonActionHandler];
    v9 = v10;
    if (v10)
    {
      (*(v10 + 16))(v10);
    }

    goto LABEL_11;
  }

LABEL_12:
  [v13 deselectRowAtIndexPath:v6 animated:1];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = a4;
  v5 = ![v4 section] && objc_msgSend(v4, "row") == 2 || objc_msgSend(v4, "section") == 1 && !objc_msgSend(v4, "row");

  return v5;
}

- (void)preferredContentSizeChanged:(id)a3
{
  v3 = [(CertificateViewController *)self tableView];
  [v3 reloadData];
}

@end