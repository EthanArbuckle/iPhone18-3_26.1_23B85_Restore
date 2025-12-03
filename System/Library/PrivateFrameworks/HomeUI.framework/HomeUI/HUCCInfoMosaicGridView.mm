@interface HUCCInfoMosaicGridView
- (HUCCFakeMosaicGridView)backgroundGridView;
- (HUCCInfoMosaicGridView)initWithCoder:(id)coder;
- (HUCCInfoMosaicGridView)initWithFrame:(CGRect)frame;
- (HUMosaicLayoutGeometry)mosaicLayoutGeometry;
- (HUProvidesMosaicFrames)frameDelegate;
- (UIImageView)iconView;
- (UILabel)actionLabel;
- (UILabel)infoLabel;
- (void)_invalidateConstraints;
- (void)_setupInfoMosaicView;
- (void)resetView;
- (void)setFrameDelegate:(id)delegate;
- (void)setMosaicLayoutGeometry:(id)geometry;
- (void)updateConstraints;
- (void)updateUIWithInfoText:(id)text andActionText:(id)actionText;
@end

@implementation HUCCInfoMosaicGridView

- (HUCCInfoMosaicGridView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUCCInfoMosaicGridView;
  v3 = [(HUCCInfoMosaicGridView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUCCInfoMosaicGridView *)v3 _setupInfoMosaicView];
  }

  return v4;
}

- (HUCCInfoMosaicGridView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HUCCInfoMosaicGridView;
  v3 = [(HUCCInfoMosaicGridView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(HUCCInfoMosaicGridView *)v3 _setupInfoMosaicView];
  }

  return v4;
}

- (void)resetView
{
  infoLabel = [(HUCCInfoMosaicGridView *)self infoLabel];
  [infoLabel setText:&stru_2823E0EE8];

  actionLabel = [(HUCCInfoMosaicGridView *)self actionLabel];
  [actionLabel setText:&stru_2823E0EE8];
}

- (void)updateUIWithInfoText:(id)text andActionText:(id)actionText
{
  actionTextCopy = actionText;
  textCopy = text;
  infoLabel = [(HUCCInfoMosaicGridView *)self infoLabel];
  [infoLabel setText:textCopy];

  actionLabel = [(HUCCInfoMosaicGridView *)self actionLabel];
  [actionLabel setText:actionTextCopy];

  [(HUCCInfoMosaicGridView *)self setNeedsLayout];
}

- (void)setFrameDelegate:(id)delegate
{
  delegateCopy = delegate;
  backgroundGridView = [(HUCCInfoMosaicGridView *)self backgroundGridView];
  [backgroundGridView setFrameDelegate:delegateCopy];
}

- (HUMosaicLayoutGeometry)mosaicLayoutGeometry
{
  backgroundGridView = [(HUCCInfoMosaicGridView *)self backgroundGridView];
  mosaicLayoutGeometry = [backgroundGridView mosaicLayoutGeometry];

  return mosaicLayoutGeometry;
}

- (void)setMosaicLayoutGeometry:(id)geometry
{
  geometryCopy = geometry;
  backgroundGridView = [(HUCCInfoMosaicGridView *)self backgroundGridView];
  [backgroundGridView setMosaicLayoutGeometry:geometryCopy];
}

- (void)_setupInfoMosaicView
{
  v17[3] = *MEMORY[0x277D85DE8];
  [(HUCCInfoMosaicGridView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  backgroundGridView = [(HUCCInfoMosaicGridView *)self backgroundGridView];
  [(HUCCInfoMosaicGridView *)self addSubview:backgroundGridView];

  v4 = objc_alloc(MEMORY[0x277D75A68]);
  iconView = [(HUCCInfoMosaicGridView *)self iconView];
  infoLabel = [(HUCCInfoMosaicGridView *)self infoLabel];
  v17[1] = infoLabel;
  actionLabel = [(HUCCInfoMosaicGridView *)self actionLabel];
  v17[2] = actionLabel;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v9 = [v4 initWithArrangedSubviews:v8];
  [(HUCCInfoMosaicGridView *)self setStackView:v9];

  stackView = [(HUCCInfoMosaicGridView *)self stackView];
  iconView2 = [(HUCCInfoMosaicGridView *)self iconView];
  [stackView setCustomSpacing:iconView2 afterView:16.0];

  stackView2 = [(HUCCInfoMosaicGridView *)self stackView];
  infoLabel2 = [(HUCCInfoMosaicGridView *)self infoLabel];
  [stackView2 setCustomSpacing:infoLabel2 afterView:8.0];

  stackView3 = [(HUCCInfoMosaicGridView *)self stackView];
  [stackView3 setAxis:1];

  stackView4 = [(HUCCInfoMosaicGridView *)self stackView];
  [stackView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  stackView5 = [(HUCCInfoMosaicGridView *)self stackView];
  [(HUCCInfoMosaicGridView *)self addSubview:stackView5];

  [(HUCCInfoMosaicGridView *)self setNeedsUpdateConstraints];
}

- (void)_invalidateConstraints
{
  infoMosaicConstraints = [(HUCCInfoMosaicGridView *)self infoMosaicConstraints];

  if (infoMosaicConstraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    infoMosaicConstraints2 = [(HUCCInfoMosaicGridView *)self infoMosaicConstraints];
    [v4 deactivateConstraints:infoMosaicConstraints2];
  }

  [(HUCCInfoMosaicGridView *)self setInfoMosaicConstraints:0];

  [(HUCCInfoMosaicGridView *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  infoMosaicConstraints = [(HUCCInfoMosaicGridView *)self infoMosaicConstraints];

  if (!infoMosaicConstraints)
  {
    array = [MEMORY[0x277CBEB18] array];
    backgroundGridView = [(HUCCInfoMosaicGridView *)self backgroundGridView];
    leadingAnchor = [backgroundGridView leadingAnchor];
    leadingAnchor2 = [(HUCCInfoMosaicGridView *)self leadingAnchor];
    v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v8];

    backgroundGridView2 = [(HUCCInfoMosaicGridView *)self backgroundGridView];
    trailingAnchor = [backgroundGridView2 trailingAnchor];
    trailingAnchor2 = [(HUCCInfoMosaicGridView *)self trailingAnchor];
    v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v12];

    backgroundGridView3 = [(HUCCInfoMosaicGridView *)self backgroundGridView];
    topAnchor = [backgroundGridView3 topAnchor];
    topAnchor2 = [(HUCCInfoMosaicGridView *)self topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v16];

    backgroundGridView4 = [(HUCCInfoMosaicGridView *)self backgroundGridView];
    bottomAnchor = [backgroundGridView4 bottomAnchor];
    bottomAnchor2 = [(HUCCInfoMosaicGridView *)self bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v20];

    iconView = [(HUCCInfoMosaicGridView *)self iconView];
    heightAnchor = [iconView heightAnchor];
    v23 = [heightAnchor constraintEqualToConstant:38.0];
    [array addObject:v23];

    stackView = [(HUCCInfoMosaicGridView *)self stackView];
    leadingAnchor3 = [stackView leadingAnchor];
    layoutMarginsGuide = [(HUCCInfoMosaicGridView *)self layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v28 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];

    LODWORD(v29) = 1144750080;
    [v28 setPriority:v29];
    [array addObject:v28];
    stackView2 = [(HUCCInfoMosaicGridView *)self stackView];
    trailingAnchor3 = [stackView2 trailingAnchor];
    layoutMarginsGuide2 = [(HUCCInfoMosaicGridView *)self layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide2 trailingAnchor];
    v34 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];

    LODWORD(v35) = 1144750080;
    [v34 setPriority:v35];
    [array addObject:v34];
    stackView3 = [(HUCCInfoMosaicGridView *)self stackView];
    leadingAnchor5 = [stackView3 leadingAnchor];
    layoutMarginsGuide3 = [(HUCCInfoMosaicGridView *)self layoutMarginsGuide];
    leadingAnchor6 = [layoutMarginsGuide3 leadingAnchor];
    v40 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:8.0];
    [array addObject:v40];

    stackView4 = [(HUCCInfoMosaicGridView *)self stackView];
    trailingAnchor5 = [stackView4 trailingAnchor];
    layoutMarginsGuide4 = [(HUCCInfoMosaicGridView *)self layoutMarginsGuide];
    trailingAnchor6 = [layoutMarginsGuide4 trailingAnchor];
    v45 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-8.0];
    [array addObject:v45];

    stackView5 = [(HUCCInfoMosaicGridView *)self stackView];
    centerYAnchor = [stackView5 centerYAnchor];
    layoutMarginsGuide5 = [(HUCCInfoMosaicGridView *)self layoutMarginsGuide];
    centerYAnchor2 = [layoutMarginsGuide5 centerYAnchor];
    v50 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v50];

    stackView6 = [(HUCCInfoMosaicGridView *)self stackView];
    heightAnchor2 = [stackView6 heightAnchor];
    heightAnchor3 = [(HUCCInfoMosaicGridView *)self heightAnchor];
    v54 = [heightAnchor2 constraintLessThanOrEqualToAnchor:heightAnchor3];
    [array addObject:v54];

    [(HUCCInfoMosaicGridView *)self setInfoMosaicConstraints:array];
    v55 = MEMORY[0x277CCAAD0];
    infoMosaicConstraints2 = [(HUCCInfoMosaicGridView *)self infoMosaicConstraints];
    [v55 activateConstraints:infoMosaicConstraints2];
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

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)self->_infoLabel setTextColor:systemWhiteColor];

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

    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [(UILabel *)self->_actionLabel setTextColor:systemBlueColor];

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
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIImageView *)self->_iconView setTintColor:systemWhiteColor];

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