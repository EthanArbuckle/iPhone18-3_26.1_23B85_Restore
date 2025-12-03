@interface _HUIDarkStepSliderView
- (_HUIDarkStepSliderView)initWithConfig:(id)config;
- (void)_setContraintsFromConfig:(id)config;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)updateConstraintsWithConfig:(id)config;
@end

@implementation _HUIDarkStepSliderView

- (_HUIDarkStepSliderView)initWithConfig:(id)config
{
  configCopy = config;
  v13.receiver = self;
  v13.super_class = _HUIDarkStepSliderView;
  v6 = [(_HUIDarkStepSliderView *)&v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
    v8 = objc_alloc_init(HACCCapsuleDarkBackground);
    darkBackgroundView = v7->_darkBackgroundView;
    v7->_darkBackgroundView = v8;

    [(HACCCapsuleDarkBackground *)v7->_darkBackgroundView setAutoresizingMask:18];
    [(_HUIDarkStepSliderView *)v7 addSubview:v7->_darkBackgroundView];
    [(HACCCapsuleDarkBackground *)v7->_darkBackgroundView setupBackgroundVisualStyle];
    v10 = objc_alloc_init(HUIStepSlider);
    slider = v7->_slider;
    v7->_slider = v10;

    [(HUIStepSlider *)v7->_slider setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_HUIDarkStepSliderView *)v7 addSubview:v7->_slider];
    [(_HUIDarkStepSliderView *)v7 _setContraintsFromConfig:configCopy];
  }

  return v7;
}

- (void)_setContraintsFromConfig:(id)config
{
  v56[4] = *MEMORY[0x277D85DE8];
  configCopy = config;
  style = [configCopy style];
  if (style <= 2)
  {
    if (!style)
    {
      v49 = MEMORY[0x277CCAAD0];
      slider = [(_HUIDarkStepSliderView *)self slider];
      leadingAnchor = [slider leadingAnchor];
      leadingAnchor2 = [(_HUIDarkStepSliderView *)self leadingAnchor];
      CCUILayoutGutter();
      v52 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
      v56[0] = v52;
      slider2 = [(_HUIDarkStepSliderView *)self slider];
      trailingAnchor = [slider2 trailingAnchor];
      trailingAnchor2 = [(_HUIDarkStepSliderView *)self trailingAnchor];
      CCUILayoutGutter();
      v47 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v17];
      v56[1] = v47;
      slider3 = [(_HUIDarkStepSliderView *)self slider];
      topAnchor = [slider3 topAnchor];
      topAnchor2 = [(_HUIDarkStepSliderView *)self topAnchor];
      v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v56[2] = v21;
      slider4 = [(_HUIDarkStepSliderView *)self slider];
      bottomAnchor = [slider4 bottomAnchor];
      bottomAnchor2 = [(_HUIDarkStepSliderView *)self bottomAnchor];
      v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v56[3] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:4];
      [v49 activateConstraints:v26];

      goto LABEL_26;
    }

    if (style == 1)
    {
      minImage = [configCopy minImage];

      if (minImage)
      {
        v28 = objc_alloc(MEMORY[0x277D755E8]);
        minImage2 = [configCopy minImage];
        v30 = [v28 initWithImage:minImage2];

        [v30 setContentMode:7];
        [(_HUIDarkStepSliderView *)self setLeadingView:v30];
      }

      maxImage = [configCopy maxImage];

      if (!maxImage)
      {
        goto LABEL_23;
      }

      v32 = objc_alloc(MEMORY[0x277D755E8]);
      maxImage2 = [configCopy maxImage];
      valueLabel3 = [v32 initWithImage:maxImage2];

      [valueLabel3 setContentMode:8];
      goto LABEL_22;
    }

    if (style != 2)
    {
      goto LABEL_23;
    }

    minImage3 = [configCopy minImage];

    if (minImage3)
    {
      minImageAction = [configCopy minImageAction];

      if (minImageAction)
      {
        v8 = [MEMORY[0x277D75220] buttonWithType:0];
        minImageAction2 = [configCopy minImageAction];
        [v8 addAction:minImageAction2 forControlEvents:64];

        minImage4 = [configCopy minImage];
        [v8 setImage:minImage4 forState:0];

        [v8 setContentHorizontalAlignment:1];
      }

      else
      {
        v35 = objc_alloc(MEMORY[0x277D755E8]);
        minImage5 = [configCopy minImage];
        v8 = [v35 initWithImage:minImage5];

        [v8 setContentMode:7];
      }

      [(_HUIDarkStepSliderView *)self setLeadingView:v8];
    }

    valueLabel = [configCopy valueLabel];

    if (!valueLabel)
    {
      goto LABEL_23;
    }

    v38 = [(_HUIDarkStepSliderView *)self effectiveUserInterfaceLayoutDirection]!= 1;
    valueLabel2 = [configCopy valueLabel];
    [valueLabel2 setTextAlignment:2 * v38];
LABEL_21:

    valueLabel3 = [configCopy valueLabel];
LABEL_22:
    [(_HUIDarkStepSliderView *)self setTrailingView:valueLabel3];

    goto LABEL_23;
  }

  if ((style - 3) < 2)
  {
    minTextLabel = [configCopy minTextLabel];
    if (minTextLabel)
    {
      v12 = minTextLabel;
      valueLabel4 = [configCopy valueLabel];

      if (valueLabel4)
      {
        minTextLabel2 = [configCopy minTextLabel];
        [minTextLabel2 setTextAlignment:0];

        valueLabel5 = [configCopy valueLabel];
        [valueLabel5 setTextAlignment:2];

        valueLabel2 = [configCopy minTextLabel];
        [(_HUIDarkStepSliderView *)self setLeadingView:valueLabel2];
        goto LABEL_21;
      }
    }
  }

LABEL_23:
  leadingView = [(_HUIDarkStepSliderView *)self leadingView];
  if (leadingView)
  {
    v40 = leadingView;
    trailingView = [(_HUIDarkStepSliderView *)self trailingView];

    if (trailingView)
    {
      leadingView2 = [(_HUIDarkStepSliderView *)self leadingView];
      [leadingView2 setTranslatesAutoresizingMaskIntoConstraints:0];

      trailingView2 = [(_HUIDarkStepSliderView *)self trailingView];
      [trailingView2 setTranslatesAutoresizingMaskIntoConstraints:0];

      leadingView3 = [(_HUIDarkStepSliderView *)self leadingView];
      [(_HUIDarkStepSliderView *)self addSubview:leadingView3];

      trailingView3 = [(_HUIDarkStepSliderView *)self trailingView];
      [(_HUIDarkStepSliderView *)self addSubview:trailingView3];

      config = [(_HUIDarkStepSliderView *)self config];
      [(_HUIDarkStepSliderView *)self updateConstraintsWithConfig:config];
    }
  }

LABEL_26:
}

- (void)updateConstraintsWithConfig:(id)config
{
  v156[14] = *MEMORY[0x277D85DE8];
  configCopy = config;
  [(_HUIDarkStepSliderView *)self setConfig:configCopy];
  leadingView = [(_HUIDarkStepSliderView *)self leadingView];
  if (leadingView)
  {
    v6 = leadingView;
    trailingView = [(_HUIDarkStepSliderView *)self trailingView];

    if (trailingView)
    {
      config = [(_HUIDarkStepSliderView *)self config];
      if ([config style] == 2)
      {
        v9 = 1;
      }

      else
      {
        config2 = [(_HUIDarkStepSliderView *)self config];
        if ([config2 style] == 3)
        {
          v9 = 1;
        }

        else
        {
          config3 = [(_HUIDarkStepSliderView *)self config];
          v9 = [config3 style] == 4;
        }
      }

      config4 = [(_HUIDarkStepSliderView *)self config];
      isLargeText = [config4 isLargeText];

      if (isLargeText && v9)
      {
        defaultLayouts = [(_HUIDarkStepSliderView *)self defaultLayouts];

        if (defaultLayouts)
        {
          v15 = MEMORY[0x277CCAAD0];
          defaultLayouts2 = [(_HUIDarkStepSliderView *)self defaultLayouts];
          [v15 deactivateConstraints:defaultLayouts2];
        }

        largeTextLayouts = [(_HUIDarkStepSliderView *)self largeTextLayouts];

        if (!largeTextLayouts)
        {
          leadingView2 = [(_HUIDarkStepSliderView *)self leadingView];
          leadingAnchor = [leadingView2 leadingAnchor];
          leadingAnchor2 = [(_HUIDarkStepSliderView *)self leadingAnchor];
          CCUILayoutGutter();
          v147 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
          v156[0] = v147;
          leadingView3 = [(_HUIDarkStepSliderView *)self leadingView];
          topAnchor = [leadingView3 topAnchor];
          topAnchor2 = [(_HUIDarkStepSliderView *)self topAnchor];
          v139 = [topAnchor constraintEqualToAnchor:topAnchor2];
          v156[1] = v139;
          leadingView4 = [(_HUIDarkStepSliderView *)self leadingView];
          bottomAnchor = [leadingView4 bottomAnchor];
          slider = [(_HUIDarkStepSliderView *)self slider];
          topAnchor3 = [slider topAnchor];
          v129 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
          v156[2] = v129;
          leadingView5 = [(_HUIDarkStepSliderView *)self leadingView];
          widthAnchor = [leadingView5 widthAnchor];
          widthAnchor2 = [(_HUIDarkStepSliderView *)self widthAnchor];
          CCUILayoutGutter();
          v121 = [widthAnchor constraintEqualToAnchor:widthAnchor2 constant:v18 * -2.0];
          v156[3] = v121;
          leadingView6 = [(_HUIDarkStepSliderView *)self leadingView];
          heightAnchor = [leadingView6 heightAnchor];
          v115 = [heightAnchor constraintGreaterThanOrEqualToConstant:52.0];
          v156[4] = v115;
          slider2 = [(_HUIDarkStepSliderView *)self slider];
          leadingAnchor3 = [slider2 leadingAnchor];
          leadingView7 = [(_HUIDarkStepSliderView *)self leadingView];
          leadingAnchor4 = [leadingView7 leadingAnchor];
          v105 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
          v156[5] = v105;
          slider3 = [(_HUIDarkStepSliderView *)self slider];
          trailingAnchor = [slider3 trailingAnchor];
          trailingAnchor2 = [(_HUIDarkStepSliderView *)self trailingAnchor];
          CCUILayoutGutter();
          v97 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v19];
          v156[6] = v97;
          slider4 = [(_HUIDarkStepSliderView *)self slider];
          topAnchor4 = [slider4 topAnchor];
          leadingView8 = [(_HUIDarkStepSliderView *)self leadingView];
          bottomAnchor2 = [leadingView8 bottomAnchor];
          v87 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2];
          v156[7] = v87;
          slider5 = [(_HUIDarkStepSliderView *)self slider];
          bottomAnchor3 = [slider5 bottomAnchor];
          bottomAnchor4 = [(_HUIDarkStepSliderView *)self bottomAnchor];
          v79 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-10.0];
          v156[8] = v79;
          trailingView2 = [(_HUIDarkStepSliderView *)self trailingView];
          leadingAnchor5 = [trailingView2 leadingAnchor];
          leadingView9 = [(_HUIDarkStepSliderView *)self leadingView];
          leadingAnchor6 = [leadingView9 leadingAnchor];
          v69 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
          v156[9] = v69;
          trailingView3 = [(_HUIDarkStepSliderView *)self trailingView];
          trailingAnchor3 = [trailingView3 trailingAnchor];
          slider6 = [(_HUIDarkStepSliderView *)self slider];
          trailingAnchor4 = [slider6 trailingAnchor];
          v59 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
          v156[10] = v59;
          trailingView4 = [(_HUIDarkStepSliderView *)self trailingView];
          topAnchor5 = [trailingView4 topAnchor];
          topAnchor6 = [(_HUIDarkStepSliderView *)self topAnchor];
          v51 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
          v156[11] = v51;
          trailingView5 = [(_HUIDarkStepSliderView *)self trailingView];
          bottomAnchor5 = [trailingView5 bottomAnchor];
          slider7 = [(_HUIDarkStepSliderView *)self slider];
          topAnchor7 = [slider7 topAnchor];
          v21 = [bottomAnchor5 constraintEqualToAnchor:topAnchor7];
          v156[12] = v21;
          trailingView6 = [(_HUIDarkStepSliderView *)self trailingView];
          widthAnchor3 = [trailingView6 widthAnchor];
          leadingView10 = [(_HUIDarkStepSliderView *)self leadingView];
          widthAnchor4 = [leadingView10 widthAnchor];
          v26 = [widthAnchor3 constraintLessThanOrEqualToAnchor:widthAnchor4];
          v156[13] = v26;
          v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v156 count:14];
          [(_HUIDarkStepSliderView *)self setLargeTextLayouts:v27];
        }

        v28 = MEMORY[0x277CCAAD0];
        largeTextLayouts2 = [(_HUIDarkStepSliderView *)self largeTextLayouts];
      }

      else
      {
        largeTextLayouts3 = [(_HUIDarkStepSliderView *)self largeTextLayouts];

        if (largeTextLayouts3)
        {
          v31 = MEMORY[0x277CCAAD0];
          largeTextLayouts4 = [(_HUIDarkStepSliderView *)self largeTextLayouts];
          [v31 deactivateConstraints:largeTextLayouts4];
        }

        defaultLayouts3 = [(_HUIDarkStepSliderView *)self defaultLayouts];

        if (!defaultLayouts3)
        {
          leadingView11 = [(_HUIDarkStepSliderView *)self leadingView];
          leadingAnchor7 = [leadingView11 leadingAnchor];
          leadingAnchor8 = [(_HUIDarkStepSliderView *)self leadingAnchor];
          CCUILayoutGutter();
          v148 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:?];
          v155[0] = v148;
          leadingView12 = [(_HUIDarkStepSliderView *)self leadingView];
          topAnchor8 = [leadingView12 topAnchor];
          topAnchor9 = [(_HUIDarkStepSliderView *)self topAnchor];
          v140 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
          v155[1] = v140;
          leadingView13 = [(_HUIDarkStepSliderView *)self leadingView];
          bottomAnchor6 = [leadingView13 bottomAnchor];
          bottomAnchor7 = [(_HUIDarkStepSliderView *)self bottomAnchor];
          v132 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
          v155[2] = v132;
          leadingView14 = [(_HUIDarkStepSliderView *)self leadingView];
          widthAnchor5 = [leadingView14 widthAnchor];
          v128 = widthAnchor5;
          style = [configCopy style];
          v36 = 50.0;
          if (style != 4)
          {
            v36 = 30.0;
          }

          v126 = [widthAnchor5 constraintEqualToConstant:v36];
          v155[3] = v126;
          leadingView15 = [(_HUIDarkStepSliderView *)self leadingView];
          heightAnchor2 = [leadingView15 heightAnchor];
          v120 = [heightAnchor2 constraintEqualToConstant:52.0];
          v155[4] = v120;
          slider8 = [(_HUIDarkStepSliderView *)self slider];
          leadingAnchor9 = [slider8 leadingAnchor];
          leadingView16 = [(_HUIDarkStepSliderView *)self leadingView];
          trailingAnchor5 = [leadingView16 trailingAnchor];
          v110 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor5];
          v155[5] = v110;
          slider9 = [(_HUIDarkStepSliderView *)self slider];
          trailingAnchor6 = [slider9 trailingAnchor];
          trailingView7 = [(_HUIDarkStepSliderView *)self trailingView];
          leadingAnchor10 = [trailingView7 leadingAnchor];
          v100 = [trailingAnchor6 constraintEqualToAnchor:leadingAnchor10];
          v155[6] = v100;
          slider10 = [(_HUIDarkStepSliderView *)self slider];
          topAnchor10 = [slider10 topAnchor];
          leadingView17 = [(_HUIDarkStepSliderView *)self leadingView];
          topAnchor11 = [leadingView17 topAnchor];
          v90 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
          v155[7] = v90;
          slider11 = [(_HUIDarkStepSliderView *)self slider];
          bottomAnchor8 = [slider11 bottomAnchor];
          leadingView18 = [(_HUIDarkStepSliderView *)self leadingView];
          bottomAnchor9 = [leadingView18 bottomAnchor];
          v80 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
          v155[8] = v80;
          trailingView8 = [(_HUIDarkStepSliderView *)self trailingView];
          leadingAnchor11 = [trailingView8 leadingAnchor];
          slider12 = [(_HUIDarkStepSliderView *)self slider];
          trailingAnchor7 = [slider12 trailingAnchor];
          v70 = [leadingAnchor11 constraintEqualToAnchor:trailingAnchor7];
          v155[9] = v70;
          trailingView9 = [(_HUIDarkStepSliderView *)self trailingView];
          trailingAnchor8 = [trailingView9 trailingAnchor];
          trailingAnchor9 = [(_HUIDarkStepSliderView *)self trailingAnchor];
          CCUILayoutGutter();
          v62 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:-v37];
          v155[10] = v62;
          trailingView10 = [(_HUIDarkStepSliderView *)self trailingView];
          topAnchor12 = [trailingView10 topAnchor];
          leadingView19 = [(_HUIDarkStepSliderView *)self leadingView];
          topAnchor13 = [leadingView19 topAnchor];
          v52 = [topAnchor12 constraintEqualToAnchor:topAnchor13];
          v155[11] = v52;
          trailingView11 = [(_HUIDarkStepSliderView *)self trailingView];
          bottomAnchor10 = [trailingView11 bottomAnchor];
          leadingView20 = [(_HUIDarkStepSliderView *)self leadingView];
          bottomAnchor11 = [leadingView20 bottomAnchor];
          v41 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
          v155[12] = v41;
          trailingView12 = [(_HUIDarkStepSliderView *)self trailingView];
          widthAnchor6 = [trailingView12 widthAnchor];
          v44 = [widthAnchor6 constraintGreaterThanOrEqualToConstant:30.0];
          v155[13] = v44;
          v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v155 count:14];
          [(_HUIDarkStepSliderView *)self setDefaultLayouts:v45];
        }

        v28 = MEMORY[0x277CCAAD0];
        largeTextLayouts2 = [(_HUIDarkStepSliderView *)self defaultLayouts];
      }

      v46 = largeTextLayouts2;
      [v28 activateConstraints:largeTextLayouts2];
    }
  }
}

- (void)accessibilityDecrement
{
  slider = [(_HUIDarkStepSliderView *)self slider];
  [slider accessibilityDecrement];
}

- (void)accessibilityIncrement
{
  slider = [(_HUIDarkStepSliderView *)self slider];
  [slider accessibilityIncrement];
}

@end