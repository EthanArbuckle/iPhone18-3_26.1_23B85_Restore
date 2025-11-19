@interface HUQuickControlWheelPickerView
- (CGSize)intrinsicContentSize;
- (HUQuickControlViewInteractionDelegate)interactionDelegate;
- (HUQuickControlWheelPickerView)initWithProfile:(id)a3;
- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3;
- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6;
- (id)value;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)_actuateSelectionTapticFeedback;
- (void)_prepareForTapticFeedback;
- (void)_updateSelectedRowBorderView:(id)a3;
- (void)_updateUI;
- (void)_updateUIForReachabilityState:(unint64_t)a3;
- (void)layoutSubviews;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)setItems:(id)a3;
- (void)setProfile:(id)a3;
- (void)setSelectedRow:(id)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)setValue:(id)a3;
- (void)tintColorDidChange;
@end

@implementation HUQuickControlWheelPickerView

- (HUQuickControlWheelPickerView)initWithProfile:(id)a3
{
  v5 = a3;
  v35.receiver = self;
  v35.super_class = HUQuickControlWheelPickerView;
  v6 = [(HUQuickControlWheelPickerView *)&v35 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, a3);
    v7->_reachabilityState = 0;
    v8 = objc_alloc_init(MEMORY[0x277D75840]);
    [(HUQuickControlWheelPickerView *)v7 setPickerView:v8];

    v9 = [(HUQuickControlWheelPickerView *)v7 pickerView];
    [v9 setDelegate:v7];

    v10 = [(HUQuickControlWheelPickerView *)v7 pickerView];
    [v10 setDataSource:v7];

    v11 = [(HUQuickControlWheelPickerView *)v7 pickerView];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v12 = [(HUQuickControlWheelPickerView *)v7 pickerView];
    [(HUQuickControlWheelPickerView *)v7 addSubview:v12];

    v13 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(HUQuickControlWheelPickerView *)v7 setTopGradientView:v13];

    v14 = [(HUQuickControlWheelPickerView *)v7 topGradientView];
    [v14 setUserInteractionEnabled:0];

    v15 = [(HUQuickControlWheelPickerView *)v7 topGradientView];
    [(HUQuickControlWheelPickerView *)v7 addSubview:v15];

    v16 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(HUQuickControlWheelPickerView *)v7 setBottomGradientView:v16];

    v17 = [(HUQuickControlWheelPickerView *)v7 bottomGradientView];
    [v17 setUserInteractionEnabled:0];

    v18 = [(HUQuickControlWheelPickerView *)v7 bottomGradientView];
    [(HUQuickControlWheelPickerView *)v7 addSubview:v18];

    v19 = [(HUQuickControlWheelPickerView *)v7 bottomGradientView];
    [v19 setHidden:1];

    v20 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(HUQuickControlWheelPickerView *)v7 setSelectedRowSurroundingView:v20];

    v21 = [(HUQuickControlWheelPickerView *)v7 selectedRowSurroundingView];
    [v21 setUserInteractionEnabled:0];

    v22 = [(HUQuickControlWheelPickerView *)v7 selectedRowSurroundingView];
    [(HUQuickControlWheelPickerView *)v7 addSubview:v22];

    v23 = [MEMORY[0x277CBEB18] array];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __49__HUQuickControlWheelPickerView_initWithProfile___block_invoke;
    v32 = &unk_277DB9438;
    v33 = v23;
    v24 = v7;
    v34 = v24;
    v25 = v23;
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

- (void)setItems:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToArray:self->_items] & 1) == 0)
  {
    objc_storeStrong(&self->_items, a3);
    [(HUQuickControlWheelPickerView *)self setNeedsLayout];
    [(HUQuickControlWheelPickerView *)self setMaxTextWidth:0.0];
    [(UIPickerView *)self->_pickerView reloadAllComponents];
  }

  [(HUQuickControlWheelPickerView *)self _updateUI];
}

- (void)setSelectedRow:(id)a3
{
  v14 = a3;
  if (self->_selectedRow != v14)
  {
    objc_storeStrong(&self->_selectedRow, a3);
    v5 = [(HUQuickControlWheelPickerView *)self items];
    if (v5)
    {
      v6 = v5;
      v7 = [(HUQuickControlWheelPickerView *)self items];
      v8 = [v7 count];
      v9 = [(NSNumber *)v14 integerValue];

      if (v8 > v9)
      {
        [(HUQuickControlWheelPickerView *)self setUserInteractionActive:1];
        v10 = [(HUQuickControlWheelPickerView *)self items];
        v11 = [v10 objectAtIndex:{-[NSNumber integerValue](v14, "integerValue")}];

        v12 = [(HUQuickControlWheelPickerView *)self interactionDelegate];
        v13 = [v11 value];
        [v12 controlView:self valueDidChange:v13];

        [(HUQuickControlWheelPickerView *)self setUserInteractionActive:0];
        [(HUQuickControlWheelPickerView *)self setNeedsLayout];
      }
    }
  }
}

- (void)_updateUI
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HUQuickControlWheelPickerView *)self items];
  v4 = [v3 count];

  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      v6 = [(HUQuickControlWheelPickerView *)self items];
      v7 = [v6 objectAtIndex:v5];

      if ([v7 isSelected])
      {
        break;
      }

      ++v5;
      v8 = [(HUQuickControlWheelPickerView *)self items];
      v9 = [v8 count];

      if (v5 >= v9)
      {
        goto LABEL_13;
      }
    }

    v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:v5];
    [(HUQuickControlWheelPickerView *)self setSelectedRow:v10];

    v11 = [(HUQuickControlWheelPickerView *)self pickerView];
    v12 = [v11 numberOfRowsInComponent:0];

    v13 = [(HUQuickControlWheelPickerView *)self selectedRow];
    if (v13 && (v14 = v13, -[HUQuickControlWheelPickerView selectedRow](self, "selectedRow"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 integerValue], v15, v14, v16 < v12))
    {
      v17 = [(HUQuickControlWheelPickerView *)self pickerView];
      v18 = [(HUQuickControlWheelPickerView *)self selectedRow];
      -[NSObject selectRow:inComponent:animated:](v17, "selectRow:inComponent:animated:", [v18 integerValue], 0, 0);
    }

    else
    {
      v17 = HFLogForCategory();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:

        goto LABEL_13;
      }

      v18 = [(HUQuickControlWheelPickerView *)self selectedRow];
      v21 = 134217984;
      v22 = [v18 integerValue];
      _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "Unable to select row %ld as it exceeds number of rows in component", &v21, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_13:
  v19 = [(HUQuickControlWheelPickerView *)self pickerView];
  v20 = [MEMORY[0x277D75348] clearColor];
  [v19 _setMagnifierLineColor:v20];
}

- (void)_updateSelectedRowBorderView:(id)a3
{
  v11 = a3;
  v4 = [(HUQuickControlWheelPickerView *)self selectedRowSurroundingView];

  if (v4)
  {
    v5 = [v11 colorWithAlphaComponent:0.1];
    v6 = [(HUQuickControlWheelPickerView *)self selectedRowSurroundingView];
    [v6 setBackgroundColor:v5];

    v7 = v11;
    v8 = [v11 CGColor];
    v9 = [(HUQuickControlWheelPickerView *)self selectedRowSurroundingView];
    v10 = [v9 layer];
    [v10 setBorderColor:v8];
  }
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = HUQuickControlWheelPickerView;
  [(HUQuickControlWheelPickerView *)&v6 setUserInteractionEnabled:?];
  v5 = 0.5;
  if (v3)
  {
    v5 = 1.0;
  }

  [(HUQuickControlWheelPickerView *)self setAlpha:v5];
}

- (void)tintColorDidChange
{
  v4 = [(HUQuickControlWheelPickerView *)self profile];
  v3 = [v4 tintColor];
  [(HUQuickControlWheelPickerView *)self _updateSelectedRowBorderView:v3];
}

- (CGSize)intrinsicContentSize
{
  v3 = [(HUQuickControlWheelPickerView *)self profile];
  v4 = -[HUQuickControlWheelPickerView intrinsicSizeDescriptorForControlSize:](self, "intrinsicSizeDescriptorForControlSize:", [v3 controlSize]);
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
  v3 = [(HUQuickControlWheelPickerView *)self pickerView];
  v4 = [v3 numberOfRowsInComponent:0];

  v5 = [(HUQuickControlWheelPickerView *)self selectedRow];
  if (!v5 || (v6 = v5, -[HUQuickControlWheelPickerView selectedRow](self, "selectedRow"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 integerValue], v7, v6, v8 >= v4))
  {
    v41 = HFLogForCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v78 = [(HUQuickControlWheelPickerView *)self selectedRow];
      v79 = [v78 integerValue];
      v80 = [(HUQuickControlWheelPickerView *)self items];
      v81 = [v80 count];
      *buf = 134218496;
      v109 = v79;
      v110 = 2048;
      v111 = v4;
      v112 = 2048;
      v113 = v81;
      _os_log_impl(&dword_20CEB6000, v41, OS_LOG_TYPE_DEFAULT, "Selected row is %ld but number of rows in component is %ld. Number of wheel picker items is %ld.", buf, 0x20u);
    }

    goto LABEL_14;
  }

  v9 = [(HUQuickControlWheelPickerView *)self pickerView];
  v10 = [(HUQuickControlWheelPickerView *)self selectedRow];
  [v9 _contentSizeForRow:objc_msgSend(v10 inComponent:{"integerValue"), 0}];
  v12 = v11;
  v14 = v13;

  v15 = [(HUQuickControlWheelPickerView *)self selectedRowSurroundingView];
  [v15 frame];
  v17 = v16;
  v19 = v18;

  v20 = [(HUQuickControlWheelPickerView *)self selectedRowSurroundingView];
  [v20 setFrame:{v17, v19, v12, v14}];

  v21 = [(HUQuickControlWheelPickerView *)self pickerView];
  [v21 center];
  v23 = v22;
  v25 = v24;
  v26 = [(HUQuickControlWheelPickerView *)self selectedRowSurroundingView];
  [v26 setCenter:{v23, v25}];

  v27 = [(HUQuickControlWheelPickerView *)self profile];
  [v27 selectedRowBorderWidth];
  v29 = v28;
  v30 = [(HUQuickControlWheelPickerView *)self selectedRowSurroundingView];
  v31 = [v30 layer];
  [v31 setBorderWidth:v29];

  v32 = [(HUQuickControlWheelPickerView *)self profile];
  [v32 selectedRowCornerRadius];
  v34 = v33;
  v35 = [(HUQuickControlWheelPickerView *)self selectedRowSurroundingView];
  v36 = [v35 layer];
  [v36 setCornerRadius:v34];

  v37 = [(HUQuickControlWheelPickerView *)self profile];
  v38 = [v37 style];

  if (v38 != 1)
  {
    goto LABEL_15;
  }

  [(HUQuickControlWheelPickerView *)self bounds];
  v40 = v39;
  v41 = [MEMORY[0x277D75348] systemWhiteColor];
  v42 = [MEMORY[0x277D75348] systemWhiteColor];
  v43 = [v42 colorWithAlphaComponent:0.0];

  v44 = [(HUQuickControlWheelPickerView *)self profile];
  if ([v44 sizeToFitTextWidth])
  {
    [(HUQuickControlWheelPickerView *)self maxTextWidth];
    if (v45 > 0.0)
    {
      [(HUQuickControlWheelPickerView *)self maxTextWidth];
      v12 = v46;
    }
  }

  v47 = [(HUQuickControlWheelPickerView *)self pickerView];
  [v47 frame];
  v49 = (v48 - v12) * 0.5;

  v50 = [(HUQuickControlWheelPickerView *)self topGradientView];
  [v50 setFrame:{v49, 0.0, v12, v40 / 2.5}];

  v51 = [MEMORY[0x277D75348] systemBackgroundColor];
  v52 = [(HUQuickControlWheelPickerView *)self topGradientView];
  [v52 setBackgroundColor:v51];

  v53 = [MEMORY[0x277CD9EB0] layer];
  v54 = [(HUQuickControlWheelPickerView *)self topGradientView];
  [v54 bounds];
  [v53 setFrame:?];

  v117[0] = [v41 CGColor];
  v117[1] = [v43 CGColor];
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:2];
  [v53 setColors:v55];

  v56 = objc_alloc(MEMORY[0x277CCABB0]);
  LODWORD(v57) = 1058642330;
  v58 = [v56 initWithFloat:v57];
  v116[0] = v58;
  v59 = objc_alloc(MEMORY[0x277CCABB0]);
  LODWORD(v60) = 1.0;
  v61 = [v59 initWithFloat:v60];
  v116[1] = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:2];
  [v53 setLocations:v62];

  v63 = [(HUQuickControlWheelPickerView *)self topGradientView];
  v64 = [v63 layer];
  [v64 setMask:v53];

  v65 = [(HUQuickControlWheelPickerView *)self bottomGradientView];
  [v65 setFrame:{v49, v40 - v40 / 10.0 + 20.0, v12, v40 / 10.0}];

  v66 = [(HUQuickControlWheelPickerView *)self bottomGradientView];
  [v66 setBackgroundColor:v41];

  v67 = [MEMORY[0x277CD9EB0] layer];
  v68 = [(HUQuickControlWheelPickerView *)self bottomGradientView];
  [v68 bounds];
  [v67 setFrame:?];

  v115[0] = [v43 CGColor];
  v115[1] = [v41 CGColor];
  v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:2];
  [v67 setColors:v69];

  v70 = [objc_alloc(MEMORY[0x277CCABB0]) initWithFloat:0.0];
  v114[0] = v70;
  v71 = objc_alloc(MEMORY[0x277CCABB0]);
  LODWORD(v72) = 1.0;
  v73 = [v71 initWithFloat:v72];
  v114[1] = v73;
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:2];
  [v67 setLocations:v74];

  v75 = [(HUQuickControlWheelPickerView *)self bottomGradientView];
  v76 = [v75 layer];
  [v76 setMask:v67];

  v77 = [MEMORY[0x277D14670] sharedInstance];
  if ([v77 hostProcess] == 3)
  {

LABEL_12:
    v84 = [(HUQuickControlWheelPickerView *)self topGradientView];
    [v84 setHidden:1];

    v85 = [(HUQuickControlWheelPickerView *)self bottomGradientView];
    [v85 setHidden:1];

    goto LABEL_13;
  }

  v82 = [MEMORY[0x277D14670] sharedInstance];
  v83 = [v82 hostProcess];

  if (v83 == 100)
  {
    goto LABEL_12;
  }

LABEL_13:
  v86 = [(HUQuickControlWheelPickerView *)self selectedRowSurroundingView];
  v87 = [v86 layer];
  [v87 setCornerRadius:v14 * 0.5];

LABEL_14:
LABEL_15:
  v88 = [(HUQuickControlWheelPickerView *)self profile];
  [v88 borderWidth];
  v90 = v89;
  v91 = [(HUQuickControlWheelPickerView *)self pickerView];
  v92 = [v91 layer];
  [v92 setBorderWidth:v90];

  v93 = [MEMORY[0x277D14CE8] shouldUseControlCenterMaterials];
  v94 = [(HUQuickControlWheelPickerView *)self profile];
  v95 = [v94 borderColor];
  v96 = v95;
  v97 = v95;
  if (v93)
  {
    v97 = [v95 colorWithAlphaComponent:0.7];
  }

  v98 = [v97 CGColor];
  v99 = [(HUQuickControlWheelPickerView *)self pickerView];
  v100 = [v99 layer];
  [v100 setBorderColor:v98];

  if (v93)
  {
  }

  v101 = [(HUQuickControlWheelPickerView *)self profile];
  [v101 cornerRadius];
  v103 = v102;
  v104 = [(HUQuickControlWheelPickerView *)self pickerView];
  v105 = [v104 layer];
  [v105 setCornerRadius:v103];

  [(HUQuickControlWheelPickerView *)self _updateUIForReachabilityState:[(HUQuickControlWheelPickerView *)self reachabilityState]];
  v106 = [(HUQuickControlWheelPickerView *)self profile];
  -[HUQuickControlWheelPickerView setUserInteractionEnabled:](self, "setUserInteractionEnabled:", [v106 showOffState] ^ 1);
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [(HUQuickControlWheelPickerView *)self setSelectedRow:v6];

  [(HUQuickControlWheelPickerView *)self _prepareForTapticFeedback];

  [(HUQuickControlWheelPickerView *)self _actuateSelectionTapticFeedback];
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v4 = [(HUQuickControlWheelPickerView *)self items:a3];
  v5 = [v4 count];

  return v5;
}

- (id)pickerView:(id)a3 viewForRow:(int64_t)a4 forComponent:(int64_t)a5 reusingView:(id)a6
{
  v8 = a6;
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v10 = [(HUQuickControlWheelPickerView *)self items];
  v11 = [v10 objectAtIndex:a4];

  v12 = [v11 text];
  v13 = [(HUQuickControlWheelPickerView *)self profile];
  v14 = [v13 uppercaseRowTitles];

  if (v14)
  {
    v15 = [v12 copy];
    v16 = [v15 localizedUppercaseString];

    v17 = [MEMORY[0x277D74300] boldSystemFontOfSize:14.0];

    v12 = v16;
    v9 = v17;
  }

  objc_opt_class();
  v18 = v8;
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

  [v21 setText:v12];
  v22 = objc_opt_new();
  [v22 setValue:v9 forKey:*MEMORY[0x277D740A8]];
  [v12 sizeWithAttributes:v22];
  v24 = v23;
  [(HUQuickControlWheelPickerView *)self maxTextWidth];
  if (v25 < v24)
  {
    [(HUQuickControlWheelPickerView *)self setMaxTextWidth:v24];
  }

  return v21;
}

- (void)setProfile:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlViewProfile *)self->_profile controlSize];
  v6 = [(HUQuickControlViewProfile *)v4 controlSize];
  profile = self->_profile;
  self->_profile = v4;

  [(HUQuickControlWheelPickerView *)self setNeedsLayout];
  if (v5 != v6)
  {

    [(HUQuickControlWheelPickerView *)self invalidateIntrinsicContentSize];
  }
}

- (id)intrinsicSizeDescriptorForControlSize:(unint64_t)a3
{
  v4 = HUQuickControlSliderMetricsForControlSize(a3);
  v5 = [v4 sizeDescriptor];
  [v5 intrinsicSize];
  v7 = v6;
  v9 = v8;

  v10 = v7 * 2.5;
  v11 = [(HUQuickControlWheelPickerView *)self profile];
  LODWORD(v5) = [v11 sizeToFitTextWidth];

  if (v5)
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

    v16 = [(HUQuickControlWheelPickerView *)self profile];
    v17 = [v16 style];

    if (v17 == 1)
    {
      v9 = v9 * 0.5;
    }
  }

  return [HUIntrinsicSizeDescriptor descriptorWithIntrinsicSize:2 flexType:v10, v9];
}

- (id)value
{
  v3 = [(HUQuickControlWheelPickerView *)self pickerView];
  v4 = [v3 selectedRowInComponent:0];

  v5 = [(HUQuickControlWheelPickerView *)self items];
  v6 = [v5 objectAtIndex:v4];

  return v6;
}

- (void)setValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v7 = v4;
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

- (void)_updateUIForReachabilityState:(unint64_t)a3
{
  if (a3 <= 2)
  {
    [(HUQuickControlWheelPickerView *)self setUserInteractionEnabled:(4u >> (a3 & 7)) & 1];
  }
}

- (void)_prepareForTapticFeedback
{
  v3 = objc_alloc_init(MEMORY[0x277D75A10]);
  [(HUQuickControlWheelPickerView *)self setSelectionFeedbackGenerator:v3];

  v4 = [(HUQuickControlWheelPickerView *)self selectionFeedbackGenerator];
  [v4 prepare];
}

- (void)_actuateSelectionTapticFeedback
{
  v3 = [(HUQuickControlWheelPickerView *)self selectionFeedbackGenerator];
  [v3 selectionChanged];

  v4 = [(HUQuickControlWheelPickerView *)self selectionFeedbackGenerator];
  [v4 prepare];
}

- (HUQuickControlViewInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

@end