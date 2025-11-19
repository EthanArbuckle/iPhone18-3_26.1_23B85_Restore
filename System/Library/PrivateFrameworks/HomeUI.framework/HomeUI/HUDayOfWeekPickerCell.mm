@interface HUDayOfWeekPickerCell
- (HUDayOfWeekPickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HUDayOfWeekPickerCellDelegate)delegate;
- (void)_setupConstraints;
- (void)_toggleWeekdayButton:(id)a3;
- (void)_updateSelectedDays;
- (void)setSelectedRecurrences:(id)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HUDayOfWeekPickerCell

- (HUDayOfWeekPickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v23.receiver = self;
  v23.super_class = HUDayOfWeekPickerCell;
  v4 = [(HUDayOfWeekPickerCell *)&v23 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75A68]);
    [(HUDayOfWeekPickerCell *)v4 setButtonStackView:v5];

    v6 = [(HUDayOfWeekPickerCell *)v4 buttonStackView];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(HUDayOfWeekPickerCell *)v4 buttonStackView];
    [v7 setSpacing:14.0];

    v8 = [(HUDayOfWeekPickerCell *)v4 buttonStackView];
    [v8 setDistribution:1];

    v9 = [(HUDayOfWeekPickerCell *)v4 contentView];
    v10 = [(HUDayOfWeekPickerCell *)v4 buttonStackView];
    [v9 addSubview:v10];

    v11 = objc_opt_new();
    v12 = [MEMORY[0x277CBEA80] currentCalendar];
    v13 = [v12 veryShortWeekdaySymbols];

    v14 = [MEMORY[0x277CBEA80] currentCalendar];
    v15 = [v14 firstWeekday];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__HUDayOfWeekPickerCell_initWithStyle_reuseIdentifier___block_invoke;
    v19[3] = &unk_277DB71F8;
    v16 = v4;
    v21 = v11;
    v22 = v15;
    v20 = v16;
    v17 = v11;
    [v13 enumerateObjectsUsingBlock:v19];
    [(HUDayOfWeekPickerCell *)v16 setButtons:v17];
    [(HUDayOfWeekPickerCell *)v16 _setupConstraints];
    [(HUDayOfWeekPickerCell *)v16 _updateSelectedDays];
  }

  return v4;
}

void __55__HUDayOfWeekPickerCell_initWithStyle_reuseIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v12 = [HUDayOfWeekButton buttonWithType:0];
  [v12 setTitle:v5 forState:0];

  v6 = [*(a1 + 32) tintColor];
  v7 = [v6 CGColor];
  v8 = [v12 layer];
  [v8 setBorderColor:v7];

  v9 = [v12 layer];
  [v9 setBorderWidth:2.0];

  [v12 setTag:a3 + 1];
  [v12 addTarget:*(a1 + 32) action:sel__toggleWeekdayButton_ forControlEvents:64];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  if ([v12 tag] >= *(a1 + 48))
  {
    v11 = [v12 tag] - *(a1 + 48);
    [*(a1 + 40) insertObject:v12 atIndex:v11];
    v10 = [*(a1 + 32) buttonStackView];
    [v10 insertArrangedSubview:v12 atIndex:v11];
  }

  else
  {
    [*(a1 + 40) addObject:v12];
    v10 = [*(a1 + 32) buttonStackView];
    [v10 addArrangedSubview:v12];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUDayOfWeekPickerCell;
  [(HUDayOfWeekPickerCell *)&v4 traitCollectionDidChange:a3];
  [(HUDayOfWeekPickerCell *)self _updateSelectedDays];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = HUDayOfWeekPickerCell;
  [(HUDayOfWeekPickerCell *)&v3 tintColorDidChange];
  [(HUDayOfWeekPickerCell *)self _updateSelectedDays];
}

- (void)setSelectedRecurrences:(id)a3
{
  v4 = a3;
  if ([(NSSet *)v4 na_any:&__block_literal_global])
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v13[3] = 1;
    v5 = MEMORY[0x277CBEB98];
    v6 = MEMORY[0x277CBEA60];
    v7 = [(HUDayOfWeekPickerCell *)self buttons];
    v8 = [v7 count];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__HUDayOfWeekPickerCell_setSelectedRecurrences___block_invoke_2;
    v12[3] = &unk_277DB7240;
    v12[4] = v13;
    v9 = [v6 na_arrayByRepeatingWithCount:v8 generatorBlock:v12];
    v10 = [v5 setWithArray:v9];

    _Block_object_dispose(v13, 8);
    v4 = v10;
  }

  selectedRecurrences = self->_selectedRecurrences;
  self->_selectedRecurrences = v4;

  [(HUDayOfWeekPickerCell *)self _updateSelectedDays];
}

id __48__HUDayOfWeekPickerCell_setSelectedRecurrences___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v2 setWeekday:(*(*(*(a1 + 32) + 8) + 24))++];

  return v2;
}

- (void)_updateSelectedDays
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HUDayOfWeekPickerCell *)self selectedRecurrences];
  v4 = [v3 na_map:&__block_literal_global_20];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(HUDayOfWeekPickerCell *)self buttons];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "tag")}];
        [v9 setSelected:{objc_msgSend(v4, "containsObject:", v10)}];

        v11 = [(HUDayOfWeekPickerCell *)self traitCollection];
        if ([v11 userInterfaceStyle] == 2)
        {
          [MEMORY[0x277D75348] colorWithWhite:0.15 alpha:1.0];
        }

        else
        {
          [MEMORY[0x277D75348] systemWhiteColor];
        }
        v12 = ;

        if ([v9 isSelected])
        {
          v13 = v12;
        }

        else
        {
          v13 = [(HUDayOfWeekPickerCell *)self tintColor];
        }

        v14 = v13;
        [v9 setTitleColor:v13 forState:0];
        if ([v9 isSelected])
        {
          [(HUDayOfWeekPickerCell *)self tintColor];
        }

        else
        {
          [MEMORY[0x277D75348] clearColor];
        }
        v15 = ;
        [v9 setBackgroundColor:v15];
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

id __44__HUDayOfWeekPickerCell__updateSelectedDays__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 weekday] < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v2, "weekday")}];
  }

  return v3;
}

- (void)_toggleWeekdayButton:(id)a3
{
  v4 = a3;
  if ([v4 tag] <= 0)
  {
    NSLog(&cfstr_ButtonTagWasNo.isa, v4);
  }

  else
  {
    v5 = [v4 tag];
    v6 = [v4 isSelected];
    v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v7 setWeekday:v5];
    v8 = [(HUDayOfWeekPickerCell *)self selectedRecurrences];
    v9 = [v8 mutableCopy];

    if (v6)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __46__HUDayOfWeekPickerCell__toggleWeekdayButton___block_invoke;
      v13[3] = &__block_descriptor_40_e26_B16__0__NSDateComponents_8l;
      v13[4] = v5;
      v10 = [v9 na_firstObjectPassingTest:v13];
      if (!v10)
      {
        NSLog(&cfstr_AskedToDeselec.isa, v7, v9);
      }

      [v9 removeObject:v10];
    }

    else
    {
      [v9 addObject:v7];
    }

    [(HUDayOfWeekPickerCell *)self setSelectedRecurrences:v9];
    v11 = [(HUDayOfWeekPickerCell *)self delegate];
    v12 = [(HUDayOfWeekPickerCell *)self selectedRecurrences];
    [v11 dayOfWeekPickerCell:self didChangeSelectedRecurrences:v12];
  }
}

- (void)_setupConstraints
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v4 = [(HUDayOfWeekPickerCell *)self buttons];
  v5 = [v4 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v41;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v40 + 1) + 8 * i);
        v10 = [v9 widthAnchor];
        v11 = [v10 constraintEqualToConstant:48.0];

        LODWORD(v12) = 1144733696;
        [v11 setPriority:v12];
        [v3 addObject:v11];
        v13 = [v9 heightAnchor];
        v14 = [v9 widthAnchor];
        v15 = [v13 constraintEqualToAnchor:v14];
        [v3 addObject:v15];
      }

      v6 = [v4 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v6);
  }

  v16 = [(HUDayOfWeekPickerCell *)self buttonStackView];
  v17 = [v16 topAnchor];
  v18 = [(HUDayOfWeekPickerCell *)self contentView];
  v19 = [v18 layoutMarginsGuide];
  v20 = [v19 topAnchor];
  v21 = [v17 constraintEqualToAnchor:v20];
  [v3 addObject:v21];

  v22 = [(HUDayOfWeekPickerCell *)self buttonStackView];
  v23 = [v22 bottomAnchor];
  v24 = [(HUDayOfWeekPickerCell *)self contentView];
  v25 = [v24 layoutMarginsGuide];
  v26 = [v25 bottomAnchor];
  v27 = [v23 constraintEqualToAnchor:v26];
  [v3 addObject:v27];

  v28 = [(HUDayOfWeekPickerCell *)self buttonStackView];
  v29 = [v28 leadingAnchor];
  v30 = [(HUDayOfWeekPickerCell *)self contentView];
  v31 = [v30 layoutMarginsGuide];
  v32 = [v31 leadingAnchor];
  v33 = [v29 constraintEqualToAnchor:v32];
  [v3 addObject:v33];

  v34 = [(HUDayOfWeekPickerCell *)self buttonStackView];
  v35 = [v34 trailingAnchor];
  v36 = [(HUDayOfWeekPickerCell *)self contentView];
  v37 = [v36 layoutMarginsGuide];
  v38 = [v37 trailingAnchor];
  v39 = [v35 constraintEqualToAnchor:v38];
  [v3 addObject:v39];

  [MEMORY[0x277CCAAD0] activateConstraints:v3];
}

- (HUDayOfWeekPickerCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end