@interface HUCCInfoMosaicGridView
- (HUCCFakeMosaicGridView)backgroundGridView;
- (HUCCInfoMosaicGridView)initWithCoder:(id)a3;
- (HUCCInfoMosaicGridView)initWithFrame:(CGRect)a3;
- (HUMosaicLayoutGeometry)mosaicLayoutGeometry;
- (HUProvidesMosaicFrames)frameDelegate;
- (UIImageView)iconView;
- (UILabel)actionLabel;
- (UILabel)infoLabel;
- (void)_invalidateConstraints;
- (void)_setupInfoMosaicView;
- (void)resetView;
- (void)setFrameDelegate:(id)a3;
- (void)setMosaicLayoutGeometry:(id)a3;
- (void)updateConstraints;
- (void)updateUIWithInfoText:(id)a3 andActionText:(id)a4;
@end

@implementation HUCCInfoMosaicGridView

- (HUCCInfoMosaicGridView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUCCInfoMosaicGridView;
  v3 = [(HUCCInfoMosaicGridView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUCCInfoMosaicGridView *)v3 _setupInfoMosaicView];
  }

  return v4;
}

- (HUCCInfoMosaicGridView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUCCInfoMosaicGridView;
  v3 = [(HUCCInfoMosaicGridView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(HUCCInfoMosaicGridView *)v3 _setupInfoMosaicView];
  }

  return v4;
}

- (void)resetView
{
  v3 = [(HUCCInfoMosaicGridView *)self infoLabel];
  [v3 setText:&stru_2823E0EE8];

  v4 = [(HUCCInfoMosaicGridView *)self actionLabel];
  [v4 setText:&stru_2823E0EE8];
}

- (void)updateUIWithInfoText:(id)a3 andActionText:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUCCInfoMosaicGridView *)self infoLabel];
  [v8 setText:v7];

  v9 = [(HUCCInfoMosaicGridView *)self actionLabel];
  [v9 setText:v6];

  [(HUCCInfoMosaicGridView *)self setNeedsLayout];
}

- (void)setFrameDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HUCCInfoMosaicGridView *)self backgroundGridView];
  [v5 setFrameDelegate:v4];
}

- (HUMosaicLayoutGeometry)mosaicLayoutGeometry
{
  v2 = [(HUCCInfoMosaicGridView *)self backgroundGridView];
  v3 = [v2 mosaicLayoutGeometry];

  return v3;
}

- (void)setMosaicLayoutGeometry:(id)a3
{
  v4 = a3;
  v5 = [(HUCCInfoMosaicGridView *)self backgroundGridView];
  [v5 setMosaicLayoutGeometry:v4];
}

- (void)_setupInfoMosaicView
{
  v17[3] = *MEMORY[0x277D85DE8];
  [(HUCCInfoMosaicGridView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [(HUCCInfoMosaicGridView *)self backgroundGridView];
  [(HUCCInfoMosaicGridView *)self addSubview:v3];

  v4 = objc_alloc(MEMORY[0x277D75A68]);
  v5 = [(HUCCInfoMosaicGridView *)self iconView];
  v6 = [(HUCCInfoMosaicGridView *)self infoLabel];
  v17[1] = v6;
  v7 = [(HUCCInfoMosaicGridView *)self actionLabel];
  v17[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v9 = [v4 initWithArrangedSubviews:v8];
  [(HUCCInfoMosaicGridView *)self setStackView:v9];

  v10 = [(HUCCInfoMosaicGridView *)self stackView];
  v11 = [(HUCCInfoMosaicGridView *)self iconView];
  [v10 setCustomSpacing:v11 afterView:16.0];

  v12 = [(HUCCInfoMosaicGridView *)self stackView];
  v13 = [(HUCCInfoMosaicGridView *)self infoLabel];
  [v12 setCustomSpacing:v13 afterView:8.0];

  v14 = [(HUCCInfoMosaicGridView *)self stackView];
  [v14 setAxis:1];

  v15 = [(HUCCInfoMosaicGridView *)self stackView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(HUCCInfoMosaicGridView *)self stackView];
  [(HUCCInfoMosaicGridView *)self addSubview:v16];

  [(HUCCInfoMosaicGridView *)self setNeedsUpdateConstraints];
}

- (void)_invalidateConstraints
{
  v3 = [(HUCCInfoMosaicGridView *)self infoMosaicConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(HUCCInfoMosaicGridView *)self infoMosaicConstraints];
    [v4 deactivateConstraints:v5];
  }

  [(HUCCInfoMosaicGridView *)self setInfoMosaicConstraints:0];

  [(HUCCInfoMosaicGridView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v3 = [(HUCCInfoMosaicGridView *)self infoMosaicConstraints];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = [(HUCCInfoMosaicGridView *)self backgroundGridView];
    v6 = [v5 leadingAnchor];
    v7 = [(HUCCInfoMosaicGridView *)self leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    [v4 addObject:v8];

    v9 = [(HUCCInfoMosaicGridView *)self backgroundGridView];
    v10 = [v9 trailingAnchor];
    v11 = [(HUCCInfoMosaicGridView *)self trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [v4 addObject:v12];

    v13 = [(HUCCInfoMosaicGridView *)self backgroundGridView];
    v14 = [v13 topAnchor];
    v15 = [(HUCCInfoMosaicGridView *)self topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v4 addObject:v16];

    v17 = [(HUCCInfoMosaicGridView *)self backgroundGridView];
    v18 = [v17 bottomAnchor];
    v19 = [(HUCCInfoMosaicGridView *)self bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    [v4 addObject:v20];

    v21 = [(HUCCInfoMosaicGridView *)self iconView];
    v22 = [v21 heightAnchor];
    v23 = [v22 constraintEqualToConstant:38.0];
    [v4 addObject:v23];

    v24 = [(HUCCInfoMosaicGridView *)self stackView];
    v25 = [v24 leadingAnchor];
    v26 = [(HUCCInfoMosaicGridView *)self layoutMarginsGuide];
    v27 = [v26 leadingAnchor];
    v28 = [v25 constraintEqualToAnchor:v27 constant:16.0];

    LODWORD(v29) = 1144750080;
    [v28 setPriority:v29];
    [v4 addObject:v28];
    v30 = [(HUCCInfoMosaicGridView *)self stackView];
    v31 = [v30 trailingAnchor];
    v32 = [(HUCCInfoMosaicGridView *)self layoutMarginsGuide];
    v33 = [v32 trailingAnchor];
    v34 = [v31 constraintEqualToAnchor:v33 constant:-16.0];

    LODWORD(v35) = 1144750080;
    [v34 setPriority:v35];
    [v4 addObject:v34];
    v36 = [(HUCCInfoMosaicGridView *)self stackView];
    v37 = [v36 leadingAnchor];
    v38 = [(HUCCInfoMosaicGridView *)self layoutMarginsGuide];
    v39 = [v38 leadingAnchor];
    v40 = [v37 constraintEqualToAnchor:v39 constant:8.0];
    [v4 addObject:v40];

    v41 = [(HUCCInfoMosaicGridView *)self stackView];
    v42 = [v41 trailingAnchor];
    v43 = [(HUCCInfoMosaicGridView *)self layoutMarginsGuide];
    v44 = [v43 trailingAnchor];
    v45 = [v42 constraintEqualToAnchor:v44 constant:-8.0];
    [v4 addObject:v45];

    v46 = [(HUCCInfoMosaicGridView *)self stackView];
    v47 = [v46 centerYAnchor];
    v48 = [(HUCCInfoMosaicGridView *)self layoutMarginsGuide];
    v49 = [v48 centerYAnchor];
    v50 = [v47 constraintEqualToAnchor:v49];
    [v4 addObject:v50];

    v51 = [(HUCCInfoMosaicGridView *)self stackView];
    v52 = [v51 heightAnchor];
    v53 = [(HUCCInfoMosaicGridView *)self heightAnchor];
    v54 = [v52 constraintLessThanOrEqualToAnchor:v53];
    [v4 addObject:v54];

    [(HUCCInfoMosaicGridView *)self setInfoMosaicConstraints:v4];
    v55 = MEMORY[0x277CCAAD0];
    v56 = [(HUCCInfoMosaicGridView *)self infoMosaicConstraints];
    [v55 activateConstraints:v56];
  }

  v57.receiver = self;
  v57.super_class = HUCCInfoMosaicGridView;
  [(HUCCInfoMosaicGridView *)&v57 updateConstraints];
}

- (UILabel)infoLabel
{
  infoLabel = self->_infoLabel;
  if (!infoLabel)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_infoLabel;
    self->_infoLabel = v5;

    v7 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)self->_infoLabel setTextColor:v7];

    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)self->_infoLabel setFont:v8];

    [(UILabel *)self->_infoLabel setTextAlignment:1];
    [(UILabel *)self->_infoLabel setNumberOfLines:3];
    infoLabel = self->_infoLabel;
  }

  return infoLabel;
}

- (UILabel)actionLabel
{
  actionLabel = self->_actionLabel;
  if (!actionLabel)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_actionLabel;
    self->_actionLabel = v5;

    v7 = [MEMORY[0x277D75348] systemBlueColor];
    [(UILabel *)self->_actionLabel setTextColor:v7];

    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)self->_actionLabel setFont:v8];

    [(UILabel *)self->_actionLabel setTextAlignment:1];
    actionLabel = self->_actionLabel;
  }

  return actionLabel;
}

- (UIImageView)iconView
{
  iconView = self->_iconView;
  if (!iconView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E8]);
    v5 = self->_iconView;
    self->_iconView = v4;

    [(UIImageView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)self->_iconView setContentMode:1];
    v6 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIImageView *)self->_iconView setTintColor:v6];

    v7 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:38.0];
    v8 = [MEMORY[0x277D755B8] systemImageNamed:@"homekit"];
    v9 = [v8 imageWithConfiguration:v7];
    v10 = [v9 imageWithRenderingMode:2];
    [(UIImageView *)self->_iconView setImage:v10];

    iconView = self->_iconView;
  }

  return iconView;
}

- (HUCCFakeMosaicGridView)backgroundGridView
{
  backgroundGridView = self->_backgroundGridView;
  if (!backgroundGridView)
  {
    v4 = [HUCCFakeMosaicGridView alloc];
    v5 = [(HUCCFakeMosaicGridView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v6 = self->_backgroundGridView;
    self->_backgroundGridView = v5;

    [(HUCCFakeMosaicGridView *)self->_backgroundGridView setTranslatesAutoresizingMaskIntoConstraints:0];
    backgroundGridView = self->_backgroundGridView;
  }

  return backgroundGridView;
}

- (HUProvidesMosaicFrames)frameDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_frameDelegate);

  return WeakRetained;
}

@end