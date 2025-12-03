@interface CertInfoTrustSummaryController
- (CertInfoTrustSummaryController)initWithTrustDescription:(id)description;
- (CertInfoTrustSummaryControllerDelegate)delegate;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_cellForReuseIdentifier:(id)identifier;
- (id)_descriptionCell;
- (id)_headerCell;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_actionButtonPressed:(id)pressed;
- (void)_doneButtonPressed:(id)pressed;
- (void)setShowsDoneButton:(BOOL)button;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation CertInfoTrustSummaryController

- (CertInfoTrustSummaryController)initWithTrustDescription:(id)description
{
  descriptionCopy = description;
  if (!descriptionCopy)
  {
    [(CertInfoTrustSummaryController *)a2 initWithTrustDescription:?];
  }

  v13.receiver = self;
  v13.super_class = CertInfoTrustSummaryController;
  v7 = [(CertInfoTrustSummaryController *)&v13 initWithStyle:1];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_description, description);
    v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
    v10 = [v9 localizedStringForKey:@"CERTIFICATE" value:&stru_28561D260 table:@"CertInfo"];
    navigationItem = [(CertInfoTrustSummaryController *)v8 navigationItem];
    [navigationItem setTitle:v10];
  }

  return v8;
}

- (void)setShowsDoneButton:(BOOL)button
{
  v4 = *(self + 1080) & 0xFE | button;
  *(self + 1080) = *(self + 1080) & 0xFE | button;
  if (self->_doneButton)
  {
    navigationItem = [(CertInfoTrustSummaryController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    v7 = rightBarButtonItem != self->_doneButton;

    v4 = *(self + 1080);
    if ((v4 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 1;
    if ((v4 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v7)
  {
    doneButton = self->_doneButton;
    if (!doneButton)
    {
      v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__doneButtonPressed_];
      v10 = self->_doneButton;
      self->_doneButton = v9;

      doneButton = self->_doneButton;
    }

    goto LABEL_10;
  }

LABEL_8:
  if ((v4 | v7))
  {
    return;
  }

  doneButton = 0;
LABEL_10:
  navigationItem2 = [(CertInfoTrustSummaryController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:doneButton];
}

- (void)_doneButtonPressed:(id)pressed
{
  delegate = [(CertInfoTrustSummaryController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CertInfoTrustSummaryController *)self delegate];
    [delegate2 trustSummaryControllerDidFinish:self];
  }
}

- (void)_actionButtonPressed:(id)pressed
{
  delegate = [(CertInfoTrustSummaryController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CertInfoTrustSummaryController *)self delegate];
    [delegate2 trustSummaryControllerPerformAction:self];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy row] > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = *sOrderedCellIdentifiers_0[[pathCopy row]];
  }

  v9 = v8;
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9];
  if (!v10)
  {
    v10 = [(CertInfoTrustSummaryController *)self _cellForReuseIdentifier:v9];
  }

  return v10;
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
    v5 = *sOrderedCellIdentifiers_0[[pathCopy row]];
  }

  v6 = v5;
  if ([v6 isEqualToString:@"kCertInfoTrustSummaryMoreDetailsIdentifier"])
  {
    certificateCount = [(CertInfoTrustDescription *)self->_description certificateCount];
    if (certificateCount >= 2)
    {
      v8 = [[CertInfoCertificateListController alloc] initWithTrustDescription:self->_description];
      if (!v8)
      {
        goto LABEL_11;
      }

LABEL_10:
      navigationController = [(CertInfoTrustSummaryController *)self navigationController];
      [navigationController pushViewController:v8 animated:1];

      goto LABEL_11;
    }

    if (certificateCount == 1)
    {
      v9 = [(CertInfoTrustDescription *)self->_description certificatePropertiesAtIndex:0];
      v8 = [[CertInfoCertificateDetailsController alloc] initWithCertificateProperties:v9];

      if (v8)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_11:
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
    v9 = *sOrderedCellIdentifiers_0[[pathCopy row]];
  }

  v10 = v9;
  if ([v10 isEqualToString:@"kCertInfoTrustSummaryHeaderIdentifier"])
  {
    _headerCell = [(CertInfoTrustSummaryController *)self _headerCell];
LABEL_8:
    v12 = _headerCell;
    [_headerCell rowHeight];
    v8 = v13;

    goto LABEL_9;
  }

  if ([v10 isEqualToString:@"kCertInfoTrustSummaryDescriptionIdentifier"])
  {
    _headerCell = [(CertInfoTrustSummaryController *)self _descriptionCell];
    goto LABEL_8;
  }

LABEL_9:

  return v8;
}

- (id)_cellForReuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"kCertInfoTrustSummaryHeaderIdentifier"])
  {
    _headerCell = [(CertInfoTrustSummaryController *)self _headerCell];
LABEL_5:
    v6 = _headerCell;
    goto LABEL_6;
  }

  if ([identifierCopy isEqualToString:@"kCertInfoTrustSummaryDescriptionIdentifier"])
  {
    _headerCell = [(CertInfoTrustSummaryController *)self _descriptionCell];
    goto LABEL_5;
  }

  if ([identifierCopy isEqualToString:@"kCertInfoTrustSummaryMoreDetailsIdentifier"])
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:identifierCopy];
    textLabel = [v6 textLabel];
    v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
    v10 = [v9 localizedStringForKey:@"MORE_DETAILS" value:&stru_28561D260 table:@"CertInfo"];
    [textLabel setText:v10];

    [v6 setAccessoryType:1];
  }

  else
  {
    v6 = 0;
  }

LABEL_6:

  return v6;
}

- (id)_headerCell
{
  headerCell = self->_headerCell;
  if (!headerCell)
  {
    v4 = [[_CertInfoTrustSummaryHeaderCell alloc] initWithStyle:0 reuseIdentifier:@"kCertInfoTrustSummaryHeaderIdentifier"];
    summaryTitle = [(CertInfoTrustDescription *)self->_description summaryTitle];
    [(_CertInfoTrustSummaryHeaderCell *)v4 setTrustTitle:summaryTitle];

    summarySubtitle = [(CertInfoTrustDescription *)self->_description summarySubtitle];
    [(_CertInfoTrustSummaryHeaderCell *)v4 setTrustSubtitle:summarySubtitle];

    [(_CertInfoTrustSummaryHeaderCell *)v4 setTrusted:[(CertInfoTrustDescription *)self->_description isTrusted]];
    [(_CertInfoTrustSummaryHeaderCell *)v4 setExpired:0];
    [(_CertInfoTrustSummaryHeaderCell *)v4 setSelectionStyle:0];
    actionButton = [(_CertInfoTrustSummaryHeaderCell *)v4 actionButton];
    [actionButton addTarget:self action:sel__actionButtonPressed_ forControlEvents:64];
    v8 = self->_headerCell;
    self->_headerCell = &v4->super;

    headerCell = self->_headerCell;
  }

  return headerCell;
}

- (id)_descriptionCell
{
  descriptionCell = self->_descriptionCell;
  if (!descriptionCell)
  {
    v4 = [[CertInfoCertificateSummaryDescriptionCell alloc] initWithStyle:0 reuseIdentifier:@"kCertInfoTrustSummaryDescriptionIdentifier"];
    summaryDescriptionItems = [(CertInfoTrustDescription *)self->_description summaryDescriptionItems];
    [(CertInfoCertificateSummaryDescriptionCell *)v4 setLabelsAndValues:summaryDescriptionItems];

    [(CertInfoCertificateSummaryDescriptionCell *)v4 setSelectionStyle:0];
    v6 = self->_descriptionCell;
    self->_descriptionCell = &v4->super;

    descriptionCell = self->_descriptionCell;
  }

  return descriptionCell;
}

- (CertInfoTrustSummaryControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithTrustDescription:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CertInfoTrustSummaryController.m" lineNumber:108 description:@"trust must be non-NULL"];
}

@end