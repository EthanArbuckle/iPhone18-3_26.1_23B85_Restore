@interface HUQuickControlWheelPickerView
- (CGSize)intrinsicContentSize;
- (HUQuickControlViewInteractionDelegate)interactionDelegate;
- (HUQuickControlWheelPickerView)initWithProfile:(id)profile;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size;
- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView;
- (id)value;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)_actuateSelectionTapticFeedback;
- (void)_prepareForTapticFeedback;
- (void)_updateSelectedRowBorderView:(id)view;
- (void)_updateUI;
- (void)_updateUIForReachabilityState:(unint64_t)state;
- (void)layoutSubviews;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)setItems:(id)items;
- (void)setProfile:(id)profile;
- (void)setSelectedRow:(id)row;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)setValue:(id)value;
- (void)tintColorDidChange;
@end

@implementation HUQuickControlWheelPickerView

- (HUQuickControlWheelPickerView)initWithProfile:(id)profile
{
  profileCopy = profile;
  v35.receiver = self;
  v35.super_class = HUQuickControlWheelPickerView;
  v6 = [(HUQuickControlWheelPickerView *)&v35 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, profile);
    v7->_reachabilityState = 0;
    v8 = objc_alloc_init(MEMORY[0x277D75840]);
    [(HUQuickControlWheelPickerView *)v7 setPickerView:v8];

    pickerView = [(HUQuickControlWheelPickerView *)v7 pickerView];
    [pickerView setDelegate:v7];

    pickerView2 = [(HUQuickControlWheelPickerView *)v7 pickerView];
    [pickerView2 setDataSource:v7];

    pickerView3 = [(HUQuickControlWheelPickerView *)v7 pickerView];
    [pickerView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    pickerView4 = [(HUQuickControlWheelPickerView *)v7 pickerView];
    [(HUQuickControlWheelPickerView *)v7 addSubview:pickerView4];

    v13 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(HUQuickControlWheelPickerView *)v7 setTopGradientView:v13];

    topGradientView = [(HUQuickControlWheelPickerView *)v7 topGradientView];
    [topGradientView setUserInteractionEnabled:0];

    topGradientView2 = [(HUQuickControlWheelPickerView *)v7 topGradientView];
    [(HUQuickControlWheelPickerView *)v7 addSubview:topGradientView2];

    v16 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(HUQuickControlWheelPickerView *)v7 setBottomGradientView:v16];

    bottomGradientView = [(HUQuickControlWheelPickerView *)v7 bottomGradientView];
    [bottomGradientView setUserInteractionEnabled:0];

    bottomGradientView2 = [(HUQuickControlWheelPickerView *)v7 bottomGradientView];
    [(HUQuickControlWheelPickerView *)v7 addSubview:bottomGradientView2];

    bottomGradientView3 = [(HUQuickControlWheelPickerView *)v7 bottomGradientView];
    [bottomGradientView3 setHidden:1];

    v20 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(HUQuickControlWheelPickerView *)v7 setSelectedRowSurroundingView:v20];

    selectedRowSurroundingView = [(HUQuickControlWheelPickerView *)v7 selectedRowSurroundingView];
    [selectedRowSurroundingView setUserInteractionEnabled:0];

    selectedRowSurroundingView2 = [(HUQuickControlWheelPickerView *)v7 selectedRowSurroundingView];
    [(HUQuickControlWheelPickerView *)v7 addSubview:selectedRowSurroundingView2];

    array = [MEMORY[0x277CBEB18] array];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __49__HUQuickControlWheelPickerView_initWithProfile___block_invoke;
    v32 = &unk_277DB9438;
    v33 = array;
    v24 = v7;
    v34 = v24;
    v25 = array;
    v26 = _Block_copy(&v29);
    v27 = [(HUQuickControlWheelPickerView *)v24 pickerView:v29];
    v26[2](v26, v27);

    [MEMORY[0x277CCAAD0] activateConstraints:v25];
  }

  return v7;
}

void __49__HUQuickControlWheelPickerView_initWithProfile___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 leadingAnchor];
  v6 = [*(a1 + 40) leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v3 addObject:v7];

  v8 = *(a1 + 32);
  v9 = [v4 trailingAnchor];
  v10 = [*(a1 + 40) trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v8 addObject:v11];

  v12 = *(a1 + 32);
  v13 = [v4 topAnchor];
  v14 = [*(a1 + 40) topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v12 addObject:v15];

  v16 = *(a1 + 32);
  v19 = [v4 bottomAnchor];

  v17 = [*(a1 + 40) bottomAnchor];
  v18 = [v19 constraintEqualToAnchor:v17];
  [v16 addObject:v18];
}

- (void)setItems:(id)items
{
  itemsCopy = items;
  if (([itemsCopy isEqualToArray:self->_items] & 1) == 0)
  {
    objc_storeStrong(&self->_items, items);
    [(HUQuickControlWheelPickerView *)self setNeedsLayout];
    [(HUQuickControlWheelPickerView *)self setMaxTextWidth:0.0];
    [(UIPickerView *)self->_pickerView reloadAllComponents];
  }

  [(HUQuickControlWheelPickerView *)self _updateUI];
}

- (void)setSelectedRow:(id)row
{
  rowCopy = row;
  if (self->_selectedRow != rowCopy)
  {
    objc_storeStrong(&self->_selectedRow, row);
    items = [(HUQuickControlWheelPickerView *)self items];
    if (items)
    {
      v6 = items;
      items2 = [(HUQuickControlWheelPickerView *)self items];
      v8 = [items2 count];
      integerValue = [(NSNumber *)rowCopy integerValue];

      if (v8 > integerValue)
      {
        [(HUQuickControlWheelPickerView *)self setUserInteractionActive:1];
        items3 = [(HUQuickControlWheelPickerView *)self items];
        v11 = [items3 objectAtIndex:{-[NSNumber integerValue](rowCopy, "integerValue")}];

        interactionDelegate = [(HUQuickControlWheelPickerView *)self interactionDelegate];
        value = [v11 value];
        [interactionDelegate controlView:self valueDidChange:value];

        [(HUQuickControlWheelPickerView *)self setUserInteractionActive:0];
        [(HUQuickControlWheelPickerView *)self setNeedsLayout];
      }
    }
  }
}

- (void)_updateUI
{
  v23 = *MEMORY[0x277D85DE8];
  items = [(HUQuickControlWheelPickerView *)self items];
  v4 = [items count];

  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      items2 = [(HUQuickControlWheelPickerView *)self items];
      v7 = [items2 objectAtIndex:v5];

      if ([v7 isSelected])
      {
        break;
      }

      ++v5;
      items3 = [(HUQuickControlWheelPickerView *)self items];
      v9 = [items3 count];

      if (v5 >= v9)
      {
        goto LABEL_13;
      }
    }

    v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v5];
    [(HUQuickControlWheelPickerView *)self setSelectedRow:v10];

    pickerView = [(HUQuickControlWheelPickerView *)self pickerView];
    v12 = [pickerView numberOfRowsInComponent:0];

    selectedRow = [(HUQuickControlWheelPickerView *)self selectedRow];
    if (selectedRow && (v14 = selectedRow, -[HUQuickControlWheelPickerView selectedRow](self, "selectedRow"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 integerValue], v15, v14, v16 < v12))
    {
      pickerView2 = [(HUQuickControlWheelPickerView *)self pickerView];
      selectedRow2 = [(HUQuickControlWheelPickerView *)self selectedRow];
      -[NSObject selectRow:inComponent:animated:](pickerView2, "selectRow:inComponent:animated:", [selectedRow2 integerValue], 0, 0);
    }

    else
    {
      pickerView2 = HFLogForCategory();
      if (!os_log_type_enabled(pickerView2, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:

        goto LABEL_13;
      }

      selectedRow2 = [(HUQuickControlWheelPickerView *)self selectedRow];
      v21 = 134217984;
      integerValue = [selectedRow2 integerValue];
      _os_log_impl(&dword_20CEB6000, pickerView2, OS_LOG_TYPE_DEFAULT, "Unable to select row %ld as it exceeds number of rows in component", &v21, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_13:
  pickerView3 = [(HUQuickControlWheelPickerView *)self pickerView];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [pickerView3 _setMagnifierLineColor:clearColor];
}

- (void)_updateSelectedRowBorderView:(id)view
{
  viewCopy = view;
  selectedRowSurroundingView = [(HUQuickControlWheelPickerView *)self selectedRowSurroundingView];

  if (selectedRowSurroundingView)
  {
    v5 = [viewCopy colorWithAlphaComponent:0.1];
    selectedRowSurroundingView2 = [(HUQuickControlWheelPickerView *)self selectedRowSurroundingView];
    [selectedRowSurroundingView2 setBackgroundColor:v5];

    v7 = viewCopy;
    cGColor = [viewCopy CGColor];
    selectedRowSurroundingView3 = [(HUQuickControlWheelPickerView *)self selectedRowSurroundingView];
    layer = [selectedRowSurroundingView3 layer];
    [layer setBorderColor:cGColor];
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = HUQuickControlWheelPickerView;
  [(HUQuickControlWheelPickerView *)&v6 setUserInteractionEnabled:?];
  v5 = 0.5;
  if (enabledCopy)
  {
    v5 = 1.0;
  }

  [(HUQuickControlWheelPickerView *)self setAlpha:v5];
}

- (void)tintColorDidChange
{
  profile = [(HUQuickControlWheelPickerView *)self profile];
  tintColor = [profile tintColor];
  [(HUQuickControlWheelPickerView *)self _updateSelectedRowBorderView:tintColor];
}

- (CGSize)intrinsicContentSize
{
  profile = [(HUQuickControlWheelPickerView *)self profile];
  v4 = -[HUQuickControlWheelPickerView intrinsicSizeDescriptorForControlSize:](self, "intrinsicSizeDescriptorForControlSize:", [profile controlSize]);
  [v4 intrinsicSize];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v117[2] = *MEMORY[0x277D85DE8];
  v107.receiver = self;
  v107.super_class = HUQuickControlWheelPickerView;
  [(HUQuickControlWheelPickerView *)&v107 layoutSubviews];
  pickerView = [(HUQuickControlWheelPickerView *)self pickerView];
  v4 = [pickerView numberOfRowsInComponent:0];

  selectedRow = [(HUQuickControlWheelPickerView *)self selectedRow];
  if (!selectedRow || (v6 = selectedRow, -[HUQuickControlWheelPickerView selectedRow](self, "selectedRow"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 integerValue], v7, v6, v8 >= v4))
  {
    systemWhiteColor = HFLogForCategory();
    if (os_log_type_enabled(systemWhiteColor, OS_LOG_TYPE_DEFAULT))
    {
      selectedRow2 = [(HUQuickControlWheelPickerView *)self selectedRow];
      integerValue = [selectedRow2 integerValue];
      items = [(HUQuickControlWheelPickerView *)self items];
      v81 = [items count];
      *buf = 134218496;
      v109 = integerValue;
      v110 = 2048;
      v111 = v4;
      v112 = 2048;
      v113 = v81;
      _os_log_impl(&dword_20CEB6000, systemWhiteColor, OS_LOG_TYPE_DEFAULT, "Selected row is %ld but number of rows in component is %ld. Number of wheel picker items is %ld.", buf, 0x20u);
    }

    goto LABEL_14;
  }

  pickerView2 = [(HUQuickControlWheelPickerView *)self pickerView];
  selectedRow3 = [(HUQuickControlWheelPickerView *)self selectedRow];
  [pickerView2 _contentSizeForRow:objc_msgSend(selectedRow3 inComponent:{"integerValue"), 0}];
  v12 = v11;
  v14 = v13;

  selectedRowSurroundingView = [(HUQuickControlWheelPickerView *)self selectedRowSurroundingView];
  [selectedRowSurroundingView frame];
  v17 = v16;
  v19 = v18;

  selectedRowSurroundingView2 = [(HUQuickControlWheelPickerView *)self selectedRowSurroundingView];
  [selectedRowSurroundingView2 setFrame:{v17, v19, v12, v14}];

  pickerView3 = [(HUQuickControlWheelPickerView *)self pickerView];
  [pickerView3 center];
  v23 = v22;
  v25 = v24;
  selectedRowSurroundingView3 = [(HUQuickControlWheelPickerView *)self selectedRowSurroundingView];
  [selectedRowSurroundingView3 setCenter:{v23, v25}];

  profile = [(HUQuickControlWheelPickerView *)self profile];
  [profile selectedRowBorderWidth];
  v29 = v28;
  selectedRowSurroundingView4 = [(HUQuickControlWheelPickerView *)self selectedRowSurroundingView];
  layer = [selectedRowSurroundingView4 layer];
  [layer setBorderWidth:v29];

  profile2 = [(HUQuickControlWheelPickerView *)self profile];
  [profile2 selectedRowCornerRadius];
  v34 = v33;
  selectedRowSurroundingView5 = [(HUQuickControlWheelPickerView *)self selectedRowSurroundingView];
  layer2 = [selectedRowSurroundingView5 layer];
  [layer2 setCornerRadius:v34];

  profile3 = [(HUQuickControlWheelPickerView *)self profile];
  style = [profile3 style];

  if (style != 1)
  {
    goto LABEL_15;
  }

  [(HUQuickControlWheelPickerView *)self bounds];
  v40 = v39;
  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  systemWhiteColor2 = [MEMORY[0x277D75348] systemWhiteColor];
  v43 = [systemWhiteColor2 colorWithAlphaComponent:0.0];

  profile4 = [(HUQuickControlWheelPickerView *)self profile];
  if ([profile4 sizeToFitTextWidth])
  {
    [(HUQuickControlWheelPickerView *)self maxTextWidth];
    if (v45 > 0.0)
    {
      [(HUQuickControlWheelPickerView *)self maxTextWidth];
      v12 = v46;
    }
  }

  pickerView4 = [(HUQuickControlWheelPickerView *)self pickerView];
  [pickerView4 frame];
  v49 = (v48 - v12) * 0.5;

  topGradientView = [(HUQuickControlWheelPickerView *)self topGradientView];
  [topGradientView setFrame:{v49, 0.0, v12, v40 / 2.5}];

  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  topGradientView2 = [(HUQuickControlWheelPickerView *)self topGradientView];
  [topGradientView2 setBackgroundColor:systemBackgroundColor];

  layer3 = [MEMORY[0x277CD9EB0] layer];
  topGradientView3 = [(HUQuickControlWheelPickerView *)self topGradientView];
  [topGradientView3 bounds];
  [layer3 setFrame:?];

  v117[0] = [systemWhiteColor CGColor];
  v117[1] = [v43 CGColor];
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:2];
  [layer3 setColors:v55];

  v56 = objc_alloc(MEMORY[0x277CCABB0]);
  LODWORD(v57) = 1058642330;
  v58 = [v56 initWithFloat:v57];
  v116[0] = v58;
  v59 = objc_alloc(MEMORY[0x277CCABB0]);
  LODWORD(v60) = 1.0;
  v61 = [v59 initWithFloat:v60];
  v116[1] = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:2];
  [layer3 setLocations:v62];

  topGradientView4 = [(HUQuickControlWheelPickerView *)self topGradientView];
  layer4 = [topGradientView4 layer];
  [layer4 setMask:layer3];

  bottomGradientView = [(HUQuickControlWheelPickerView *)self bottomGradientView];
  [bottomGradientView setFrame:{v49, v40 - v40 / 10.0 + 20.0, v12, v40 / 10.0}];

  bottomGradientView2 = [(HUQuickControlWheelPickerView *)self bottomGradientView];
  [bottomGradientView2 setBackgroundColor:systemWhiteColor];

  layer5 = [MEMORY[0x277CD9EB0] layer];
  bottomGradientView3 = [(HUQuickControlWheelPickerView *)self bottomGradientView];
  [bottomGradientView3 bounds];
  [layer5 setFrame:?];

  v115[0] = [v43 CGColor];
  v115[1] = [systemWhiteColor CGColor];
  v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:2];
  [layer5 setColors:v69];

  v70 = [objc_alloc(MEMORY[0x277CCABB0]) initWithFloat:0.0];
  v114[0] = v70;
  v71 = objc_alloc(MEMORY[0x277CCABB0]);
  LODWORD(v72) = 1.0;
  v73 = [v71 initWithFloat:v72];
  v114[1] = v73;
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:2];
  [layer5 setLocations:v74];

  bottomGradientView4 = [(HUQuickControlWheelPickerView *)self bottomGradientView];
  layer6 = [bottomGradientView4 layer];
  [layer6 setMask:layer5];

  mEMORY[0x277D14670] = [MEMORY[0x277D14670] sharedInstance];
  if ([mEMORY[0x277D14670] hostProcess] == 3)
  {

LABEL_12:
    topGradientView5 = [(HUQuickControlWheelPickerView *)self topGradientView];
    [topGradientView5 setHidden:1];

    bottomGradientView5 = [(HUQuickControlWheelPickerView *)self bottomGradientView];
    [bottomGradientView5 setHidden:1];

    goto LABEL_13;
  }

  mEMORY[0x277D14670]2 = [MEMORY[0x277D14670] sharedInstance];
  hostProcess = [mEMORY[0x277D14670]2 hostProcess];

  if (hostProcess == 100)
  {
    goto LABEL_12;
  }

LABEL_13:
  selectedRowSurroundingView6 = [(HUQuickControlWheelPickerView *)self selectedRowSurroundingView];
  layer7 = [selectedRowSurroundingView6 layer];
  [layer7 setCornerRadius:v14 * 0.5];

LABEL_14:
LABEL_15:
  profile5 = [(HUQuickControlWheelPickerView *)self profile];
  [profile5 borderWidth];
  v90 = v89;
  pickerView5 = [(HUQuickControlWheelPickerView *)self pickerView];
  layer8 = [pickerView5 layer];
  [layer8 setBorderWidth:v90];

  shouldUseControlCenterMaterials = [MEMORY[0x277D14CE8] shouldUseControlCenterMaterials];
  profile6 = [(HUQuickControlWheelPickerView *)self profile];
  borderColor = [profile6 borderColor];
  v96 = borderColor;
  v97 = borderColor;
  if (shouldUseControlCenterMaterials)
  {
    v97 = [borderColor colorWithAlphaComponent:0.7];
  }

  cGColor = [v97 CGColor];
  pickerView6 = [(HUQuickControlWheelPickerView *)self pickerView];
  layer9 = [pickerView6 layer];
  [layer9 setBorderColor:cGColor];

  if (shouldUseControlCenterMaterials)
  {
  }

  profile7 = [(HUQuickControlWheelPickerView *)self profile];
  [profile7 cornerRadius];
  v103 = v102;
  pickerView7 = [(HUQuickControlWheelPickerView *)self pickerView];
  layer10 = [pickerView7 layer];
  [layer10 setCornerRadius:v103];

  [(HUQuickControlWheelPickerView *)self _updateUIForReachabilityState:[(HUQuickControlWheelPickerView *)self reachabilityState]];
  profile8 = [(HUQuickControlWheelPickerView *)self profile];
  -[HUQuickControlWheelPickerView setUserInteractionEnabled:](self, "setUserInteractionEnabled:", [profile8 showOffState] ^ 1);
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:row];
  [(HUQuickControlWheelPickerView *)self setSelectedRow:v6];

  [(HUQuickControlWheelPickerView *)self _prepareForTapticFeedback];

  [(HUQuickControlWheelPickerView *)self _actuateSelectionTapticFeedback];
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v4 = [(HUQuickControlWheelPickerView *)self items:view];
  v5 = [v4 count];

  return v5;
}

- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView
{
  reusingViewCopy = reusingView;
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  items = [(HUQuickControlWheelPickerView *)self items];
  v11 = [items objectAtIndex:row];

  text = [v11 text];
  profile = [(HUQuickControlWheelPickerView *)self profile];
  uppercaseRowTitles = [profile uppercaseRowTitles];

  if (uppercaseRowTitles)
  {
    v15 = [text copy];
    localizedUppercaseString = [v15 localizedUppercaseString];

    v17 = [MEMORY[0x277D74300] boldSystemFontOfSize:14.0];

    text = localizedUppercaseString;
    v9 = v17;
  }

  objc_opt_class();
  v18 = reusingViewCopy;
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v21 = v18;
  if (!v20)
  {
    v21 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v21 setTextAlignment:1];
    [v21 setFont:v9];
  }

  [v21 setText:text];
  v22 = objc_opt_new();
  [v22 setValue:v9 forKey:*MEMORY[0x277D740A8]];
  [text sizeWithAttributes:v22];
  v24 = v23;
  [(HUQuickControlWheelPickerView *)self maxTextWidth];
  if (v25 < v24)
  {
    [(HUQuickControlWheelPickerView *)self setMaxTextWidth:v24];
  }

  return v21;
}

- (void)setProfile:(id)profile
{
  profileCopy = profile;
  controlSize = [(HUQuickControlViewProfile *)self->_profile controlSize];
  controlSize2 = [(HUQuickControlViewProfile *)profileCopy controlSize];
  profile = self->_profile;
  self->_profile = profileCopy;

  [(HUQuickControlWheelPickerView *)self setNeedsLayout];
  if (controlSize != controlSize2)
  {

    [(HUQuickControlWheelPickerView *)self invalidateIntrinsicContentSize];
  }
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)size
{
  v4 = HUQuickControlSliderMetricsForControlSize(size);
  sizeDescriptor = [v4 sizeDescriptor];
  [sizeDescriptor intrinsicSize];
  v7 = v6;
  v9 = v8;

  v10 = v7 * 2.5;
  profile = [(HUQuickControlWheelPickerView *)self profile];
  LODWORD(sizeDescriptor) = [profile sizeToFitTextWidth];

  if (sizeDescriptor)
  {
    [(HUQuickControlWheelPickerView *)self maxTextWidth];
    if (v12 == 0.0)
    {
      v14 = 150.0;
    }

    else
    {
      [(HUQuickControlWheelPickerView *)self maxTextWidth];
      v14 = v13 + 60.0;
    }

    v15 = fmax(v14, 100.0);
    if (v15 < v10)
    {
      v10 = v15;
    }

    profile2 = [(HUQuickControlWheelPickerView *)self profile];
    style = [profile2 style];

    if (style == 1)
    {
      v9 = v9 * 0.5;
    }
  }

  return [HUIntrinsicSizeDescriptor descriptorWithIntrinsicSize:2 flexType:v10, v9];
}

- (id)value
{
  pickerView = [(HUQuickControlWheelPickerView *)self pickerView];
  v4 = [pickerView selectedRowInComponent:0];

  items = [(HUQuickControlWheelPickerView *)self items];
  v6 = [items objectAtIndex:v4];

  return v6;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  v7 = valueCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    [(HUQuickControlWheelPickerView *)self setItems:v6];
  }
}

- (void)_updateUIForReachabilityState:(unint64_t)state
{
  if (state <= 2)
  {
    [(HUQuickControlWheelPickerView *)self setUserInteractionEnabled:(4u >> (state & 7)) & 1];
  }
}

- (void)_prepareForTapticFeedback
{
  v3 = objc_alloc_init(MEMORY[0x277D75A10]);
  [(HUQuickControlWheelPickerView *)self setSelectionFeedbackGenerator:v3];

  selectionFeedbackGenerator = [(HUQuickControlWheelPickerView *)self selectionFeedbackGenerator];
  [selectionFeedbackGenerator prepare];
}

- (void)_actuateSelectionTapticFeedback
{
  selectionFeedbackGenerator = [(HUQuickControlWheelPickerView *)self selectionFeedbackGenerator];
  [selectionFeedbackGenerator selectionChanged];

  selectionFeedbackGenerator2 = [(HUQuickControlWheelPickerView *)self selectionFeedbackGenerator];
  [selectionFeedbackGenerator2 prepare];
}

- (HUQuickControlViewInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

@end