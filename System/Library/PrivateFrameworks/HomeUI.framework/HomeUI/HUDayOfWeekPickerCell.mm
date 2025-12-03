@interface HUDayOfWeekPickerCell
- (HUDayOfWeekPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUDayOfWeekPickerCellDelegate)delegate;
- (void)_setupConstraints;
- (void)_toggleWeekdayButton:(id)button;
- (void)_updateSelectedDays;
- (void)setSelectedRecurrences:(id)recurrences;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HUDayOfWeekPickerCell

- (HUDayOfWeekPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v23.receiver = self;
  v23.super_class = HUDayOfWeekPickerCell;
  v4 = [(HUDayOfWeekPickerCell *)&v23 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75A68]);
    [(HUDayOfWeekPickerCell *)v4 setButtonStackView:v5];

    buttonStackView = [(HUDayOfWeekPickerCell *)v4 buttonStackView];
    [buttonStackView setTranslatesAutoresizingMaskIntoConstraints:0];

    buttonStackView2 = [(HUDayOfWeekPickerCell *)v4 buttonStackView];
    [buttonStackView2 setSpacing:14.0];

    buttonStackView3 = [(HUDayOfWeekPickerCell *)v4 buttonStackView];
    [buttonStackView3 setDistribution:1];

    contentView = [(HUDayOfWeekPickerCell *)v4 contentView];
    buttonStackView4 = [(HUDayOfWeekPickerCell *)v4 buttonStackView];
    [contentView addSubview:buttonStackView4];

    v11 = objc_opt_new();
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    veryShortWeekdaySymbols = [currentCalendar veryShortWeekdaySymbols];

    currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
    firstWeekday = [currentCalendar2 firstWeekday];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__HUDayOfWeekPickerCell_initWithStyle_reuseIdentifier___block_invoke;
    v19[3] = &unk_277DB71F8;
    v16 = v4;
    v21 = v11;
    v22 = firstWeekday;
    v20 = v16;
    v17 = v11;
    [veryShortWeekdaySymbols enumerateObjectsUsingBlock:v19];
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

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = HUDayOfWeekPickerCell;
  [(HUDayOfWeekPickerCell *)&v4 traitCollectionDidChange:change];
  [(HUDayOfWeekPickerCell *)self _updateSelectedDays];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = HUDayOfWeekPickerCell;
  [(HUDayOfWeekPickerCell *)&v3 tintColorDidChange];
  [(HUDayOfWeekPickerCell *)self _updateSelectedDays];
}

- (void)setSelectedRecurrences:(id)recurrences
{
  recurrencesCopy = recurrences;
  if ([(NSSet *)recurrencesCopy na_any:&__block_literal_global])
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v13[3] = 1;
    v5 = MEMORY[0x277CBEB98];
    v6 = MEMORY[0x277CBEA60];
    buttons = [(HUDayOfWeekPickerCell *)self buttons];
    v8 = [buttons count];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__HUDayOfWeekPickerCell_setSelectedRecurrences___block_invoke_2;
    v12[3] = &unk_277DB7240;
    v12[4] = v13;
    v9 = [v6 na_arrayByRepeatingWithCount:v8 generatorBlock:v12];
    v10 = [v5 setWithArray:v9];

    _Block_object_dispose(v13, 8);
    recurrencesCopy = v10;
  }

  selectedRecurrences = self->_selectedRecurrences;
  self->_selectedRecurrences = recurrencesCopy;

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
  selectedRecurrences = [(HUDayOfWeekPickerCell *)self selectedRecurrences];
  v4 = [selectedRecurrences na_map:&__block_literal_global_20];

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

        traitCollection = [(HUDayOfWeekPickerCell *)self traitCollection];
        if ([traitCollection userInterfaceStyle] == 2)
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
          tintColor = v12;
        }

        else
        {
          tintColor = [(HUDayOfWeekPickerCell *)self tintColor];
        }

        v14 = tintColor;
        [v9 setTitleColor:tintColor forState:0];
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

- (void)_toggleWeekdayButton:(id)button
{
  buttonCopy = button;
  if ([buttonCopy tag] <= 0)
  {
    NSLog(&cfstr_ButtonTagWasNo.isa, buttonCopy);
  }

  else
  {
    v5 = [buttonCopy tag];
    isSelected = [buttonCopy isSelected];
    v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v7 setWeekday:v5];
    selectedRecurrences = [(HUDayOfWeekPickerCell *)self selectedRecurrences];
    v9 = [selectedRecurrences mutableCopy];

    if (isSelected)
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
    delegate = [(HUDayOfWeekPickerCell *)self delegate];
    selectedRecurrences2 = [(HUDayOfWeekPickerCell *)self selectedRecurrences];
    [delegate dayOfWeekPickerCell:self didChangeSelectedRecurrences:selectedRecurrences2];
  }
}

- (void)_setupConstraints
{
  v45 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  buttons = [(HUDayOfWeekPickerCell *)self buttons];
  v5 = [buttons countByEnumeratingWithState:&v40 objects:v44 count:16];
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
          objc_enumerationMutation(buttons);
        }

        v9 = *(*(&v40 + 1) + 8 * i);
        widthAnchor = [v9 widthAnchor];
        v11 = [widthAnchor constraintEqualToConstant:48.0];

        LODWORD(v12) = 1144733696;
        [v11 setPriority:v12];
        [array addObject:v11];
        heightAnchor = [v9 heightAnchor];
        widthAnchor2 = [v9 widthAnchor];
        v15 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
        [array addObject:v15];
      }

      v6 = [buttons countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v6);
  }

  buttonStackView = [(HUDayOfWeekPickerCell *)self buttonStackView];
  topAnchor = [buttonStackView topAnchor];
  contentView = [(HUDayOfWeekPickerCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v21];

  buttonStackView2 = [(HUDayOfWeekPickerCell *)self buttonStackView];
  bottomAnchor = [buttonStackView2 bottomAnchor];
  contentView2 = [(HUDayOfWeekPickerCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide2 bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v27];

  buttonStackView3 = [(HUDayOfWeekPickerCell *)self buttonStackView];
  leadingAnchor = [buttonStackView3 leadingAnchor];
  contentView3 = [(HUDayOfWeekPickerCell *)self contentView];
  layoutMarginsGuide3 = [contentView3 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide3 leadingAnchor];
  v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v33];

  buttonStackView4 = [(HUDayOfWeekPickerCell *)self buttonStackView];
  trailingAnchor = [buttonStackView4 trailingAnchor];
  contentView4 = [(HUDayOfWeekPickerCell *)self contentView];
  layoutMarginsGuide4 = [contentView4 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
  v39 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v39];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

- (HUDayOfWeekPickerCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end