@interface HUGridActionSetCell
- (HUGridActionSetCell)initWithCoder:(id)a3;
- (HUGridActionSetCell)initWithFrame:(CGRect)a3;
- (HUGridSceneCellLayoutOptions)sceneCellLayoutOptions;
- (HUIconView)iconView;
- (void)_invalidateConstraints;
- (void)_setupActionSetCell;
- (void)_updateLabels;
- (void)_updateLabelsWithTitle:(id)a3 description:(id)a4;
- (void)layoutOptionsDidChange;
- (void)prepareForReuse;
- (void)setAccessoryView:(id)a3;
- (void)setExecuteActionSetFuture:(id)a3;
- (void)setUseDefaultCellBackgroundColor:(BOOL)a3;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUGridActionSetCell

- (HUGridActionSetCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUGridActionSetCell;
  v3 = [(HUGridCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(HUGridActionSetCell *)v3 _setupActionSetCell];
  }

  return v4;
}

- (HUGridActionSetCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUGridActionSetCell;
  v3 = [(HUGridCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUGridActionSetCell *)v3 _setupActionSetCell];
  }

  return v4;
}

- (void)prepareForReuse
{
  [(HUGridActionSetCell *)self setItem:0];
  [(HUGridActionSetCell *)self setInternalExecuteActionSetFuture:0];
  [(HUGridActionSetCell *)self setAccessoryView:0];
  [(HUGridActionSetCell *)self setUseDefaultCellBackgroundColor:0];
  v3 = [(HUGridActionSetCell *)self iconView];
  [v3 updateWithIconDescriptor:0 displayStyle:1 animated:0];

  v4.receiver = self;
  v4.super_class = HUGridActionSetCell;
  [(HUGridCell *)&v4 prepareForReuse];
}

- (void)_setupActionSetCell
{
  v3 = [HUGridActionSetTitleAndDescriptionView alloc];
  v4 = [(HUGridCell *)self gridForegroundContentView];
  v5 = [(HUGridActionSetTitleAndDescriptionView *)v3 initWithFrame:v4 titleLabelSuperview:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(HUGridActionSetCell *)self setTitleAndDescriptionView:v5];

  v6 = [(HUGridActionSetCell *)self titleAndDescriptionView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = [(HUGridActionSetCell *)self contentView];
  v8 = [(HUGridActionSetCell *)self titleAndDescriptionView];
  [v7 addSubview:v8];

  v9 = [[HUPieProgressView alloc] initWithStyle:1];
  [(HUGridActionSetCell *)self setProgressView:v9];

  v10 = [(HUGridActionSetCell *)self progressView];
  [v10 setHidesWhenStopped:1];

  v11 = [(HUGridCell *)self gridForegroundContentView];
  v12 = [(HUGridActionSetCell *)self progressView];
  [v11 addSubview:v12];

  v13 = [(HUGridActionSetCell *)self progressView];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (HUIconView)iconView
{
  iconView = self->_iconView;
  if (!iconView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D180D0]);
    v5 = self->_iconView;
    self->_iconView = v4;

    v6 = [(HUGridActionSetCell *)self contentView];
    [v6 addSubview:self->_iconView];

    [(HUIconView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUIconView *)self->_iconView setContentMode:1];
    v7 = [(HUGridCell *)self contentEffect];
    [(HUIconView *)self->_iconView setVibrancyEffect:v7];

    iconView = self->_iconView;
  }

  return iconView;
}

- (void)setExecuteActionSetFuture:(id)a3
{
  v5 = a3;
  if (self->_executeActionSetFuture != v5)
  {
    objc_storeStrong(&self->_executeActionSetFuture, a3);
    v6 = [(HUGridActionSetCell *)self internalExecuteActionSetFuture];
    v7 = [MEMORY[0x277CCA9B8] na_cancelledError];
    [v6 finishWithError:v7];

    if (v5)
    {
      v8 = objc_alloc_init(MEMORY[0x277D2C900]);
      [(HUGridActionSetCell *)self setInternalExecuteActionSetFuture:v8];

      objc_initWeak(&location, self);
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __49__HUGridActionSetCell_setExecuteActionSetFuture___block_invoke;
      v15 = &unk_277DB8CA8;
      objc_copyWeak(&v16, &location);
      v9 = [(NAFuture *)v5 addCompletionBlock:&v12];
      v10 = [(HUGridActionSetCell *)self progressView:v12];
      v11 = [(HUGridActionSetCell *)self internalExecuteActionSetFuture];
      [v10 startWithFuture:v11];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      [(HUGridActionSetCell *)self setInternalExecuteActionSetFuture:0];
    }
  }
}

void __49__HUGridActionSetCell_setExecuteActionSetFuture___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained internalExecuteActionSetFuture];
  [v7 finishWithResult:v6 error:v5];
}

- (void)setAccessoryView:(id)a3
{
  v6 = a3;
  if (([v6 isEqual:self->_accessoryView] & 1) == 0)
  {
    [(UIView *)self->_accessoryView removeFromSuperview];
    objc_storeStrong(&self->_accessoryView, a3);
    [(UIView *)self->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(HUGridActionSetCell *)self contentView];
    [v5 addSubview:self->_accessoryView];

    [(HUGridActionSetCell *)self _invalidateConstraints];
  }
}

- (HUGridSceneCellLayoutOptions)sceneCellLayoutOptions
{
  v3 = [objc_opt_class() layoutOptionsClass];
  v4 = [(HUGridCell *)self layoutOptions];
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v4;
    if (v5)
    {
      goto LABEL_8;
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)setUseDefaultCellBackgroundColor:(BOOL)a3
{
  if (self->_useDefaultCellBackgroundColor != a3)
  {
    v4 = a3;
    self->_useDefaultCellBackgroundColor = a3;
    v5 = [(HUGridCell *)self gridBackgroundView];
    [v5 setUseDefaultCellBackgroundColor:v4];
  }
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v3 = a3;
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = [(HUGridActionSetCell *)self item];
  v19[0] = *MEMORY[0x277D13F60];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v7 = [v5 resultsContainRequiredProperties:v6];

  v8 = [(HUGridActionSetCell *)self item];

  if (v8 && (v7 & 1) == 0)
  {
    v9 = [(HUGridActionSetCell *)self item];
    NSLog(&cfstr_ItemIsMissingR.isa, v9);
  }

  v18.receiver = self;
  v18.super_class = HUGridActionSetCell;
  [(HUGridCell *)&v18 updateUIWithAnimation:v3];
  if (v7)
  {
    [(HUGridActionSetCell *)self _updateLabels];
    v10 = [(HUGridActionSetCell *)self item];
    v11 = [v10 latestResults];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277D13E88]];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x277D14728]);
      v14 = [v15 initWithImageIdentifier:*MEMORY[0x277D13A30]];
    }

    v16 = v14;

    v17 = [(HUGridActionSetCell *)self iconView];
    [v17 updateWithIconDescriptor:v16 displayStyle:-[HUGridCell iconDisplayStyle](self animated:{"iconDisplayStyle"), v3}];
  }

  else
  {
    [(HUGridActionSetCell *)self _updateLabelsWithTitle:&stru_2823E0EE8 description:&stru_2823E0EE8];
  }
}

- (void)layoutOptionsDidChange
{
  v8.receiver = self;
  v8.super_class = HUGridActionSetCell;
  [(HUGridCell *)&v8 layoutOptionsDidChange];
  [(HUGridActionSetCell *)self _updateLabels];
  [(HUGridActionSetCell *)self _invalidateConstraints];
  v4 = [(HUGridCell *)self layoutOptions];
  v5 = [v4 iconVibrancyEffect];
  v6 = v5;
  if (!v5)
  {
    v2 = [(HUGridCell *)self layoutOptions];
    v6 = [v2 vibrancyEffect];
  }

  v7 = [(HUGridActionSetCell *)self iconView];
  [v7 setVibrancyEffect:v6];

  if (!v5)
  {
  }
}

- (void)_updateLabels
{
  v3 = [(HUGridActionSetCell *)self item];
  v4 = [v3 latestResults];
  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  v5 = [(HUGridActionSetCell *)self item];
  v6 = [v5 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  [(HUGridActionSetCell *)self _updateLabelsWithTitle:v8 description:v7];
}

- (void)_updateLabelsWithTitle:(id)a3 description:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v39 = [v6 dictionary];
  v9 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
  v10 = [v9 font];
  v11 = *MEMORY[0x277D740A8];
  [v39 setObject:v10 forKeyedSubscript:*MEMORY[0x277D740A8]];

  v12 = [(HUGridActionSetCell *)self useDefaultCellBackgroundColor];
  v13 = MEMORY[0x277D740C0];
  if (v12)
  {
    v14 = [MEMORY[0x277D75348] labelColor];
    [v39 setObject:v14 forKeyedSubscript:*v13];
  }

  v15 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v16 = [v15 mutableCopy];

  v17 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
  [v17 titleInterLineSpacing];
  [v16 setMinimumLineHeight:?];

  v18 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
  [v18 titleInterLineSpacing];
  [v16 setMaximumLineHeight:?];

  [v16 setAlignment:4];
  [v16 setLineBreakMode:4];
  [v16 setAllowsDefaultTighteningForTruncation:1];
  LODWORD(v19) = 1053609165;
  [v16 setHyphenationFactor:v19];
  [v39 setObject:v16 forKeyedSubscript:*MEMORY[0x277D74118]];
  v20 = [v39 mutableCopy];
  v21 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
  v22 = [v21 descriptionFont];
  [v20 setObject:v22 forKeyedSubscript:v11];

  if ([(HUGridCell *)self backgroundState]== 1)
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemRedColor];
  }
  v23 = ;
  [v20 setObject:v23 forKeyedSubscript:*v13];

  v24 = [(HUGridActionSetCell *)self titleAndDescriptionView];
  if (v8)
  {
    v25 = v8;
  }

  else
  {
    v25 = &stru_2823E0EE8;
  }

  v26 = [(__CFString *)v25 stringWithAttributes:v39];

  if (v7)
  {
    v27 = v7;
  }

  else
  {
    v27 = &stru_2823E0EE8;
  }

  v28 = [(__CFString *)v27 stringWithAttributes:v20];

  [v24 updateTitleText:v26 descriptionText:v28];
  v29 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
  v30 = [v29 numberOfTitleLines];
  v31 = [(HUGridActionSetCell *)self titleAndDescriptionView];
  v32 = [v31 titleLabel];
  [v32 setNumberOfLines:v30];

  v33 = [(HUGridActionSetCell *)self titleAndDescriptionView];
  v34 = [v33 titleLabel];
  [v34 setAdjustsFontForContentSizeCategory:1];

  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    v35 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
    [v35 titleDescriptionLineSpacing];
    v37 = v36;
    v38 = [(HUGridActionSetCell *)self titleAndDescriptionView];
    [v38 setTitleDescriptionLineSpacing:v37];
  }
}

- (void)_invalidateConstraints
{
  v3 = [(HUGridActionSetCell *)self actionSetCellConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(HUGridActionSetCell *)self actionSetCellConstraints];
    [v4 deactivateConstraints:v5];
  }

  [(HUGridActionSetCell *)self setActionSetCellConstraints:0];

  [(HUGridActionSetCell *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v3 = [(HUGridActionSetCell *)self actionSetCellConstraints];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [(HUGridActionSetCell *)self iconView];
    v6 = [v5 leadingAnchor];
    v7 = [(HUGridActionSetCell *)self contentView];
    v8 = [v7 leadingAnchor];
    v9 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
    [v9 cellInnerMargin];
    v10 = [v6 constraintEqualToAnchor:v8 constant:?];
    [v4 addObject:v10];

    v11 = [(HUGridActionSetCell *)self iconView];
    v12 = [v11 centerYAnchor];
    v13 = [(HUGridActionSetCell *)self contentView];
    v14 = [v13 centerYAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    [v4 addObject:v15];

    v16 = [(HUGridActionSetCell *)self iconView];
    v17 = [v16 widthAnchor];
    v18 = [(HUGridCell *)self layoutOptions];
    [v18 iconSize];
    v19 = [v17 constraintEqualToConstant:?];
    [v4 addObject:v19];

    v20 = [(HUGridActionSetCell *)self iconView];
    v21 = [v20 heightAnchor];
    v22 = [(HUGridCell *)self layoutOptions];
    [v22 iconSize];
    v23 = [v21 constraintEqualToConstant:?];
    [v4 addObject:v23];

    v24 = [(HUGridActionSetCell *)self titleAndDescriptionView];
    v25 = [v24 leadingAnchor];
    v26 = [(HUGridActionSetCell *)self iconView];
    v27 = [v26 trailingAnchor];
    v28 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
    [v28 iconInnerHorizontalMargin];
    v29 = [v25 constraintEqualToAnchor:v27 constant:?];
    [v4 addObject:v29];

    v30 = [(HUGridActionSetCell *)self titleAndDescriptionView];
    v31 = [v30 centerYAnchor];
    v32 = [(HUGridActionSetCell *)self contentView];
    v33 = [v32 centerYAnchor];
    v34 = [v31 constraintEqualToAnchor:v33];
    [v4 addObject:v34];

    v35 = [(HUGridActionSetCell *)self accessoryView];

    v36 = [(HUGridActionSetCell *)self titleAndDescriptionView];
    v37 = [v36 trailingAnchor];
    if (v35)
    {
      v38 = [(HUGridActionSetCell *)self accessoryView];
      [v38 leadingAnchor];
    }

    else
    {
      v38 = [(HUGridActionSetCell *)self contentView];
      [v38 trailingAnchor];
    }
    v39 = ;
    v40 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
    [v40 iconInnerHorizontalMargin];
    v42 = [v37 constraintEqualToAnchor:v39 constant:-v41];

    LODWORD(v43) = 1148829696;
    [v42 setPriority:v43];
    [v4 addObject:v42];
    v44 = [(HUGridActionSetCell *)self progressView];
    v45 = [v44 centerXAnchor];
    v46 = [(HUGridActionSetCell *)self iconView];
    v47 = [v46 centerXAnchor];
    v48 = [v45 constraintEqualToAnchor:v47];
    [v4 addObject:v48];

    v49 = [(HUGridActionSetCell *)self progressView];
    v50 = [v49 centerYAnchor];
    v51 = [(HUGridActionSetCell *)self iconView];
    v52 = [v51 centerYAnchor];
    v53 = [v50 constraintEqualToAnchor:v52];
    [v4 addObject:v53];

    v54 = [(HUGridActionSetCell *)self progressView];
    v55 = [v54 widthAnchor];
    v56 = [(HUGridActionSetCell *)self iconView];
    v57 = [v56 widthAnchor];
    v58 = [v55 constraintEqualToAnchor:v57 constant:16.0];
    [v4 addObject:v58];

    v59 = [(HUGridActionSetCell *)self progressView];
    v60 = [v59 heightAnchor];
    v61 = [(HUGridActionSetCell *)self iconView];
    v62 = [v61 heightAnchor];
    v63 = [v60 constraintEqualToAnchor:v62 constant:16.0];
    [v4 addObject:v63];

    v64 = [(HUGridActionSetCell *)self accessoryView];

    if (v64)
    {
      v65 = [(HUGridActionSetCell *)self accessoryView];
      v66 = [v65 centerYAnchor];
      v67 = [(HUGridActionSetCell *)self contentView];
      v68 = [v67 centerYAnchor];
      v69 = [v66 constraintEqualToAnchor:v68];
      [v4 addObject:v69];

      v70 = [(HUGridActionSetCell *)self accessoryView];
      v71 = [v70 trailingAnchor];
      v72 = [(HUGridActionSetCell *)self contentView];
      v73 = [v72 trailingAnchor];
      v74 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
      [v74 iconInnerHorizontalMargin];
      v76 = [v71 constraintEqualToAnchor:v73 constant:-v75];
      [v4 addObject:v76];

      v77 = [(HUGridActionSetCell *)self accessoryView];
      v78 = [v77 heightAnchor];
      v79 = [(HUGridActionSetCell *)self contentView];
      v80 = [v79 heightAnchor];
      v81 = [(HUGridActionSetCell *)self sceneCellLayoutOptions];
      [v81 iconInnerHorizontalMargin];
      v83 = [v78 constraintLessThanOrEqualToAnchor:v80 constant:v82 * -2.0];
      [v4 addObject:v83];

      v84 = [(HUGridActionSetCell *)self accessoryView];
      LODWORD(v85) = 1144750080;
      [v84 setContentHuggingPriority:0 forAxis:v85];
    }

    [(HUGridActionSetCell *)self setActionSetCellConstraints:v4];
    v86 = MEMORY[0x277CCAAD0];
    v87 = [(HUGridActionSetCell *)self actionSetCellConstraints];
    [v86 activateConstraints:v87];
  }

  v88.receiver = self;
  v88.super_class = HUGridActionSetCell;
  [(HUGridActionSetCell *)&v88 updateConstraints];
}

@end