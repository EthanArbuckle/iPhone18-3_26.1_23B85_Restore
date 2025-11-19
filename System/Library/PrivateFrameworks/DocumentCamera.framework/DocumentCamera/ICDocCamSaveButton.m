@interface ICDocCamSaveButton
- (ICDocCamSaveButton)initWithFrame:(CGRect)a3;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)saveButtonCountStringForDocumentCount:(unint64_t)a3;
- (id)saveButtonTitleForDocumentCount:(unint64_t)a3;
- (void)layoutSubviews;
- (void)setDocumentCount:(int64_t)a3;
@end

@implementation ICDocCamSaveButton

- (ICDocCamSaveButton)initWithFrame:(CGRect)a3
{
  v30.receiver = self;
  v30.super_class = ICDocCamSaveButton;
  v3 = [(ICDocCamSaveButton *)&v30 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_documentCount = 0;
    v3->_maxWidthForPortraitIPhone = 0x7FFFFFFFLL;
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    countLabel = v4->_countLabel;
    v4->_countLabel = v5;

    v7 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v4->_countLabel setBackgroundColor:v7];

    v8 = v4->_countLabel;
    v9 = [(ICDocCamSaveButton *)v4 saveButtonCountStringForDocumentCount:v4->_documentCount];
    [(UILabel *)v8 setText:v9];

    [(UILabel *)v4->_countLabel sizeToFit];
    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    saveLabel = v4->_saveLabel;
    v4->_saveLabel = v10;

    v12 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v4->_saveLabel setBackgroundColor:v12];

    v13 = v4->_saveLabel;
    v14 = [(ICDocCamSaveButton *)v4 saveButtonTitleForDocumentCount:v4->_documentCount];
    [(UILabel *)v13 setText:v14];

    v15 = MEMORY[0x277D74420];
    if ((DCDebugInterfaceEnabled() & 1) == 0)
    {
      v16 = [MEMORY[0x277D75418] currentDevice];
      v17 = [v16 userInterfaceIdiom];

      if (v17 != 1)
      {
        v15 = MEMORY[0x277D74418];
      }
    }

    v18 = *v15;
    v19 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*v15];
    [(UILabel *)v4->_saveLabel setFont:v19];

    v20 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:v18];
    [(UILabel *)v4->_countLabel setFont:v20];

    [(UILabel *)v4->_saveLabel setLineBreakMode:4];
    v21 = [(ICDocCamSaveButton *)v4 layer];
    [v21 setCornerRadius:14.0];

    [(ICDocCamSaveButton *)v4 setClipsToBounds:1];
    v22 = [MEMORY[0x277D75348] whiteColor];
    [(ICDocCamSaveButton *)v4 setBackgroundColor:v22];

    v23 = [(ICDocCamSaveButton *)v4 heightAnchor];
    v24 = [v23 constraintEqualToConstant:28.0];
    [v24 setActive:1];

    [(UILabel *)v4->_countLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ICDocCamSaveButton *)v4 addSubview:v4->_countLabel];
    [(UILabel *)v4->_saveLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ICDocCamSaveButton *)v4 addSubview:v4->_saveLabel];
    v25 = [MEMORY[0x277D75348] blackColor];
    v26 = [(ICDocCamSaveButton *)v4 countLabel];
    [v26 setTextColor:v25];

    v27 = [MEMORY[0x277D75348] blackColor];
    v28 = [(ICDocCamSaveButton *)v4 saveLabel];
    [v28 setTextColor:v27];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3 = [(ICDocCamSaveButton *)self window];
  v4 = [v3 windowScene];
  v5 = [v4 interfaceOrientation];

  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = (v5 - 1) > 1;
  }

  if (v8)
  {
    v9 = 2147483650.0;
  }

  else
  {
    v9 = [(ICDocCamSaveButton *)self maxWidthForPortraitIPhone];
  }

  if ([(ICDocCamSaveButton *)self documentCount]>= 2)
  {
    v10 = 3.0;
  }

  else
  {
    v10 = 0.0;
  }

  if ([(ICDocCamSaveButton *)self documentCount]>= 2)
  {
    v11 = 12.0;
  }

  else
  {
    v11 = 18.0;
  }

  v12 = *MEMORY[0x277D74418];
  v13 = 18;
  while (1)
  {
    --v13;
    if (!v7)
    {
      v14 = [MEMORY[0x277D74300] systemFontOfSize:v13 weight:v12];
      v15 = [(ICDocCamSaveButton *)self saveLabel];
      [v15 setFont:v14];

      v16 = [MEMORY[0x277D74300] systemFontOfSize:v13 weight:v12];
      v17 = [(ICDocCamSaveButton *)self countLabel];
      [v17 setFont:v16];
    }

    v18 = [(ICDocCamSaveButton *)self countLabel];
    [v18 sizeToFit];

    v19 = [(ICDocCamSaveButton *)self saveLabel];
    [v19 sizeToFit];

    v20 = [(ICDocCamSaveButton *)self countLabel];
    [v20 frame];
    v22 = v21;

    v23 = [(ICDocCamSaveButton *)self saveLabel];
    [v23 frame];
    v25 = v24;

    v26 = v10 + v22 + v25 + v11 * 2.0;
    if (v26 <= v9)
    {
      break;
    }

    if (v13 <= 15)
    {
      v10 = 0.0;
    }

    if (v13 <= 0xF)
    {
      v25 = v25 - (v26 - v9);
      break;
    }
  }

  v27 = [(ICDocCamSaveButton *)self layoutConstraints];

  if (v27)
  {
    v28 = MEMORY[0x277CCAAD0];
    v29 = [(ICDocCamSaveButton *)self layoutConstraints];
    [v28 deactivateConstraints:v29];

    v30 = [(ICDocCamSaveButton *)self layoutConstraints];
    [v30 removeAllObjects];
  }

  else
  {
    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(ICDocCamSaveButton *)self setLayoutConstraints:v30];
  }

  v31 = [(ICDocCamSaveButton *)self layoutConstraints];
  v32 = [(ICDocCamSaveButton *)self countLabel];
  v33 = [v32 trailingAnchor];
  v34 = [(ICDocCamSaveButton *)self trailingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:-v11];
  [v31 addObject:v35];

  v36 = [(ICDocCamSaveButton *)self layoutConstraints];
  v37 = [(ICDocCamSaveButton *)self countLabel];
  v38 = [v37 widthAnchor];
  v39 = [v38 constraintEqualToConstant:v22];
  [v36 addObject:v39];

  v40 = [(ICDocCamSaveButton *)self layoutConstraints];
  v41 = [(ICDocCamSaveButton *)self countLabel];
  v42 = [v41 centerYAnchor];
  v43 = [(ICDocCamSaveButton *)self centerYAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];
  [v40 addObject:v44];

  v45 = [(ICDocCamSaveButton *)self layoutConstraints];
  v46 = [(ICDocCamSaveButton *)self saveLabel];
  v47 = [v46 trailingAnchor];
  v48 = [(ICDocCamSaveButton *)self countLabel];
  v49 = [v48 leadingAnchor];
  v50 = [v47 constraintEqualToAnchor:v49 constant:-v10];
  [v45 addObject:v50];

  v51 = [(ICDocCamSaveButton *)self layoutConstraints];
  v52 = [(ICDocCamSaveButton *)self saveLabel];
  v53 = [v52 widthAnchor];
  v54 = [v53 constraintEqualToConstant:v25];
  [v51 addObject:v54];

  v55 = [(ICDocCamSaveButton *)self layoutConstraints];
  v56 = [(ICDocCamSaveButton *)self saveLabel];
  v57 = [v56 centerYAnchor];
  v58 = [(ICDocCamSaveButton *)self centerYAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];
  [v55 addObject:v59];

  v60 = [(ICDocCamSaveButton *)self layoutConstraints];
  v61 = [(ICDocCamSaveButton *)self widthAnchor];
  v62 = [v61 constraintEqualToConstant:v10 + v25 + v22 + v11 * 2.0];
  [v60 addObject:v62];

  v63 = MEMORY[0x277CCAAD0];
  v64 = [(ICDocCamSaveButton *)self layoutConstraints];
  [v63 activateConstraints:v64];
}

- (void)setDocumentCount:(int64_t)a3
{
  self->_documentCount = a3;
  v4 = [(ICDocCamSaveButton *)self saveButtonTitleForDocumentCount:?];
  v5 = [(ICDocCamSaveButton *)self saveLabel];
  [v5 setText:v4];

  v6 = [(ICDocCamSaveButton *)self saveButtonCountStringForDocumentCount:self->_documentCount];
  v7 = [(ICDocCamSaveButton *)self countLabel];
  [v7 setText:v6];

  [(ICDocCamSaveButton *)self setNeedsLayout];

  [(ICDocCamSaveButton *)self layoutIfNeeded];
}

- (id)saveButtonTitleForDocumentCount:(unint64_t)a3
{
  v3 = [DCLocalization localizedStringForKey:@"Save" value:@"Save" table:@"Localizable"];

  return v3;
}

- (id)saveButtonCountStringForDocumentCount:(unint64_t)a3
{
  if (a3 < 2)
  {
    v6 = &stru_285C55A80;
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [DCLocalization localizedStringForKey:@"SAVE_%lu_SCANNED_IMAGES_COUNT" value:@"SAVE_%lu_SCANNED_IMAGES_COUNT" table:@"Localizable"];
    v6 = [v4 localizedStringWithFormat:v5, a3];
  }

  return v6;
}

- (id)accessibilityLabel
{
  v3 = [DCLocalization localizedStringForKey:@"Save" value:@"Save" table:@"Localizable"];
  v4 = [DCLocalization localizedStringForKey:@"%lu scans" value:@"%lu scans" table:@"Localizable"];
  v5 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v4, -[ICDocCamSaveButton documentCount](self, "documentCount")];
  v12 = __DCAccessibilityStringForVariables(1, v3, v6, v7, v8, v9, v10, v11, v5);

  return v12;
}

- (id)accessibilityUserInputLabels
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = [DCLocalization localizedStringForKey:@"Save" value:@"Save" table:@"Localizable"];
  v7[0] = v3;
  v4 = [(ICDocCamSaveButton *)self accessibilityLabel];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

@end