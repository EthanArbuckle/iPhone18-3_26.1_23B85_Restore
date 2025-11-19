@interface HUWheelControlPanelCell
- (BOOL)isDisabled;
- (HUWheelControlPanelCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSString)detailText;
- (NSString)titleText;
- (id)_defaultValueFormatter;
- (id)allControlViews;
- (void)_generateWheelValuesWithMinValue:(double)a3 maxValue:(double)a4 stepValue:(double)a5;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDetailText:(id)a3;
- (void)setMaxValue:(id)a3;
- (void)setMinValue:(id)a3;
- (void)setStepValue:(id)a3;
- (void)setTitleText:(id)a3;
- (void)setValueFormatter:(id)a3;
- (void)setWheelView:(id)a3;
- (void)setWheelViewVisible:(BOOL)a3;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)a3;
- (void)wheelControlView:(id)a3 didUpdateValue:(id)a4;
@end

@implementation HUWheelControlPanelCell

- (HUWheelControlPanelCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v21.receiver = self;
  v21.super_class = HUWheelControlPanelCell;
  v4 = [(HUWheelControlPanelCell *)&v21 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v5;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = *MEMORY[0x277D76918];
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v4->_titleLabel setFont:v8];

    v9 = [(HUWheelControlPanelCell *)v4 contentView];
    [v9 addSubview:v4->_titleLabel];

    if ([MEMORY[0x277D14CE8] useMacIdiom])
    {
      v10 = [HUWheelControlPopUpButton buttonWithType:124];
      p_wheelButton = &v4->_wheelButton;
      wheelButton = v4->_wheelButton;
      v4->_wheelButton = v10;

      [(HUWheelControlPopUpButton *)v4->_wheelButton setContextMenuEnabled:1];
      [(HUWheelControlPopUpButton *)v4->_wheelButton setContextMenuIsPrimary:1];
      [(HUWheelControlPopUpButton *)v4->_wheelButton setTranslatesAutoresizingMaskIntoConstraints:0];
    }

    else
    {
      v13 = objc_alloc_init(MEMORY[0x277D756B8]);
      p_wheelButton = &v4->_detailLabel;
      detailLabel = v4->_detailLabel;
      v4->_detailLabel = v13;

      [(UILabel *)v4->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:v7];
      [(UILabel *)v4->_detailLabel setFont:v15];
    }

    v16 = [(HUWheelControlPanelCell *)v4 contentView];
    [v16 addSubview:*p_wheelButton];

    v17 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v4->_separatorView;
    v4->_separatorView = v17;

    [(UIView *)v4->_separatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [(HUWheelControlPanelCell *)v4 contentView];
    [v19 addSubview:v4->_separatorView];
  }

  return v4;
}

- (id)allControlViews
{
  v3 = [MEMORY[0x277D14CE8] useMacIdiom];
  v4 = MEMORY[0x277CBEB98];
  if (v3)
  {
    [(HUWheelControlPanelCell *)self wheelButton];
  }

  else
  {
    [(HUWheelControlPanelCell *)self wheelView];
  }
  v5 = ;
  v6 = [v4 na_setWithSafeObject:v5];

  return v6;
}

- (void)setTitleText:(id)a3
{
  v4 = a3;
  v5 = [(HUWheelControlPanelCell *)self titleLabel];
  [v5 setText:v4];
}

- (NSString)titleText
{
  v2 = [(HUWheelControlPanelCell *)self titleLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setDetailText:(id)a3
{
  v4 = a3;
  v5 = [(HUWheelControlPanelCell *)self detailLabel];
  [v5 setText:v4];
}

- (NSString)detailText
{
  v2 = [(HUWheelControlPanelCell *)self detailLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setWheelView:(id)a3
{
  v5 = a3;
  wheelView = self->_wheelView;
  if (wheelView != v5)
  {
    v8 = v5;
    [(HUWheelControlView *)wheelView removeFromSuperview];
    objc_storeStrong(&self->_wheelView, a3);
    [(HUWheelControlView *)self->_wheelView setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(HUWheelControlPanelCell *)self contentView];
    [v7 addSubview:self->_wheelView];

    [(HUWheelControlView *)self->_wheelView setWheelDelegate:self];
    self->_wheelViewVisible = 0;
    [(HUWheelControlView *)self->_wheelView setHidden:1];
    [(UIView *)self->_separatorView setHidden:1];
    [(HUWheelControlPanelCell *)self setNeedsUpdateConstraints];
    v5 = v8;
  }
}

- (void)setWheelViewVisible:(BOOL)a3
{
  if (self->_wheelViewVisible != a3)
  {
    v3 = a3;
    self->_wheelViewVisible = a3;
    v5 = [(HUWheelControlPanelCell *)self wheelView];
    [v5 setHidden:!v3];

    LOBYTE(v5) = self->_wheelViewVisible;
    v6 = [(HUWheelControlPanelCell *)self separatorView];
    [v6 setHidden:(v5 & 1) == 0];

    [(HUWheelControlPanelCell *)self setNeedsUpdateConstraints];
  }
}

- (BOOL)isDisabled
{
  v2 = [(HUWheelControlPanelCell *)self wheelView];
  v3 = [v2 isDisabled];

  return v3;
}

- (void)updateConstraints
{
  v3 = [(HUWheelControlPanelCell *)self contentView];
  v4 = [v3 layoutMarginsGuide];

  v5 = [(HUWheelControlPanelCell *)self staticConstraints];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = [MEMORY[0x277D756E0] cellConfiguration];
    v8 = [(HUWheelControlPanelCell *)self traitCollection];
    [v7 _minimumHeightForTraitCollection:v8];
    v10 = v9;

    v11 = [(HUWheelControlPanelCell *)self titleLabel];
    v12 = [v11 topAnchor];
    v13 = [v4 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    [v6 addObject:v14];

    v15 = [(HUWheelControlPanelCell *)self titleLabel];
    v16 = [v15 leadingAnchor];
    v17 = [v4 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    [v6 addObject:v18];

    v19 = [(HUWheelControlPanelCell *)self titleLabel];
    v20 = [v19 centerYAnchor];
    v21 = [(HUWheelControlPanelCell *)self topAnchor];
    v22 = v10 * 0.5;
    v23 = [v20 constraintEqualToAnchor:v21 constant:v22];
    [v6 addObject:v23];

    if ([MEMORY[0x277D14CE8] useMacIdiom])
    {
      v24 = [(HUWheelControlPanelCell *)self wheelButton];
      v25 = [v24 topAnchor];
      v26 = [v4 topAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];
      [v6 addObject:v27];

      v28 = [(HUWheelControlPanelCell *)self wheelButton];
      v29 = [v28 trailingAnchor];
      v30 = [v4 trailingAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];
      [v6 addObject:v31];

      [(HUWheelControlPanelCell *)self wheelButton];
    }

    else
    {
      v32 = [(HUWheelControlPanelCell *)self titleLabel];
      v33 = [v32 trailingAnchor];
      v34 = [(HUWheelControlPanelCell *)self detailLabel];
      v35 = [v34 leadingAnchor];
      v36 = [v33 constraintEqualToAnchor:v35];
      [v6 addObject:v36];

      v37 = [(HUWheelControlPanelCell *)self detailLabel];
      LODWORD(v38) = 1144766464;
      [v37 setContentCompressionResistancePriority:0 forAxis:v38];

      v39 = [(HUWheelControlPanelCell *)self detailLabel];
      LODWORD(v40) = 1132134400;
      [v39 setContentHuggingPriority:0 forAxis:v40];

      v41 = [(HUWheelControlPanelCell *)self detailLabel];
      v42 = [v41 topAnchor];
      v43 = [v4 topAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];
      [v6 addObject:v44];

      v45 = [(HUWheelControlPanelCell *)self detailLabel];
      v46 = [v45 trailingAnchor];
      v47 = [v4 trailingAnchor];
      v48 = [v46 constraintEqualToAnchor:v47];
      [v6 addObject:v48];

      [(HUWheelControlPanelCell *)self detailLabel];
    }
    v49 = ;
    v50 = [v49 centerYAnchor];
    v51 = [(HUWheelControlPanelCell *)self topAnchor];
    v52 = [v50 constraintEqualToAnchor:v51 constant:v22];
    [v6 addObject:v52];

    [MEMORY[0x277CCAAD0] activateConstraints:v6];
    [(HUWheelControlPanelCell *)self setStaticConstraints:v6];
  }

  v53 = MEMORY[0x277CCAAD0];
  v54 = [(HUWheelControlPanelCell *)self dynamicConstraints];
  [v53 deactivateConstraints:v54];

  LODWORD(v54) = [(HUWheelControlPanelCell *)self wheelViewVisible];
  v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v54)
  {
    v56 = [(HUWheelControlPanelCell *)self separatorView];
    v57 = [v56 topAnchor];
    v58 = [(HUWheelControlPanelCell *)self titleLabel];
    v59 = [v58 bottomAnchor];
    [(HUWheelControlPanelCell *)self layoutMargins];
    v61 = [v57 constraintEqualToAnchor:v59 constant:v60];
    [v55 addObject:v61];

    v62 = [(HUWheelControlPanelCell *)self separatorView];
    v63 = [v62 leadingAnchor];
    v64 = [v4 leadingAnchor];
    v65 = [v63 constraintEqualToAnchor:v64];
    [v55 addObject:v65];

    v66 = [(HUWheelControlPanelCell *)self separatorView];
    v67 = [v66 trailingAnchor];
    v68 = [(HUWheelControlPanelCell *)self contentView];
    v69 = [v68 trailingAnchor];
    v70 = [v67 constraintEqualToAnchor:v69];
    [v55 addObject:v70];

    v71 = [(HUWheelControlPanelCell *)self separatorView];
    v72 = [v71 heightAnchor];
    v73 = [MEMORY[0x277D759A0] mainScreen];
    [v73 scale];
    v75 = [v72 constraintEqualToConstant:1.0 / v74];
    [v55 addObject:v75];

    v76 = [(HUWheelControlPanelCell *)self wheelView];
    v77 = [v76 topAnchor];
    v78 = [(HUWheelControlPanelCell *)self separatorView];
    v79 = [v78 bottomAnchor];
    v80 = [v77 constraintEqualToAnchor:v79];
    [v55 addObject:v80];

    v81 = [(HUWheelControlPanelCell *)self wheelView];
    v82 = [v81 leadingAnchor];
    v83 = [v4 leadingAnchor];
    v84 = [v82 constraintEqualToAnchor:v83];
    [v55 addObject:v84];

    v85 = [(HUWheelControlPanelCell *)self wheelView];
    v86 = [v85 trailingAnchor];
    v87 = [v4 trailingAnchor];
    v88 = [v86 constraintEqualToAnchor:v87];
    [v55 addObject:v88];

    v89 = [(HUWheelControlPanelCell *)self wheelView];
    v90 = [v89 bottomAnchor];
    v91 = [v4 bottomAnchor];
    v92 = [v90 constraintEqualToAnchor:v91];
  }

  else
  {
    v93 = [(HUWheelControlPanelCell *)self titleLabel];
    v94 = [v93 bottomAnchor];
    v95 = [v4 bottomAnchor];
    v96 = [v94 constraintEqualToAnchor:v95 constant:-5.0];
    [v55 addObject:v96];

    if ([MEMORY[0x277D14CE8] useMacIdiom])
    {
      [(HUWheelControlPanelCell *)self wheelButton];
    }

    else
    {
      [(HUWheelControlPanelCell *)self detailLabel];
    }
    v89 = ;
    v90 = [v89 bottomAnchor];
    v91 = [v4 bottomAnchor];
    v92 = [v90 constraintEqualToAnchor:v91 constant:-5.0];
  }

  v97 = v92;
  [v55 addObject:v92];

  [(HUWheelControlPanelCell *)self setDynamicConstraints:v55];
  v98 = MEMORY[0x277CCAAD0];
  v99 = [(HUWheelControlPanelCell *)self dynamicConstraints];
  [v98 activateConstraints:v99];

  v100.receiver = self;
  v100.super_class = HUWheelControlPanelCell;
  [(HUControlPanelCell *)&v100 updateConstraints];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = HUWheelControlPanelCell;
  [(HUWheelControlPanelCell *)&v5 layoutSubviews];
  v3 = [(HUWheelControlPanelCell *)self separatorColor];
  v4 = [(HUWheelControlPanelCell *)self separatorView];
  [v4 setBackgroundColor:v3];
}

- (void)prepareForReuse
{
  [(HUWheelControlPanelCell *)self setWheelView:0];
  v3.receiver = self;
  v3.super_class = HUWheelControlPanelCell;
  [(HUWheelControlPanelCell *)&v3 prepareForReuse];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v4 = objc_opt_class();
  v5 = [(HUControlPanelCell *)self item];
  if (!v5)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v5;
  if (!v7)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v9 handleFailureInFunction:v10 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v4, objc_opt_class()}];

LABEL_7:
    v8 = 0;
  }

  v39 = v8;

  v11 = objc_opt_class();
  v12 = [v39 controlItems];
  v13 = [v12 anyObject];
  if (!v13)
  {
LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13;
  if (!v14)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v16 handleFailureInFunction:v17 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v11, objc_opt_class()}];

    goto LABEL_14;
  }

LABEL_15:

  v18 = MEMORY[0x277CCAA28];
  v19 = [v15 incrementalCharacteristicType];
  v20 = [v15 valueSource];
  v21 = [v15 incrementalCharacteristicType];
  v22 = [v20 metadataForCharacteristicType:v21];
  v23 = [v18 hf_valueFormatterForCharacteristicType:v19 withMetadata:v22 options:0];

  v24 = [v15 minValue];
  [v24 doubleValue];
  v26 = v25;

  v27 = [v15 maxValue];
  [v27 doubleValue];
  v29 = v28;

  v30 = [v15 stepValue];
  [v30 doubleValue];

  [(HUWheelControlPanelCell *)self _generateWheelValuesWithMinValue:v26 maxValue:v29 stepValue:1.0];
  LODWORD(v20) = [MEMORY[0x277D14CE8] useMacIdiom];
  v31 = [v39 identifierForControlItem:v15];
  if (v20)
  {
    v32 = [(HUWheelControlPanelCell *)self wheelButton];
    [v32 setIdentifier:v31];

    v33 = [(HUWheelControlPanelCell *)self wheelButton];
    [v33 setValueFormatter:v23];
  }

  else
  {
    v34 = [(HUWheelControlPanelCell *)self wheelView];
    [v34 setIdentifier:v31];

    v35 = [(HUWheelControlPanelCell *)self wheelView];
    [v35 setValueFormatter:v23];

    v33 = [(HUWheelControlPanelCell *)self wheelView];
    [v33 setCanBeHighlighted:1];
  }

  v36 = [(HUControlPanelCell *)self item];
  v37 = [v36 latestResults];
  v38 = [v37 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [(HUWheelControlPanelCell *)self setTitleText:v38];
}

- (void)wheelControlView:(id)a3 didUpdateValue:(id)a4
{
  v6 = a4;
  v8 = [a3 valueFormatter];
  v7 = [v8 stringForObjectValue:v6];

  [(HUWheelControlPanelCell *)self setDetailText:v7];
}

- (void)setMaxValue:(id)a3
{
  v15 = a3;
  if (![(NSNumber *)self->_maxValue isEqualToNumber:?])
  {
    objc_storeStrong(&self->_maxValue, a3);
    maxValue = self->_maxValue;
    if (!maxValue || [(NSNumber *)maxValue isEqualToNumber:&unk_2824927F8])
    {
      v6 = [(HUWheelControlPanelCell *)self _defaultMaxValue];
      v7 = self->_maxValue;
      self->_maxValue = v6;
    }

    v8 = [(HUWheelControlPanelCell *)self minValue];
    [v8 doubleValue];
    v10 = v9;
    [v15 doubleValue];
    v12 = v11;
    v13 = [(HUWheelControlPanelCell *)self stepValue];
    [v13 doubleValue];
    [(HUWheelControlPanelCell *)self _generateWheelValuesWithMinValue:v10 maxValue:v12 stepValue:v14];
  }
}

- (void)setMinValue:(id)a3
{
  v15 = a3;
  if (![(NSNumber *)self->_minValue isEqualToNumber:?])
  {
    objc_storeStrong(&self->_minValue, a3);
    minValue = self->_minValue;
    if (!minValue || [(NSNumber *)minValue isEqualToNumber:&unk_2824927F8])
    {
      v6 = [(HUWheelControlPanelCell *)self _defaultMinValue];
      v7 = self->_minValue;
      self->_minValue = v6;
    }

    [v15 doubleValue];
    v9 = v8;
    v10 = [(HUWheelControlPanelCell *)self maxValue];
    [v10 doubleValue];
    v12 = v11;
    v13 = [(HUWheelControlPanelCell *)self stepValue];
    [v13 doubleValue];
    [(HUWheelControlPanelCell *)self _generateWheelValuesWithMinValue:v9 maxValue:v12 stepValue:v14];
  }
}

- (void)setStepValue:(id)a3
{
  v15 = a3;
  if (![(NSNumber *)self->_stepValue isEqualToNumber:?])
  {
    objc_storeStrong(&self->_stepValue, a3);
    stepValue = self->_stepValue;
    if (!stepValue || [(NSNumber *)stepValue compare:&unk_282492810]== NSOrderedAscending)
    {
      v6 = [(HUWheelControlPanelCell *)self _defaultStepValue];
      v7 = self->_stepValue;
      self->_stepValue = v6;
    }

    v8 = [(HUWheelControlPanelCell *)self minValue];
    [v8 doubleValue];
    v10 = v9;
    v11 = [(HUWheelControlPanelCell *)self maxValue];
    [v11 doubleValue];
    v13 = v12;
    [v15 doubleValue];
    [(HUWheelControlPanelCell *)self _generateWheelValuesWithMinValue:v10 maxValue:v13 stepValue:v14];
  }
}

- (void)setValueFormatter:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(HUWheelControlPanelCell *)self _defaultValueFormatter];
  }

  v6 = v4;
  objc_storeStrong(&self->_valueFormatter, v4);
  if ([MEMORY[0x277D14CE8] isAMac])
  {
    [(HUWheelControlPanelCell *)self wheelButton];
  }

  else
  {
    [(HUWheelControlPanelCell *)self wheelView];
  }
  v5 = ;
  [v5 setValueFormatter:v6];
}

- (void)_generateWheelValuesWithMinValue:(double)a3 maxValue:(double)a4 stepValue:(double)a5
{
  v8 = llround(a4 - a3);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v8 < 1)
  {
    if (a4 == a3)
    {
      [v13 addObject:&unk_2824927F8];
    }
  }

  else
  {
    v9 = 0;
    v10 = v8 + 1;
    do
    {
      v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9 + a3];
      [v13 addObject:v11];

      ++v9;
    }

    while (v10 != v9);
  }

  if ([MEMORY[0x277D14CE8] useMacIdiom])
  {
    [(HUWheelControlPanelCell *)self wheelButton];
  }

  else
  {
    [(HUWheelControlPanelCell *)self wheelView];
  }
  v12 = ;
  [v12 setValues:v13];
}

- (id)_defaultValueFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v2 setMaximumFractionDigits:0];

  return v2;
}

@end