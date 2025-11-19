@interface _UIDocumentPickerDocumentCell
- (void)_showPickableDiagnostic;
- (void)prepareForReuse;
- (void)reloadItem:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIDocumentPickerDocumentCell;
  [(_UIDocumentPickerCell *)&v5 traitCollectionDidChange:a3];
  v4 = [(_UIDocumentPickerDocumentCell *)self window];

  if (v4)
  {
    [(_UIDocumentPickerDocumentCell *)self updateContents];
  }
}

- (void)reloadItem:(BOOL)a3
{
  if (a3)
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
  v3 = [(_UIDocumentPickerCell *)self item];
  v4 = [v3 title];
  v5 = [(_UIDocumentPickerCell *)self titleLabel];
  [v5 setText:v4];

  v6 = [(_UIDocumentPickerCell *)self item];
  v7 = [v6 subtitle];
  v8 = [(_UIDocumentPickerCell *)self subtitleLabel];
  [v8 setText:v7];

  v9 = [(_UIDocumentPickerCell *)self item];
  v10 = [v9 subtitle2];
  v11 = [(_UIDocumentPickerCell *)self subtitle2Label];
  [v11 setText:v10];

  v12 = [(_UIDocumentPickerCell *)self item];
  v13 = [(_UIDocumentPickerDocumentCell *)self traitCollection];
  [v13 displayScale];
  v17 = [v12 tagBlipsWithHeight:12.0 scale:v14];

  if (v17)
  {
    v15 = [v17 imageWithAlignmentRectInsets:{0.0, 0.0, 1.5, -4.0}];
    v16 = [(_UIDocumentPickerCell *)self tagView];
    [v16 setImage:v15];
  }

  [(_UIDocumentPickerDocumentCell *)self updateThumbnail];
}

- (void)updateThumbnail
{
  v3 = [(_UIDocumentPickerDocumentCell *)self traitCollection];
  [v3 displayScale];
  v5 = v4;

  if (v5 != 0.0)
  {
    v6 = objc_opt_class();
    v7 = [(_UIDocumentPickerDocumentCell *)self traitCollection];
    [v6 thumbnailSizeForTraits:v7 cellStyle:{-[_UIDocumentPickerCell cellStyle](self, "cellStyle")}];
    v9 = v8;
    v11 = v10;

    v12 = [(_UIDocumentPickerCell *)self item];
    v13 = [(_UIDocumentPickerDocumentCell *)self traitCollection];
    [v13 displayScale];
    v19 = [v12 thumbnailWithSize:v9 scale:{v11, v14}];

    if (v19)
    {
      v15 = [(_UIDocumentPickerCell *)self thumbnailView];
      [v15 setImage:v19];
    }

    v16 = [(_UIDocumentPickerCell *)self item];
    if ([v16 pickable])
    {
      v17 = 1.0;
    }

    else
    {
      v17 = 0.5;
    }

    v18 = [(_UIDocumentPickerCell *)self thumbnailView];
    [v18 setAlpha:v17];
  }
}

- (void)_showPickableDiagnostic
{
  v17 = [(_UIDocumentPickerCell *)self item];
  v3 = [v17 pickabilityReason];
  if (v3)
  {
    v4 = v3;
    v5 = CPIsInternalDevice();

    if (!v5)
    {
      return;
    }

    v6 = MEMORY[0x277D75110];
    v7 = [(_UIDocumentPickerCell *)self item];
    if ([v7 pickable])
    {
      v8 = @"Internal diagnostic: Item is pickable";
    }

    else
    {
      v8 = @"Internal diagnostic: Item is not pickable";
    }

    v9 = [(_UIDocumentPickerCell *)self item];
    v10 = [v9 pickabilityReason];
    v17 = [v6 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

    v11 = MEMORY[0x277D750F8];
    v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v13 = [v12 localizedStringForKey:@"Bummer" value:@"Bummer" table:@"Localizable"];
    v14 = [v11 actionWithTitle:v13 style:0 handler:0];
    [v17 addAction:v14];

    v15 = [(_UIDocumentPickerDocumentCell *)self window];
    v16 = [v15 rootViewController];
    [v16 presentViewController:v17 animated:1 completion:0];
  }
}

@end