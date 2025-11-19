@interface HUIEQChartSettingsCell
- (CGPoint)convertToNormalizedPoint:(CGPoint)a3;
- (HUIEQChartSettingsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HUIEQChartSettingsDelegate)delegate;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (void)performCustomAction:(unint64_t)a3;
- (void)refreshChartFromSettings;
- (void)updateChartModel:(id)a3 didUpdateValue:(CGPoint)a4;
@end

@implementation HUIEQChartSettingsCell

- (HUIEQChartSettingsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v49[4] = *MEMORY[0x277D85DE8];
  v48.receiver = self;
  v48.super_class = HUIEQChartSettingsCell;
  v43 = a4;
  v5 = [(PSTableCell *)&v48 initWithStyle:a3 reuseIdentifier:?];
  if (v5)
  {
    v6 = objc_alloc_init(_TtC9HearingUI15HUIEQChartModel);
    [(HUIEQChartSettingsCell *)v5 setModel:v6];

    v7 = [(HUIEQChartSettingsCell *)v5 model];
    [v7 setDelegate:v5];

    v8 = [MEMORY[0x277D12E18] sharedInstance];
    v44 = [v8 tinnitusFilterPoint];

    [v44 xValue];
    v10 = v9;
    [v44 yValue];
    v12 = v11;
    v13 = [(HUIEQChartSettingsCell *)v5 model];
    [v13 setValue:{v10, v12}];

    v14 = [(HUIEQChartSettingsCell *)v5 contentView];
    [v14 frame];
    v16 = v15;

    v17 = [(HUIEQChartSettingsCell *)v5 model];
    v42 = [_TtC9HearingUI31HUIEQChartHostingViewController createWith:v17 width:v16 height:v16];

    v18 = [v42 view];
    v19 = [(HUIEQChartSettingsCell *)v5 contentView];
    v20 = [v19 backgroundColor];
    [v18 setBackgroundColor:v20];

    v21 = [(HUIEQChartSettingsCell *)v5 contentView];
    [v21 addSubview:v18];

    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = MEMORY[0x277CCAAD0];
    v40 = [v18 topAnchor];
    v41 = [(HUIEQChartSettingsCell *)v5 contentView];
    v39 = [v41 topAnchor];
    v38 = [v40 constraintEqualToAnchor:v39 constant:0.0];
    v49[0] = v38;
    v36 = [v18 bottomAnchor];
    v37 = [(HUIEQChartSettingsCell *)v5 contentView];
    v35 = [v37 bottomAnchor];
    v34 = [v36 constraintEqualToAnchor:v35 constant:0.0];
    v49[1] = v34;
    v33 = [v18 leadingAnchor];
    v22 = [(HUIEQChartSettingsCell *)v5 contentView];
    v23 = [v22 leadingAnchor];
    v24 = [v33 constraintEqualToAnchor:v23 constant:0.0];
    v49[2] = v24;
    v25 = [v18 trailingAnchor];
    v26 = [(HUIEQChartSettingsCell *)v5 contentView];
    v27 = [v26 trailingAnchor];
    v28 = [v25 constraintEqualToAnchor:v27 constant:0.0];
    v49[3] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
    [v32 activateConstraints:v29];

    objc_initWeak(&location, v5);
    v30 = [MEMORY[0x277D12E18] sharedInstance];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __56__HUIEQChartSettingsCell_initWithStyle_reuseIdentifier___block_invoke;
    v45[3] = &unk_2796F6D18;
    objc_copyWeak(&v46, &location);
    [v30 registerUpdateBlock:v45 forRetrieveSelector:sel_tinnitusFilterMode withListener:v5];

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

- (void)updateChartModel:(id)a3 didUpdateValue:(CGPoint)a4
{
  v5 = a3;
  v6 = [(HUIEQChartSettingsCell *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(HUIEQChartSettingsCell *)self delegate];
    [v8 userUpdatedChartValue];
  }

  v15 = [MEMORY[0x277D12E18] sharedInstance];
  v9 = objc_alloc(MEMORY[0x277D12E10]);
  [v5 value];
  v11 = v10;
  v13 = v12;

  v14 = [v9 initWithPoint:{v11, v13}];
  [v15 setTinnitusFilterPoint:v14];
}

- (void)refreshChartFromSettings
{
  v3 = [MEMORY[0x277D12E18] sharedInstance];
  v9 = [v3 tinnitusFilterPoint];

  if (v9)
  {
    [v9 xValue];
    v5 = v4;
    [v9 yValue];
    v7 = v6;
    v8 = [(HUIEQChartSettingsCell *)self model];
    [v8 setValue:{v5, v7}];
  }
}

- (id)accessibilityLabel
{
  v5.receiver = self;
  v5.super_class = HUIEQChartSettingsCell;
  v2 = [(HUIEQChartSettingsCell *)&v5 accessibilityLabel];
  v3 = comfortSoundsLocString();

  return v3;
}

- (CGPoint)convertToNormalizedPoint:(CGPoint)a3
{
  v3 = round(a3.x * 100.0);
  v4 = round(a3.y * 100.0);
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)accessibilityValue
{
  v3 = [MEMORY[0x277D12E18] sharedInstance];
  v4 = [v3 tinnitusFilterPoint];

  if (v4)
  {
    [v4 xValue];
    v6 = v5;
    [v4 yValue];
    [(HUIEQChartSettingsCell *)self convertToNormalizedPoint:v6, v7];
    v9 = v8;
    v11 = v10;
    v12 = MEMORY[0x277CCACA8];
    v13 = comfortSoundsLocString();
    v14 = [v12 stringWithFormat:v13, v9, v11];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HUIEQChartSettingsCell;
    v14 = [(HUIEQChartSettingsCell *)&v16 accessibilityValue];
  }

  return v14;
}

- (id)accessibilityHint
{
  v5.receiver = self;
  v5.super_class = HUIEQChartSettingsCell;
  v2 = [(HUIEQChartSettingsCell *)&v5 accessibilityHint];
  v3 = comfortSoundsLocString();

  return v3;
}

- (void)performCustomAction:(unint64_t)a3
{
  v5 = [(HUIEQChartSettingsCell *)self model];
  [v5 value];
  v7 = v6;

  v8 = [(HUIEQChartSettingsCell *)self model];
  [v8 value];
  v10 = v9;

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v12 = 0.1;
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_12;
      }

      v12 = -0.1;
    }

    v10 = v10 + v12;
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
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
  v15 = [(HUIEQChartSettingsCell *)self model];
  [v15 setValue:{v13, v14}];

  v16 = [(HUIEQChartSettingsCell *)self model];
  [(HUIEQChartSettingsCell *)self updateChartModel:v16 didUpdateValue:v13, v14];

  v17 = [(HUIEQChartSettingsCell *)self model];
  [v17 value];
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
  v4 = [(HUIEQChartSettingsCell *)&v23 accessibilityCustomActions];
  v5 = [v3 arrayWithArray:v4];

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