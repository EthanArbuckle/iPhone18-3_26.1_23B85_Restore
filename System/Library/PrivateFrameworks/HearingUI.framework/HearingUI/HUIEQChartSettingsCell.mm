@interface HUIEQChartSettingsCell
- (CGPoint)convertToNormalizedPoint:(CGPoint)point;
- (HUIEQChartSettingsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUIEQChartSettingsDelegate)delegate;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)performCustomAction:(unint64_t)action;
- (void)refreshChartFromSettings;
- (void)updateChartModel:(id)model didUpdateValue:(CGPoint)value;
@end

@implementation HUIEQChartSettingsCell

- (HUIEQChartSettingsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v49[4] = *MEMORY[0x277D85DE8];
  v48.receiver = self;
  v48.super_class = HUIEQChartSettingsCell;
  identifierCopy = identifier;
  v5 = [(PSTableCell *)&v48 initWithStyle:style reuseIdentifier:?];
  if (v5)
  {
    v6 = objc_alloc_init(_TtC9HearingUI15HUIEQChartModel);
    [(HUIEQChartSettingsCell *)v5 setModel:v6];

    model = [(HUIEQChartSettingsCell *)v5 model];
    [model setDelegate:v5];

    mEMORY[0x277D12E18] = [MEMORY[0x277D12E18] sharedInstance];
    tinnitusFilterPoint = [mEMORY[0x277D12E18] tinnitusFilterPoint];

    [tinnitusFilterPoint xValue];
    v10 = v9;
    [tinnitusFilterPoint yValue];
    v12 = v11;
    model2 = [(HUIEQChartSettingsCell *)v5 model];
    [model2 setValue:{v10, v12}];

    contentView = [(HUIEQChartSettingsCell *)v5 contentView];
    [contentView frame];
    v16 = v15;

    model3 = [(HUIEQChartSettingsCell *)v5 model];
    v42 = [_TtC9HearingUI31HUIEQChartHostingViewController createWith:model3 width:v16 height:v16];

    view = [v42 view];
    contentView2 = [(HUIEQChartSettingsCell *)v5 contentView];
    backgroundColor = [contentView2 backgroundColor];
    [view setBackgroundColor:backgroundColor];

    contentView3 = [(HUIEQChartSettingsCell *)v5 contentView];
    [contentView3 addSubview:view];

    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = MEMORY[0x277CCAAD0];
    topAnchor = [view topAnchor];
    contentView4 = [(HUIEQChartSettingsCell *)v5 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v38 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v49[0] = v38;
    bottomAnchor = [view bottomAnchor];
    contentView5 = [(HUIEQChartSettingsCell *)v5 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    v49[1] = v34;
    leadingAnchor = [view leadingAnchor];
    contentView6 = [(HUIEQChartSettingsCell *)v5 contentView];
    leadingAnchor2 = [contentView6 leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
    v49[2] = v24;
    trailingAnchor = [view trailingAnchor];
    contentView7 = [(HUIEQChartSettingsCell *)v5 contentView];
    trailingAnchor2 = [contentView7 trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
    v49[3] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
    [v32 activateConstraints:v29];

    objc_initWeak(&location, v5);
    mEMORY[0x277D12E18]2 = [MEMORY[0x277D12E18] sharedInstance];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __56__HUIEQChartSettingsCell_initWithStyle_reuseIdentifier___block_invoke;
    v45[3] = &unk_2796F6D18;
    objc_copyWeak(&v46, &location);
    [mEMORY[0x277D12E18]2 registerUpdateBlock:v45 forRetrieveSelector:sel_tinnitusFilterMode withListener:v5];

    objc_destroyWeak(&v46);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __56__HUIEQChartSettingsCell_initWithStyle_reuseIdentifier___block_invoke(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  AXPerformBlockOnMainThread();
  objc_destroyWeak(&v1);
}

void __56__HUIEQChartSettingsCell_initWithStyle_reuseIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D12E18] sharedInstance];
  v3 = [objc_alloc(MEMORY[0x277D12E10]) initWithPoint:{0.0, 0.0}];
  [v2 setTinnitusFilterPoint:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshChartFromSettings];
}

- (void)updateChartModel:(id)model didUpdateValue:(CGPoint)value
{
  modelCopy = model;
  delegate = [(HUIEQChartSettingsCell *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(HUIEQChartSettingsCell *)self delegate];
    [delegate2 userUpdatedChartValue];
  }

  mEMORY[0x277D12E18] = [MEMORY[0x277D12E18] sharedInstance];
  v9 = objc_alloc(MEMORY[0x277D12E10]);
  [modelCopy value];
  v11 = v10;
  v13 = v12;

  v14 = [v9 initWithPoint:{v11, v13}];
  [mEMORY[0x277D12E18] setTinnitusFilterPoint:v14];
}

- (void)refreshChartFromSettings
{
  mEMORY[0x277D12E18] = [MEMORY[0x277D12E18] sharedInstance];
  tinnitusFilterPoint = [mEMORY[0x277D12E18] tinnitusFilterPoint];

  if (tinnitusFilterPoint)
  {
    [tinnitusFilterPoint xValue];
    v5 = v4;
    [tinnitusFilterPoint yValue];
    v7 = v6;
    model = [(HUIEQChartSettingsCell *)self model];
    [model setValue:{v5, v7}];
  }
}

- (id)accessibilityLabel
{
  v5.receiver = self;
  v5.super_class = HUIEQChartSettingsCell;
  accessibilityLabel = [(HUIEQChartSettingsCell *)&v5 accessibilityLabel];
  v3 = comfortSoundsLocString();

  return v3;
}

- (CGPoint)convertToNormalizedPoint:(CGPoint)point
{
  v3 = round(point.x * 100.0);
  v4 = round(point.y * 100.0);
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)accessibilityValue
{
  mEMORY[0x277D12E18] = [MEMORY[0x277D12E18] sharedInstance];
  tinnitusFilterPoint = [mEMORY[0x277D12E18] tinnitusFilterPoint];

  if (tinnitusFilterPoint)
  {
    [tinnitusFilterPoint xValue];
    v6 = v5;
    [tinnitusFilterPoint yValue];
    [(HUIEQChartSettingsCell *)self convertToNormalizedPoint:v6, v7];
    v9 = v8;
    v11 = v10;
    v12 = MEMORY[0x277CCACA8];
    v13 = comfortSoundsLocString();
    accessibilityValue = [v12 stringWithFormat:v13, v9, v11];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HUIEQChartSettingsCell;
    accessibilityValue = [(HUIEQChartSettingsCell *)&v16 accessibilityValue];
  }

  return accessibilityValue;
}

- (id)accessibilityHint
{
  v5.receiver = self;
  v5.super_class = HUIEQChartSettingsCell;
  accessibilityHint = [(HUIEQChartSettingsCell *)&v5 accessibilityHint];
  v3 = comfortSoundsLocString();

  return v3;
}

- (void)performCustomAction:(unint64_t)action
{
  model = [(HUIEQChartSettingsCell *)self model];
  [model value];
  v7 = v6;

  model2 = [(HUIEQChartSettingsCell *)self model];
  [model2 value];
  v10 = v9;

  if (action > 1)
  {
    if (action == 2)
    {
      v12 = 0.1;
    }

    else
    {
      if (action != 3)
      {
        goto LABEL_12;
      }

      v12 = -0.1;
    }

    v10 = v10 + v12;
  }

  else
  {
    if (action)
    {
      if (action != 1)
      {
        goto LABEL_12;
      }

      v11 = 0.1;
    }

    else
    {
      v11 = -0.1;
    }

    v7 = v7 + v11;
  }

LABEL_12:
  v13 = fmax(fmin(v7, 1.0), -1.0);
  v14 = fmax(fmin(v10, 1.0), -1.0);
  model3 = [(HUIEQChartSettingsCell *)self model];
  [model3 setValue:{v13, v14}];

  model4 = [(HUIEQChartSettingsCell *)self model];
  [(HUIEQChartSettingsCell *)self updateChartModel:model4 didUpdateValue:v13, v14];

  model5 = [(HUIEQChartSettingsCell *)self model];
  [model5 value];
  [(HUIEQChartSettingsCell *)self convertToNormalizedPoint:?];
  v19 = v18;
  v21 = v20;

  v22 = *MEMORY[0x277D76438];
  v23 = MEMORY[0x277CCACA8];
  v25 = comfortSoundsLocString();
  v24 = [v23 stringWithFormat:v25, v19, v21];
  UIAccessibilityPostNotification(v22, v24);
}

- (id)accessibilityCustomActions
{
  v3 = MEMORY[0x277CBEB18];
  v23.receiver = self;
  v23.super_class = HUIEQChartSettingsCell;
  accessibilityCustomActions = [(HUIEQChartSettingsCell *)&v23 accessibilityCustomActions];
  v5 = [v3 arrayWithArray:accessibilityCustomActions];

  v6 = objc_alloc(MEMORY[0x277D75088]);
  v7 = comfortSoundsLocString();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __52__HUIEQChartSettingsCell_accessibilityCustomActions__block_invoke;
  v22[3] = &unk_2796F6D40;
  v22[4] = self;
  v8 = [v6 initWithName:v7 actionHandler:v22];

  [v5 addObject:v8];
  v9 = objc_alloc(MEMORY[0x277D75088]);
  v10 = comfortSoundsLocString();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __52__HUIEQChartSettingsCell_accessibilityCustomActions__block_invoke_2;
  v21[3] = &unk_2796F6D40;
  v21[4] = self;
  v11 = [v9 initWithName:v10 actionHandler:v21];

  [v5 addObject:v11];
  v12 = objc_alloc(MEMORY[0x277D75088]);
  v13 = comfortSoundsLocString();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__HUIEQChartSettingsCell_accessibilityCustomActions__block_invoke_3;
  v20[3] = &unk_2796F6D40;
  v20[4] = self;
  v14 = [v12 initWithName:v13 actionHandler:v20];

  [v5 addObject:v14];
  v15 = objc_alloc(MEMORY[0x277D75088]);
  v16 = comfortSoundsLocString();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__HUIEQChartSettingsCell_accessibilityCustomActions__block_invoke_4;
  v19[3] = &unk_2796F6D40;
  v19[4] = self;
  v17 = [v15 initWithName:v16 actionHandler:v19];

  [v5 addObject:v17];

  return v5;
}

- (HUIEQChartSettingsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end