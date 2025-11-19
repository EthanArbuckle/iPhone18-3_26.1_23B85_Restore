@interface CertInfoTrustSummaryController
- (CertInfoTrustSummaryController)initWithTrustDescription:(id)a3;
- (CertInfoTrustSummaryControllerDelegate)delegate;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_cellForReuseIdentifier:(id)a3;
- (id)_descriptionCell;
- (id)_headerCell;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_actionButtonPressed:(id)a3;
- (void)_doneButtonPressed:(id)a3;
- (void)setShowsDoneButton:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation CertInfoTrustSummaryController

- (CertInfoTrustSummaryController)initWithTrustDescription:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(CertInfoTrustSummaryController *)a2 initWithTrustDescription:?];
  }

  v13.receiver = self;
  v13.super_class = CertInfoTrustSummaryController;
  v7 = [(CertInfoTrustSummaryController *)&v13 initWithStyle:1];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_description, a3);
    v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
    v10 = [v9 localizedStringForKey:@"CERTIFICATE" value:&stru_28561D260 table:@"CertInfo"];
    v11 = [(CertInfoTrustSummaryController *)v8 navigationItem];
    [v11 setTitle:v10];
  }

  return v8;
}

- (void)setShowsDoneButton:(BOOL)a3
{
  v4 = *(self + 1080) & 0xFE | a3;
  *(self + 1080) = *(self + 1080) & 0xFE | a3;
  if (self->_doneButton)
  {
    v5 = [(CertInfoTrustSummaryController *)self navigationItem];
    v6 = [v5 rightBarButtonItem];
    v7 = v6 != self->_doneButton;

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
  v11 = [(CertInfoTrustSummaryController *)self navigationItem];
  [v11 setRightBarButtonItem:doneButton];
}

- (void)_doneButtonPressed:(id)a3
{
  v4 = [(CertInfoTrustSummaryController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CertInfoTrustSummaryController *)self delegate];
    [v6 trustSummaryControllerDidFinish:self];
  }
}

- (void)_actionButtonPressed:(id)a3
{
  v4 = [(CertInfoTrustSummaryController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CertInfoTrustSummaryController *)self delegate];
    [v6 trustSummaryControllerPerformAction:self];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 row] > 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = *sOrderedCellIdentifiers_0[[v7 row]];
  }

  v9 = v8;
  v10 = [v6 dequeueReusableCellWithIdentifier:v9];
  if (!v10)
  {
    v10 = [(CertInfoTrustSummaryController *)self _cellForReuseIdentifier:v9];
  }

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11 = a4;
  if ([v11 row] > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *sOrderedCellIdentifiers_0[[v11 row]];
  }

  v6 = v5;
  if ([v6 isEqualToString:@"kCertInfoTrustSummaryMoreDetailsIdentifier"])
  {
    v7 = [(CertInfoTrustDescription *)self->_description certificateCount];
    if (v7 >= 2)
    {
      v8 = [[CertInfoCertificateListController alloc] initWithTrustDescription:self->_description];
      if (!v8)
      {
        goto LABEL_11;
      }

LABEL_10:
      v10 = [(CertInfoTrustSummaryController *)self navigationController];
      [v10 pushViewController:v8 animated:1];

      goto LABEL_11;
    }

    if (v7 == 1)
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
    v9 = *sOrderedCellIdentifiers_0[[v6 row]];
  }

  v10 = v9;
  if ([v10 isEqualToString:@"kCertInfoTrustSummaryHeaderIdentifier"])
  {
    v11 = [(CertInfoTrustSummaryController *)self _headerCell];
LABEL_8:
    v12 = v11;
    [v11 rowHeight];
    v8 = v13;

    goto LABEL_9;
  }

  if ([v10 isEqualToString:@"kCertInfoTrustSummaryDescriptionIdentifier"])
  {
    v11 = [(CertInfoTrustSummaryController *)self _descriptionCell];
    goto LABEL_8;
  }

LABEL_9:

  return v8;
}

- (id)_cellForReuseIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"kCertInfoTrustSummaryHeaderIdentifier"])
  {
    v5 = [(CertInfoTrustSummaryController *)self _headerCell];
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"kCertInfoTrustSummaryDescriptionIdentifier"])
  {
    v5 = [(CertInfoTrustSummaryController *)self _descriptionCell];
    goto LABEL_5;
  }

  if ([v4 isEqualToString:@"kCertInfoTrustSummaryMoreDetailsIdentifier"])
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:v4];
    v8 = [v6 textLabel];
    v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
    v10 = [v9 localizedStringForKey:@"MORE_DETAILS" value:&stru_28561D260 table:@"CertInfo"];
    [v8 setText:v10];

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
    v5 = [(CertInfoTrustDescription *)self->_description summaryTitle];
    [(_CertInfoTrustSummaryHeaderCell *)v4 setTrustTitle:v5];

    v6 = [(CertInfoTrustDescription *)self->_description summarySubtitle];
    [(_CertInfoTrustSummaryHeaderCell *)v4 setTrustSubtitle:v6];

    [(_CertInfoTrustSummaryHeaderCell *)v4 setTrusted:[(CertInfoTrustDescription *)self->_description isTrusted]];
    [(_CertInfoTrustSummaryHeaderCell *)v4 setExpired:0];
    [(_CertInfoTrustSummaryHeaderCell *)v4 setSelectionStyle:0];
    v7 = [(_CertInfoTrustSummaryHeaderCell *)v4 actionButton];
    [v7 addTarget:self action:sel__actionButtonPressed_ forControlEvents:64];
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
    v5 = [(CertInfoTrustDescription *)self->_description summaryDescriptionItems];
    [(CertInfoCertificateSummaryDescriptionCell *)v4 setLabelsAndValues:v5];

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