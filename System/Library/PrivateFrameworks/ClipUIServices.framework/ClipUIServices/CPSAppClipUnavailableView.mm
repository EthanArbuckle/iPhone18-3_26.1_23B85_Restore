@interface CPSAppClipUnavailableView
- (CPSAppClipUnavailableView)initWithFrame:(CGRect)frame;
- (void)_openButtonTapped:(id)tapped;
- (void)_setUpViews;
- (void)enableURLFallbackWithAction:(id)action;
@end

@implementation CPSAppClipUnavailableView

- (CPSAppClipUnavailableView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CPSAppClipUnavailableView;
  v3 = [(CPSAppClipUnavailableView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CPSAppClipUnavailableView *)v3 _setUpViews];
    v5 = v4;
  }

  return v4;
}

- (void)_setUpViews
{
  v20[4] = *MEMORY[0x277D85DE8];
  v3 = [CPSVibrantLabel alloc];
  v4 = [(CPSVibrantLabel *)v3 initWithTextStyle:*MEMORY[0x277D76918] textVariant:0 vibrancyEffectStyle:1];
  reasonLabel = self->_reasonLabel;
  self->_reasonLabel = v4;

  [(CPSVibrantLabel *)self->_reasonLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CPSVibrantLabel *)self->_reasonLabel setNumberOfLines:3];
  [(CPSVibrantLabel *)self->_reasonLabel setAdjustsFontForContentSizeCategory:1];
  [(CPSVibrantLabel *)self->_reasonLabel setTextAlignment:1];
  [(CPSVibrantLabel *)self->_reasonLabel setLineBreakMode:5];
  [(CPSVibrantLabel *)self->_reasonLabel setAdjustsFontSizeToFitWidth:1];
  [(CPSAppClipUnavailableView *)self addSubview:self->_reasonLabel];
  v16 = MEMORY[0x277CCAAD0];
  centerXAnchor = [(CPSVibrantLabel *)self->_reasonLabel centerXAnchor];
  centerXAnchor2 = [(CPSAppClipUnavailableView *)self centerXAnchor];
  v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v20[0] = v17;
  centerYAnchor = [(CPSVibrantLabel *)self->_reasonLabel centerYAnchor];
  centerYAnchor2 = [(CPSAppClipUnavailableView *)self centerYAnchor];
  v8 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v20[1] = v8;
  widthAnchor = [(CPSAppClipUnavailableView *)self widthAnchor];
  widthAnchor2 = [(CPSVibrantLabel *)self->_reasonLabel widthAnchor];
  v11 = [widthAnchor constraintGreaterThanOrEqualToAnchor:widthAnchor2 multiplier:1.0 constant:60.0];
  v20[2] = v11;
  heightAnchor = [(CPSAppClipUnavailableView *)self heightAnchor];
  heightAnchor2 = [(CPSVibrantLabel *)self->_reasonLabel heightAnchor];
  v14 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2];
  v20[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
  [v16 activateConstraints:v15];
}

- (void)enableURLFallbackWithAction:(id)action
{
  v28[3] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v4 = [CPSButton alloc];
  v5 = _CPSLocalizedString();
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v7 = *MEMORY[0x277D76988];
  v8 = [(CPSButton *)v4 initWithTitle:v5 enabledTitleColor:systemBlueColor disabledTitleColor:0 backgroundColor:0 textStyle:*MEMORY[0x277D76988] cornerRadius:1 animatesAlphaWhenHighlighted:0.0];
  fallbackOpenButton = self->_fallbackOpenButton;
  self->_fallbackOpenButton = v8;

  v10 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v7 variant:8];
  titleLabel = [(CPSButton *)self->_fallbackOpenButton titleLabel];
  [titleLabel setFont:v10];

  [(CPSButton *)self->_fallbackOpenButton setContentEdgeInsets:8.0, 27.0, 8.0, 27.0];
  [(CPSButton *)self->_fallbackOpenButton addTarget:self action:sel__openButtonTapped_ forControlEvents:64];
  [(CPSAppClipUnavailableView *)self addSubview:self->_fallbackOpenButton];
  [(CPSButton *)self->_fallbackOpenButton setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v12) = 1144766464;
  [(CPSButton *)self->_fallbackOpenButton setContentCompressionResistancePriority:0 forAxis:v12];
  LODWORD(v13) = 1132134400;
  [(CPSButton *)self->_fallbackOpenButton setContentHuggingPriority:0 forAxis:v13];
  v25 = MEMORY[0x277CCAAD0];
  centerXAnchor = [(CPSButton *)self->_fallbackOpenButton centerXAnchor];
  centerXAnchor2 = [(CPSAppClipUnavailableView *)self centerXAnchor];
  v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v28[0] = v15;
  topAnchor = [(CPSButton *)self->_fallbackOpenButton topAnchor];
  bottomAnchor = [(CPSVibrantLabel *)self->_reasonLabel bottomAnchor];
  v18 = [topAnchor constraintEqualToAnchor:bottomAnchor];
  v28[1] = v18;
  bottomAnchor2 = [(CPSAppClipUnavailableView *)self bottomAnchor];
  bottomAnchor3 = [(CPSButton *)self->_fallbackOpenButton bottomAnchor];
  v21 = [bottomAnchor2 constraintGreaterThanOrEqualToAnchor:bottomAnchor3 constant:16.0];
  v28[2] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  [v25 activateConstraints:v22];

  v23 = MEMORY[0x245D3DDC0](actionCopy);
  fallbackURLAction = self->_fallbackURLAction;
  self->_fallbackURLAction = v23;
}

- (void)_openButtonTapped:(id)tapped
{
  fallbackURLAction = self->_fallbackURLAction;
  if (fallbackURLAction)
  {
    fallbackURLAction[2](fallbackURLAction, a2, tapped);
    fallbackURLAction = self->_fallbackURLAction;
  }

  self->_fallbackURLAction = 0;
}

@end