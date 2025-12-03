@interface _UIDocumentPickerDocumentCell
- (void)_showPickableDiagnostic;
- (void)prepareForReuse;
- (void)reloadItem:(BOOL)item;
- (void)traitCollectionDidChange:(id)change;
- (void)updateContents;
- (void)updateThumbnail;
@end

@implementation _UIDocumentPickerDocumentCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = _UIDocumentPickerDocumentCell;
  [(_UIDocumentPickerCell *)&v3 prepareForReuse];
  [(_UIDocumentPickerCell *)self setItem:0];
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerDocumentCell;
  [(_UIDocumentPickerCell *)&v5 traitCollectionDidChange:change];
  window = [(_UIDocumentPickerDocumentCell *)self window];

  if (window)
  {
    [(_UIDocumentPickerDocumentCell *)self updateContents];
  }
}

- (void)reloadItem:(BOOL)item
{
  if (item)
  {
    [(_UIDocumentPickerDocumentCell *)self updateThumbnail];
  }

  else
  {
    [(_UIDocumentPickerDocumentCell *)self updateContents];
  }
}

- (void)updateContents
{
  item = [(_UIDocumentPickerCell *)self item];
  title = [item title];
  titleLabel = [(_UIDocumentPickerCell *)self titleLabel];
  [titleLabel setText:title];

  item2 = [(_UIDocumentPickerCell *)self item];
  subtitle = [item2 subtitle];
  subtitleLabel = [(_UIDocumentPickerCell *)self subtitleLabel];
  [subtitleLabel setText:subtitle];

  item3 = [(_UIDocumentPickerCell *)self item];
  subtitle2 = [item3 subtitle2];
  subtitle2Label = [(_UIDocumentPickerCell *)self subtitle2Label];
  [subtitle2Label setText:subtitle2];

  item4 = [(_UIDocumentPickerCell *)self item];
  traitCollection = [(_UIDocumentPickerDocumentCell *)self traitCollection];
  [traitCollection displayScale];
  v17 = [item4 tagBlipsWithHeight:12.0 scale:v14];

  if (v17)
  {
    v15 = [v17 imageWithAlignmentRectInsets:{0.0, 0.0, 1.5, -4.0}];
    tagView = [(_UIDocumentPickerCell *)self tagView];
    [tagView setImage:v15];
  }

  [(_UIDocumentPickerDocumentCell *)self updateThumbnail];
}

- (void)updateThumbnail
{
  traitCollection = [(_UIDocumentPickerDocumentCell *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  if (v5 != 0.0)
  {
    v6 = objc_opt_class();
    traitCollection2 = [(_UIDocumentPickerDocumentCell *)self traitCollection];
    [v6 thumbnailSizeForTraits:traitCollection2 cellStyle:{-[_UIDocumentPickerCell cellStyle](self, "cellStyle")}];
    v9 = v8;
    v11 = v10;

    item = [(_UIDocumentPickerCell *)self item];
    traitCollection3 = [(_UIDocumentPickerDocumentCell *)self traitCollection];
    [traitCollection3 displayScale];
    v19 = [item thumbnailWithSize:v9 scale:{v11, v14}];

    if (v19)
    {
      thumbnailView = [(_UIDocumentPickerCell *)self thumbnailView];
      [thumbnailView setImage:v19];
    }

    item2 = [(_UIDocumentPickerCell *)self item];
    if ([item2 pickable])
    {
      v17 = 1.0;
    }

    else
    {
      v17 = 0.5;
    }

    thumbnailView2 = [(_UIDocumentPickerCell *)self thumbnailView];
    [thumbnailView2 setAlpha:v17];
  }
}

- (void)_showPickableDiagnostic
{
  item = [(_UIDocumentPickerCell *)self item];
  pickabilityReason = [item pickabilityReason];
  if (pickabilityReason)
  {
    v4 = pickabilityReason;
    v5 = CPIsInternalDevice();

    if (!v5)
    {
      return;
    }

    v6 = MEMORY[0x277D75110];
    item2 = [(_UIDocumentPickerCell *)self item];
    if ([item2 pickable])
    {
      v8 = @"Internal diagnostic: Item is pickable";
    }

    else
    {
      v8 = @"Internal diagnostic: Item is not pickable";
    }

    item3 = [(_UIDocumentPickerCell *)self item];
    pickabilityReason2 = [item3 pickabilityReason];
    item = [v6 alertControllerWithTitle:v8 message:pickabilityReason2 preferredStyle:1];

    v11 = MEMORY[0x277D750F8];
    v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v13 = [v12 localizedStringForKey:@"Bummer" value:@"Bummer" table:@"Localizable"];
    v14 = [v11 actionWithTitle:v13 style:0 handler:0];
    [item addAction:v14];

    window = [(_UIDocumentPickerDocumentCell *)self window];
    rootViewController = [window rootViewController];
    [rootViewController presentViewController:item animated:1 completion:0];
  }
}

@end