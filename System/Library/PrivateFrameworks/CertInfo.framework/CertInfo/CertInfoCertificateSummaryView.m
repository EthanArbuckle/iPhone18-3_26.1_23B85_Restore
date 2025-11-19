@interface CertInfoCertificateSummaryView
- (CertInfoCertificateSummaryView)initWithFrame:(CGRect)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_cellForReuseIdentifier:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_configureCell:(id)a3;
- (void)setMoreDetailsSelectedBlock:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation CertInfoCertificateSummaryView

- (CertInfoCertificateSummaryView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = CertInfoCertificateSummaryView;
  v3 = [(CertInfoCertificateSummaryView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CertInfoCertificateSummaryView *)v3 bounds];
    v9 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:1 style:{v5, v6, v7, v8}];
    tableView = v4->_tableView;
    v4->_tableView = v9;

    [(UITableView *)v4->_tableView setAutoresizingMask:18];
    [(UITableView *)v4->_tableView setDelegate:v4];
    [(UITableView *)v4->_tableView setDataSource:v4];
    [(UITableView *)v4->_tableView setSeparatorInset:0.0, 15.0, 0.0, 0.0];
    [(CertInfoCertificateSummaryView *)v4 addSubview:v4->_tableView];
  }

  return v4;
}

- (void)setMoreDetailsSelectedBlock:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v5 = [v4 copy];
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x245D32C40](v5);
  moreDetailsSelectedBlock = self->_moreDetailsSelectedBlock;
  self->_moreDetailsSelectedBlock = v6;

  v8 = v9;
  if (v9)
  {

    v8 = v9;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (id)_cellForReuseIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"kCertInfoCertificateSummaryHeaderIdentifier"])
  {
    headerCell = self->_headerCell;
    if (!headerCell)
    {
      v6 = [[CertInfoCertificateHeaderCell alloc] initWithStyle:0 reuseIdentifier:v4];
      [(CertInfoCertificateHeaderCell *)v6 setSelectionStyle:0];
      [(CertInfoCertificateSummaryView *)self setHeaderCell:v6];
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"kCertInfoCertificateSummaryDescriptionIdentifier"])
  {
    headerCell = self->_descriptionCell;
    if (headerCell)
    {
LABEL_6:
      v6 = headerCell;
      goto LABEL_11;
    }

    v6 = [[CertInfoCertificateSummaryDescriptionCell alloc] initWithStyle:0 reuseIdentifier:v4];
    [(CertInfoCertificateHeaderCell *)v6 setSelectionStyle:0];
    [(CertInfoCertificateSummaryView *)self setDescriptionCell:v6];
  }

  else if ([v4 isEqualToString:@"kCertInfoCertificateSummaryMoreDetailsIdentifier"])
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:v4];
    v7 = [(CertInfoCertificateHeaderCell *)v6 textLabel];
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
    v9 = [v8 localizedStringForKey:@"MORE_DETAILS" value:&stru_28561D260 table:@"CertInfo"];
    [v7 setText:v9];

    [(CertInfoCertificateHeaderCell *)v6 setAccessoryType:1];
  }

  else
  {
    v6 = 0;
  }

LABEL_11:

  return v6;
}

- (void)_configureCell:(id)a3
{
  v17 = a3;
  v4 = [v17 reuseIdentifier];
  if ([v4 isEqualToString:@"kCertInfoCertificateSummaryHeaderIdentifier"])
  {
    v5 = v17;
    v6 = [(CertInfoCertificateSummaryView *)self trustTitle];
    [v5 setTrustTitle:v6];

    v7 = [(CertInfoCertificateSummaryView *)self trustSubtitle];
    [v5 setTrustSubtitle:v7];

    v8 = [(CertInfoCertificateSummaryView *)self expirationDate];
    [v8 timeIntervalSinceNow];
    [v5 setExpired:v9 < 0.0];
  }

  else
  {
    if (![v4 isEqualToString:@"kCertInfoCertificateSummaryDescriptionIdentifier"])
    {
      goto LABEL_12;
    }

    v8 = v17;
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = [(CertInfoCertificateSummaryView *)self purpose];
    if (v10)
    {
      v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
      v12 = [v11 localizedStringForKey:@"DESCRIPTION" value:&stru_28561D260 table:@"CertInfo"];
      [v5 addObject:v12];

      [v5 addObject:v10];
    }

    v13 = [(CertInfoCertificateSummaryView *)self expirationDate];

    if (v13)
    {
      v14 = [MEMORY[0x277CCA968] localizedStringFromDate:v13 dateStyle:2 timeStyle:2];
      if (v14)
      {
        v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
        v16 = [v15 localizedStringForKey:@"EXPIRES" value:&stru_28561D260 table:@"CertInfo"];
        [v5 addObject:v16];

        [v5 addObject:v14];
      }
    }

    [v8 setLabelsAndValues:v5];
  }

LABEL_12:
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section])
  {
    v8 = 0;
  }

  else
  {
    if ([v7 row] > 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = *sOrderedCellIdentifiers[[v7 row]];
    }

    v10 = v9;
    v8 = [v6 dequeueReusableCellWithIdentifier:v10];
    if (!v8)
    {
      v8 = [(CertInfoCertificateSummaryView *)self _cellForReuseIdentifier:v10];
    }

    [(CertInfoCertificateSummaryView *)self _configureCell:v8];
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = a4;
  if ([v8 row] > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *sOrderedCellIdentifiers[[v8 row]];
  }

  v6 = v5;
  if ([v6 isEqualToString:@"kCertInfoCertificateSummaryMoreDetailsIdentifier"])
  {
    moreDetailsSelectedBlock = self->_moreDetailsSelectedBlock;
    if (moreDetailsSelectedBlock)
    {
      moreDetailsSelectedBlock[2]();
    }
  }
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 rowHeight];
  v8 = v7;
  if ([v6 row] > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = *sOrderedCellIdentifiers[[v6 row]];
  }

  v10 = v9;
  if ([v10 isEqualToString:@"kCertInfoCertificateSummaryHeaderIdentifier"])
  {
    v11 = 456;
  }

  else
  {
    if (![v10 isEqualToString:@"kCertInfoCertificateSummaryDescriptionIdentifier"])
    {
      goto LABEL_11;
    }

    v11 = 464;
  }

  v12 = (&self->super.super.super.isa + v11);
  v13 = *(&self->super.super.super.isa + v11);
  if (!v13)
  {
    v14 = [(CertInfoCertificateSummaryView *)self _cellForReuseIdentifier:v10];
    [(CertInfoCertificateSummaryView *)self _configureCell:v14];

    v13 = *v12;
  }

  [v13 rowHeight];
  v8 = v15;
LABEL_11:

  return v8;
}

@end