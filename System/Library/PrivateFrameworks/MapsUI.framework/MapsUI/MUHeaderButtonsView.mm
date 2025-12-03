@interface MUHeaderButtonsView
- (BOOL)shouldStackForButtons;
- (MUHeaderButtonsView)initWithConfiguration:(id)configuration;
- (MUHeaderButtonsViewDelegate)delegate;
- (void)ETAProviderUpdated:(id)updated;
- (void)_activateNewConstraints:(id)constraints;
- (void)_createLayout;
- (void)_didTapAlternatePrimaryAction;
- (void)_didTapMoreButton;
- (void)_didTapPrimaryAction;
- (void)_didTapSecondaryAction;
- (void)_loadPrimaryButtonWithPrimaryType:(unint64_t)type;
- (void)_loadSecondaryButtonWithSecondaryActionController:(id)controller;
- (void)_setupSubviews;
- (void)_updateConstraintsIfNeeded;
- (void)layoutSubviews;
- (void)setPrimaryButtonType:(unint64_t)type;
- (void)setSecondaryButtonController:(id)controller;
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

- (void)ETAProviderUpdated:(id)updated
{
  updatedCopy = updated;
  configuration = [(MUPlaceHeaderButton *)self->_primaryButton configuration];
  WeakRetained = objc_loadWeakRetained(&self->_etaProvider);

  if (WeakRetained != updatedCopy)
  {
    objc_storeWeak(&self->_etaProvider, updatedCopy);
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
    etaTransportType = [updatedCopy etaTransportType];
    [updatedCopy etaTravelTime];
    v9 = [_MUETAConfiguration configurationForEtaStringFor:etaTransportType travelTime:self->_secondaryButtonController != 0 hasSecondaryController:self->_isStackingButtons isStackingButtons:?];
LABEL_7:
    v10 = v9;
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:
  symbolName = [v10 symbolName];
  v12 = [symbolName length];

  if (v12)
  {
    v13 = MEMORY[0x1E69DCAB8];
    symbolName2 = [v10 symbolName];
    v15 = [v13 _mapsui_systemImageNamed:symbolName2];
    [configuration setImage:v15];
  }

  etaString = [v10 etaString];
  [configuration setTitle:etaString];

  title = [configuration title];
  v18 = [title length];

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
    v22 = configuration;
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

- (void)_activateNewConstraints:(id)constraints
{
  constraintsCopy = constraints;
  if ([(NSArray *)self->_constraints count])
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
  }

  v4 = [constraintsCopy copy];
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
  selfCopy = self;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  p_primaryButton = &selfCopy->_primaryButton;
  alternatePrimaryButton = selfCopy->_alternatePrimaryButton;
  if (selfCopy->_primaryButton)
  {
    if (alternatePrimaryButton)
    {
      widthAnchor = [(MUPlaceHeaderButton *)selfCopy->_primaryButton widthAnchor];
      widthAnchor2 = [(MUPlaceHeaderButton *)selfCopy->_alternatePrimaryButton widthAnchor];
      v9 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      [v4 addObject:v9];

      heightAnchor = [*p_primaryButton heightAnchor];
      heightAnchor2 = [(MUPlaceHeaderButton *)selfCopy->_alternatePrimaryButton heightAnchor];
      v12 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
      [v4 addObject:v12];

      leadingAnchor = [*p_primaryButton leadingAnchor];
      leadingAnchor2 = [(MUHeaderButtonsView *)selfCopy leadingAnchor];
      v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [v4 addObject:v15];

      topAnchor = [*p_primaryButton topAnchor];
      topAnchor2 = [(MUHeaderButtonsView *)selfCopy topAnchor];
      v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [v4 addObject:v18];

      trailingAnchor = [*p_primaryButton trailingAnchor];
      leadingAnchor3 = [(MUPlaceHeaderButton *)selfCopy->_alternatePrimaryButton leadingAnchor];
      v21 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-8.0];
      [v4 addObject:v21];

      topAnchor3 = [(MUPlaceHeaderButton *)selfCopy->_alternatePrimaryButton topAnchor];
      topAnchor4 = [*p_primaryButton topAnchor];
      v24 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      [v4 addObject:v24];

      trailingAnchor2 = [(MUPlaceHeaderButton *)selfCopy->_alternatePrimaryButton trailingAnchor];
      trailingAnchor3 = [(MUHeaderButtonsView *)selfCopy trailingAnchor];
      v27 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
      [v4 addObject:v27];

      secondaryButton = selfCopy->_secondaryButton;
      if (secondaryButton)
      {
        leadingAnchor4 = [(MUPlaceHeaderButton *)secondaryButton leadingAnchor];
        leadingAnchor5 = [(MUHeaderButtonsView *)selfCopy leadingAnchor];
        v31 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
        [v4 addObject:v31];

        trailingAnchor4 = [(MUPlaceHeaderButton *)selfCopy->_secondaryButton trailingAnchor];
        trailingAnchor5 = [(MUHeaderButtonsView *)selfCopy trailingAnchor];
        v34 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
        p_primaryButton = &selfCopy->_secondaryButton;
      }

      else
      {
        trailingAnchor4 = [(MUPlaceHeaderButton *)selfCopy->_alternatePrimaryButton bottomAnchor];
        trailingAnchor5 = [*p_primaryButton bottomAnchor];
        v34 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
      }

      [v4 addObject:v34];

      bottomAnchor = [*p_primaryButton bottomAnchor];
      bottomAnchor2 = [(MUHeaderButtonsView *)selfCopy bottomAnchor];
      v133 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      [v4 addObject:v133];

      v134 = [v4 copy];
      [(MUHeaderButtonsView *)selfCopy _activateNewConstraints:v134];

      v53 = v4;
      goto LABEL_41;
    }
  }

  else if (alternatePrimaryButton && selfCopy->_secondaryButton)
  {
    widthAnchor3 = [(MUPlaceHeaderButton *)alternatePrimaryButton widthAnchor];
    widthAnchor4 = [(MUPlaceHeaderButton *)selfCopy->_secondaryButton widthAnchor];
    v37 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    [v4 addObject:v37];

    leadingAnchor6 = [(MUPlaceHeaderButton *)selfCopy->_alternatePrimaryButton leadingAnchor];
    leadingAnchor7 = [(MUHeaderButtonsView *)selfCopy leadingAnchor];
    v40 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    [v4 addObject:v40];

    trailingAnchor6 = [(MUPlaceHeaderButton *)selfCopy->_alternatePrimaryButton trailingAnchor];
    leadingAnchor8 = [(MUPlaceHeaderButton *)selfCopy->_secondaryButton leadingAnchor];
    v43 = [trailingAnchor6 constraintEqualToAnchor:leadingAnchor8 constant:-8.0];
    [v4 addObject:v43];

    trailingAnchor7 = [(MUPlaceHeaderButton *)selfCopy->_secondaryButton trailingAnchor];
    trailingAnchor8 = [(MUHeaderButtonsView *)selfCopy trailingAnchor];
    v46 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    [v4 addObject:v46];

    bottomAnchor3 = [(MUPlaceHeaderButton *)selfCopy->_alternatePrimaryButton bottomAnchor];
    bottomAnchor4 = [(MUHeaderButtonsView *)selfCopy bottomAnchor];
    v49 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [v4 addObject:v49];

    bottomAnchor5 = [(MUPlaceHeaderButton *)selfCopy->_secondaryButton bottomAnchor];
    bottomAnchor6 = [(MUHeaderButtonsView *)selfCopy bottomAnchor];
    v52 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    [v4 addObject:v52];

    v53 = v4;
    v54 = [v4 copy];
    [(MUHeaderButtonsView *)selfCopy _activateNewConstraints:v54];

    goto LABEL_41;
  }

  v55 = objc_opt_new();
  v56 = v55;
  if (*p_primaryButton)
  {
    [v55 addObject:?];
  }

  if (selfCopy->_secondaryButton)
  {
    [v56 addObject:?];
  }

  if (selfCopy->_moreButton)
  {
    [v56 addObject:?];
  }

  if (self->_isStackingButtons && selfCopy->_secondaryButton && *p_primaryButton)
  {
    leadingAnchor9 = [*p_primaryButton leadingAnchor];
    leadingAnchor10 = [(MUHeaderButtonsView *)selfCopy leadingAnchor];
    v59 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v60 = v4;
    [v4 addObject:v59];

    topAnchor5 = [*p_primaryButton topAnchor];
    topAnchor6 = [(MUHeaderButtonsView *)selfCopy topAnchor];
    v63 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    [v60 addObject:v63];

    trailingAnchor9 = [*p_primaryButton trailingAnchor];
    trailingAnchor10 = [(MUHeaderButtonsView *)selfCopy trailingAnchor];
    v66 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    [v60 addObject:v66];

    heightAnchor3 = [*p_primaryButton heightAnchor];
    heightAnchor4 = [(MUPlaceHeaderButton *)selfCopy->_secondaryButton heightAnchor];
    v69 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
    [v60 addObject:v69];

    leadingAnchor11 = [(MUPlaceHeaderButton *)selfCopy->_secondaryButton leadingAnchor];
    leadingAnchor12 = [(MUHeaderButtonsView *)selfCopy leadingAnchor];
    v72 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    [v60 addObject:v72];

    topAnchor7 = [(MUPlaceHeaderButton *)selfCopy->_secondaryButton topAnchor];
    bottomAnchor7 = [*p_primaryButton bottomAnchor];
    v75 = [topAnchor7 constraintEqualToAnchor:bottomAnchor7 constant:8.0];
    [v60 addObject:v75];

    bottomAnchor8 = [(MUPlaceHeaderButton *)selfCopy->_secondaryButton bottomAnchor];
    bottomAnchor9 = [(MUHeaderButtonsView *)selfCopy bottomAnchor];
    v78 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
    [v60 addObject:v78];

    moreButton = selfCopy->_moreButton;
    trailingAnchor11 = [(MUPlaceHeaderButton *)selfCopy->_secondaryButton trailingAnchor];
    if (moreButton)
    {
      leadingAnchor13 = [(MUPlaceHeaderButton *)selfCopy->_moreButton leadingAnchor];
      v82 = [trailingAnchor11 constraintEqualToAnchor:leadingAnchor13 constant:-8.0];
      [v60 addObject:v82];

      heightAnchor5 = [(MUPlaceHeaderButton *)selfCopy->_secondaryButton heightAnchor];
      heightAnchor6 = [(MUPlaceHeaderButton *)selfCopy->_moreButton heightAnchor];
      v85 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6];
      [v60 addObject:v85];

      topAnchor8 = [(MUPlaceHeaderButton *)selfCopy->_moreButton topAnchor];
      topAnchor9 = [(MUPlaceHeaderButton *)selfCopy->_secondaryButton topAnchor];
      v88 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
      [v60 addObject:v88];

      trailingAnchor12 = [(MUPlaceHeaderButton *)selfCopy->_moreButton trailingAnchor];
      trailingAnchor13 = [(MUHeaderButtonsView *)selfCopy trailingAnchor];
      v91 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13];
      [v60 addObject:v91];

      bottomAnchor10 = [(MUPlaceHeaderButton *)selfCopy->_moreButton bottomAnchor];
      bottomAnchor11 = [(MUPlaceHeaderButton *)selfCopy->_secondaryButton bottomAnchor];
      v94 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
      [v60 addObject:v94];

      v95 = selfCopy->_moreButton;
    }

    else
    {
      trailingAnchor14 = [(MUHeaderButtonsView *)selfCopy trailingAnchor];
      v137 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor14 constant:-8.0];
      [v60 addObject:v137];

      v95 = selfCopy->_secondaryButton;
    }

    heightAnchor7 = [(MUPlaceHeaderButton *)v95 heightAnchor];
    v139 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [v139 _scaledValueForValue:48.0];
    v140 = [heightAnchor7 constraintEqualToConstant:?];
    [v60 addObject:v140];

    v141 = [v60 copy];
    [(MUHeaderButtonsView *)selfCopy _activateNewConstraints:v141];

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
      v97 = selfCopy;
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
          firstObject = [v96 firstObject];

          if (v101 == firstObject)
          {
            leadingAnchor14 = [(MUPlaceHeaderButton *)v101 leadingAnchor];
            leadingAnchor15 = [(MUHeaderButtonsView *)v97 leadingAnchor];
            v105 = [leadingAnchor14 constraintEqualToAnchor:leadingAnchor15];
            [v53 addObject:v105];
          }

          if (v101 != v97->_moreButton)
          {
            firstObject2 = [v96 firstObject];

            if (v101 != firstObject2)
            {
              widthAnchor5 = [(MUPlaceHeaderButton *)v101 widthAnchor];
              widthAnchor6 = [(MUPlaceHeaderButton *)v100 widthAnchor];
              v109 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
              [v53 addObject:v109];
            }
          }

          firstObject3 = [v96 firstObject];

          if (v100 && v101 != firstObject3)
          {
            trailingAnchor15 = [(MUPlaceHeaderButton *)v100 trailingAnchor];
            leadingAnchor16 = [(MUPlaceHeaderButton *)v101 leadingAnchor];
            v113 = [trailingAnchor15 constraintEqualToAnchor:leadingAnchor16 constant:-8.0];
            [v53 addObject:v113];

            heightAnchor8 = [(MUPlaceHeaderButton *)v100 heightAnchor];
            heightAnchor9 = [(MUPlaceHeaderButton *)v101 heightAnchor];
            v116 = [heightAnchor8 constraintEqualToAnchor:heightAnchor9];
            [v53 addObject:v116];
          }

          lastObject = [v96 lastObject];

          if (v101 == lastObject)
          {
            trailingAnchor16 = [(MUPlaceHeaderButton *)v101 trailingAnchor];
            trailingAnchor17 = [(MUHeaderButtonsView *)v97 trailingAnchor];
            v120 = [trailingAnchor16 constraintEqualToAnchor:trailingAnchor17];
            [v53 addObject:v120];

            heightAnchor10 = [(MUPlaceHeaderButton *)v101 heightAnchor];
            v122 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v143];
            [v122 _scaledValueForValue:48.0];
            v123 = [heightAnchor10 constraintEqualToConstant:?];
            [v53 addObject:v123];
          }

          topAnchor10 = [(MUPlaceHeaderButton *)v101 topAnchor];
          topAnchor11 = [(MUHeaderButtonsView *)v97 topAnchor];
          v126 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
          [v4 addObject:v126];

          bottomAnchor12 = [(MUPlaceHeaderButton *)v101 bottomAnchor];
          v53 = v4;
          bottomAnchor13 = [(MUHeaderButtonsView *)v97 bottomAnchor];
          v129 = [bottomAnchor12 constraintEqualToAnchor:bottomAnchor13];
          [v4 addObject:v129];

          v98 = v101;
          ++v99;
          v100 = v98;
        }

        while (v145 != v99);
        v145 = [v96 countByEnumeratingWithState:&v146 objects:v150 count:16];
      }

      while (v145);

      selfCopy = v97;
      v56 = v142;
    }

    v130 = [v53 copy];
    [(MUHeaderButtonsView *)selfCopy _activateNewConstraints:v130];
  }

LABEL_41:
  v135 = *MEMORY[0x1E69E9840];
}

- (void)setSecondaryButtonController:(id)controller
{
  if (self->_secondaryButtonController != controller)
  {
    [(MUHeaderButtonsView *)self _loadSecondaryButtonWithSecondaryActionController:?];

    [(MUHeaderButtonsView *)self _updateContent];
  }
}

- (void)setPrimaryButtonType:(unint64_t)type
{
  if (self->_primaryButtonType != type)
  {
    [(MUHeaderButtonsView *)self _loadPrimaryButtonWithPrimaryType:?];

    [(MUHeaderButtonsView *)self _updateContent];
  }
}

- (void)_loadPrimaryButtonWithPrimaryType:(unint64_t)type
{
  if (self->_primaryButtonType == type)
  {
    return;
  }

  self->_primaryButtonType = type;
  primaryButton = self->_primaryButton;
  if (type)
  {
    if (primaryButton)
    {
LABEL_22:
      superview = [(MUPlaceHeaderButton *)primaryButton superview];

      if (superview != self)
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
        _mapsui_secondaryHeaderActionConfiguration = [MEMORY[0x1E69DC740] _mapsui_secondaryHeaderActionConfiguration];

        v18 = [MEMORY[0x1E69DCAB8] _mapsui_systemImageNamed:@"square.and.arrow.up"];
        [_mapsui_secondaryHeaderActionConfiguration setImage:v18];

        v10 = _MULocalizedStringFromThisBundle(@"Share [Placecard]");
        [_mapsui_secondaryHeaderActionConfiguration setTitle:v10];
        v7 = _mapsui_secondaryHeaderActionConfiguration;
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
          etaString = [v9 etaString];
          [v7 setTitle:etaString];

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
      symbolName = [v10 symbolName];
      v15 = [v13 _mapsui_systemImageNamed:symbolName];
      [v7 setImage:v15];
    }

    v9 = v10;
    goto LABEL_17;
  }

  [(MUPlaceHeaderButton *)primaryButton removeFromSuperview];
  v11 = self->_primaryButton;
  self->_primaryButton = 0;
}

- (void)_loadSecondaryButtonWithSecondaryActionController:(id)controller
{
  controllerCopy = controller;
  if (self->_secondaryButtonController != controllerCopy)
  {
    v16 = controllerCopy;
    objc_storeStrong(&self->_secondaryButtonController, controller);
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

    _mapsui_secondaryHeaderActionConfiguration = [MEMORY[0x1E69DC740] _mapsui_secondaryHeaderActionConfiguration];
    buttonTitle = [(_MKPlaceActionButtonController *)self->_secondaryButtonController buttonTitle];
    [_mapsui_secondaryHeaderActionConfiguration setTitle:buttonTitle];

    v11 = MEMORY[0x1E69DCAB8];
    symbolName = [(_MKPlaceActionButtonController *)self->_secondaryButtonController symbolName];
    v13 = [v11 _mapsui_systemImageNamed:symbolName];
    [_mapsui_secondaryHeaderActionConfiguration setImage:v13];

    [(MUPlaceHeaderButton *)self->_secondaryButton setConfiguration:_mapsui_secondaryHeaderActionConfiguration];
    superview = [(MUPlaceHeaderButton *)self->_secondaryButton superview];

    if (superview != self)
    {
      [(MUPlaceHeaderButton *)self->_secondaryButton setAccessibilityIdentifier:@"SecondaryButton"];
      [(MUHeaderButtonsView *)self addSubview:self->_secondaryButton];
    }

    WeakRetained = objc_loadWeakRetained(&self->_etaProvider);
    [(MUHeaderButtonsView *)self ETAProviderUpdated:WeakRetained];

    controllerCopy = v16;
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
    _mapsui_secondaryHeaderActionConfiguration = [MEMORY[0x1E69DC740] _mapsui_secondaryHeaderActionConfiguration];
    v11 = [MEMORY[0x1E69DCAB8] _mapsui_systemImageNamed:@"ellipsis"];
    [_mapsui_secondaryHeaderActionConfiguration setImage:v11];

    [_mapsui_secondaryHeaderActionConfiguration setContentInsets:{0.0, 11.0, 0.0, 11.0}];
    [(MUPlaceHeaderButton *)self->_moreButton setConfiguration:_mapsui_secondaryHeaderActionConfiguration];
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
  delegate = [(MUHeaderButtonsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MUHeaderButtonsView *)self delegate];
    [delegate2 headerButtonsViewWillPresentMenu:self];
  }
}

- (void)_didTapSecondaryAction
{
  buttonSelectedBlock = [(_MKPlaceActionButtonController *)self->_secondaryButtonController buttonSelectedBlock];

  if (buttonSelectedBlock)
  {
    buttonSelectedBlock2 = [(_MKPlaceActionButtonController *)self->_secondaryButtonController buttonSelectedBlock];
    buttonSelectedBlock2[2](buttonSelectedBlock2, self->_secondaryButton);
  }
}

- (void)_didTapAlternatePrimaryAction
{
  buttonSelectedBlock = [(_MKPlaceActionButtonController *)self->_alternatePrimaryButtonController buttonSelectedBlock];

  if (buttonSelectedBlock)
  {
    buttonSelectedBlock2 = [(_MKPlaceActionButtonController *)self->_alternatePrimaryButtonController buttonSelectedBlock];
    buttonSelectedBlock2[2](buttonSelectedBlock2, self->_secondaryButton);
  }
}

- (void)_didTapPrimaryAction
{
  v4 = objc_alloc_init(MUPresentationOptions);
  [(MUPresentationOptions *)v4 setSourceView:self->_primaryButton];
  [(MUPlaceHeaderButton *)self->_primaryButton frame];
  [(MUPresentationOptions *)v4 setSourceRect:?];
  delegate = [(MUHeaderButtonsView *)self delegate];
  [delegate headerButtonsView:self didSelectPrimaryType:self->_primaryButtonType withPresentationOptions:v4];
}

- (MUHeaderButtonsView)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = MUHeaderButtonsView;
  v6 = [(MUHeaderButtonsView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    [(MUHeaderButtonsView *)v7 setAccessibilityIdentifier:@"HeaderButtons"];
    [(MUHeaderButtonsView *)v7 _setupSubviews];
  }

  return v7;
}

@end