@interface ICDocCamSaveButton
- (ICDocCamSaveButton)initWithFrame:(CGRect)frame;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)saveButtonCountStringForDocumentCount:(unint64_t)count;
- (id)saveButtonTitleForDocumentCount:(unint64_t)count;
- (void)layoutSubviews;
- (void)setDocumentCount:(int64_t)count;
@end

@implementation ICDocCamSaveButton

- (ICDocCamSaveButton)initWithFrame:(CGRect)frame
{
  v30.receiver = self;
  v30.super_class = ICDocCamSaveButton;
  v3 = [(ICDocCamSaveButton *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_documentCount = 0;
    v3->_maxWidthForPortraitIPhone = 0x7FFFFFFFLL;
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    countLabel = v4->_countLabel;
    v4->_countLabel = v5;

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v4->_countLabel setBackgroundColor:clearColor];

    v8 = v4->_countLabel;
    v9 = [(ICDocCamSaveButton *)v4 saveButtonCountStringForDocumentCount:v4->_documentCount];
    [(UILabel *)v8 setText:v9];

    [(UILabel *)v4->_countLabel sizeToFit];
    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    saveLabel = v4->_saveLabel;
    v4->_saveLabel = v10;

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v4->_saveLabel setBackgroundColor:clearColor2];

    v13 = v4->_saveLabel;
    v14 = [(ICDocCamSaveButton *)v4 saveButtonTitleForDocumentCount:v4->_documentCount];
    [(UILabel *)v13 setText:v14];

    v15 = MEMORY[0x277D74420];
    if ((DCDebugInterfaceEnabled() & 1) == 0)
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom != 1)
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
    layer = [(ICDocCamSaveButton *)v4 layer];
    [layer setCornerRadius:14.0];

    [(ICDocCamSaveButton *)v4 setClipsToBounds:1];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(ICDocCamSaveButton *)v4 setBackgroundColor:whiteColor];

    heightAnchor = [(ICDocCamSaveButton *)v4 heightAnchor];
    v24 = [heightAnchor constraintEqualToConstant:28.0];
    [v24 setActive:1];

    [(UILabel *)v4->_countLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ICDocCamSaveButton *)v4 addSubview:v4->_countLabel];
    [(UILabel *)v4->_saveLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ICDocCamSaveButton *)v4 addSubview:v4->_saveLabel];
    blackColor = [MEMORY[0x277D75348] blackColor];
    countLabel = [(ICDocCamSaveButton *)v4 countLabel];
    [countLabel setTextColor:blackColor];

    blackColor2 = [MEMORY[0x277D75348] blackColor];
    saveLabel = [(ICDocCamSaveButton *)v4 saveLabel];
    [saveLabel setTextColor:blackColor2];
  }

  return v4;
}

- (void)layoutSubviews
{
  window = [(ICDocCamSaveButton *)self window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    v8 = 1;
  }

  else
  {
    v8 = (interfaceOrientation - 1) > 1;
  }

  if (v8)
  {
    maxWidthForPortraitIPhone = 2147483650.0;
  }

  else
  {
    maxWidthForPortraitIPhone = [(ICDocCamSaveButton *)self maxWidthForPortraitIPhone];
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
    if (!userInterfaceIdiom)
    {
      v14 = [MEMORY[0x277D74300] systemFontOfSize:v13 weight:v12];
      saveLabel = [(ICDocCamSaveButton *)self saveLabel];
      [saveLabel setFont:v14];

      v16 = [MEMORY[0x277D74300] systemFontOfSize:v13 weight:v12];
      countLabel = [(ICDocCamSaveButton *)self countLabel];
      [countLabel setFont:v16];
    }

    countLabel2 = [(ICDocCamSaveButton *)self countLabel];
    [countLabel2 sizeToFit];

    saveLabel2 = [(ICDocCamSaveButton *)self saveLabel];
    [saveLabel2 sizeToFit];

    countLabel3 = [(ICDocCamSaveButton *)self countLabel];
    [countLabel3 frame];
    v22 = v21;

    saveLabel3 = [(ICDocCamSaveButton *)self saveLabel];
    [saveLabel3 frame];
    v25 = v24;

    v26 = v10 + v22 + v25 + v11 * 2.0;
    if (v26 <= maxWidthForPortraitIPhone)
    {
      break;
    }

    if (v13 <= 15)
    {
      v10 = 0.0;
    }

    if (v13 <= 0xF)
    {
      v25 = v25 - (v26 - maxWidthForPortraitIPhone);
      break;
    }
  }

  layoutConstraints = [(ICDocCamSaveButton *)self layoutConstraints];

  if (layoutConstraints)
  {
    v28 = MEMORY[0x277CCAAD0];
    layoutConstraints2 = [(ICDocCamSaveButton *)self layoutConstraints];
    [v28 deactivateConstraints:layoutConstraints2];

    layoutConstraints3 = [(ICDocCamSaveButton *)self layoutConstraints];
    [layoutConstraints3 removeAllObjects];
  }

  else
  {
    layoutConstraints3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(ICDocCamSaveButton *)self setLayoutConstraints:layoutConstraints3];
  }

  layoutConstraints4 = [(ICDocCamSaveButton *)self layoutConstraints];
  countLabel4 = [(ICDocCamSaveButton *)self countLabel];
  trailingAnchor = [countLabel4 trailingAnchor];
  trailingAnchor2 = [(ICDocCamSaveButton *)self trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v11];
  [layoutConstraints4 addObject:v35];

  layoutConstraints5 = [(ICDocCamSaveButton *)self layoutConstraints];
  countLabel5 = [(ICDocCamSaveButton *)self countLabel];
  widthAnchor = [countLabel5 widthAnchor];
  v39 = [widthAnchor constraintEqualToConstant:v22];
  [layoutConstraints5 addObject:v39];

  layoutConstraints6 = [(ICDocCamSaveButton *)self layoutConstraints];
  countLabel6 = [(ICDocCamSaveButton *)self countLabel];
  centerYAnchor = [countLabel6 centerYAnchor];
  centerYAnchor2 = [(ICDocCamSaveButton *)self centerYAnchor];
  v44 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [layoutConstraints6 addObject:v44];

  layoutConstraints7 = [(ICDocCamSaveButton *)self layoutConstraints];
  saveLabel4 = [(ICDocCamSaveButton *)self saveLabel];
  trailingAnchor3 = [saveLabel4 trailingAnchor];
  countLabel7 = [(ICDocCamSaveButton *)self countLabel];
  leadingAnchor = [countLabel7 leadingAnchor];
  v50 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor constant:-v10];
  [layoutConstraints7 addObject:v50];

  layoutConstraints8 = [(ICDocCamSaveButton *)self layoutConstraints];
  saveLabel5 = [(ICDocCamSaveButton *)self saveLabel];
  widthAnchor2 = [saveLabel5 widthAnchor];
  v54 = [widthAnchor2 constraintEqualToConstant:v25];
  [layoutConstraints8 addObject:v54];

  layoutConstraints9 = [(ICDocCamSaveButton *)self layoutConstraints];
  saveLabel6 = [(ICDocCamSaveButton *)self saveLabel];
  centerYAnchor3 = [saveLabel6 centerYAnchor];
  centerYAnchor4 = [(ICDocCamSaveButton *)self centerYAnchor];
  v59 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [layoutConstraints9 addObject:v59];

  layoutConstraints10 = [(ICDocCamSaveButton *)self layoutConstraints];
  widthAnchor3 = [(ICDocCamSaveButton *)self widthAnchor];
  v62 = [widthAnchor3 constraintEqualToConstant:v10 + v25 + v22 + v11 * 2.0];
  [layoutConstraints10 addObject:v62];

  v63 = MEMORY[0x277CCAAD0];
  layoutConstraints11 = [(ICDocCamSaveButton *)self layoutConstraints];
  [v63 activateConstraints:layoutConstraints11];
}

- (void)setDocumentCount:(int64_t)count
{
  self->_documentCount = count;
  v4 = [(ICDocCamSaveButton *)self saveButtonTitleForDocumentCount:?];
  saveLabel = [(ICDocCamSaveButton *)self saveLabel];
  [saveLabel setText:v4];

  v6 = [(ICDocCamSaveButton *)self saveButtonCountStringForDocumentCount:self->_documentCount];
  countLabel = [(ICDocCamSaveButton *)self countLabel];
  [countLabel setText:v6];

  [(ICDocCamSaveButton *)self setNeedsLayout];

  [(ICDocCamSaveButton *)self layoutIfNeeded];
}

- (id)saveButtonTitleForDocumentCount:(unint64_t)count
{
  v3 = [DCLocalization localizedStringForKey:@"Save" value:@"Save" table:@"Localizable"];

  return v3;
}

- (id)saveButtonCountStringForDocumentCount:(unint64_t)count
{
  if (count < 2)
  {
    v6 = &stru_285C55A80;
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [DCLocalization localizedStringForKey:@"SAVE_%lu_SCANNED_IMAGES_COUNT" value:@"SAVE_%lu_SCANNED_IMAGES_COUNT" table:@"Localizable"];
    v6 = [v4 localizedStringWithFormat:v5, count];
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
  accessibilityLabel = [(ICDocCamSaveButton *)self accessibilityLabel];
  v7[1] = accessibilityLabel;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

@end