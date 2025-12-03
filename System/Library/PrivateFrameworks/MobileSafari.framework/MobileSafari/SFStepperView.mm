@interface SFStepperView
+ (id)_buttonsFont;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (SFStepperView)initWithCoder:(id)coder;
- (SFStepperView)initWithFrame:(CGRect)frame includingResetButton:(BOOL)button;
- (void)layoutSubviews;
- (void)setLongestTitle:(id)title forButton:(id)button;
@end

@implementation SFStepperView

- (SFStepperView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFStepperView;
  return [(SFStepperView *)&v4 initWithCoder:coder];
}

- (SFStepperView)initWithFrame:(CGRect)frame includingResetButton:(BOOL)button
{
  buttonCopy = button;
  v141[3] = *MEMORY[0x1E69E9840];
  v136.receiver = self;
  v136.super_class = SFStepperView;
  v5 = [(SFStepperView *)&v136 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    controlsContainer = v5->_controlsContainer;
    v5->_controlsContainer = v6;

    [(UIView *)v5->_controlsContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UIView *)v5->_controlsContainer setBackgroundColor:systemBackgroundColor];

    [(UIView *)v5->_controlsContainer setLayoutMargins:12.0, 20.0, 12.0, 20.0];
    [(SFStepperView *)v5 addSubview:v5->_controlsContainer];
    v9 = [_SFDimmingButton buttonWithType:1];
    p_decrementButton = &v5->_decrementButton;
    decrementButton = v5->_decrementButton;
    v5->_decrementButton = v9;

    [(UIView *)v5->_controlsContainer addSubview:v5->_decrementButton];
    if (buttonCopy)
    {
      v12 = [_SFDimmingButton buttonWithType:1];
      resetButton = v5->_resetButton;
      v5->_resetButton = v12;

      LODWORD(v14) = 1131413504;
      [(_SFDimmingButton *)v5->_resetButton setContentHuggingPriority:0 forAxis:v14];
      [(UIView *)v5->_controlsContainer addSubview:v5->_resetButton];
    }

    v15 = [_SFDimmingButton buttonWithType:1];
    incrementButton = v5->_incrementButton;
    v5->_incrementButton = v15;

    [(UIView *)v5->_controlsContainer addSubview:v5->_incrementButton];
    v17 = [_SFDimmingButton buttonWithType:1];
    doneButton = v5->_doneButton;
    v5->_doneButton = v17;

    [(_SFDimmingButton *)v5->_doneButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_SFDimmingButton *)v5->_doneButton setTapTargetSideMargin:&unk_1EFF74300];
    LODWORD(v19) = 1132593152;
    [(_SFDimmingButton *)v5->_doneButton setContentHuggingPriority:0 forAxis:v19];
    [(UIView *)v5->_controlsContainer addSubview:v5->_doneButton];
    v20 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [v20 setBackgroundColor:separatorColor];

    v129 = v20;
    [(UIView *)v5->_controlsContainer addSubview:v20];
    _buttonsFont = [objc_opt_class() _buttonsFont];
    v130 = buttonCopy;
    v125 = &v5->_decrementButton;
    if (buttonCopy)
    {
      v141[0] = v5->_incrementButton;
      v141[1] = v5->_resetButton;
      v141[2] = *p_decrementButton;
      v23 = MEMORY[0x1E695DEC8];
      v24 = v141;
      v25 = 3;
    }

    else
    {
      v140[0] = v5->_incrementButton;
      v140[1] = *p_decrementButton;
      v23 = MEMORY[0x1E695DEC8];
      v24 = v140;
      v25 = 2;
    }

    [v23 arrayWithObjects:v24 count:v25];
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v26 = v133 = 0u;
    v27 = [v26 countByEnumeratingWithState:&v132 objects:v139 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v133;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v133 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v132 + 1) + 8 * i);
          [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v31 setTapTargetSideMargin:&unk_1EFF74300];
          labelColor = [MEMORY[0x1E69DC888] labelColor];
          [v31 setTintColor:labelColor];

          titleLabel = [v31 titleLabel];
          [titleLabel setFont:_buttonsFont];
        }

        v28 = [v26 countByEnumeratingWithState:&v132 objects:v139 count:16];
      }

      while (v28);
    }

    layoutMarginsGuide = [(UIView *)v5->_controlsContainer layoutMarginsGuide];
    safeAreaLayoutGuide = [(SFStepperView *)v5 safeAreaLayoutGuide];
    v95 = MEMORY[0x1E696ACD8];
    leadingAnchor = [*v125 leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v122 = leadingAnchor;
    v118 = [leadingAnchor constraintEqualToAnchor:?];
    v138[0] = v118;
    leadingAnchor3 = [(_SFDimmingButton *)v5->_incrementButton leadingAnchor];
    v37 = 4.0;
    p_resetButton = &v5->_decrementButton;
    if (v130)
    {
      p_resetButton = &v5->_resetButton;
      v37 = 2.0;
    }

    trailingAnchor = [*p_resetButton trailingAnchor];
    v114 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:v37];
    v115 = leadingAnchor3;
    v138[1] = v114;
    leadingAnchor4 = [v129 leadingAnchor];
    trailingAnchor2 = [(_SFDimmingButton *)v5->_incrementButton trailingAnchor];
    v111 = [leadingAnchor4 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:2.0];
    v138[2] = v111;
    leadingAnchor5 = [(_SFDimmingButton *)v5->_doneButton leadingAnchor];
    trailingAnchor3 = [v129 trailingAnchor];
    v108 = [leadingAnchor5 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor3 multiplier:2.0];
    v138[3] = v108;
    trailingAnchor4 = [(_SFDimmingButton *)v5->_doneButton trailingAnchor];
    trailingAnchor5 = [layoutMarginsGuide trailingAnchor];
    v105 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v138[4] = v105;
    topAnchor = [*v125 topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v102 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    v138[5] = v102;
    centerYAnchor = [*v125 centerYAnchor];
    centerYAnchor2 = [(_SFDimmingButton *)v5->_doneButton centerYAnchor];
    v99 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v138[6] = v99;
    bottomAnchor = [*v125 bottomAnchor];
    bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
    v96 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v138[7] = v96;
    topAnchor3 = [(_SFDimmingButton *)v5->_incrementButton topAnchor];
    topAnchor4 = [layoutMarginsGuide topAnchor];
    v92 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
    v138[8] = v92;
    centerYAnchor3 = [(_SFDimmingButton *)v5->_incrementButton centerYAnchor];
    centerYAnchor4 = [(_SFDimmingButton *)v5->_doneButton centerYAnchor];
    v89 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v138[9] = v89;
    bottomAnchor3 = [(_SFDimmingButton *)v5->_incrementButton bottomAnchor];
    bottomAnchor4 = [layoutMarginsGuide bottomAnchor];
    v86 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
    v138[10] = v86;
    topAnchor5 = [v129 topAnchor];
    topAnchor6 = [(UIView *)v5->_controlsContainer topAnchor];
    v83 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v138[11] = v83;
    bottomAnchor5 = [v129 bottomAnchor];
    bottomAnchor6 = [(UIView *)v5->_controlsContainer bottomAnchor];
    v80 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v138[12] = v80;
    widthAnchor = [v129 widthAnchor];
    v78 = [widthAnchor constraintEqualToConstant:_SFOnePixel()];
    v138[13] = v78;
    topAnchor7 = [(_SFDimmingButton *)v5->_doneButton topAnchor];
    topAnchor8 = [layoutMarginsGuide topAnchor];
    v75 = [topAnchor7 constraintGreaterThanOrEqualToAnchor:topAnchor8];
    v138[14] = v75;
    centerYAnchor5 = [(_SFDimmingButton *)v5->_doneButton centerYAnchor];
    centerYAnchor6 = [layoutMarginsGuide centerYAnchor];
    v72 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v138[15] = v72;
    bottomAnchor7 = [(_SFDimmingButton *)v5->_doneButton bottomAnchor];
    bottomAnchor8 = [layoutMarginsGuide bottomAnchor];
    v69 = [bottomAnchor7 constraintLessThanOrEqualToAnchor:bottomAnchor8];
    v138[16] = v69;
    centerXAnchor = [(UIView *)v5->_controlsContainer centerXAnchor];
    centerXAnchor2 = [(SFStepperView *)v5 centerXAnchor];
    v66 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v138[17] = v66;
    leadingAnchor6 = [(UIView *)v5->_controlsContainer leadingAnchor];
    leadingAnchor7 = [safeAreaLayoutGuide leadingAnchor];
    v63 = [leadingAnchor6 constraintGreaterThanOrEqualToAnchor:leadingAnchor7];
    v138[18] = v63;
    trailingAnchor6 = [(UIView *)v5->_controlsContainer trailingAnchor];
    trailingAnchor7 = [safeAreaLayoutGuide trailingAnchor];
    v60 = [trailingAnchor6 constraintLessThanOrEqualToAnchor:trailingAnchor7];
    v138[19] = v60;
    bottomAnchor9 = [(UIView *)v5->_controlsContainer bottomAnchor];
    bottomAnchor10 = [safeAreaLayoutGuide bottomAnchor];
    v57 = [bottomAnchor9 constraintLessThanOrEqualToAnchor:bottomAnchor10];
    v138[20] = v57;
    bottomAnchor11 = [(SFStepperView *)v5 bottomAnchor];
    [(UIView *)v5->_controlsContainer bottomAnchor];
    v39 = v127 = layoutMarginsGuide;
    v40 = [bottomAnchor11 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v39 multiplier:1.0];
    v138[21] = v40;
    bottomAnchor12 = [(UIView *)v5->_controlsContainer bottomAnchor];
    bottomAnchor13 = [(SFStepperView *)v5 bottomAnchor];
    v43 = [bottomAnchor12 constraintEqualToAnchor:bottomAnchor13];
    LODWORD(v44) = 1112014848;
    v45 = [v43 sf_withPriority:v44];
    v138[22] = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:23];
    [v95 activateConstraints:v46];

    if (v130)
    {
      v121 = MEMORY[0x1E696ACD8];
      leadingAnchor8 = [(_SFDimmingButton *)v5->_resetButton leadingAnchor];
      trailingAnchor8 = [*v125 trailingAnchor];
      v124 = [leadingAnchor8 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor8 multiplier:2.0];
      v137[0] = v124;
      topAnchor9 = [(_SFDimmingButton *)v5->_resetButton topAnchor];
      topAnchor10 = [v127 topAnchor];
      v117 = [topAnchor9 constraintGreaterThanOrEqualToAnchor:topAnchor10];
      v137[1] = v117;
      centerYAnchor7 = [(_SFDimmingButton *)v5->_resetButton centerYAnchor];
      centerYAnchor8 = [(_SFDimmingButton *)v5->_doneButton centerYAnchor];
      v49 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
      v137[2] = v49;
      bottomAnchor14 = [(_SFDimmingButton *)v5->_resetButton bottomAnchor];
      bottomAnchor15 = [v127 bottomAnchor];
      v52 = [bottomAnchor14 constraintLessThanOrEqualToAnchor:bottomAnchor15];
      v137[3] = v52;
      v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v137 count:4];
      [v121 activateConstraints:v53];
    }

    v54 = v5;
  }

  return v5;
}

+ (id)_buttonsFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8]];
  v3 = MEMORY[0x1E69DB878];
  [v2 pointSize];
  v4 = [v3 monospacedDigitSystemFontOfSize:? weight:?];

  return v4;
}

- (void)layoutSubviews
{
  [(UIView *)self->_controlsContainer bounds];
  v3 = CGRectGetHeight(v14) * 0.5;
  layer = [(UIView *)self->_controlsContainer layer];
  [layer setCornerRadius:v3];

  [(MTShadowView *)self->_shadowView maskCornerRadius];
  if (v5 != v3)
  {
    [(MTShadowView *)self->_shadowView removeFromSuperview];
    shadowView = self->_shadowView;
    self->_shadowView = 0;
  }

  v7 = self->_shadowView;
  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69AE160]);
    v11 = 1065353216;
    v12 = *MEMORY[0x1E695F060];
    v13 = 0x4034000000000000;
    v9 = [v8 initWithShadowAttributes:&v11 maskCornerRadius:0 continuousCorners:v3];
    v10 = self->_shadowView;
    self->_shadowView = v9;

    [(SFStepperView *)self insertSubview:self->_shadowView atIndex:0];
    v7 = self->_shadowView;
  }

  [(UIView *)self->_controlsContainer frame];
  [(MTShadowView *)v7 frameWithContentWithFrame:?];
  [(MTShadowView *)self->_shadowView setFrame:?];
}

- (void)setLongestTitle:(id)title forButton:(id)button
{
  v28[4] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  buttonCopy = button;
  v8 = [(NSMapTable *)self->_buttonToLongestStringMap objectForKey:buttonCopy];
  if ([titleCopy length] && !v8)
  {
    v27 = titleCopy;
    if (!self->_buttonToLongestStringMap)
    {
      weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
      buttonToLongestStringMap = self->_buttonToLongestStringMap;
      self->_buttonToLongestStringMap = weakToWeakObjectsMapTable;
    }

    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    titleLabel = [buttonCopy titleLabel];
    font = [titleLabel font];
    [v8 setFont:font];

    [v8 setHidden:1];
    [(UIView *)self->_controlsContainer addSubview:v8];
    v21 = MEMORY[0x1E696ACD8];
    leadingAnchor = [v8 leadingAnchor];
    leadingAnchor2 = [buttonCopy leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v28[0] = v24;
    topAnchor = [v8 topAnchor];
    topAnchor2 = [buttonCopy topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v28[1] = v20;
    widthAnchor = [v8 widthAnchor];
    widthAnchor2 = [buttonCopy widthAnchor];
    v15 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v28[2] = v15;
    heightAnchor = [v8 heightAnchor];
    heightAnchor2 = [buttonCopy heightAnchor];
    v18 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v28[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
    [v21 activateConstraints:v19];

    [(NSMapTable *)self->_buttonToLongestStringMap setObject:v8 forKey:buttonCopy];
    titleCopy = v27;
  }

  [v8 setText:titleCopy];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  controlsContainer = self->_controlsContainer;
  eventCopy = event;
  [(SFStepperView *)selfCopy convertPoint:controlsContainer toView:x, y];
  LOBYTE(selfCopy) = [(UIView *)controlsContainer pointInside:eventCopy withEvent:?];

  return selfCopy;
}

@end