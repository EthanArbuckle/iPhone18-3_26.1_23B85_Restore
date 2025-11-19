@interface CSToggleButton
- (CSToggleButton)initWithConfiguration:(id)a3;
- (void)_incrementState;
- (void)_onTouchDown;
- (void)_onTouchUp;
- (void)_updateLights;
- (void)setHandler:(id)a3;
@end

@implementation CSToggleButton

- (CSToggleButton)initWithConfiguration:(id)a3
{
  v5 = a3;
  v56.receiver = self;
  v56.super_class = CSToggleButton;
  v6 = [(CSToggleButton *)&v56 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    v54 = v5;
    p_toggleConfiguration = &v6->_toggleConfiguration;
    objc_storeStrong(&v6->_toggleConfiguration, a3);
    v7->_toggleState = 0;
    v9 = [[CSToggleButtonIconView alloc] initWithConfiguration:*p_toggleConfiguration];
    iconView = v7->_iconView;
    v7->_iconView = v9;

    [(CSToggleButtonIconView *)v7->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CSToggleButtonIconView *)v7->_iconView setState:0];
    [(CSToggleButtonIconView *)v7->_iconView setUserInteractionEnabled:0];
    [(CSToggleButton *)v7 addSubview:v7->_iconView];
    v11 = objc_alloc_init(MEMORY[0x277D75A70]);
    statusLightContainer = v7->_statusLightContainer;
    v7->_statusLightContainer = v11;

    [(UIStackView *)v7->_statusLightContainer setAxis:0];
    [(UIStackView *)v7->_statusLightContainer setSpacing:8.0];
    [(UIStackView *)v7->_statusLightContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CSToggleButton *)v7 addSubview:v7->_statusLightContainer];
    if ([*p_toggleConfiguration lightCount])
    {
      v13 = 0;
      do
      {
        v14 = objc_alloc_init(CSToggleButtonStatusLightView);
        [(UIStackView *)v7->_statusLightContainer addArrangedSubview:v14];

        ++v13;
      }

      while (v13 < [*p_toggleConfiguration lightCount]);
    }

    v15 = objc_alloc_init(MEMORY[0x277D756C0]);
    label = v7->_label;
    v7->_label = v15;

    v17 = v7->_label;
    v18 = [*p_toggleConfiguration caption];
    [(UILabel *)v17 setText:v18];

    v19 = v7->_label;
    v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76930]];
    [(UILabel *)v19 setFont:v20];

    v21 = v7->_label;
    v22 = [MEMORY[0x277D75340] secondaryLabelColor];
    [(UILabel *)v21 setTextColor:v22];

    [(UILabel *)v7->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7->_label setNumberOfLines:0];
    [(CSToggleButton *)v7 addSubview:v7->_label];
    v43 = MEMORY[0x277CCAAD0];
    v53 = [(CSToggleButtonIconView *)v7->_iconView widthAnchor];
    v52 = [v53 constraintEqualToConstant:32.0];
    v55[0] = v52;
    v51 = [(CSToggleButtonIconView *)v7->_iconView heightAnchor];
    v50 = [v51 constraintEqualToConstant:32.0];
    v55[1] = v50;
    v49 = [(CSToggleButtonIconView *)v7->_iconView topAnchor];
    v48 = [(CSToggleButton *)v7 topAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v55[2] = v47;
    v46 = [(CSToggleButtonIconView *)v7->_iconView centerXAnchor];
    v45 = [(CSToggleButton *)v7 centerXAnchor];
    v44 = [v46 constraintEqualToAnchor:v45];
    v55[3] = v44;
    v42 = [(UIStackView *)v7->_statusLightContainer topAnchor];
    v41 = [(CSToggleButtonIconView *)v7->_iconView bottomAnchor];
    v40 = [v42 constraintEqualToAnchor:v41 constant:18.0];
    v55[4] = v40;
    v39 = [(UIStackView *)v7->_statusLightContainer centerXAnchor];
    v38 = [(CSToggleButton *)v7 centerXAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v55[5] = v37;
    v36 = [(UILabel *)v7->_label topAnchor];
    v35 = [(UIStackView *)v7->_statusLightContainer bottomAnchor];
    v34 = [v36 constraintEqualToAnchor:v35 constant:15.0];
    v55[6] = v34;
    v33 = [(UILabel *)v7->_label centerXAnchor];
    v23 = [(CSToggleButton *)v7 centerXAnchor];
    v24 = [v33 constraintEqualToAnchor:v23];
    v55[7] = v24;
    v25 = [(UILabel *)v7->_label widthAnchor];
    v26 = [(CSToggleButton *)v7 widthAnchor];
    v27 = [v25 constraintLessThanOrEqualToAnchor:v26];
    v55[8] = v27;
    v28 = [(UILabel *)v7->_label bottomAnchor];
    v29 = [(CSToggleButton *)v7 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:-15.0];
    v55[9] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:10];
    [v43 activateConstraints:v31];

    [(CSToggleButton *)v7 addTarget:v7 action:sel__onTouchDown forControlEvents:1];
    [(CSToggleButton *)v7 addTarget:v7 action:sel__onTouchUp forControlEvents:192];
    [(CSToggleButton *)v7 _updateLights];
    v5 = v54;
  }

  return v7;
}

- (void)setHandler:(id)a3
{
  v4 = _Block_copy(a3);
  handler = self->_handler;
  self->_handler = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_updateLights
{
  [(CSToggleButtonIconView *)self->_iconView setState:self->_toggleState];
  v3 = [(UIStackView *)self->_statusLightContainer arrangedSubviews];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__CSToggleButton__updateLights__block_invoke;
  v4[3] = &unk_278E0B348;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

void __31__CSToggleButton__updateLights__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v5 setOn:{objc_msgSend(v4, "toggleState") > a3}];
}

- (void)_incrementState
{
  v3 = [(CSToggleButtonConfiguration *)self->_toggleConfiguration lightCount];
  v4 = [(CSToggleButtonConfiguration *)self->_toggleConfiguration lightCount];
  toggleState = self->_toggleState;
  if (toggleState == v3)
  {
    v6 = v4 != 0;
  }

  else
  {
    v6 = toggleState + 1;
  }

  [(CSToggleButton *)self setToggleState:v6];
}

- (void)_onTouchDown
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __30__CSToggleButton__onTouchDown__block_invoke;
  v2[3] = &unk_278E0ACD8;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.2];
}

uint64_t __30__CSToggleButton__onTouchDown__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 744);
  CGAffineTransformMakeScale(&v3, 0.9, 0.9);
  return [v1 setTransform:&v3];
}

- (void)_onTouchUp
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__CSToggleButton__onTouchUp__block_invoke;
  v4[3] = &unk_278E0ACD8;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.2];
  [(CSToggleButton *)self _incrementState];
  handler = self->_handler;
  if (handler)
  {
    handler[2](handler, self->_toggleState);
  }
}

uint64_t __28__CSToggleButton__onTouchUp__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 744);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

@end