@interface NTKCFaceDetailSectionHeaderView
+ (double)headerHeight;
+ (id)reuseIdentifier;
- (NSString)groupName;
- (NSString)title;
- (NTKCFaceDetailSectionHeaderView)init;
- (NTKCFaceDetailSectionHeaderView)initWithReuseIdentifier:(id)a3;
- (id)_traitCollectionAdjustedIfNeeded;
- (void)_updateConfig;
- (void)layoutSubviews;
- (void)setGroupName:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation NTKCFaceDetailSectionHeaderView

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (double)headerHeight
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  v3 = [v2 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = *MEMORY[0x277D76800];
  if (UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x277D76800]) == NSOrderedDescending)
  {
    v6 = v5;

    v4 = v6;
  }

  v7 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v4];
  if (_os_feature_enabled_impl())
  {
    v8 = [MEMORY[0x277D756E0] sidebarHeaderConfiguration];
    v9 = [objc_alloc(MEMORY[0x277D75D20]) initWithTraitCollection:v7];
    v10 = [v8 updatedConfigurationForState:v9];
    v11 = [v8 textProperties];
    v12 = [v11 font];

    [v12 _scaledValueForValue:6.0];
    v14 = v13;
    [v12 lineHeight];
    UICeilToScale();
    v16 = v14 + v15;
  }

  else
  {
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:v7];
    [v8 _scaledValueForValue:32.0];
    v16 = v17;
  }

  return v16;
}

- (NTKCFaceDetailSectionHeaderView)init
{
  v3 = [objc_opt_class() reuseIdentifier];
  v4 = [(NTKCFaceDetailSectionHeaderView *)self initWithReuseIdentifier:v3];

  return v4;
}

- (NTKCFaceDetailSectionHeaderView)initWithReuseIdentifier:(id)a3
{
  v17.receiver = self;
  v17.super_class = NTKCFaceDetailSectionHeaderView;
  v3 = [(NTKCFaceDetailSectionHeaderView *)&v17 initWithReuseIdentifier:a3];
  if (v3)
  {
    if (_os_feature_enabled_impl())
    {
      v4 = [MEMORY[0x277D756E0] sidebarHeaderConfiguration];
      configuration = v3->_configuration;
      v3->_configuration = v4;
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
    v12 = [(NTKCFaceDetailSectionHeaderView *)v3 contentView];
    [v12 addSubview:v3->_detailLabel];

    v13 = objc_opt_new();
    separator = v3->_separator;
    v3->_separator = v13;

    [(NTKCFaceDetailSectionHeaderView *)v3 addSubview:v3->_separator];
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v3 selector:sel__fontSizeDidChange name:*MEMORY[0x277D76810] object:0];

    [(NTKCFaceDetailSectionHeaderView *)v3 _fontSizeDidChange];
  }

  return v3;
}

- (NSString)title
{
  v2 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  [v5 setText:v4];

  v6 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  [v6 sizeToFit];

  [(NTKCFaceDetailSectionHeaderView *)self setNeedsLayout];
}

- (void)setSubtitle:(id)a3
{
  [(UILabel *)self->_detailLabel setText:a3];
  [(UILabel *)self->_detailLabel sizeToFit];

  [(NTKCFaceDetailSectionHeaderView *)self setNeedsLayout];
}

- (NSString)groupName
{
  if (_os_feature_enabled_impl())
  {
    v3 = 0;
  }

  else
  {
    v4 = [(NTKCFaceDetailSectionHeaderView *)self backgroundView];
    v3 = [v4 _groupName];
  }

  return v3;
}

- (void)setGroupName:(id)a3
{
  v5 = a3;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v4 = [(NTKCFaceDetailSectionHeaderView *)self backgroundView];
    [v4 _setGroupName:v5];
  }
}

- (void)layoutSubviews
{
  v69.receiver = self;
  v69.super_class = NTKCFaceDetailSectionHeaderView;
  [(NTKCFaceDetailSectionHeaderView *)&v69 layoutSubviews];
  [(NTKCFaceDetailSectionHeaderView *)self _updateConfig];
  v3 = [(NTKCFaceDetailSectionHeaderView *)self contentView];
  [v3 bounds];
  v66 = v4;
  v67 = v5;
  v7 = v6;
  v9 = v8;

  v10 = NTKCScreenEdgeMargin();
  v11 = v10;
  IsRTL = CLKLayoutIsRTL();
  v13 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  [v13 frame];
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
    v25 = [(UILabel *)self->_detailLabel font];
    [v25 _scaledValueForValue:22.0];
    v27 = v26;

    v28 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
    [v28 _lastLineBaseline];
    v24 = v27 - v29;
  }

  v30 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  [v30 setFrame:{v11, v24, v19, v21}];

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
    v36 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
    [v36 _firstLineBaseline];
    v38 = MinY + v37;
    [(UILabel *)self->_detailLabel _lastLineBaseline];
    v40 = v38 - v39;
  }

  else
  {
    v41 = [(UILabel *)self->_detailLabel font];
    [v41 _scaledValueForValue:22.0];
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
  v13 = [(NTKCFaceDetailSectionHeaderView *)self _traitCollectionAdjustedIfNeeded];
  if (_os_feature_enabled_impl())
  {
    v3 = [objc_alloc(MEMORY[0x277D75D20]) initWithTraitCollection:v13];
    v4 = [(UIListContentConfiguration *)self->_configuration updatedConfigurationForState:v3];
    configuration = self->_configuration;
    self->_configuration = v4;

    v6 = [(UIListContentConfiguration *)self->_configuration textProperties];
    v7 = [v6 font];
    v8 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
    [v8 setFont:v7];
  }

  else
  {
    v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988] compatibleWithTraitCollection:v13];
    v6 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
    [v6 setFont:v3];
  }

  v9 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  [v9 sizeToFit];

  v10 = BPSTextColor();
  v11 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  [v11 setTextColor:v10];

  v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:v13];
  [(UILabel *)self->_detailLabel setFont:v12];
  [(UILabel *)self->_detailLabel sizeToFit];
}

- (id)_traitCollectionAdjustedIfNeeded
{
  v3 = [(NTKCFaceDetailSectionHeaderView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v5 = *MEMORY[0x277D76800];
  if (UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x277D76800]) == NSOrderedDescending)
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