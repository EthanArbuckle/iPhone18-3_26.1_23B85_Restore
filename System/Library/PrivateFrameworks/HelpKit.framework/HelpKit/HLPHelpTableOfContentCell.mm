@interface HLPHelpTableOfContentCell
- (CGAffineTransform)arrowTransform;
- (HLPHelpTableOfContentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)accessibilityLabel;
- (int64_t)itemLevel;
- (void)cancelIconRequest;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setClosed:(BOOL)closed;
- (void)setHelpItem:(id)item;
- (void)updateConstraints;
- (void)updateFont;
- (void)updateToggleImageAnimated:(BOOL)animated;
@end

@implementation HLPHelpTableOfContentCell

- (void)dealloc
{
  [(HLPHelpTableOfContentCell *)self cancelIconRequest];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = HLPHelpTableOfContentCell;
  [(HLPHelpTableOfContentCell *)&v4 dealloc];
}

- (HLPHelpTableOfContentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v87.receiver = self;
  v87.super_class = HLPHelpTableOfContentCell;
  v4 = [(HLPHelpTableOfContentCell *)&v87 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

    v4->_closed = 1;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v4->_RTL = [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 1;

    LODWORD(mEMORY[0x277D75128]) = +[HLPCommonDefines isVisionOS];
    v7 = objc_alloc_init(MEMORY[0x277D755E8]);
    accessoryImageView = v4->_accessoryImageView;
    v4->_accessoryImageView = v7;

    [(UIImageView *)v4->_accessoryImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HLPHelpTableOfContentCell *)v4 arrowTransform];
    v9 = v4->_accessoryImageView;
    v86[0] = v86[3];
    v86[1] = v86[4];
    v86[2] = v86[5];
    [(UIImageView *)v9 setTransform:v86];
    contentView = [(HLPHelpTableOfContentCell *)v4 contentView];
    [contentView addSubview:v4->_accessoryImageView];

    v11 = objc_alloc_init(MEMORY[0x277D755E8]);
    sectionImageView = v4->_sectionImageView;
    v4->_sectionImageView = v11;

    [(UIImageView *)v4->_sectionImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_sectionImageView setHidden:1];
    contentView2 = [(HLPHelpTableOfContentCell *)v4 contentView];
    [contentView2 addSubview:v4->_sectionImageView];

    v14 = objc_alloc(MEMORY[0x277D756B8]);
    v15 = [v14 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    nameLabel = v4->_nameLabel;
    v4->_nameLabel = v15;

    [(UILabel *)v4->_nameLabel setLineBreakMode:4];
    [(UILabel *)v4->_nameLabel setLineBreakStrategy:0];
    [(UILabel *)v4->_nameLabel setNumberOfLines:0];
    [(UILabel *)v4->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    if (mEMORY[0x277D75128])
    {
      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      [(UILabel *)v4->_nameLabel setTextColor:secondaryLabelColor];

      v18 = 0x404E000000000000;
    }

    else
    {
      v18 = 0x404A000000000000;
    }

    v19 = *&v18;
    [(HLPHelpTableOfContentCell *)v4 updateFont];
    contentView3 = [(HLPHelpTableOfContentCell *)v4 contentView];
    [contentView3 addSubview:v4->_nameLabel];

    centerYAnchor = [(UIImageView *)v4->_accessoryImageView centerYAnchor];
    contentView4 = [(HLPHelpTableOfContentCell *)v4 contentView];
    centerYAnchor2 = [contentView4 centerYAnchor];
    v24 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v24 setActive:1];

    LODWORD(v25) = 1148846080;
    [(UIImageView *)v4->_accessoryImageView setContentCompressionResistancePriority:0 forAxis:v25];
    widthAnchor = [(UIImageView *)v4->_sectionImageView widthAnchor];
    v27 = [widthAnchor constraintEqualToConstant:0.0];
    sectionImageWidthConstraint = v4->_sectionImageWidthConstraint;
    v4->_sectionImageWidthConstraint = v27;

    [(NSLayoutConstraint *)v4->_sectionImageWidthConstraint setActive:1];
    heightAnchor = [(UIImageView *)v4->_sectionImageView heightAnchor];
    widthAnchor2 = [(UIImageView *)v4->_sectionImageView widthAnchor];
    v31 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    [v31 setActive:1];

    centerYAnchor3 = [(UIImageView *)v4->_sectionImageView centerYAnchor];
    contentView5 = [(HLPHelpTableOfContentCell *)v4 contentView];
    centerYAnchor4 = [contentView5 centerYAnchor];
    v35 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v35 setActive:1];

    LODWORD(v36) = 1148846080;
    [(UIImageView *)v4->_sectionImageView setContentCompressionResistancePriority:0 forAxis:v36];
    v37 = objc_alloc_init(MEMORY[0x277D756D0]);
    contentView6 = [(HLPHelpTableOfContentCell *)v4 contentView];
    [contentView6 addLayoutGuide:v37];

    leadingAnchor = [v37 leadingAnchor];
    contentView7 = [(HLPHelpTableOfContentCell *)v4 contentView];
    leadingAnchor2 = [contentView7 leadingAnchor];
    v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v42 setActive:1];

    trailingAnchor = [v37 trailingAnchor];
    contentView8 = [(HLPHelpTableOfContentCell *)v4 contentView];
    trailingAnchor2 = [contentView8 trailingAnchor];
    v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v46 setActive:1];

    trailingAnchor3 = [(UILabel *)v4->_nameLabel trailingAnchor];
    leadingAnchor3 = [(UIImageView *)v4->_accessoryImageView leadingAnchor];
    v49 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3 constant:-16.0];
    [v49 setActive:1];

    leadingAnchor4 = [(UILabel *)v4->_nameLabel leadingAnchor];
    contentView9 = [(HLPHelpTableOfContentCell *)v4 contentView];
    leadingAnchor5 = [contentView9 leadingAnchor];
    v53 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:0.0];
    labelLeadingConstraint = v4->_labelLeadingConstraint;
    v4->_labelLeadingConstraint = v53;

    leadingAnchor6 = [(UIImageView *)v4->_sectionImageView leadingAnchor];
    contentView10 = [(HLPHelpTableOfContentCell *)v4 contentView];
    leadingAnchor7 = [contentView10 leadingAnchor];
    v58 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    sectionImageLeadingConstraint = v4->_sectionImageLeadingConstraint;
    v4->_sectionImageLeadingConstraint = v58;

    trailingAnchor4 = [(UIImageView *)v4->_accessoryImageView trailingAnchor];
    contentView11 = [(HLPHelpTableOfContentCell *)v4 contentView];
    trailingAnchor5 = [contentView11 trailingAnchor];
    v63 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-16.0];
    accessoryImageViewTrailingConstraint = v4->_accessoryImageViewTrailingConstraint;
    v4->_accessoryImageViewTrailingConstraint = v63;

    [(NSLayoutConstraint *)v4->_accessoryImageViewTrailingConstraint setActive:1];
    heightAnchor2 = [v37 heightAnchor];
    v66 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:v19];

    LODWORD(v67) = 1147207680;
    [v66 setPriority:v67];
    [v66 setActive:1];
    topAnchor = [v37 topAnchor];
    contentView12 = [(HLPHelpTableOfContentCell *)v4 contentView];
    topAnchor2 = [contentView12 topAnchor];
    v71 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v71 setActive:1];

    bottomAnchor = [v37 bottomAnchor];
    contentView13 = [(HLPHelpTableOfContentCell *)v4 contentView];
    bottomAnchor2 = [contentView13 bottomAnchor];
    v75 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v75 setActive:1];

    centerYAnchor5 = [(UILabel *)v4->_nameLabel centerYAnchor];
    centerYAnchor6 = [v37 centerYAnchor];
    v78 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    [v78 setActive:1];

    topAnchor3 = [(UILabel *)v4->_nameLabel topAnchor];
    topAnchor4 = [v37 topAnchor];
    v81 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:12.0];
    [v81 setActive:1];

    bottomAnchor3 = [(UILabel *)v4->_nameLabel bottomAnchor];
    bottomAnchor4 = [v37 bottomAnchor];
    v84 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-12.0];
    [v84 setActive:1];

    [(NSLayoutConstraint *)v4->_labelLeadingConstraint setActive:1];
    [(NSLayoutConstraint *)v4->_sectionImageLeadingConstraint setActive:1];
  }

  return v4;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = HLPHelpTableOfContentCell;
  [(HLPHelpTableOfContentCell *)&v5 prepareForReuse];
  self->_closed = 1;
  [(HLPHelpTableOfContentCell *)self arrowTransform];
  accessoryImageView = [(HLPHelpTableOfContentCell *)self accessoryImageView];
  v4[0] = v4[3];
  v4[1] = v4[4];
  v4[2] = v4[5];
  [accessoryImageView setTransform:v4];

  if (self->_updateSeparatorInsetAutomatically)
  {
    [(HLPHelpTableOfContentCell *)self setSeparatorInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  }

  [(HLPHelpTableOfContentCell *)self cancelIconRequest];
}

- (void)updateFont
{
  v5 = *MEMORY[0x277D76918];
  if (+[HLPCommonDefines isVisionOS]&& ![(HLPHelpItem *)self->_helpItem level])
  {
    v3 = *MEMORY[0x277D76A28];

    v5 = v3;
  }

  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:v5];
  [(UILabel *)self->_nameLabel setFont:v4];
}

- (void)contentSizeCategoryDidChange:(id)change
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  category = [mEMORY[0x277D75128] preferredContentSizeCategory];

  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(category);
  LODWORD(v6) = 1053609165;
  if (!IsAccessibilityCategory)
  {
    *&v6 = 0.0;
  }

  [(UILabel *)self->_nameLabel _setHyphenationFactor:v6];
  [(HLPHelpTableOfContentCell *)self setNeedsLayout];
  [(HLPHelpTableOfContentCell *)self setNeedsUpdateConstraints];
  [(HLPHelpTableOfContentCell *)self setNeedsDisplay];
}

- (void)cancelIconRequest
{
  v3 = +[HLPURLSessionManager defaultManager];
  [v3 cancelSessionItem:self->_sectionImageURLSessionItem];

  sectionImageURLSessionItem = self->_sectionImageURLSessionItem;
  self->_sectionImageURLSessionItem = 0;
}

- (void)setHelpItem:(id)item
{
  itemCopy = item;
  if (self->_helpItem != itemCopy)
  {
    objc_storeStrong(&self->_helpItem, item);
    decodedName = [(HLPHelpItem *)itemCopy decodedName];
    [(UILabel *)self->_nameLabel setText:decodedName];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    itemLevel = [(HLPHelpTableOfContentCell *)self itemLevel];
    if (isKindOfClass)
    {
      v9 = 0;
    }

    else
    {
      v9 = [(HLPHelpTableOfContentCell *)self displayTopicsAccessoryView]^ 1;
    }

    [(UIImageView *)self->_accessoryImageView setHidden:v9];
    if (+[HLPCommonDefines isVisionOS])
    {
      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      v11 = [MEMORY[0x277D755D0] configurationWithScale:1];
    }

    else
    {
      if (isKindOfClass)
      {
        [MEMORY[0x277D75348] linkColor];
      }

      else
      {
        [MEMORY[0x277D75348] tertiaryLabelColor];
      }
      secondaryLabelColor = ;
      v12 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:2 options:0];
      v13 = [MEMORY[0x277D74300] fontWithDescriptor:v12 size:0.0];
      v11 = [MEMORY[0x277D755D0] configurationWithFont:v13];
    }

    v14 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.right" withConfiguration:v11];
    v15 = 1;
    v16 = [v14 imageWithTintColor:secondaryLabelColor renderingMode:1];
    [(UIImageView *)self->_accessoryImageView setImage:v16];

    if (!itemLevel)
    {
      v15 = !self->_showFirstLevelIcon;
    }

    [(UIImageView *)self->_sectionImageView setHidden:v15];
    [(HLPHelpTableOfContentCell *)self updateFont];
    iconURL = [(HLPHelpItem *)self->_helpItem iconURL];
    if (iconURL && (v18 = iconURL, v19 = [(UIImageView *)self->_sectionImageView isHidden], v18, (v19 & 1) == 0))
    {
      [(UIImageView *)self->_sectionImageView setImage:0];
      [(UIImageView *)self->_sectionImageView setHidden:0];
      v20 = +[HLPURLSessionManager defaultManager];
      iconURL2 = [(HLPHelpItem *)self->_helpItem iconURL];
      absoluteString = [iconURL2 absoluteString];

      if (absoluteString)
      {
        v31 = v20;
        v23 = MEMORY[0x277CCAB70];
        v24 = [MEMORY[0x277CBEBC0] URLWithString:absoluteString];
        v25 = [v23 requestWithURL:v24];

        v26 = +[HLPCommonDefines assetRequestHeaderFields];
        if (v26)
        {
          [v25 setAllHTTPHeaderFields:v26];
        }

        lastPathComponent = [absoluteString lastPathComponent];
        objc_initWeak(&location, self);
        v28 = +[HLPImageCacheController sharedInstance];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __41__HLPHelpTableOfContentCell_setHelpItem___block_invoke;
        v32[3] = &unk_279707618;
        objc_copyWeak(&v33, &location);
        v29 = [v28 formattedDataForRequest:v25 identifier:lastPathComponent completionHandler:v32];
        sectionImageURLSessionItem = self->_sectionImageURLSessionItem;
        self->_sectionImageURLSessionItem = v29;

        v20 = v31;
        if (self->_sectionImageURLSessionItem)
        {
          [v31 resumeSessionItem:?];
        }

        objc_destroyWeak(&v33);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      [(UIImageView *)self->_sectionImageView setImage:0];
      [(UIImageView *)self->_sectionImageView setHidden:1];
    }
  }

  [(HLPHelpTableOfContentCell *)self setNeedsLayout];
  [(HLPHelpTableOfContentCell *)self setNeedsUpdateConstraints];
}

void __41__HLPHelpTableOfContentCell_setHelpItem___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained sectionImageURLSessionItem];
  v5 = [v4 isCancelled];

  if ((v5 & 1) == 0)
  {
    v6 = [WeakRetained sectionImageView];
    [v6 setImage:v7];
  }

  [WeakRetained setSectionImageURLSessionItem:0];
}

- (void)setClosed:(BOOL)closed
{
  if (self->_closed != closed)
  {
    self->_closed = closed;
    [(HLPHelpTableOfContentCell *)self updateToggleImageAnimated:0];
  }
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = HLPHelpTableOfContentCell;
  [(HLPHelpTableOfContentCell *)&v2 layoutSubviews];
}

- (void)updateConstraints
{
  v3 = 0.0;
  if ([(UIImageView *)self->_sectionImageView isHidden])
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 16.0;
  }

  [(NSLayoutConstraint *)self->_sectionImageLeadingConstraint setConstant:v4];
  isHidden = [(UIImageView *)self->_sectionImageView isHidden];
  v6 = 26.0;
  if (isHidden)
  {
    v6 = 0.0;
  }

  [(NSLayoutConstraint *)self->_sectionImageWidthConstraint setConstant:v6];
  itemLevel = [(HLPHelpTableOfContentCell *)self itemLevel];
  v8 = itemLevel;
  if (+[HLPCommonDefines isVisionOS]&& itemLevel > 0)
  {
    v8 = v8 + -1.0;
  }

  if (self->_showFirstLevelIcon)
  {
    if ([(UIImageView *)self->_sectionImageView isHidden])
    {
      v3 = 0.0;
    }

    else
    {
      v3 = 42.0;
    }
  }

  v9 = v8 * (v3 + 16.0) + 16.0;
  if (!self->_ignoreLevels && !itemLevel && ![(UIImageView *)self->_sectionImageView isHidden])
  {
    v9 = v3 + v9;
  }

  [(NSLayoutConstraint *)self->_labelLeadingConstraint setConstant:v9];
  if (self->_updateSeparatorInsetAutomatically)
  {
    [(HLPHelpTableOfContentCell *)self setSeparatorInset:0.0, v9, 0.0, 16.0];
  }

  v10.receiver = self;
  v10.super_class = HLPHelpTableOfContentCell;
  [(HLPHelpTableOfContentCell *)&v10 updateConstraints];
}

- (int64_t)itemLevel
{
  if (self->_ignoreLevels)
  {
    return 0;
  }

  else
  {
    return [(HLPHelpItem *)self->_helpItem level];
  }
}

- (CGAffineTransform)arrowTransform
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  if (BYTE4(self[22].a) == 1)
  {
    v3 = MEMORY[0x277CBF2C0];
    v4 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v4;
    *&retstr->tx = *(v3 + 32);
    if (BYTE6(self[22].a) != 1)
    {
      return self;
    }

    v5 = 3.14159265;
  }

  else
  {
    v5 = 1.57079633;
  }

  return CGAffineTransformMakeRotation(retstr, v5);
}

- (void)updateToggleImageAnimated:(BOOL)animated
{
  animatedCopy = animated;
  accessoryImageView = [(HLPHelpTableOfContentCell *)self accessoryImageView];
  isHidden = [accessoryImageView isHidden];

  if ((isHidden & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    [(HLPHelpTableOfContentCell *)self arrowTransform];
    if (animatedCopy)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v13 = v16;
      v12[2] = __55__HLPHelpTableOfContentCell_updateToggleImageAnimated___block_invoke;
      v12[3] = &unk_279707640;
      v12[4] = self;
      v14 = v17;
      v15 = v18;
      [MEMORY[0x277D75D18] animateWithDuration:v12 animations:0 completion:0.3];
    }

    else
    {
      v9 = v16;
      v10 = v17;
      v11 = v18;
      accessoryImageView2 = [(HLPHelpTableOfContentCell *)self accessoryImageView];
      v8[0] = v9;
      v8[1] = v10;
      v8[2] = v11;
      [accessoryImageView2 setTransform:v8];
    }
  }
}

void __55__HLPHelpTableOfContentCell_updateToggleImageAnimated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) accessoryImageView];
  [v1 setTransform:&v2];
}

- (id)accessibilityLabel
{
  helpItem = self->_helpItem;
  objc_opt_class();
  LOBYTE(helpItem) = objc_opt_isKindOfClass();
  v4 = +[HLPCommonDefines HLPBundle];
  v5 = v4;
  if (helpItem)
  {
    v6 = @"Section:";
  }

  else
  {
    v6 = @"Topic:";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_2864756F0 table:0];

  v8 = MEMORY[0x277CCACA8];
  name = [(HLPHelpItem *)self->_helpItem name];
  v10 = [v8 stringWithFormat:@"%@. %@", name, v7];

  return v10;
}

@end