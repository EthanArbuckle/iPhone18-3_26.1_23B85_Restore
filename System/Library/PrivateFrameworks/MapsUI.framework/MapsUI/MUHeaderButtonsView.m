@interface MUHeaderButtonsView
- (BOOL)shouldStackForButtons;
- (MUHeaderButtonsView)initWithConfiguration:(id)a3;
- (MUHeaderButtonsViewDelegate)delegate;
- (void)ETAProviderUpdated:(id)a3;
- (void)_activateNewConstraints:(id)a3;
- (void)_createLayout;
- (void)_didTapAlternatePrimaryAction;
- (void)_didTapMoreButton;
- (void)_didTapPrimaryAction;
- (void)_didTapSecondaryAction;
- (void)_loadPrimaryButtonWithPrimaryType:(unint64_t)a3;
- (void)_loadSecondaryButtonWithSecondaryActionController:(id)a3;
- (void)_setupSubviews;
- (void)_updateConstraintsIfNeeded;
- (void)layoutSubviews;
- (void)setPrimaryButtonType:(unint64_t)a3;
- (void)setSecondaryButtonController:(id)a3;
@end

@implementation MUHeaderButtonsView

- (MUHeaderButtonsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)shouldStackForButtons
{
  if (MapKitIdiomIsMacCatalyst())
  {
    goto LABEL_15;
  }

  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  [v3 _scaledValueForValue:48.0];
  v5 = v4;

  v6 = 0.0;
  if ([(MUHeaderButtonsViewConfiguration *)self->_configuration showMoreButton])
  {
    [(MUPlaceHeaderButton *)self->_moreButton sizeThatFits:*MEMORY[0x1E69DE090], v5];
    v6 = v7;
  }

  if (self->_primaryButton)
  {
    v8 = 8.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = v8 + 8.0;
  if (!self->_secondaryButton)
  {
    v9 = v8;
  }

  v10 = self->_moreButton ? v9 : v9 + -8.0;
  [(MUHeaderButtonsView *)self bounds];
  Width = CGRectGetWidth(v20);
  primaryButton = self->_primaryButton;
  if (!primaryButton)
  {
LABEL_15:
    LOBYTE(secondaryButton) = 0;
  }

  else
  {
    secondaryButton = self->_secondaryButton;
    if (secondaryButton)
    {
      v14 = (Width - (v6 + v10)) * 0.5;
      v15 = *MEMORY[0x1E69DE098];
      [(MUPlaceHeaderButton *)primaryButton sizeThatFits:*MEMORY[0x1E69DE098], v5];
      v17 = v16;
      [(MUPlaceHeaderButton *)self->_secondaryButton sizeThatFits:v15, v5];
      LOBYTE(secondaryButton) = v17 > v14 || v18 > v14;
    }
  }

  return secondaryButton & 1;
}

- (void)_updateConstraintsIfNeeded
{
  if (self->_isStackingButtons != [(MUHeaderButtonsView *)self shouldStackForButtons])
  {

    [(MUHeaderButtonsView *)self _createLayout];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MUHeaderButtonsView;
  [(MUHeaderButtonsView *)&v4 layoutSubviews];
  [(MUHeaderButtonsView *)self _updateConstraintsIfNeeded];
  v3.receiver = self;
  v3.super_class = MUHeaderButtonsView;
  [(MUHeaderButtonsView *)&v3 layoutSubviews];
}

- (void)ETAProviderUpdated:(id)a3
{
  v4 = a3;
  v5 = [(MUPlaceHeaderButton *)self->_primaryButton configuration];
  WeakRetained = objc_loadWeakRetained(&self->_etaProvider);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_etaProvider, v4);
  }

  primaryButtonType = self->_primaryButtonType;
  if (primaryButtonType == 2)
  {
    [(MUHeaderButtonsViewConfiguration *)self->_configuration detourTime];
    v9 = [_MUETAConfiguration rerouteConfigurationETAStringForTravelTime:?];
    goto LABEL_7;
  }

  if (primaryButtonType == 1)
  {
    v8 = [v4 etaTransportType];
    [v4 etaTravelTime];
    v9 = [_MUETAConfiguration configurationForEtaStringFor:v8 travelTime:self->_secondaryButtonController != 0 hasSecondaryController:self->_isStackingButtons isStackingButtons:?];
LABEL_7:
    v10 = v9;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:
  v11 = [v10 symbolName];
  v12 = [v11 length];

  if (v12)
  {
    v13 = MEMORY[0x1E69DCAB8];
    v14 = [v10 symbolName];
    v15 = [v13 _mapsui_systemImageNamed:v14];
    [v5 setImage:v15];
  }

  v16 = [v10 etaString];
  [v5 setTitle:v16];

  v17 = [v5 title];
  v18 = [v17 length];

  if (v18)
  {
    objc_initWeak(&location, self);
    v19 = MEMORY[0x1E69DD250];
    primaryButton = self->_primaryButton;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __42__MUHeaderButtonsView_ETAProviderUpdated___block_invoke;
    v21[3] = &unk_1E8219F48;
    objc_copyWeak(&v23, &location);
    v22 = v5;
    [v19 transitionWithView:primaryButton duration:5242880 options:v21 animations:0 completion:0.300000012];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

void __42__MUHeaderButtonsView_ETAProviderUpdated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[51] setConfiguration:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_activateNewConstraints:(id)a3
{
  v6 = a3;
  if ([(NSArray *)self->_constraints count])
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
  }

  v4 = [v6 copy];
  constraints = self->_constraints;
  self->_constraints = v4;

  if ([(NSArray *)self->_constraints count])
  {
    [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
  }
}

- (void)_createLayout
{
  v151 = *MEMORY[0x1E69E9840];
  self->_isStackingButtons = [(MUHeaderButtonsView *)self shouldStackForButtons];
  v3 = self;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  p_primaryButton = &v3->_primaryButton;
  alternatePrimaryButton = v3->_alternatePrimaryButton;
  if (v3->_primaryButton)
  {
    if (alternatePrimaryButton)
    {
      v7 = [(MUPlaceHeaderButton *)v3->_primaryButton widthAnchor];
      v8 = [(MUPlaceHeaderButton *)v3->_alternatePrimaryButton widthAnchor];
      v9 = [v7 constraintEqualToAnchor:v8];
      [v4 addObject:v9];

      v10 = [*p_primaryButton heightAnchor];
      v11 = [(MUPlaceHeaderButton *)v3->_alternatePrimaryButton heightAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      [v4 addObject:v12];

      v13 = [*p_primaryButton leadingAnchor];
      v14 = [(MUHeaderButtonsView *)v3 leadingAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      [v4 addObject:v15];

      v16 = [*p_primaryButton topAnchor];
      v17 = [(MUHeaderButtonsView *)v3 topAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
      [v4 addObject:v18];

      v19 = [*p_primaryButton trailingAnchor];
      v20 = [(MUPlaceHeaderButton *)v3->_alternatePrimaryButton leadingAnchor];
      v21 = [v19 constraintEqualToAnchor:v20 constant:-8.0];
      [v4 addObject:v21];

      v22 = [(MUPlaceHeaderButton *)v3->_alternatePrimaryButton topAnchor];
      v23 = [*p_primaryButton topAnchor];
      v24 = [v22 constraintEqualToAnchor:v23];
      [v4 addObject:v24];

      v25 = [(MUPlaceHeaderButton *)v3->_alternatePrimaryButton trailingAnchor];
      v26 = [(MUHeaderButtonsView *)v3 trailingAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];
      [v4 addObject:v27];

      secondaryButton = v3->_secondaryButton;
      if (secondaryButton)
      {
        v29 = [(MUPlaceHeaderButton *)secondaryButton leadingAnchor];
        v30 = [(MUHeaderButtonsView *)v3 leadingAnchor];
        v31 = [v29 constraintEqualToAnchor:v30];
        [v4 addObject:v31];

        v32 = [(MUPlaceHeaderButton *)v3->_secondaryButton trailingAnchor];
        v33 = [(MUHeaderButtonsView *)v3 trailingAnchor];
        v34 = [v32 constraintEqualToAnchor:v33];
        p_primaryButton = &v3->_secondaryButton;
      }

      else
      {
        v32 = [(MUPlaceHeaderButton *)v3->_alternatePrimaryButton bottomAnchor];
        v33 = [*p_primaryButton bottomAnchor];
        v34 = [v32 constraintEqualToAnchor:v33];
      }

      [v4 addObject:v34];

      v131 = [*p_primaryButton bottomAnchor];
      v132 = [(MUHeaderButtonsView *)v3 bottomAnchor];
      v133 = [v131 constraintEqualToAnchor:v132];
      [v4 addObject:v133];

      v134 = [v4 copy];
      [(MUHeaderButtonsView *)v3 _activateNewConstraints:v134];

      v53 = v4;
      goto LABEL_41;
    }
  }

  else if (alternatePrimaryButton && v3->_secondaryButton)
  {
    v35 = [(MUPlaceHeaderButton *)alternatePrimaryButton widthAnchor];
    v36 = [(MUPlaceHeaderButton *)v3->_secondaryButton widthAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    [v4 addObject:v37];

    v38 = [(MUPlaceHeaderButton *)v3->_alternatePrimaryButton leadingAnchor];
    v39 = [(MUHeaderButtonsView *)v3 leadingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    [v4 addObject:v40];

    v41 = [(MUPlaceHeaderButton *)v3->_alternatePrimaryButton trailingAnchor];
    v42 = [(MUPlaceHeaderButton *)v3->_secondaryButton leadingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:-8.0];
    [v4 addObject:v43];

    v44 = [(MUPlaceHeaderButton *)v3->_secondaryButton trailingAnchor];
    v45 = [(MUHeaderButtonsView *)v3 trailingAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];
    [v4 addObject:v46];

    v47 = [(MUPlaceHeaderButton *)v3->_alternatePrimaryButton bottomAnchor];
    v48 = [(MUHeaderButtonsView *)v3 bottomAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
    [v4 addObject:v49];

    v50 = [(MUPlaceHeaderButton *)v3->_secondaryButton bottomAnchor];
    v51 = [(MUHeaderButtonsView *)v3 bottomAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    [v4 addObject:v52];

    v53 = v4;
    v54 = [v4 copy];
    [(MUHeaderButtonsView *)v3 _activateNewConstraints:v54];

    goto LABEL_41;
  }

  v55 = objc_opt_new();
  v56 = v55;
  if (*p_primaryButton)
  {
    [v55 addObject:?];
  }

  if (v3->_secondaryButton)
  {
    [v56 addObject:?];
  }

  if (v3->_moreButton)
  {
    [v56 addObject:?];
  }

  if (self->_isStackingButtons && v3->_secondaryButton && *p_primaryButton)
  {
    v57 = [*p_primaryButton leadingAnchor];
    v58 = [(MUHeaderButtonsView *)v3 leadingAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];
    v60 = v4;
    [v4 addObject:v59];

    v61 = [*p_primaryButton topAnchor];
    v62 = [(MUHeaderButtonsView *)v3 topAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];
    [v60 addObject:v63];

    v64 = [*p_primaryButton trailingAnchor];
    v65 = [(MUHeaderButtonsView *)v3 trailingAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];
    [v60 addObject:v66];

    v67 = [*p_primaryButton heightAnchor];
    v68 = [(MUPlaceHeaderButton *)v3->_secondaryButton heightAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];
    [v60 addObject:v69];

    v70 = [(MUPlaceHeaderButton *)v3->_secondaryButton leadingAnchor];
    v71 = [(MUHeaderButtonsView *)v3 leadingAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];
    [v60 addObject:v72];

    v73 = [(MUPlaceHeaderButton *)v3->_secondaryButton topAnchor];
    v74 = [*p_primaryButton bottomAnchor];
    v75 = [v73 constraintEqualToAnchor:v74 constant:8.0];
    [v60 addObject:v75];

    v76 = [(MUPlaceHeaderButton *)v3->_secondaryButton bottomAnchor];
    v77 = [(MUHeaderButtonsView *)v3 bottomAnchor];
    v78 = [v76 constraintEqualToAnchor:v77];
    [v60 addObject:v78];

    moreButton = v3->_moreButton;
    v80 = [(MUPlaceHeaderButton *)v3->_secondaryButton trailingAnchor];
    if (moreButton)
    {
      v81 = [(MUPlaceHeaderButton *)v3->_moreButton leadingAnchor];
      v82 = [v80 constraintEqualToAnchor:v81 constant:-8.0];
      [v60 addObject:v82];

      v83 = [(MUPlaceHeaderButton *)v3->_secondaryButton heightAnchor];
      v84 = [(MUPlaceHeaderButton *)v3->_moreButton heightAnchor];
      v85 = [v83 constraintEqualToAnchor:v84];
      [v60 addObject:v85];

      v86 = [(MUPlaceHeaderButton *)v3->_moreButton topAnchor];
      v87 = [(MUPlaceHeaderButton *)v3->_secondaryButton topAnchor];
      v88 = [v86 constraintEqualToAnchor:v87];
      [v60 addObject:v88];

      v89 = [(MUPlaceHeaderButton *)v3->_moreButton trailingAnchor];
      v90 = [(MUHeaderButtonsView *)v3 trailingAnchor];
      v91 = [v89 constraintEqualToAnchor:v90];
      [v60 addObject:v91];

      v92 = [(MUPlaceHeaderButton *)v3->_moreButton bottomAnchor];
      v93 = [(MUPlaceHeaderButton *)v3->_secondaryButton bottomAnchor];
      v94 = [v92 constraintEqualToAnchor:v93];
      [v60 addObject:v94];

      v95 = v3->_moreButton;
    }

    else
    {
      v136 = [(MUHeaderButtonsView *)v3 trailingAnchor];
      v137 = [v80 constraintEqualToAnchor:v136 constant:-8.0];
      [v60 addObject:v137];

      v95 = v3->_secondaryButton;
    }

    v138 = [(MUPlaceHeaderButton *)v95 heightAnchor];
    v139 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [v139 _scaledValueForValue:48.0];
    v140 = [v138 constraintEqualToConstant:?];
    [v60 addObject:v140];

    v141 = [v60 copy];
    [(MUHeaderButtonsView *)v3 _activateNewConstraints:v141];

    v53 = v60;
  }

  else
  {
    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v96 = v56;
    v53 = v4;
    v145 = [v96 countByEnumeratingWithState:&v146 objects:v150 count:16];
    if (v145)
    {
      v142 = v56;
      v97 = v3;
      v98 = 0;
      v144 = *v147;
      v143 = *MEMORY[0x1E69DDD40];
      do
      {
        v99 = 0;
        v100 = v98;
        do
        {
          if (*v147 != v144)
          {
            objc_enumerationMutation(v96);
          }

          v101 = *(*(&v146 + 1) + 8 * v99);
          v102 = [v96 firstObject];

          if (v101 == v102)
          {
            v103 = [(MUPlaceHeaderButton *)v101 leadingAnchor];
            v104 = [(MUHeaderButtonsView *)v97 leadingAnchor];
            v105 = [v103 constraintEqualToAnchor:v104];
            [v53 addObject:v105];
          }

          if (v101 != v97->_moreButton)
          {
            v106 = [v96 firstObject];

            if (v101 != v106)
            {
              v107 = [(MUPlaceHeaderButton *)v101 widthAnchor];
              v108 = [(MUPlaceHeaderButton *)v100 widthAnchor];
              v109 = [v107 constraintEqualToAnchor:v108];
              [v53 addObject:v109];
            }
          }

          v110 = [v96 firstObject];

          if (v100 && v101 != v110)
          {
            v111 = [(MUPlaceHeaderButton *)v100 trailingAnchor];
            v112 = [(MUPlaceHeaderButton *)v101 leadingAnchor];
            v113 = [v111 constraintEqualToAnchor:v112 constant:-8.0];
            [v53 addObject:v113];

            v114 = [(MUPlaceHeaderButton *)v100 heightAnchor];
            v115 = [(MUPlaceHeaderButton *)v101 heightAnchor];
            v116 = [v114 constraintEqualToAnchor:v115];
            [v53 addObject:v116];
          }

          v117 = [v96 lastObject];

          if (v101 == v117)
          {
            v118 = [(MUPlaceHeaderButton *)v101 trailingAnchor];
            v119 = [(MUHeaderButtonsView *)v97 trailingAnchor];
            v120 = [v118 constraintEqualToAnchor:v119];
            [v53 addObject:v120];

            v121 = [(MUPlaceHeaderButton *)v101 heightAnchor];
            v122 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v143];
            [v122 _scaledValueForValue:48.0];
            v123 = [v121 constraintEqualToConstant:?];
            [v53 addObject:v123];
          }

          v124 = [(MUPlaceHeaderButton *)v101 topAnchor];
          v125 = [(MUHeaderButtonsView *)v97 topAnchor];
          v126 = [v124 constraintEqualToAnchor:v125];
          [v4 addObject:v126];

          v127 = [(MUPlaceHeaderButton *)v101 bottomAnchor];
          v53 = v4;
          v128 = [(MUHeaderButtonsView *)v97 bottomAnchor];
          v129 = [v127 constraintEqualToAnchor:v128];
          [v4 addObject:v129];

          v98 = v101;
          ++v99;
          v100 = v98;
        }

        while (v145 != v99);
        v145 = [v96 countByEnumeratingWithState:&v146 objects:v150 count:16];
      }

      while (v145);

      v3 = v97;
      v56 = v142;
    }

    v130 = [v53 copy];
    [(MUHeaderButtonsView *)v3 _activateNewConstraints:v130];
  }

LABEL_41:
  v135 = *MEMORY[0x1E69E9840];
}

- (void)setSecondaryButtonController:(id)a3
{
  if (self->_secondaryButtonController != a3)
  {
    [(MUHeaderButtonsView *)self _loadSecondaryButtonWithSecondaryActionController:?];

    [(MUHeaderButtonsView *)self _updateContent];
  }
}

- (void)setPrimaryButtonType:(unint64_t)a3
{
  if (self->_primaryButtonType != a3)
  {
    [(MUHeaderButtonsView *)self _loadPrimaryButtonWithPrimaryType:?];

    [(MUHeaderButtonsView *)self _updateContent];
  }
}

- (void)_loadPrimaryButtonWithPrimaryType:(unint64_t)a3
{
  if (self->_primaryButtonType == a3)
  {
    return;
  }

  self->_primaryButtonType = a3;
  primaryButton = self->_primaryButton;
  if (a3)
  {
    if (primaryButton)
    {
LABEL_22:
      v19 = [(MUPlaceHeaderButton *)primaryButton superview];

      if (v19 != self)
      {
        v20 = self->_primaryButton;

        [(MUHeaderButtonsView *)self addSubview:v20];
      }

      return;
    }

    v5 = [MUPlaceHeaderButton buttonWithType:1];
    v6 = self->_primaryButton;
    self->_primaryButton = v5;

    [(MUPlaceHeaderButton *)self->_primaryButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MUPlaceHeaderButton *)self->_primaryButton addTarget:self action:sel__didTapPrimaryAction forControlEvents:0x2000];
    v7 = [MEMORY[0x1E69DC740] _mapsui_configurationForPrimaryType:self->_primaryButtonType];
    primaryButtonType = self->_primaryButtonType;
    if (primaryButtonType > 2)
    {
      if (primaryButtonType == 3)
      {
        [(MUPlaceHeaderButton *)self->_primaryButton setAccessibilityIdentifier:@"PrimaryButtonTypeShareCurrentLocation"];
        v17 = [MEMORY[0x1E69DC740] _mapsui_secondaryHeaderActionConfiguration];

        v18 = [MEMORY[0x1E69DCAB8] _mapsui_systemImageNamed:@"square.and.arrow.up"];
        [v17 setImage:v18];

        v10 = _MULocalizedStringFromThisBundle(@"Share [Placecard]");
        [v17 setTitle:v10];
        v7 = v17;
        goto LABEL_19;
      }

      if (primaryButtonType != 4)
      {
        goto LABEL_20;
      }

      [(MUPlaceHeaderButton *)self->_primaryButton setAccessibilityIdentifier:@"PrimaryButtonTypeAddStop"];
      [(MUHeaderButtonsViewConfiguration *)self->_configuration detourTime];
      v10 = [_MUETAConfiguration addStopConfigurationETAStringForTravelTime:?];
      v12 = [MEMORY[0x1E69DCAB8] _mapsui_systemImageNamed:@"plus.circle.fill"];
      [v7 setImage:v12];
    }

    else
    {
      if (primaryButtonType != 1)
      {
        if (primaryButtonType == 2)
        {
          [(MUPlaceHeaderButton *)self->_primaryButton setAccessibilityIdentifier:@"PrimaryButtonTypeReroute"];
          [(MUHeaderButtonsViewConfiguration *)self->_configuration detourTime];
          v9 = [_MUETAConfiguration rerouteConfigurationETAStringForTravelTime:?];
          v10 = v9;
LABEL_17:
          v16 = [v9 etaString];
          [v7 setTitle:v16];

LABEL_19:
        }

LABEL_20:
        [(MUPlaceHeaderButton *)self->_primaryButton setConfiguration:v7];

        if (!self->_primaryButtonType)
        {
          return;
        }

        primaryButton = self->_primaryButton;
        goto LABEL_22;
      }

      [(MUPlaceHeaderButton *)self->_primaryButton setAccessibilityIdentifier:@"PrimaryButtonTypeDirections"];
      v10 = [_MUETAConfiguration configurationForEtaStringFor:0xFFFFFFFLL travelTime:self->_secondaryButtonController != 0 hasSecondaryController:self->_isStackingButtons isStackingButtons:0.0];
      v13 = MEMORY[0x1E69DCAB8];
      v14 = [v10 symbolName];
      v15 = [v13 _mapsui_systemImageNamed:v14];
      [v7 setImage:v15];
    }

    v9 = v10;
    goto LABEL_17;
  }

  [(MUPlaceHeaderButton *)primaryButton removeFromSuperview];
  v11 = self->_primaryButton;
  self->_primaryButton = 0;
}

- (void)_loadSecondaryButtonWithSecondaryActionController:(id)a3
{
  v5 = a3;
  if (self->_secondaryButtonController != v5)
  {
    v16 = v5;
    objc_storeStrong(&self->_secondaryButtonController, a3);
    if (!self->_secondaryButtonController)
    {
      [(MUPlaceHeaderButton *)self->_secondaryButton removeFromSuperview];
      secondaryButton = self->_secondaryButton;
      self->_secondaryButton = 0;
    }

    if (!self->_secondaryButton)
    {
      v7 = [MUPlaceHeaderButton buttonWithType:1];
      v8 = self->_secondaryButton;
      self->_secondaryButton = v7;

      [(MUPlaceHeaderButton *)self->_secondaryButton setTranslatesAutoresizingMaskIntoConstraints:0];
      [(MUPlaceHeaderButton *)self->_secondaryButton addTarget:self action:sel__didTapSecondaryAction forControlEvents:0x2000];
    }

    v9 = [MEMORY[0x1E69DC740] _mapsui_secondaryHeaderActionConfiguration];
    v10 = [(_MKPlaceActionButtonController *)self->_secondaryButtonController buttonTitle];
    [v9 setTitle:v10];

    v11 = MEMORY[0x1E69DCAB8];
    v12 = [(_MKPlaceActionButtonController *)self->_secondaryButtonController symbolName];
    v13 = [v11 _mapsui_systemImageNamed:v12];
    [v9 setImage:v13];

    [(MUPlaceHeaderButton *)self->_secondaryButton setConfiguration:v9];
    v14 = [(MUPlaceHeaderButton *)self->_secondaryButton superview];

    if (v14 != self)
    {
      [(MUPlaceHeaderButton *)self->_secondaryButton setAccessibilityIdentifier:@"SecondaryButton"];
      [(MUHeaderButtonsView *)self addSubview:self->_secondaryButton];
    }

    WeakRetained = objc_loadWeakRetained(&self->_etaProvider);
    [(MUHeaderButtonsView *)self ETAProviderUpdated:WeakRetained];

    v5 = v16;
  }
}

- (void)_setupSubviews
{
  v24[3] = *MEMORY[0x1E69E9840];
  if ([(MUHeaderButtonsViewConfiguration *)self->_configuration showMoreButton])
  {
    v3 = [MUPlaceHeaderButton buttonWithType:0];
    moreButton = self->_moreButton;
    self->_moreButton = v3;

    [(MUPlaceHeaderButton *)self->_moreButton setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1148846080;
    [(MUPlaceHeaderButton *)self->_moreButton setContentHuggingPriority:0 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [(MUPlaceHeaderButton *)self->_moreButton setContentHuggingPriority:1 forAxis:v6];
    LODWORD(v7) = 1148846080;
    [(MUPlaceHeaderButton *)self->_moreButton setContentCompressionResistancePriority:0 forAxis:v7];
    LODWORD(v8) = 1148846080;
    [(MUPlaceHeaderButton *)self->_moreButton setContentCompressionResistancePriority:1 forAxis:v8];
    [(MUPlaceHeaderButton *)self->_moreButton setAccessibilityIdentifier:@"PlaceHeaderMoreButton"];
    [(MUPlaceHeaderButton *)self->_moreButton setShowsMenuAsPrimaryAction:1];
    objc_initWeak(&location, self);
    v9 = self->_moreButton;
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __37__MUHeaderButtonsView__setupSubviews__block_invoke;
    v21 = &unk_1E8218DF8;
    objc_copyWeak(&v22, &location);
    [(MUPlaceHeaderButton *)v9 _setMenuProvider:&v18];
    v10 = [MEMORY[0x1E69DC740] _mapsui_secondaryHeaderActionConfiguration];
    v11 = [MEMORY[0x1E69DCAB8] _mapsui_systemImageNamed:@"ellipsis"];
    [v10 setImage:v11];

    [v10 setContentInsets:{0.0, 11.0, 0.0, 11.0}];
    [(MUPlaceHeaderButton *)self->_moreButton setConfiguration:v10];
    [(MUPlaceHeaderButton *)self->_moreButton addTarget:self action:sel__didTapMoreButton forControlEvents:0x4000];
    [(MUHeaderButtonsView *)self addSubview:self->_moreButton];
    v12 = objc_opt_self();
    v24[0] = v12;
    v13 = objc_opt_self();
    v24[1] = v13;
    v14 = objc_opt_self();
    v24[2] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
    v16 = [(MUHeaderButtonsView *)self registerForTraitChanges:v15 withAction:sel__updateContent];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  v17 = *MEMORY[0x1E69E9840];
}

id __37__MUHeaderButtonsView__setupSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(MUPresentationOptions);
    [(MUPresentationOptions *)v2 setSourceView:WeakRetained[54]];
    [WeakRetained[54] frame];
    [(MUPresentationOptions *)v2 setSourceRect:?];
    v3 = [WeakRetained[57] menuProvider];
    v4 = [v3 createHeaderButtonsMenuWithPresentationOptions:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_didTapMoreButton
{
  v3 = [(MUHeaderButtonsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MUHeaderButtonsView *)self delegate];
    [v5 headerButtonsViewWillPresentMenu:self];
  }
}

- (void)_didTapSecondaryAction
{
  v3 = [(_MKPlaceActionButtonController *)self->_secondaryButtonController buttonSelectedBlock];

  if (v3)
  {
    v4 = [(_MKPlaceActionButtonController *)self->_secondaryButtonController buttonSelectedBlock];
    v4[2](v4, self->_secondaryButton);
  }
}

- (void)_didTapAlternatePrimaryAction
{
  v3 = [(_MKPlaceActionButtonController *)self->_alternatePrimaryButtonController buttonSelectedBlock];

  if (v3)
  {
    v4 = [(_MKPlaceActionButtonController *)self->_alternatePrimaryButtonController buttonSelectedBlock];
    v4[2](v4, self->_secondaryButton);
  }
}

- (void)_didTapPrimaryAction
{
  v4 = objc_alloc_init(MUPresentationOptions);
  [(MUPresentationOptions *)v4 setSourceView:self->_primaryButton];
  [(MUPlaceHeaderButton *)self->_primaryButton frame];
  [(MUPresentationOptions *)v4 setSourceRect:?];
  v3 = [(MUHeaderButtonsView *)self delegate];
  [v3 headerButtonsView:self didSelectPrimaryType:self->_primaryButtonType withPresentationOptions:v4];
}

- (MUHeaderButtonsView)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUHeaderButtonsView;
  v6 = [(MUHeaderButtonsView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    [(MUHeaderButtonsView *)v7 setAccessibilityIdentifier:@"HeaderButtons"];
    [(MUHeaderButtonsView *)v7 _setupSubviews];
  }

  return v7;
}

@end