@interface HLPHelpTableOfContentCell
- (CGAffineTransform)arrowTransform;
- (HLPHelpTableOfContentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)accessibilityLabel;
- (int64_t)itemLevel;
- (void)cancelIconRequest;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setClosed:(BOOL)a3;
- (void)setHelpItem:(id)a3;
- (void)updateConstraints;
- (void)updateFont;
- (void)updateToggleImageAnimated:(BOOL)a3;
@end

@implementation HLPHelpTableOfContentCell

- (void)dealloc
{
  [(HLPHelpTableOfContentCell *)self cancelIconRequest];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = HLPHelpTableOfContentCell;
  [(HLPHelpTableOfContentCell *)&v4 dealloc];
}

- (HLPHelpTableOfContentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v87.receiver = self;
  v87.super_class = HLPHelpTableOfContentCell;
  v4 = [(HLPHelpTableOfContentCell *)&v87 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v4 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

    v4->_closed = 1;
    v6 = [MEMORY[0x277D75128] sharedApplication];
    v4->_RTL = [v6 userInterfaceLayoutDirection] == 1;

    LODWORD(v6) = +[HLPCommonDefines isVisionOS];
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
    v10 = [(HLPHelpTableOfContentCell *)v4 contentView];
    [v10 addSubview:v4->_accessoryImageView];

    v11 = objc_alloc_init(MEMORY[0x277D755E8]);
    sectionImageView = v4->_sectionImageView;
    v4->_sectionImageView = v11;

    [(UIImageView *)v4->_sectionImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_sectionImageView setHidden:1];
    v13 = [(HLPHelpTableOfContentCell *)v4 contentView];
    [v13 addSubview:v4->_sectionImageView];

    v14 = objc_alloc(MEMORY[0x277D756B8]);
    v15 = [v14 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    nameLabel = v4->_nameLabel;
    v4->_nameLabel = v15;

    [(UILabel *)v4->_nameLabel setLineBreakMode:4];
    [(UILabel *)v4->_nameLabel setLineBreakStrategy:0];
    [(UILabel *)v4->_nameLabel setNumberOfLines:0];
    [(UILabel *)v4->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    if (v6)
    {
      v17 = [MEMORY[0x277D75348] secondaryLabelColor];
      [(UILabel *)v4->_nameLabel setTextColor:v17];

      v18 = 0x404E000000000000;
    }

    else
    {
      v18 = 0x404A000000000000;
    }

    v19 = *&v18;
    [(HLPHelpTableOfContentCell *)v4 updateFont];
    v20 = [(HLPHelpTableOfContentCell *)v4 contentView];
    [v20 addSubview:v4->_nameLabel];

    v21 = [(UIImageView *)v4->_accessoryImageView centerYAnchor];
    v22 = [(HLPHelpTableOfContentCell *)v4 contentView];
    v23 = [v22 centerYAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    [v24 setActive:1];

    LODWORD(v25) = 1148846080;
    [(UIImageView *)v4->_accessoryImageView setContentCompressionResistancePriority:0 forAxis:v25];
    v26 = [(UIImageView *)v4->_sectionImageView widthAnchor];
    v27 = [v26 constraintEqualToConstant:0.0];
    sectionImageWidthConstraint = v4->_sectionImageWidthConstraint;
    v4->_sectionImageWidthConstraint = v27;

    [(NSLayoutConstraint *)v4->_sectionImageWidthConstraint setActive:1];
    v29 = [(UIImageView *)v4->_sectionImageView heightAnchor];
    v30 = [(UIImageView *)v4->_sectionImageView widthAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    [v31 setActive:1];

    v32 = [(UIImageView *)v4->_sectionImageView centerYAnchor];
    v33 = [(HLPHelpTableOfContentCell *)v4 contentView];
    v34 = [v33 centerYAnchor];
    v35 = [v32 constraintEqualToAnchor:v34];
    [v35 setActive:1];

    LODWORD(v36) = 1148846080;
    [(UIImageView *)v4->_sectionImageView setContentCompressionResistancePriority:0 forAxis:v36];
    v37 = objc_alloc_init(MEMORY[0x277D756D0]);
    v38 = [(HLPHelpTableOfContentCell *)v4 contentView];
    [v38 addLayoutGuide:v37];

    v39 = [v37 leadingAnchor];
    v40 = [(HLPHelpTableOfContentCell *)v4 contentView];
    v41 = [v40 leadingAnchor];
    v42 = [v39 constraintEqualToAnchor:v41];
    [v42 setActive:1];

    v43 = [v37 trailingAnchor];
    v44 = [(HLPHelpTableOfContentCell *)v4 contentView];
    v45 = [v44 trailingAnchor];
    v46 = [v43 constraintEqualToAnchor:v45];
    [v46 setActive:1];

    v47 = [(UILabel *)v4->_nameLabel trailingAnchor];
    v48 = [(UIImageView *)v4->_accessoryImageView leadingAnchor];
    v49 = [v47 constraintEqualToAnchor:v48 constant:-16.0];
    [v49 setActive:1];

    v50 = [(UILabel *)v4->_nameLabel leadingAnchor];
    v51 = [(HLPHelpTableOfContentCell *)v4 contentView];
    v52 = [v51 leadingAnchor];
    v53 = [v50 constraintEqualToAnchor:v52 constant:0.0];
    labelLeadingConstraint = v4->_labelLeadingConstraint;
    v4->_labelLeadingConstraint = v53;

    v55 = [(UIImageView *)v4->_sectionImageView leadingAnchor];
    v56 = [(HLPHelpTableOfContentCell *)v4 contentView];
    v57 = [v56 leadingAnchor];
    v58 = [v55 constraintEqualToAnchor:v57];
    sectionImageLeadingConstraint = v4->_sectionImageLeadingConstraint;
    v4->_sectionImageLeadingConstraint = v58;

    v60 = [(UIImageView *)v4->_accessoryImageView trailingAnchor];
    v61 = [(HLPHelpTableOfContentCell *)v4 contentView];
    v62 = [v61 trailingAnchor];
    v63 = [v60 constraintEqualToAnchor:v62 constant:-16.0];
    accessoryImageViewTrailingConstraint = v4->_accessoryImageViewTrailingConstraint;
    v4->_accessoryImageViewTrailingConstraint = v63;

    [(NSLayoutConstraint *)v4->_accessoryImageViewTrailingConstraint setActive:1];
    v65 = [v37 heightAnchor];
    v66 = [v65 constraintGreaterThanOrEqualToConstant:v19];

    LODWORD(v67) = 1147207680;
    [v66 setPriority:v67];
    [v66 setActive:1];
    v68 = [v37 topAnchor];
    v69 = [(HLPHelpTableOfContentCell *)v4 contentView];
    v70 = [v69 topAnchor];
    v71 = [v68 constraintEqualToAnchor:v70];
    [v71 setActive:1];

    v72 = [v37 bottomAnchor];
    v73 = [(HLPHelpTableOfContentCell *)v4 contentView];
    v74 = [v73 bottomAnchor];
    v75 = [v72 constraintEqualToAnchor:v74];
    [v75 setActive:1];

    v76 = [(UILabel *)v4->_nameLabel centerYAnchor];
    v77 = [v37 centerYAnchor];
    v78 = [v76 constraintEqualToAnchor:v77];
    [v78 setActive:1];

    v79 = [(UILabel *)v4->_nameLabel topAnchor];
    v80 = [v37 topAnchor];
    v81 = [v79 constraintEqualToAnchor:v80 constant:12.0];
    [v81 setActive:1];

    v82 = [(UILabel *)v4->_nameLabel bottomAnchor];
    v83 = [v37 bottomAnchor];
    v84 = [v82 constraintEqualToAnchor:v83 constant:-12.0];
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
  v3 = [(HLPHelpTableOfContentCell *)self accessoryImageView];
  v4[0] = v4[3];
  v4[1] = v4[4];
  v4[2] = v4[5];
  [v3 setTransform:v4];

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

- (void)contentSizeCategoryDidChange:(id)a3
{
  v4 = [MEMORY[0x277D75128] sharedApplication];
  category = [v4 preferredContentSizeCategory];

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

- (void)setHelpItem:(id)a3
{
  v5 = a3;
  if (self->_helpItem != v5)
  {
    objc_storeStrong(&self->_helpItem, a3);
    v6 = [(HLPHelpItem *)v5 decodedName];
    [(UILabel *)self->_nameLabel setText:v6];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = [(HLPHelpTableOfContentCell *)self itemLevel];
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
      v10 = [MEMORY[0x277D75348] secondaryLabelColor];
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
      v10 = ;
      v12 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:2 options:0];
      v13 = [MEMORY[0x277D74300] fontWithDescriptor:v12 size:0.0];
      v11 = [MEMORY[0x277D755D0] configurationWithFont:v13];
    }

    v14 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.right" withConfiguration:v11];
    v15 = 1;
    v16 = [v14 imageWithTintColor:v10 renderingMode:1];
    [(UIImageView *)self->_accessoryImageView setImage:v16];

    if (!v8)
    {
      v15 = !self->_showFirstLevelIcon;
    }

    [(UIImageView *)self->_sectionImageView setHidden:v15];
    [(HLPHelpTableOfContentCell *)self updateFont];
    v17 = [(HLPHelpItem *)self->_helpItem iconURL];
    if (v17 && (v18 = v17, v19 = [(UIImageView *)self->_sectionImageView isHidden], v18, (v19 & 1) == 0))
    {
      [(UIImageView *)self->_sectionImageView setImage:0];
      [(UIImageView *)self->_sectionImageView setHidden:0];
      v20 = +[HLPURLSessionManager defaultManager];
      v21 = [(HLPHelpItem *)self->_helpItem iconURL];
      v22 = [v21 absoluteString];

      if (v22)
      {
        v31 = v20;
        v23 = MEMORY[0x277CCAB70];
        v24 = [MEMORY[0x277CBEBC0] URLWithString:v22];
        v25 = [v23 requestWithURL:v24];

        v26 = +[HLPCommonDefines assetRequestHeaderFields];
        if (v26)
        {
          [v25 setAllHTTPHeaderFields:v26];
        }

        v27 = [v22 lastPathComponent];
        objc_initWeak(&location, self);
        v28 = +[HLPImageCacheController sharedInstance];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __41__HLPHelpTableOfContentCell_setHelpItem___block_invoke;
        v32[3] = &unk_279707618;
        objc_copyWeak(&v33, &location);
        v29 = [v28 formattedDataForRequest:v25 identifier:v27 completionHandler:v32];
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

- (void)setClosed:(BOOL)a3
{
  if (self->_closed != a3)
  {
    self->_closed = a3;
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
  v5 = [(UIImageView *)self->_sectionImageView isHidden];
  v6 = 26.0;
  if (v5)
  {
    v6 = 0.0;
  }

  [(NSLayoutConstraint *)self->_sectionImageWidthConstraint setConstant:v6];
  v7 = [(HLPHelpTableOfContentCell *)self itemLevel];
  v8 = v7;
  if (+[HLPCommonDefines isVisionOS]&& v7 > 0)
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
  if (!self->_ignoreLevels && !v7 && ![(UIImageView *)self->_sectionImageView isHidden])
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

- (void)updateToggleImageAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(HLPHelpTableOfContentCell *)self accessoryImageView];
  v6 = [v5 isHidden];

  if ((v6 & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    [(HLPHelpTableOfContentCell *)self arrowTransform];
    if (v3)
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
      v7 = [(HLPHelpTableOfContentCell *)self accessoryImageView];
      v8[0] = v9;
      v8[1] = v10;
      v8[2] = v11;
      [v7 setTransform:v8];
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
  v9 = [(HLPHelpItem *)self->_helpItem name];
  v10 = [v8 stringWithFormat:@"%@. %@", v9, v7];

  return v10;
}

@end