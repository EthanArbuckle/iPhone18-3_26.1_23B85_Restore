@interface CertInfoCertificateSummaryView
- (CertInfoCertificateSummaryView)initWithFrame:(CGRect)frame;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_cellForReuseIdentifier:(id)identifier;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_configureCell:(id)cell;
- (void)setMoreDetailsSelectedBlock:(id)block;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation CertInfoCertificateSummaryView

- (CertInfoCertificateSummaryView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = CertInfoCertificateSummaryView;
  v3 = [(CertInfoCertificateSummaryView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setMoreDetailsSelectedBlock:(id)block
{
  blockCopy = block;
  v9 = blockCopy;
  if (blockCopy)
  {
    v5 = [blockCopy copy];
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (id)_cellForReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"kCertInfoCertificateSummaryHeaderIdentifier"])
  {
    headerCell = self->_headerCell;
    if (!headerCell)
    {
      v6 = [[CertInfoCertificateHeaderCell alloc] initWithStyle:0 reuseIdentifier:identifierCopy];
      [(CertInfoCertificateHeaderCell *)v6 setSelectionStyle:0];
      [(CertInfoCertificateSummaryView *)self setHeaderCell:v6];
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  if ([identifierCopy isEqualToString:@"kCertInfoCertificateSummaryDescriptionIdentifier"])
  {
    headerCell = self->_descriptionCell;
    if (headerCell)
    {
LABEL_6:
      v6 = headerCell;
      goto LABEL_11;
    }

    v6 = [[CertInfoCertificateSummaryDescriptionCell alloc] initWithStyle:0 reuseIdentifier:identifierCopy];
    [(CertInfoCertificateHeaderCell *)v6 setSelectionStyle:0];
    [(CertInfoCertificateSummaryView *)self setDescriptionCell:v6];
  }

  else if ([identifierCopy isEqualToString:@"kCertInfoCertificateSummaryMoreDetailsIdentifier"])
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:identifierCopy];
    textLabel = [(CertInfoCertificateHeaderCell *)v6 textLabel];
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
    v9 = [v8 localizedStringForKey:@"MORE_DETAILS" value:&stru_28561D260 table:@"CertInfo"];
    [textLabel setText:v9];

    [(CertInfoCertificateHeaderCell *)v6 setAccessoryType:1];
  }

  else
  {
    v6 = 0;
  }

LABEL_11:

  return v6;
}

- (void)_configureCell:(id)cell
{
  cellCopy = cell;
  reuseIdentifier = [cellCopy reuseIdentifier];
  if ([reuseIdentifier isEqualToString:@"kCertInfoCertificateSummaryHeaderIdentifier"])
  {
    v5 = cellCopy;
    trustTitle = [(CertInfoCertificateSummaryView *)self trustTitle];
    [v5 setTrustTitle:trustTitle];

    trustSubtitle = [(CertInfoCertificateSummaryView *)self trustSubtitle];
    [v5 setTrustSubtitle:trustSubtitle];

    expirationDate = [(CertInfoCertificateSummaryView *)self expirationDate];
    [expirationDate timeIntervalSinceNow];
    [v5 setExpired:v9 < 0.0];
  }

  else
  {
    if (![reuseIdentifier isEqualToString:@"kCertInfoCertificateSummaryDescriptionIdentifier"])
    {
      goto LABEL_12;
    }

    expirationDate = cellCopy;
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    purpose = [(CertInfoCertificateSummaryView *)self purpose];
    if (purpose)
    {
      v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
      v12 = [v11 localizedStringForKey:@"DESCRIPTION" value:&stru_28561D260 table:@"CertInfo"];
      [v5 addObject:v12];

      [v5 addObject:purpose];
    }

    expirationDate2 = [(CertInfoCertificateSummaryView *)self expirationDate];

    if (expirationDate2)
    {
      v14 = [MEMORY[0x277CCA968] localizedStringFromDate:expirationDate2 dateStyle:2 timeStyle:2];
      if (v14)
      {
        v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
        v16 = [v15 localizedStringForKey:@"EXPIRES" value:&stru_28561D260 table:@"CertInfo"];
        [v5 addObject:v16];

        [v5 addObject:v14];
      }
    }

    [expirationDate setLabelsAndValues:v5];
  }

LABEL_12:
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    v8 = 0;
  }

  else
  {
    if ([pathCopy row] > 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = *sOrderedCellIdentifiers[[pathCopy row]];
    }

    v10 = v9;
    v8 = [viewCopy dequeueReusableCellWithIdentifier:v10];
    if (!v8)
    {
      v8 = [(CertInfoCertificateSummaryView *)self _cellForReuseIdentifier:v10];
    }

    [(CertInfoCertificateSummaryView *)self _configureCell:v8];
  }

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy row] > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *sOrderedCellIdentifiers[[pathCopy row]];
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

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view rowHeight];
  v8 = v7;
  if ([pathCopy row] > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = *sOrderedCellIdentifiers[[pathCopy row]];
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