@interface MUExpandableHoursView
- (BOOL)shouldStackForProposedWidth:(double)a3;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MUExpandableHoursView)initWithBusinessHoursConfiguration:(id)a3;
- (MUExpandableHoursViewDelegate)delegate;
- (void)_addDayRowViewsToStackViewIfNeeded;
- (void)_buildDayRowViewModels;
- (void)_createDayRowViewsIfNeeded;
- (void)_invokeChildrenOfStackingChange;
- (void)_setupStackView;
- (void)_updateHoursVisibilityAnimated:(BOOL)a3;
- (void)setStacked:(BOOL)a3;
@end

@implementation MUExpandableHoursView

- (MUExpandableHoursViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_invokeChildrenOfStackingChange
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_dayRowViews;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) setStacked:{self->_stacked, v9}];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setStacked:(BOOL)a3
{
  if (self->_stacked != a3)
  {
    self->_stacked = a3;
    [(MUExpandableHoursView *)self _invokeChildrenOfStackingChange];
  }
}

- (BOOL)shouldStackForProposedWidth:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_dayRowViews;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v10 + 1) + 8 * i) shouldStackForProposedWidth:{a3, v10}])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_updateHoursVisibilityAnimated:(BOOL)a3
{
  if (a3)
  {
    v4 = 0.300000012;
  }

  else
  {
    v4 = 0.0;
  }

  objc_initWeak(&location, self);
  if ([(MUExpandableHoursView *)self isExpanded])
  {
    [(MUExpandableHoursView *)self _addDayRowViewsToStackViewIfNeeded];
  }

  v5 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__MUExpandableHoursView__updateHoursVisibilityAnimated___block_invoke;
  v6[3] = &unk_1E8219F48;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [v5 _mapsui_animateWithDuration:v6 animations:0 completion:v4];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __56__MUExpandableHoursView__updateHoursVisibilityAnimated___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[59] setExpanded:{objc_msgSend(WeakRetained, "isExpanded")}];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3[60];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v12 + 1) + 8 * i) setHidden:{objc_msgSend(v3, "isExpanded", v12) ^ 1}];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v9 = [v3 isExpanded];
    v10 = 0.0;
    if (v9)
    {
      v10 = 1.0;
    }

    [v3[58] setAlpha:{v10, v12}];
    [*(a1 + 32) invalidateIntrinsicContentSize];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(MUExpandableHoursView *)self intrinsicContentSize];
  v6 = fmin(width, v5);
  v8 = fmin(height, v7);
  result.height = v8;
  result.width = v6;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = *MEMORY[0x1E69DE090];
  v4 = *(MEMORY[0x1E69DE090] + 8);
  [(MUHoursSummaryView *)self->_hoursSummaryView systemLayoutSizeFittingSize:*MEMORY[0x1E69DE090], v4];
  v6 = v5;
  v8 = v7;
  [(MUStackView *)self->_contentStackView systemLayoutSizeFittingSize:v3, v4];
  v10 = v9;
  v12 = fmax(v6, v11);
  [(MUExpandableHoursView *)self directionalLayoutMargins];
  v14 = v13;
  [(MUExpandableHoursView *)self directionalLayoutMargins];
  v16 = v12 + v14 + v15;
  if (![(MUExpandableHoursView *)self isExpanded])
  {
    v10 = 0.0;
  }

  [(MUExpandableHoursView *)self directionalLayoutMargins];
  v18 = v8 + v17;
  [(MUExpandableHoursView *)self directionalLayoutMargins];
  v20 = v10 + v19 + v18;
  v21 = v16;
  result.height = v20;
  result.width = v21;
  return result;
}

- (void)_setupStackView
{
  v26[2] = *MEMORY[0x1E69E9840];
  [(MUExpandableHoursView *)self setInsetsLayoutMarginsFromSafeArea:0];
  [(MUExpandableHoursView *)self setDirectionalLayoutMargins:*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)];
  v3 = [MUStackView alloc];
  v4 = [(MUStackView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  contentStackView = self->_contentStackView;
  self->_contentStackView = v4;

  [(MUStackView *)self->_contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUStackView *)self->_contentStackView setAxis:1];
  [(MUStackView *)self->_contentStackView setAlpha:0.0];
  [(MUStackView *)self->_contentStackView setAccessibilityIdentifier:@"ExpandedStack"];
  [(MUStackView *)self->_contentStackView setSpacing:4.0];
  v6 = [MUHoursSummaryViewModel viewModelForBusinessConfiguration:self->_config showHoursAndOpenState:0];
  [v6 setHideChevron:{-[NSArray count](self->_dayRowViewModels, "count") == 0}];
  v7 = [[MUHoursSummaryView alloc] initWithViewModel:v6];
  hoursSummaryView = self->_hoursSummaryView;
  self->_hoursSummaryView = v7;

  [(MUHoursSummaryView *)self->_hoursSummaryView setTranslatesAutoresizingMaskIntoConstraints:0];
  if ([(NSArray *)self->_dayRowViewModels count])
  {
    objc_initWeak(&location, self);
    v9 = self->_hoursSummaryView;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __40__MUExpandableHoursView__setupStackView__block_invoke;
    v22 = &unk_1E821BAC8;
    objc_copyWeak(&v23, &location);
    [(MUHoursSummaryView *)v9 setActionHandler:&v19];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  [(MUExpandableHoursView *)self addSubview:self->_hoursSummaryView, v19, v20, v21, v22];
  [(MUExpandableHoursView *)self addSubview:self->_contentStackView];
  v10 = [MUStackLayout alloc];
  v11 = [(MUExpandableHoursView *)self layoutMarginsGuide];
  v12 = [(MUStackLayout *)v10 initWithContainer:v11 axis:1];
  summaryAndHoursStackLayout = self->_summaryAndHoursStackLayout;
  self->_summaryAndHoursStackLayout = v12;

  v14 = self->_contentStackView;
  v26[0] = self->_hoursSummaryView;
  v26[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  [(MUStackLayout *)self->_summaryAndHoursStackLayout setArrangedLayoutItems:v15];

  v16 = MEMORY[0x1E696ACD8];
  v25 = self->_summaryAndHoursStackLayout;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  [v16 _mapsui_activateLayouts:v17];

  v18 = *MEMORY[0x1E69E9840];
}

void __40__MUExpandableHoursView__setupStackView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setExpanded:objc_msgSend(WeakRetained animated:{"isExpanded") ^ 1, 1}];
    WeakRetained = v2;
  }
}

- (void)_addDayRowViewsToStackViewIfNeeded
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(MUStackView *)self->_contentStackView arrangedSubviews];
  v4 = [v3 isEqual:self->_dayRowViews];

  if ((v4 & 1) == 0)
  {
    [(MUExpandableHoursView *)self _createDayRowViewsIfNeeded];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = self->_dayRowViews;
    v5 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          v10 = v7;
          if (*v21 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          [(MUStackView *)self->_contentStackView addArrangedSubview:v11];
          v12 = [v11 viewModel];
          v13 = [v12 labelHeaderString];
          v14 = [v13 length];

          if (v10 && v14)
          {
            [(MUStackView *)self->_contentStackView setCustomSpacing:v10 afterView:12.0];
          }

          v7 = v11;

          v15 = [v7 widthAnchor];
          v16 = [(MUStackView *)self->_contentStackView widthAnchor];
          v17 = [v15 constraintEqualToAnchor:v16];
          [v17 setActive:1];

          [v7 setHidden:1];
          [v7 layoutIfNeeded];
        }

        v6 = [(NSArray *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_createDayRowViewsIfNeeded
{
  if (!self->_dayRowViews)
  {
    v3 = MUMap(self->_dayRowViewModels, &__block_literal_global_13057);
    dayRowViews = self->_dayRowViews;
    self->_dayRowViews = v3;

    MEMORY[0x1EEE66BB8](v3, dayRowViews);
  }
}

MUDayRowView *__51__MUExpandableHoursView__createDayRowViewsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MUDayRowView alloc] initWithViewModel:v2];

  return v3;
}

- (void)_buildDayRowViewModels
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v37 = self;
  obj = [(MUBusinessHoursConfiguration *)self->_config businessHours];
  v38 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v38)
  {
    v39 = 1;
    v36 = *v44;
    v4 = 0x1E696F000uLL;
    do
    {
      v5 = 0;
      do
      {
        if (*v44 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v43 + 1) + 8 * v5);
        v41 = v5;
        if ([v6 hoursType] == v39)
        {
LABEL_11:
          v42 = &stru_1F44CA030;
          goto LABEL_20;
        }

        v39 = [v6 hoursType];
        v7 = [v6 hoursType];
        if (v7 == 2)
        {
          v8 = [v6 localizedMessage];
          if (!v8)
          {
            v10 = [*(v4 + 1128) localizedHoursDayRangeString:v6];
            v11 = v10;
            if (v10)
            {
              v12 = v10;
            }

            else
            {
              v12 = [*(v4 + 1128) localizedHoursStringSpecialHours];
            }

            v42 = v12;

            goto LABEL_18;
          }
        }

        else
        {
          if (v7 != 1)
          {
            goto LABEL_11;
          }

          v8 = [v6 localizedMessage];
          if (!v8)
          {
            v42 = [*(v4 + 1128) localizedHoursStringNormalHours];
LABEL_18:
            v9 = 0;
            goto LABEL_19;
          }
        }

        v9 = v8;
        v42 = v9;
LABEL_19:

LABEL_20:
        v13 = objc_alloc(*(v4 + 1128));
        v14 = [(MUBusinessHoursConfiguration *)v37->_config placeTimeZone];
        v15 = [v13 initWithBusinessHours:v6 timeZone:v14 localizedHoursStringOptions:2];

        v16 = [v15 operatingHours];
        v17 = [v16 placeDailyHours];
        v18 = [v15 formatData:v17];

        v19 = [v18 objectForKeyedSubscript:@"DaysShort"];
        v20 = [v18 objectForKeyedSubscript:@"DaysFull"];
        v21 = [v18 objectForKeyedSubscript:@"HoursFull"];
        v40 = v18;
        v22 = [v18 objectForKeyedSubscript:@"SingularWeekdayIdentifier"];
        if ([v19 count])
        {
          v23 = 0;
          do
          {
            v24 = objc_alloc_init(MUDayRowViewModel);
            v25 = v24;
            if (!v23)
            {
              [(MUDayRowViewModel *)v24 setLabelHeaderString:v42];
            }

            v26 = [v22 objectAtIndexedSubscript:v23];
            v27 = [v26 BOOLValue];

            if (v27)
            {
              v28 = v20;
            }

            else
            {
              v28 = v19;
            }

            v29 = [v28 objectAtIndexedSubscript:v23];
            [(MUDayRowViewModel *)v25 setDayString:v29];

            v30 = [v21 objectAtIndexedSubscript:v23];
            [(MUDayRowViewModel *)v25 setHourStrings:v30];

            v31 = [v15 AMPMSymbols];
            [(MUDayRowViewModel *)v25 setAMPMStrings:v31];

            [v3 addObject:v25];
            ++v23;
          }

          while (v23 < [v19 count]);
        }

        v5 = v41 + 1;
        v4 = 0x1E696F000;
      }

      while (v41 + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v38);
  }

  v32 = [v3 copy];
  dayRowViewModels = v37->_dayRowViewModels;
  v37->_dayRowViewModels = v32;

  v34 = *MEMORY[0x1E69E9840];
}

- (MUExpandableHoursView)initWithBusinessHoursConfiguration:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MUExpandableHoursView;
  v6 = [(MUPlaceSectionRowView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v6)
  {
    v7 = MUGetMUExpandableHoursViewLog();
    if (os_signpost_enabled(v7))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUExpandableHoursViewInit", "", v10, 2u);
    }

    objc_storeStrong(&v6->_config, a3);
    v6->_expanded = 0;
    [(MUExpandableHoursView *)v6 setAccessibilityIdentifier:@"ExpandableHours"];
    [(MUExpandableHoursView *)v6 _buildDayRowViewModels];
    [(MUExpandableHoursView *)v6 _setupStackView];
    [(UIView *)v6 _mapsui_addSelectGestureRecognizerWithTarget:v6->_hoursSummaryView action:sel_expandButtonTapped];
    v8 = MUGetMUExpandableHoursViewLog();
    if (os_signpost_enabled(v8))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUExpandableHoursViewInit", "", v10, 2u);
    }
  }

  return v6;
}

@end