@interface MUPlaceHoursSectionView
- (MUPlaceHoursSectionView)initWithSectionViewConfiguration:(id)a3;
- (MUPlaceHoursSectionViewDelegate)expandDelegate;
- (void)_performExpansion;
- (void)_recalculateStackingIfNeeded;
- (void)_setupViews;
- (void)expandableHoursViewDidExpand:(id)a3;
- (void)layoutSubviews;
- (void)verticalCardContainerView:(id)a3 didSelectRow:(id)a4 atIndex:(unint64_t)a5;
@end

@implementation MUPlaceHoursSectionView

- (MUPlaceHoursSectionViewDelegate)expandDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_expandDelegate);

  return WeakRetained;
}

- (void)expandableHoursViewDidExpand:(id)a3
{
  v4 = a3;
  v7 = [v4 hoursConfiguration];
  v5 = [(MUPlaceHoursSectionView *)self expandDelegate];
  v6 = [v4 isExpanded];

  [v5 hoursSectionView:self didExpand:v6 forConfiguration:v7];
}

- (void)verticalCardContainerView:(id)a3 didSelectRow:(id)a4 atIndex:(unint64_t)a5
{
  if (self->_moreRowView == a4)
  {
    [(MUPlaceHoursSectionView *)self _performExpansion];
  }
}

- (void)_recalculateStackingIfNeeded
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_hoursViews;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = *v19;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        [(MUPlaceHoursSectionView *)self bounds];
        if ([v7 shouldStackForProposedWidth:CGRectGetWidth(v25)])
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_hoursViews;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * j) setStacked:{v4, v14}];
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MUPlaceHoursSectionView;
  [(MUPlaceHoursSectionView *)&v4 layoutSubviews];
  [(MUPlaceHoursSectionView *)self _recalculateStackingIfNeeded];
  v3.receiver = self;
  v3.super_class = MUPlaceHoursSectionView;
  [(MUPlaceHoursSectionView *)&v3 layoutSubviews];
}

- (void)_performExpansion
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DD250];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__MUPlaceHoursSectionView__performExpansion__block_invoke;
  v5[3] = &unk_1E821BAC8;
  objc_copyWeak(&v6, &location);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__MUPlaceHoursSectionView__performExpansion__block_invoke_2;
  v3[3] = &unk_1E8219D10;
  objc_copyWeak(&v4, &location);
  [v2 animateWithDuration:v5 animations:v3 completion:0.200000003];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __44__MUPlaceHoursSectionView__performExpansion__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [WeakRetained arrangedSubviews];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

          [*(*(&v9 + 1) + 8 * v7++) setHidden:0];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    [v2[58] setHidden:1];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __44__MUPlaceHoursSectionView__performExpansion__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained removeArrangedSubview:WeakRetained[58]];
    WeakRetained = v2;
  }
}

- (void)_setupViews
{
  v76[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(MUPlaceHoursSectionViewConfiguration *)self->_sectionViewConfiguration placeHours];

  v69 = v3;
  if (v4)
  {
    v5 = [(MUPlaceHoursSectionViewConfiguration *)self->_sectionViewConfiguration placeHours];
    v66 = [MUHoursSummaryViewModel viewModelForBusinessConfiguration:v5 showHoursAndOpenState:1];

    v6 = [[MUHoursSummaryView alloc] initWithViewModel:v66];
    [(MUHoursSummaryView *)v6 setDirectionalLayoutMargins:15.0, 20.0, 15.0, 20.0];
    v7 = [MUPlaceSectionRowView alloc];
    v8 = [(MUPlaceSectionRowView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(MUHoursSummaryView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MUPlaceSectionRowView *)v8 addSubview:v6];
    v54 = MEMORY[0x1E696ACD8];
    v64 = [(MUHoursSummaryView *)v6 leadingAnchor];
    v62 = [(MUPlaceSectionRowView *)v8 leadingAnchor];
    v60 = [v64 constraintEqualToAnchor:v62];
    v76[0] = v60;
    v58 = [(MUHoursSummaryView *)v6 trailingAnchor];
    v56 = [(MUPlaceSectionRowView *)v8 trailingAnchor];
    v53 = [v58 constraintEqualToAnchor:v56];
    v76[1] = v53;
    v52 = [(MUHoursSummaryView *)v6 topAnchor];
    v9 = [(MUPlaceSectionRowView *)v8 topAnchor];
    v10 = [v52 constraintEqualToAnchor:v9];
    v76[2] = v10;
    v11 = [(MUHoursSummaryView *)v6 bottomAnchor];
    v12 = [(MUPlaceSectionRowView *)v8 bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v76[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:4];
    [v54 activateConstraints:v14];

    objc_storeStrong(&self->_hoursSummaryView, v8);
    if (([v66 openingHoursOptions] & 0x181) == 0)
    {
      v15 = [MUExpandableHoursView alloc];
      v16 = [(MUPlaceHoursSectionViewConfiguration *)self->_sectionViewConfiguration placeHours];
      v17 = [(MUExpandableHoursView *)v15 initWithBusinessHoursConfiguration:v16];

      [(MUExpandableHoursView *)v17 setExpanded:1];
      [(MUExpandableHoursView *)v17 setDirectionalLayoutMargins:15.0, 20.0, 15.0, 20.0];
      [(MUExpandableHoursView *)v17 setDelegate:self];
      [v69 addObject:v17];
    }
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v18 = [(MUPlaceHoursSectionViewConfiguration *)self->_sectionViewConfiguration serviceHoursList];
  v19 = [v18 countByEnumeratingWithState:&v70 objects:v75 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = 0;
    v23 = *v71;
    do
    {
      v24 = 0;
      v67 = v22;
      do
      {
        if (*v71 != v23)
        {
          objc_enumerationMutation(v18);
        }

        v25 = [[MUExpandableHoursView alloc] initWithBusinessHoursConfiguration:*(*(&v70 + 1) + 8 * v24)];
        [(MUExpandableHoursView *)v25 setDirectionalLayoutMargins:15.0, 20.0, 15.0, 20.0];
        [(MUExpandableHoursView *)v25 setDelegate:self];
        [v69 addObject:v25];
        if (v22 >= [(MUPlaceHoursSectionViewConfiguration *)self->_sectionViewConfiguration numberOfInlineServiceHours])
        {
          v21 = 1;
          [(MUExpandableHoursView *)v25 setHidden:1];
        }

        ++v22;

        ++v24;
      }

      while (v20 != v24);
      v22 = v67 + v20;
      v20 = [v18 countByEnumeratingWithState:&v70 objects:v75 count:16];
    }

    while (v20);
  }

  else
  {
    v21 = 0;
  }

  v26 = v69;
  v27 = [v69 lastObject];
  v28 = v27;
  if (v27)
  {
    [v27 directionalLayoutMargins];
    [v28 setDirectionalLayoutMargins:?];
  }

  v29 = [v69 copy];
  hoursViews = self->_hoursViews;
  self->_hoursViews = v29;

  if (v21)
  {
    v31 = [MUInfoCardStyle labelForProminence:0];
    moreLabel = self->_moreLabel;
    self->_moreLabel = v31;

    [(MULabelViewProtocol *)self->_moreLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    _MULocalizedStringFromThisBundle(@"More [Hours]");
    v33 = v68 = v28;
    [(MULabelViewProtocol *)self->_moreLabel setText:v33];

    v34 = +[MUInfoCardStyle tintColor];
    [(MULabelViewProtocol *)self->_moreLabel setTextColor:v34];

    v35 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB970]];
    [(MULabelViewProtocol *)self->_moreLabel setFont:v35];

    [(MULabelViewProtocol *)self->_moreLabel setAdjustsFontForContentSizeCategory:1];
    v36 = [MUPlaceSectionRowView alloc];
    v37 = [(MUPlaceSectionRowView *)v36 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(MUPlaceSectionRowView *)v37 setHandlesHighlighting:1];
    [(MUPlaceSectionRowView *)v37 addSubview:self->_moreLabel];
    v59 = MEMORY[0x1E696ACD8];
    v55 = [(MULabelViewProtocol *)self->_moreLabel leadingAnchor];
    v65 = [(MUPlaceSectionRowView *)v37 leadingAnchor];
    v63 = [v55 constraintEqualToAnchor:v65 constant:20.0];
    v74[0] = v63;
    v61 = [(MULabelViewProtocol *)self->_moreLabel trailingAnchor];
    v57 = [(MUPlaceSectionRowView *)v37 trailingAnchor];
    v38 = [v61 constraintEqualToAnchor:v57 constant:-20.0];
    v74[1] = v38;
    v39 = [(MULabelViewProtocol *)self->_moreLabel topAnchor];
    v40 = [(MUPlaceSectionRowView *)v37 topAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:8.0];
    v74[2] = v41;
    v42 = [(MULabelViewProtocol *)self->_moreLabel bottomAnchor];
    v43 = [(MUPlaceSectionRowView *)v37 bottomAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    v74[3] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:4];
    [v59 activateConstraints:v45];

    moreRowView = self->_moreRowView;
    self->_moreRowView = v37;
    v47 = v37;
    v28 = v68;
    v48 = v47;

    v26 = v69;
    [v69 addObject:v48];
  }

  hoursSummaryView = self->_hoursSummaryView;
  if (hoursSummaryView)
  {
    [v26 insertObject:hoursSummaryView atIndex:0];
  }

  v50 = [v26 copy];
  [(MUPlaceVerticalCardContainerView *)self setRowViews:v50];

  v51 = *MEMORY[0x1E69E9840];
}

- (MUPlaceHoursSectionView)initWithSectionViewConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUPlaceHoursSectionView;
  v6 = [(MUPlaceVerticalCardContainerView *)&v9 initWithShowsSeparators:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sectionViewConfiguration, a3);
    [(MUPlaceHoursSectionView *)v7 _setupViews];
    [(MUPlaceVerticalCardContainerView *)v7 setDelegate:v7];
  }

  return v7;
}

@end