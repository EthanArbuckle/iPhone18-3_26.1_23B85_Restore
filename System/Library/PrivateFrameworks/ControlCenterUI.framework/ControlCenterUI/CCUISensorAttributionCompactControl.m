@interface CCUISensorAttributionCompactControl
- (CCUISensorAttributionCompactControl)initWithFrame:(CGRect)a3;
- (CCUISensorAttributionCompactControlDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFitsMaximumAllowableWidth;
- (double)_layoutSingleIndicatorView:(id)a3 trailingX:(double)a4 visible:(BOOL)a5;
- (double)_visibleIndicatorsWidth;
- (id)_configureIndicatorViewForType:(unint64_t)a3 inactive:(BOOL)a4;
- (id)_rightChevronImage;
- (id)clone;
- (void)_configureChevronViews;
- (void)_configureChevronWrapperAppearance;
- (void)_configureIndicatorView:(id)a3 forGameModeState:(unint64_t)a4;
- (void)_decideToExpandOrCompactAndForwardToDelegate:(id)a3;
- (void)_layoutBackgroundView;
- (void)_layoutChevronViews;
- (void)_layoutIndicatorViews;
- (void)_layoutLabelViews;
- (void)_setChevronAlphaForExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)_setLabelWrapperViewAlphaForExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)_updateBackgroundViewColorWithUniqueEntities:(id)a3 audioVideoControlsAreEnabled:(BOOL)a4;
- (void)_updateContentIfDisplayedAttributionsAreStaleAndLayout;
- (void)handleTouchCanceled;
- (void)handleTouchDown;
- (void)layoutSubviews;
- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CCUISensorAttributionCompactControl

- (CGSize)sizeThatFitsMaximumAllowableWidth
{
  v2 = self->_maximumAllowableWidth + -14.0;
  [(CCUISensorAttributionCompactControl *)self sizeThatFits:v2, 20.0];
  if (v3 >= v2)
  {
    v3 = v2;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (double)_visibleIndicatorsWidth
{
  v3 = self->_singleIndicatorSize.width * [(CCUISensorAttributionCompactControl *)self activeIndicatorsCount];
  v4 = [(CCUISensorAttributionCompactControl *)self activeIndicatorsCount];
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  return v3 + (v5 - 1) * 4.0;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CCUISensorAttributionCompactControl;
  [(CCUISensorAttributionCompactControl *)&v3 layoutSubviews];
  [(CCUISensorAttributionCompactControl *)self _updateContentIfDisplayedAttributionsAreStaleAndLayout];
}

- (void)_updateContentIfDisplayedAttributionsAreStaleAndLayout
{
  v64 = *MEMORY[0x277D85DE8];
  attributions = self->_attributions;
  if (attributions == self->_displayedAttributions && self->_inactiveMicrophoneAttribution == self->_displayedInactiveMicrophoneAttribution)
  {
    goto LABEL_55;
  }

  objc_storeStrong(&self->_displayedAttributions, attributions);
  objc_storeStrong(&self->_displayedInactiveMicrophoneAttribution, self->_inactiveMicrophoneAttribution);
  self->_showingCamera = 0;
  self->_showingMicrophone = 0;
  self->_showingInactiveMicrophone = 0;
  self->_showingLocation = 0;
  self->_showingGameMode = 0;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v4 = self->_displayedAttributions;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v50 = 0;
    v8 = *v58;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v58 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v57 + 1) + 8 * i);
        if (![v10 sensorType])
        {
          self->_showingCamera = 1;
          v50 = [v10 usedRecently];
        }

        if ([v10 sensorType] == 1)
        {
          self->_showingMicrophone = 1;
          v7 = [v10 usedRecently];
        }

        if ([v10 sensorType] == 2)
        {
          self->_showingLocation = 1;
        }

        if ([v10 sensorType] == 3)
        {
          self->_showingGameMode = 1;
        }
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v50 = 0;
  }

  v11 = self->_displayedAttributions;
  v12 = v11;
  if (!self->_showingCamera || (v50) && v7 & 1 | !self->_showingMicrophone && self->_displayedInactiveMicrophoneAttribution)
  {
    self->_showingInactiveMicrophone = 1;
    v13 = [(NSSet *)v11 setByAddingObject:self->_displayedInactiveMicrophoneAttribution];

    v12 = v13;
  }

  v14 = CCUIUniqueSensorAttributionEntitiesForSensorActivityData(v12, 1);
  v15 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v16 = [v14 firstObject];
  v17 = [v16 displayNameForCompactView];
  v52 = [(CCUISensorAttributionCompactControl *)self delegate];
  v18 = [v52 bundleIdentifierUsingAudioVideoControlsForSensorAttributionCompactControl:self];
  v51 = CCUIUniqueSensorAttributionEntitiesForSensorActivityData(v12, 0);
  [CCUISensorAttributionCompactControl _updateBackgroundViewColorWithUniqueEntities:"_updateBackgroundViewColorWithUniqueEntities:audioVideoControlsAreEnabled:" audioVideoControlsAreEnabled:?];
  if ([v14 count] == 1)
  {
    [v15 appendString:v17];
  }

  else
  {
    if (v18)
    {
      v48 = v16;
      v49 = v17;
      v46 = v15;
      v47 = v12;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v19 = v14;
      v20 = [v19 countByEnumeratingWithState:&v53 objects:v62 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v54;
        while (2)
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v54 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v53 + 1) + 8 * j);
            v25 = [v24 bundleIdentifier];
            v26 = [v25 isEqualToString:v18];

            if (v26)
            {
              v27 = [v24 displayNameForCompactView];
              v15 = v46;
              [v46 appendString:v27];

              v12 = v47;
              goto LABEL_46;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v53 objects:v62 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v15 = v46;
      v12 = v47;
    }

    else
    {
      if ([v14 count] != 2)
      {
        if ([v14 count] >= 3)
        {
          v35 = v17;
          v36 = [v14 count] - 1;
          v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v38 = [v37 localizedStringForKey:@"CONTROL_CENTER_SENSOR_STATUS_ONE_APP_AMPERSAND_N_MORE" value:&stru_28301B138 table:@"ControlCenterUI"];

          v45 = v36;
          v17 = v35;
          v39 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v38, v35, v45];
          [v15 appendString:v39];
        }

        goto LABEL_47;
      }

      v48 = v16;
      v49 = v17;
      v28 = [v14 objectAtIndex:1];
      v29 = [v28 displayNameForCompactView];

      v30 = [MEMORY[0x277CBEAF8] currentLocale];
      v31 = [v30 languageCode];

      if (([v31 isEqualToString:@"es"] & 1) != 0 || objc_msgSend(v31, "isEqualToString:", @"he"))
      {
        v32 = MEMORY[0x277CCAAF0];
        v61[0] = v49;
        v61[1] = v29;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
        v34 = [v32 localizedStringByJoiningStrings:v33];

        [v15 appendString:v34];
      }

      else
      {
        v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v34 = [v40 localizedStringForKey:@"CONTROL_CENTER_SENSOR_STATUS_TWO_APPS_AMPERSAND" value:&stru_28301B138 table:@"ControlCenterUI"];

        v41 = [MEMORY[0x277CCACA8] stringWithFormat:v34, v49, v29];
        [v15 appendString:v41];
      }
    }

LABEL_46:
    v16 = v48;
    v17 = v49;
  }

LABEL_47:
  [(CCUISensorAttributionCompactControl *)self setDescriptionText:v15];
  if (self->_showingGameMode || v18)
  {
    if (self->_showingGameMode)
    {
      v43 = @"CONTROL_CENTER_GAME_OVERLAY";
    }

    else
    {
      v43 = @"CONTROL_CENTER_SENSOR_STATUS_CONTROLS";
    }

    v44 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v42 = [v44 localizedStringForKey:v43 value:&stru_28301B138 table:@"ControlCenterUI"];
  }

  else
  {
    v42 = &stru_28301B138;
  }

  [(CCUISensorAttributionCompactControl *)self setDetailText:v42];
  [(CCUISensorAttributionCompactControl *)self setUserInteractionEnabled:[(CCUISensorAttributionCompactControl *)self activeIndicatorsCount]> 0];

LABEL_55:
  [(CCUISensorAttributionCompactControl *)self _layoutIndicatorViews];
  [(CCUISensorAttributionCompactControl *)self _layoutLabelViews];
  [(CCUISensorAttributionCompactControl *)self _layoutChevronViews];
  [(CCUISensorAttributionCompactControl *)self _layoutBackgroundView];
}

- (CCUISensorAttributionCompactControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_layoutIndicatorViews
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = -4.0;
  if ([v3 userInterfaceLayoutDirection] == 1)
  {
    [(CCUISensorAttributionCompactControl *)self bounds];
    v4 = v5 + 4.0 + 1.0;
  }

  [(CCUISensorAttributionCompactControl *)self _layoutSingleIndicatorView:self->_cameraIndicatorView trailingX:self->_showingCamera visible:v4];
  [(CCUISensorAttributionCompactControl *)self _layoutSingleIndicatorView:self->_micIndicatorView trailingX:self->_showingMicrophone visible:?];
  [(CCUISensorAttributionCompactControl *)self _layoutSingleIndicatorView:self->_inactiveMicIndicatorView trailingX:self->_showingInactiveMicrophone visible:?];
  [(CCUISensorAttributionCompactControl *)self _layoutSingleIndicatorView:self->_locationIndicatorView trailingX:self->_showingLocation visible:?];
  gameModeIndicatorView = self->_gameModeIndicatorView;
  showingGameMode = self->_showingGameMode;

  [(CCUISensorAttributionCompactControl *)self _layoutSingleIndicatorView:gameModeIndicatorView trailingX:showingGameMode visible:?];
}

- (void)_layoutLabelViews
{
  p_descriptionLabel = &self->_descriptionLabel;
  descriptionLabel = self->_descriptionLabel;
  if (descriptionLabel)
  {
    [(UILabel *)descriptionLabel setText:self->_descriptionText];
    p_detailLabel = &self->_detailLabel;
    [(UILabel *)self->_detailLabel setText:self->_detailText];
    [(CCUISensorAttributionCompactControl *)self bounds];
    v7 = v6;
    [(CCUISensorAttributionCompactControl *)self _visibleIndicatorsWidth];
    v9 = v7 - v8;
    v10 = [(CCUISensorAttributionCompactControl *)self chevronImageView];
    [v10 frame];
    v12 = v9 - v11;

    if ([(CCUISensorAttributionCompactControl *)self activeIndicatorsCount]<= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + -1.0;
    }

    [(UILabel *)*p_detailLabel sizeThatFits:v13, self->_singleIndicatorSize.height];
    height = self->_singleIndicatorSize.height;
    if (v14 >= v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    v17 = [(UILabel *)*p_detailLabel text];
    v18 = [v17 length];

    if (v18)
    {
      v13 = v13 - v16;
    }

    [(UILabel *)*p_descriptionLabel sizeThatFits:v13, self->_singleIndicatorSize.height];
    v20 = self->_singleIndicatorSize.height;
    v21 = 0.0;
    if (v16 != 0.0)
    {
      v21 = 7.0;
    }

    v22 = v21 + v19;
    if (v22 >= v13)
    {
      v23 = v13;
    }

    else
    {
      v23 = v22;
    }

    v24 = [MEMORY[0x277D75128] sharedApplication];
    v25 = [v24 userInterfaceLayoutDirection];

    if (v25 == 1)
    {
      v26 = &self->_detailLabel;
    }

    else
    {
      v26 = p_descriptionLabel;
    }

    if (v25 == 1)
    {
      v27 = v16;
    }

    else
    {
      v27 = v23;
    }

    if (v25 == 1)
    {
      v28 = height;
    }

    else
    {
      v28 = v20;
    }

    if (v25 == 1)
    {
      v29 = p_descriptionLabel;
    }

    else
    {
      v29 = &self->_detailLabel;
    }

    if (v25 == 1)
    {
      v30 = v23;
    }

    else
    {
      v30 = v16;
    }

    if (v25 == 1)
    {
      height = v20;
    }

    [(UILabel *)*v26 setFrame:0.0, 0.0, v27, v28];
    [(UILabel *)*v29 setFrame:v27, 0.0, v30, height];
    v31 = [MEMORY[0x277D75128] sharedApplication];
    if ([v31 userInterfaceLayoutDirection] == 1)
    {
      v32 = [(CCUISensorAttributionCompactControl *)self chevronImageView];
      [v32 frame];
    }

    UIRectCenteredYInRect();
    v33 = [(CCUISensorAttributionCompactControl *)self window];
    v34 = [v33 screen];
    [v34 scale];
    UIRectIntegralWithScale();
    x = v35;
    y = v37;
    width = v39;
    v42 = v41;

    if (self->_expanded)
    {
      v43 = [MEMORY[0x277D75128] sharedApplication];
      if ([v43 userInterfaceLayoutDirection] == 1)
      {
        v44 = -108.0;
      }

      else
      {
        v44 = 108.0;
      }

      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = v42;
      v48 = CGRectOffset(v47, v44, 72.0);
      x = v48.origin.x;
      y = v48.origin.y;
      width = v48.size.width;
      v42 = v48.size.height;
    }

    labelWrapperView = self->_labelWrapperView;

    [(SBFView *)labelWrapperView setFrame:x, y, width, v42];
  }
}

- (void)_layoutChevronViews
{
  chevronWrapperView = self->_chevronWrapperView;
  if (chevronWrapperView)
  {
    [(UIView *)chevronWrapperView frame];
    v4 = [(CCUISensorAttributionCompactControl *)self labelWrapperView];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = [MEMORY[0x277D75128] sharedApplication];
    if ([v13 userInterfaceLayoutDirection] != 1)
    {
      v29.origin.x = v6;
      v29.origin.y = v8;
      v29.size.width = v10;
      v29.size.height = v12;
      CGRectGetWidth(v29);
      [(CCUISensorAttributionCompactControl *)self _visibleIndicatorsWidth];
    }

    [(CCUISensorAttributionCompactControl *)self bounds];
    UIRectCenteredYInRect();
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20 + 0.5;
    if (self->_expanded)
    {
      v22 = [MEMORY[0x277D75128] sharedApplication];
      maximumAllowableWidth = 0.0;
      if ([v22 userInterfaceLayoutDirection] != 1)
      {
        maximumAllowableWidth = self->_maximumAllowableWidth;
      }

      v24 = [(CCUISensorAttributionCompactControl *)self superview];
      [v24 convertPoint:self toView:{maximumAllowableWidth, 0.0}];
      v15 = v25;
    }

    [(UIView *)self->_chevronWrapperView setFrame:v15, v21, v17, v19];
    v26 = [(CCUISensorAttributionCompactControl *)self activeIndicatorsCount]== 0;
    v27 = self->_chevronWrapperView;

    [(UIView *)v27 setHidden:v26];
  }
}

- (void)_layoutBackgroundView
{
  v17 = [(CCUISensorAttributionCompactControl *)self backgroundView];
  v3 = [(CCUISensorAttributionCompactControl *)self delegate];
  v4 = [v3 bundleIdentifierUsingAudioVideoControlsForSensorAttributionCompactControl:self];
  v5 = v4 == 0;

  [v17 setHidden:v5];
  [(CCUISensorAttributionCompactControl *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [MEMORY[0x277D75128] sharedApplication];
  v15 = [v14 userInterfaceLayoutDirection];

  v16 = -8.0;
  if (v15 != 1)
  {
    v16 = -2.0;
  }

  [v17 setFrame:{v7 + v16, v9 + -2.0, v11 + 12.0, v13 + 4.0}];
  [v17 _setContinuousCornerRadius:(v13 + 4.0) * 0.5];
}

- (CCUISensorAttributionCompactControl)initWithFrame:(CGRect)a3
{
  v37.receiver = self;
  v37.super_class = CCUISensorAttributionCompactControl;
  v3 = [(CCUISensorAttributionCompactControl *)&v37 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    [(CCUISensorAttributionCompactControl *)v3 addSubview:v9];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v9;
    v11 = v9;

    v12 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    descriptionLabel = v3->_descriptionLabel;
    v3->_descriptionLabel = v12;

    v14 = v3->_descriptionLabel;
    v15 = [(CCUISensorAttributionCompactControl *)v3 _fontForTitleLabel];
    [(UILabel *)v14 setFont:v15];

    [(UILabel *)v3->_descriptionLabel setAdjustsFontSizeToFitWidth:0];
    v16 = v3->_descriptionLabel;
    v17 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v16 setTextColor:v17];

    [(UILabel *)v3->_descriptionLabel setUserInteractionEnabled:0];
    [(UILabel *)v3->_descriptionLabel setAdjustsFontForContentSizeCategory:0];
    v18 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    detailLabel = v3->_detailLabel;
    v3->_detailLabel = v18;

    v20 = v3->_detailLabel;
    v21 = [(CCUISensorAttributionCompactControl *)v3 _fontForTitleLabel];
    [(UILabel *)v20 setFont:v21];

    [(UILabel *)v3->_detailLabel setAdjustsFontSizeToFitWidth:0];
    v22 = v3->_detailLabel;
    v23 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v22 setTextColor:v23];

    [(UILabel *)v3->_detailLabel setUserInteractionEnabled:0];
    [(UILabel *)v3->_detailLabel setAdjustsFontForContentSizeCategory:0];
    [(UILabel *)v3->_detailLabel setAlpha:0.5];
    v24 = [objc_alloc(MEMORY[0x277D65FB0]) initWithFrame:{v5, v6, v7, v8}];
    labelWrapperView = v3->_labelWrapperView;
    v3->_labelWrapperView = v24;

    [(SBFView *)v3->_labelWrapperView addSubview:v3->_descriptionLabel];
    [(SBFView *)v3->_labelWrapperView addSubview:v3->_detailLabel];
    [(CCUISensorAttributionCompactControl *)v3 addSubview:v3->_labelWrapperView];
    v26 = [(CCUISensorAttributionCompactControl *)v3 _configureIndicatorViewForType:0 inactive:0];
    cameraIndicatorView = v3->_cameraIndicatorView;
    v3->_cameraIndicatorView = v26;

    v28 = [(CCUISensorAttributionCompactControl *)v3 _configureIndicatorViewForType:1 inactive:0];
    micIndicatorView = v3->_micIndicatorView;
    v3->_micIndicatorView = v28;

    v30 = [(CCUISensorAttributionCompactControl *)v3 _configureIndicatorViewForType:1 inactive:1];
    inactiveMicIndicatorView = v3->_inactiveMicIndicatorView;
    v3->_inactiveMicIndicatorView = v30;

    v32 = [(CCUISensorAttributionCompactControl *)v3 _configureIndicatorViewForType:2 inactive:0];
    locationIndicatorView = v3->_locationIndicatorView;
    v3->_locationIndicatorView = v32;

    v34 = [(CCUISensorAttributionCompactControl *)v3 _configureIndicatorViewForType:3 inactive:0];
    gameModeIndicatorView = v3->_gameModeIndicatorView;
    v3->_gameModeIndicatorView = v34;

    [(CCUISensorAttributionCompactControl *)v3 _configureChevronViews];
    [(CCUISensorAttributionCompactControl *)v3 addTarget:v3 action:sel_handleTouchDown forControlEvents:1];
    [(CCUISensorAttributionCompactControl *)v3 addTarget:v3 action:sel_handleTouchUpInside forControlEvents:64];
    [(CCUISensorAttributionCompactControl *)v3 addTarget:v3 action:sel_handleTouchCanceled forControlEvents:384];
  }

  return v3;
}

- (void)_decideToExpandOrCompactAndForwardToDelegate:(id)a3
{
  if (self->_touchUUID == a3)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v5 = v4 - self->_touchDownDate;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = WeakRetained;
    if (v5 <= 1.0)
    {
      [WeakRetained handleCompactControlExpansionEvent];
    }

    else
    {
      [WeakRetained handleCompactControlCompactionEvent];
    }

    touchUUID = self->_touchUUID;
    self->_touchUUID = 0;
  }
}

- (void)handleTouchDown
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  objc_storeStrong(&self->_touchUUID, v3);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_touchDownDate = v4;
  v5 = dispatch_time(0, 200000000);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __54__CCUISensorAttributionCompactControl_handleTouchDown__block_invoke;
  v11 = &unk_278381DC8;
  v12 = self;
  v13 = v3;
  v6 = v3;
  dispatch_after(v5, MEMORY[0x277D85CD0], &v8);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained handleCompactControlTouchBeganEvent];
}

- (void)handleTouchCanceled
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained handleCompactControlCompactionEvent];

  touchUUID = self->_touchUUID;
  self->_touchUUID = 0;
}

- (id)_configureIndicatorViewForType:(unint64_t)a3 inactive:(BOOL)a4
{
  v7 = CCUIImageForSensorType(a3);
  v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v7];
  v9 = [MEMORY[0x277D75348] systemWhiteColor];
  [v8 setTintColor:v9];

  CGAffineTransformMakeScale(&v23, 0.5, 0.5);
  [v8 setTransform:&v23];
  v10 = objc_alloc(MEMORY[0x277D755E8]);
  v11 = CCUIPlainCircleImage();
  v12 = [v10 initWithImage:v11];

  [v12 setTag:1];
  if (a4)
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    CCUIIndicatorColorForSensorType(a3);
  }
  v13 = ;
  [v12 setTintColor:v13];
  v14 = objc_alloc(MEMORY[0x277D75D18]);
  [v12 bounds];
  v15 = [v14 initWithFrame:?];
  [v15 setUserInteractionEnabled:0];
  [v15 addSubview:v12];
  [v15 addSubview:v8];
  [v15 sendSubviewToBack:v12];
  [v8 frame];
  [v12 bounds];
  UIRectCenteredRect();
  [v8 setFrame:?];
  [v15 bounds];
  self->_singleIndicatorSize.width = v16;
  self->_singleIndicatorSize.height = v17;
  v18 = CCUIIdentifierForSensorType(a3);
  [v15 setAccessibilityIdentifier:v18];

  v19 = [v15 layer];
  [v19 setShouldRasterize:1];

  v20 = [MEMORY[0x277D759A0] mainScreen];
  v21 = [v15 layer];
  [v20 scale];
  [v21 setRasterizationScale:?];

  [(CCUISensorAttributionCompactControl *)self addSubview:v15];

  return v15;
}

- (void)_configureIndicatorView:(id)a3 forGameModeState:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [a3 subviews];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 tag] == 1)
        {
          gameModeState = self->_gameModeState;
          v12 = v10;
          v13 = CCUIIndicatorColorForGameModeState(gameModeState);
          [v12 setTintColor:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }
}

- (id)_rightChevronImage
{
  v2 = [MEMORY[0x277CF0D60] defaultFontProvider];
  v3 = [v2 preferredFontForTextStyle:*MEMORY[0x277D769D0] hiFontStyle:4];

  v4 = [MEMORY[0x277D755D0] configurationWithFont:v3];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.forward" withConfiguration:v4];
  v6 = [MEMORY[0x277D75348] systemWhiteColor];
  v7 = [v5 imageWithTintColor:v6 renderingMode:1];

  return v7;
}

- (void)_configureChevronViews
{
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  v4 = [(CCUISensorAttributionCompactControl *)self _rightChevronImage];
  v5 = [v3 initWithImage:v4];
  chevronImageView = self->_chevronImageView;
  self->_chevronImageView = v5;

  [(UIImageView *)self->_chevronImageView sizeToFit];
  v7 = objc_alloc(MEMORY[0x277D75D18]);
  [(UIImageView *)self->_chevronImageView bounds];
  v8 = [v7 initWithFrame:?];
  chevronWrapperView = self->_chevronWrapperView;
  self->_chevronWrapperView = v8;

  [(UIImageView *)self->_chevronImageView setAutoresizingMask:18];
  [(UIImageView *)self->_chevronImageView setAlpha:0.25];
  [(UIView *)self->_chevronWrapperView addSubview:self->_chevronImageView];
  [(CCUISensorAttributionCompactControl *)self _configureChevronWrapperAppearance];
  v10 = self->_chevronWrapperView;

  [(CCUISensorAttributionCompactControl *)self addSubview:v10];
}

- (void)_configureChevronWrapperAppearance
{
  if (self->_expanded)
  {
    v3 = [MEMORY[0x277D75128] sharedApplication];
    v4 = dbl_21EAB5650[[v3 userInterfaceLayoutDirection] == 1];

    p_chevronWrapperView = &self->_chevronWrapperView;
    chevronWrapperView = self->_chevronWrapperView;
    CGAffineTransformMakeRotation(&v10, v4);
    [(UIView *)chevronWrapperView setTransform:&v10];
    v7 = 0.0;
  }

  else
  {
    p_chevronWrapperView = &self->_chevronWrapperView;
    v8 = self->_chevronWrapperView;
    v9 = *(MEMORY[0x277CBF2C0] + 16);
    *&v10.a = *MEMORY[0x277CBF2C0];
    *&v10.c = v9;
    *&v10.tx = *(MEMORY[0x277CBF2C0] + 32);
    [(UIView *)v8 setTransform:&v10];
    v7 = 1.0;
  }

  [(UIView *)*p_chevronWrapperView setAlpha:v7];
}

- (id)clone
{
  v3 = [CCUISensorAttributionCompactControl alloc];
  [(CCUISensorAttributionCompactControl *)self bounds];
  v4 = [(CCUISensorAttributionCompactControl *)v3 initWithFrame:?];
  v5 = [(CCUISensorAttributionCompactControl *)self delegate];
  [(CCUISensorAttributionCompactControl *)v4 setDelegate:v5];

  [(CCUISensorAttributionCompactControl *)self maximumAllowableWidth];
  [(CCUISensorAttributionCompactControl *)v4 setMaximumAllowableWidth:?];
  [(CCUISensorAttributionCompactControl *)v4 setAlwaysHidesSensorIcons:1];
  [(CCUISensorAttributionCompactControl *)v4 gameModeStateDidChange:self->_gameModeState];
  [(CCUISensorAttributionCompactControl *)v4 sensorAttributionsChanged:self->_displayedAttributions];
  [(CCUISensorAttributionCompactControl *)v4 inactiveMicrophoneAttributionChanged:self->_displayedInactiveMicrophoneAttribution];
  [(CCUISensorAttributionCompactControl *)v4 _updateContentIfDisplayedAttributionsAreStaleAndLayout];
  [(CCUISensorAttributionCompactControl *)self frame];
  [(CCUISensorAttributionCompactControl *)v4 setFrame:?];

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(CCUISensorAttributionCompactControl *)self _visibleIndicatorsWidth:a3.width];
  v6 = v5;
  v7 = width - v5;
  [(UIImageView *)self->_chevronImageView frame];
  v9 = v7 - v8 + -4.0;
  [(UILabel *)self->_descriptionLabel sizeThatFits:v9, self->_singleIndicatorSize.height];
  v11 = v10;
  height = self->_singleIndicatorSize.height;
  [(UILabel *)self->_detailLabel sizeThatFits:v9, height];
  v14 = 0.0;
  if (v13 != 0.0)
  {
    v14 = 7.0;
  }

  v15 = v13 + v6 + v11 + v14;
  [(UIImageView *)self->_chevronImageView frame];
  v17 = v15 + v16 + 7.0 + 1.0;
  v18 = height;
  result.height = v18;
  result.width = v17;
  return result;
}

- (double)_layoutSingleIndicatorView:(id)a3 trailingX:(double)a4 visible:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  [(CCUISensorAttributionCompactControl *)self bounds];
  if (v8)
  {
    if (!v5)
    {
      [v8 setHidden:1];
      v17 = *MEMORY[0x277D76580];
LABEL_11:
      [v8 setAccessibilityTraits:v17];
      goto LABEL_12;
    }

    [v8 frame];
    rect = v9;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [MEMORY[0x277D75128] sharedApplication];
    if ([v16 userInterfaceLayoutDirection] == 1)
    {
      v35.origin.x = rect;
      v35.origin.y = v11;
      v35.size.width = v13;
      v35.size.height = v15;
      CGRectGetWidth(v35);
    }

    UIRectCenteredYInRect();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = [MEMORY[0x277D75128] sharedApplication];
    v27 = [v26 userInterfaceLayoutDirection];
    v28 = v19;
    v29 = v21;
    v30 = v23;
    v31 = v25;
    if (v27 == 1)
    {
      MinX = CGRectGetMinX(*&v28);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v28);
    }

    a4 = MinX;

    [v8 setFrame:{v19, v21, v23, v25}];
    if (!self->_alwaysHidesSensorIcons)
    {
      [v8 setHidden:0];
      v17 = 0;
      goto LABEL_11;
    }
  }

LABEL_12:

  return a4;
}

- (void)_updateBackgroundViewColorWithUniqueEntities:(id)a3 audioVideoControlsAreEnabled:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [(CCUISensorAttributionCompactControl *)self backgroundView];
  v7 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.15];
  if (v4)
  {
    v8 = [v11 firstObject];
    v9 = v8;
    if (v8)
    {
      v10 = CCUIIndicatorColorForSensorType([v8 sensorType]);

      v7 = v10;
    }
  }

  [v6 setBackgroundColor:v7];
}

- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  self->_expanded = a3;
  [CCUISensorAttributionCompactControl _setLabelWrapperViewAlphaForExpanded:"_setLabelWrapperViewAlphaForExpanded:animated:" animated:?];
  [(CCUISensorAttributionCompactControl *)self _setChevronAlphaForExpanded:v5 animated:v4];
  if (v5)
  {
    [(UIView *)self->_cameraIndicatorView setHidden:1];
    [(UIView *)self->_micIndicatorView setHidden:1];
    [(UIView *)self->_inactiveMicIndicatorView setHidden:1];
    [(UIView *)self->_locationIndicatorView setHidden:1];
  }

  else
  {
    [(UIView *)self->_inactiveMicIndicatorView setHidden:0];
    if (v4)
    {
      [(UIView *)self->_inactiveMicIndicatorView setAlpha:0.0];
    }
  }

  [(UIView *)self->_gameModeIndicatorView setHidden:v5];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__CCUISensorAttributionCompactControl_setExpanded_animated___block_invoke;
  aBlock[3] = &unk_278381EB8;
  aBlock[4] = self;
  v13 = v5;
  v7 = _Block_copy(aBlock);
  v8 = v7;
  if (v4)
  {
    v9 = MEMORY[0x277D75D18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__CCUISensorAttributionCompactControl_setExpanded_animated___block_invoke_2;
    v10[3] = &unk_2783821E0;
    v11 = v7;
    [v9 animateWithDuration:6 delay:v10 usingSpringWithDamping:0 initialSpringVelocity:0.66 options:0.0 animations:50.0 completion:0.0];
  }

  else
  {
    v7[2](v7);
  }
}

uint64_t __60__CCUISensorAttributionCompactControl_setExpanded_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _layoutLabelViews];
  [*(a1 + 32) _layoutChevronViews];
  v2 = *(*(a1 + 32) + 632);
  v3 = 1.0;
  if (*(a1 + 40))
  {
    v3 = 0.0;
  }

  return [v2 setAlpha:v3];
}

- (void)_setChevronAlphaForExpanded:(BOOL)a3 animated:(BOOL)a4
{
  if (a4)
  {
    v5 = 0.66;
    if (a3)
    {
      v5 = 0.33;
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __76__CCUISensorAttributionCompactControl__setChevronAlphaForExpanded_animated___block_invoke;
    v6[3] = &unk_278381DF0;
    v6[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:6 delay:v6 usingSpringWithDamping:0 initialSpringVelocity:v5 options:0.0 animations:50.0 completion:0.0];
  }

  else
  {

    [(CCUISensorAttributionCompactControl *)self _configureChevronWrapperAppearance];
  }
}

- (void)_setLabelWrapperViewAlphaForExpanded:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(CCUISensorAttributionCompactControl *)self delegate];
  v8 = [v7 bundleIdentifierUsingAudioVideoControlsForSensorAttributionCompactControl:self];
  v9 = v8 != 0;

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__CCUISensorAttributionCompactControl__setLabelWrapperViewAlphaForExpanded_animated___block_invoke;
  v13[3] = &unk_2783825B8;
  v14 = v5;
  v13[4] = self;
  v15 = v9;
  v10 = _Block_copy(v13);
  v11 = v10;
  if (v4)
  {
    v12 = 0.66;
    if (v5)
    {
      v12 = 0.33;
    }

    [MEMORY[0x277D75D18] animateWithDuration:6 delay:v10 usingSpringWithDamping:0 initialSpringVelocity:v12 options:0.0 animations:50.0 completion:0.0];
  }

  else
  {
    (*(v10 + 2))(v10);
  }
}

uint64_t __85__CCUISensorAttributionCompactControl__setLabelWrapperViewAlphaForExpanded_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 544);
  if (*(a1 + 41) == v2)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  if (v2)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  [v3 setAlpha:v4];
  v6 = *(*(a1 + 32) + 584);

  return [v6 setAlpha:v5];
}

- (CGSize)intrinsicContentSize
{
  [(CCUISensorAttributionCompactControl *)self _updateContentIfDisplayedAttributionsAreStaleAndLayout];
  [(CCUISensorAttributionCompactControl *)self _visibleIndicatorsWidth];
  v4 = v3;
  [(SBFView *)self->_labelWrapperView frame];
  Width = CGRectGetWidth(v12);
  v6 = 0.0;
  v7 = 0.0;
  if (![(UIView *)self->_chevronWrapperView isHidden])
  {
    [(UIView *)self->_chevronWrapperView frame];
    v7 = CGRectGetWidth(v13);
  }

  if (Width != 0.0)
  {
    v8 = [(UILabel *)self->_descriptionLabel text];
    if ([v8 length])
    {
      v6 = 12.0;
    }

    else
    {
      v6 = 0.0;
    }
  }

  v9 = v4 + Width + v7 + v6;
  height = self->_singleIndicatorSize.height;
  result.height = height;
  result.width = v9;
  return result;
}

@end