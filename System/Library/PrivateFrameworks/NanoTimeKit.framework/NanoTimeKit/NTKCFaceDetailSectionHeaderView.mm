@interface NTKCFaceDetailSectionHeaderView
+ (double)headerHeight;
+ (id)reuseIdentifier;
- (NSString)groupName;
- (NSString)title;
- (NTKCFaceDetailSectionHeaderView)init;
- (NTKCFaceDetailSectionHeaderView)initWithReuseIdentifier:(id)identifier;
- (id)_traitCollectionAdjustedIfNeeded;
- (void)_updateConfig;
- (void)layoutSubviews;
- (void)setGroupName:(id)name;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation NTKCFaceDetailSectionHeaderView

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (double)headerHeight
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v5 = *MEMORY[0x277D76800];
  if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D76800]) == NSOrderedDescending)
  {
    v6 = v5;

    preferredContentSizeCategory = v6;
  }

  v7 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:preferredContentSizeCategory];
  if (_os_feature_enabled_impl())
  {
    sidebarHeaderConfiguration = [MEMORY[0x277D756E0] sidebarHeaderConfiguration];
    v9 = [objc_alloc(MEMORY[0x277D75D20]) initWithTraitCollection:v7];
    v10 = [sidebarHeaderConfiguration updatedConfigurationForState:v9];
    textProperties = [sidebarHeaderConfiguration textProperties];
    font = [textProperties font];

    [font _scaledValueForValue:6.0];
    v14 = v13;
    [font lineHeight];
    UICeilToScale();
    v16 = v14 + v15;
  }

  else
  {
    sidebarHeaderConfiguration = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:v7];
    [sidebarHeaderConfiguration _scaledValueForValue:32.0];
    v16 = v17;
  }

  return v16;
}

- (NTKCFaceDetailSectionHeaderView)init
{
  reuseIdentifier = [objc_opt_class() reuseIdentifier];
  v4 = [(NTKCFaceDetailSectionHeaderView *)self initWithReuseIdentifier:reuseIdentifier];

  return v4;
}

- (NTKCFaceDetailSectionHeaderView)initWithReuseIdentifier:(id)identifier
{
  v17.receiver = self;
  v17.super_class = NTKCFaceDetailSectionHeaderView;
  v3 = [(NTKCFaceDetailSectionHeaderView *)&v17 initWithReuseIdentifier:identifier];
  if (v3)
  {
    if (_os_feature_enabled_impl())
    {
      sidebarHeaderConfiguration = [MEMORY[0x277D756E0] sidebarHeaderConfiguration];
      configuration = v3->_configuration;
      v3->_configuration = sidebarHeaderConfiguration;
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x277D75D68]);
      configuration = [MEMORY[0x277D75210] effectWithStyle:10];
      v7 = [v6 initWithEffect:configuration];
      [(NTKCFaceDetailSectionHeaderView *)v3 setBackgroundView:v7];
    }

    v8 = objc_opt_new();
    detailLabel = v3->_detailLabel;
    v3->_detailLabel = v8;

    v10 = BPSDetailTextColor();
    [(UILabel *)v3->_detailLabel setTextColor:v10];

    if (CLKLayoutIsRTL())
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    [(UILabel *)v3->_detailLabel setTextAlignment:v11];
    contentView = [(NTKCFaceDetailSectionHeaderView *)v3 contentView];
    [contentView addSubview:v3->_detailLabel];

    v13 = objc_opt_new();
    separator = v3->_separator;
    v3->_separator = v13;

    [(NTKCFaceDetailSectionHeaderView *)v3 addSubview:v3->_separator];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__fontSizeDidChange name:*MEMORY[0x277D76810] object:0];

    [(NTKCFaceDetailSectionHeaderView *)v3 _fontSizeDidChange];
  }

  return v3;
}

- (NSString)title
{
  textLabel = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  text = [textLabel text];

  return text;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  textLabel = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  [textLabel setText:titleCopy];

  textLabel2 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  [textLabel2 sizeToFit];

  [(NTKCFaceDetailSectionHeaderView *)self setNeedsLayout];
}

- (void)setSubtitle:(id)subtitle
{
  [(UILabel *)self->_detailLabel setText:subtitle];
  [(UILabel *)self->_detailLabel sizeToFit];

  [(NTKCFaceDetailSectionHeaderView *)self setNeedsLayout];
}

- (NSString)groupName
{
  if (_os_feature_enabled_impl())
  {
    _groupName = 0;
  }

  else
  {
    backgroundView = [(NTKCFaceDetailSectionHeaderView *)self backgroundView];
    _groupName = [backgroundView _groupName];
  }

  return _groupName;
}

- (void)setGroupName:(id)name
{
  nameCopy = name;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    backgroundView = [(NTKCFaceDetailSectionHeaderView *)self backgroundView];
    [backgroundView _setGroupName:nameCopy];
  }
}

- (void)layoutSubviews
{
  v69.receiver = self;
  v69.super_class = NTKCFaceDetailSectionHeaderView;
  [(NTKCFaceDetailSectionHeaderView *)&v69 layoutSubviews];
  [(NTKCFaceDetailSectionHeaderView *)self _updateConfig];
  contentView = [(NTKCFaceDetailSectionHeaderView *)self contentView];
  [contentView bounds];
  v66 = v4;
  v67 = v5;
  v7 = v6;
  v9 = v8;

  v10 = NTKCScreenEdgeMargin();
  v11 = v10;
  IsRTL = CLKLayoutIsRTL();
  textLabel = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  [textLabel frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v65 = v10;
  if (IsRTL)
  {
    v70.origin.x = v66;
    v70.origin.y = v67;
    v70.size.width = v7;
    v70.size.height = v9;
    Width = CGRectGetWidth(v70);
    v71.origin.x = v15;
    v71.origin.y = v17;
    v71.size.width = v19;
    v71.size.height = v21;
    v11 = Width - CGRectGetWidth(v71) - v10;
  }

  v64 = v9;
  v23 = v7;
  v24 = 6.0;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    font = [(UILabel *)self->_detailLabel font];
    [font _scaledValueForValue:22.0];
    v27 = v26;

    textLabel2 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
    [textLabel2 _lastLineBaseline];
    v24 = v27 - v29;
  }

  textLabel3 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  [textLabel3 setFrame:{v11, v24, v19, v21}];

  [(UILabel *)self->_detailLabel frame];
  v61 = v32;
  v62 = v31;
  v63 = v33;
  v68 = v10;
  rect = v21;
  if (_os_feature_enabled_impl())
  {
    v72.origin.x = v11;
    v72.origin.y = v24;
    v72.size.width = v19;
    v72.size.height = v21;
    v34 = v11;
    MinY = CGRectGetMinY(v72);
    textLabel4 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
    [textLabel4 _firstLineBaseline];
    v38 = MinY + v37;
    [(UILabel *)self->_detailLabel _lastLineBaseline];
    v40 = v38 - v39;
  }

  else
  {
    font2 = [(UILabel *)self->_detailLabel font];
    [font2 _scaledValueForValue:22.0];
    v34 = v11;
    v43 = v42;

    [(UILabel *)self->_detailLabel _lastLineBaseline];
    v40 = v43 - v44;
  }

  v73.origin.y = v67;
  v73.origin.x = v66;
  v73.size.width = v23;
  v73.size.height = v64;
  v45 = CGRectGetWidth(v73) + v10 * -2.0;
  v74.origin.x = v34;
  v74.origin.y = v24;
  v74.size.width = v19;
  v74.size.height = rect;
  v46 = v45 - CGRectGetWidth(v74) + -16.0;
  v47 = v61;
  v75.origin.x = v62;
  v75.origin.y = v40;
  v75.size.width = v61;
  v75.size.height = v63;
  v48 = CGRectGetWidth(v75);
  v49 = 0.0;
  if (v46 >= 0.0)
  {
    v49 = v46;
  }

  if (v48 > v46)
  {
    v47 = v49;
  }

  v50 = v65;
  if ((IsRTL & 1) == 0)
  {
    v76.origin.x = v66;
    v76.origin.y = v67;
    v76.size.width = v23;
    v76.size.height = v64;
    v51 = CGRectGetWidth(v76) - v68;
    v77.origin.x = v62;
    v77.origin.y = v40;
    v77.size.width = v47;
    v77.size.height = v63;
    v50 = v51 - CGRectGetWidth(v77);
  }

  [(UILabel *)self->_detailLabel setFrame:v50, v40, v47, v63];
  [(NTKCSeparatorView *)self->_separator frame];
  v53 = v52;
  v55 = v54;
  if (_os_feature_enabled_impl())
  {
    v56 = 0.0;
    if (IsRTL)
    {
      v57 = 0.0;
    }

    else
    {
      v57 = v68;
    }

    [(NTKCFaceDetailSectionHeaderView *)self bounds];
    v58 = CGRectGetWidth(v78) - v68;
  }

  else
  {
    [(NTKCFaceDetailSectionHeaderView *)self bounds];
    v58 = CGRectGetWidth(v79);
    [(NTKCFaceDetailSectionHeaderView *)self bounds];
    Height = CGRectGetHeight(v80);
    v57 = 0.0;
    v81.origin.x = 0.0;
    v81.origin.y = v53;
    v81.size.width = v58;
    v81.size.height = v55;
    v56 = Height - CGRectGetHeight(v81);
  }

  [(NTKCSeparatorView *)self->_separator setFrame:v57, v56, v58, v55];
}

- (void)_updateConfig
{
  _traitCollectionAdjustedIfNeeded = [(NTKCFaceDetailSectionHeaderView *)self _traitCollectionAdjustedIfNeeded];
  if (_os_feature_enabled_impl())
  {
    v3 = [objc_alloc(MEMORY[0x277D75D20]) initWithTraitCollection:_traitCollectionAdjustedIfNeeded];
    v4 = [(UIListContentConfiguration *)self->_configuration updatedConfigurationForState:v3];
    configuration = self->_configuration;
    self->_configuration = v4;

    textProperties = [(UIListContentConfiguration *)self->_configuration textProperties];
    font = [textProperties font];
    textLabel = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
    [textLabel setFont:font];
  }

  else
  {
    v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988] compatibleWithTraitCollection:_traitCollectionAdjustedIfNeeded];
    textProperties = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
    [textProperties setFont:v3];
  }

  textLabel2 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  [textLabel2 sizeToFit];

  v10 = BPSTextColor();
  textLabel3 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  [textLabel3 setTextColor:v10];

  v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:_traitCollectionAdjustedIfNeeded];
  [(UILabel *)self->_detailLabel setFont:v12];
  [(UILabel *)self->_detailLabel sizeToFit];
}

- (id)_traitCollectionAdjustedIfNeeded
{
  traitCollection = [(NTKCFaceDetailSectionHeaderView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v5 = *MEMORY[0x277D76800];
  if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D76800]) == NSOrderedDescending)
  {
    [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v5];
  }

  else
  {
    [(NTKCFaceDetailSectionHeaderView *)self traitCollection];
  }
  v6 = ;

  return v6;
}

@end