@interface CPSContentRatingContainerView
- (CPSContentRatingContainerView)init;
- (void)setImage:(id)image usesVibrantAppearance:(BOOL)appearance;
@end

@implementation CPSContentRatingContainerView

- (CPSContentRatingContainerView)init
{
  v39[8] = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = CPSContentRatingContainerView;
  v2 = [(CPSContentRatingContainerView *)&v38 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    visualEffectView = v2->_visualEffectView;
    v2->_visualEffectView = v3;

    [(UIVisualEffectView *)v2->_visualEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPSContentRatingContainerView *)v2 addSubview:v2->_visualEffectView];
    contentView = [(UIVisualEffectView *)v2->_visualEffectView contentView];
    v6 = objc_alloc_init(CPSScaledImageView);
    contentRatingImageView = v2->_contentRatingImageView;
    v2->_contentRatingImageView = v6;

    [(CPSScaledImageView *)v2->_contentRatingImageView setContentMode:0];
    [(CPSScaledImageView *)v2->_contentRatingImageView setTextStyleForScaling:*MEMORY[0x277D76968]];
    [(CPSScaledImageView *)v2->_contentRatingImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v8) = 1148846080;
    [(CPSScaledImageView *)v2->_contentRatingImageView setContentCompressionResistancePriority:0 forAxis:v8];
    [contentView addSubview:v2->_contentRatingImageView];
    v28 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIVisualEffectView *)v2->_visualEffectView leadingAnchor];
    leadingAnchor2 = [(CPSContentRatingContainerView *)v2 leadingAnchor];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v39[0] = v35;
    topAnchor = [(UIVisualEffectView *)v2->_visualEffectView topAnchor];
    topAnchor2 = [(CPSContentRatingContainerView *)v2 topAnchor];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v39[1] = v32;
    trailingAnchor = [(UIVisualEffectView *)v2->_visualEffectView trailingAnchor];
    trailingAnchor2 = [(CPSContentRatingContainerView *)v2 trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v39[2] = v29;
    bottomAnchor = [(UIVisualEffectView *)v2->_visualEffectView bottomAnchor];
    bottomAnchor2 = [(CPSContentRatingContainerView *)v2 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v39[3] = v25;
    leadingAnchor3 = [(CPSScaledImageView *)v2->_contentRatingImageView leadingAnchor];
    leadingAnchor4 = [contentView leadingAnchor];
    v21 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v39[4] = v21;
    topAnchor3 = [(CPSScaledImageView *)v2->_contentRatingImageView topAnchor];
    topAnchor4 = [contentView topAnchor];
    v10 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v39[5] = v10;
    trailingAnchor3 = [(CPSScaledImageView *)v2->_contentRatingImageView trailingAnchor];
    v24 = contentView;
    trailingAnchor4 = [contentView trailingAnchor];
    v13 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v39[6] = v13;
    bottomAnchor3 = [(CPSScaledImageView *)v2->_contentRatingImageView bottomAnchor];
    bottomAnchor4 = [contentView bottomAnchor];
    v16 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v39[7] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:8];
    [v28 activateConstraints:v17];

    v18 = v2;
  }

  return v2;
}

- (void)setImage:(id)image usesVibrantAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  [(CPSScaledImageView *)self->_contentRatingImageView setImage:image];
  if (appearanceCopy)
  {
    v6 = [MEMORY[0x277D75210] effectWithStyle:8];
    v7 = [MEMORY[0x277D75D00] effectForBlurEffect:v6 style:1];
    [(UIVisualEffectView *)self->_visualEffectView setEffect:v7];
  }

  else
  {
    [(UIVisualEffectView *)self->_visualEffectView setEffect:0];
  }

  contentRatingImageView = self->_contentRatingImageView;

  [(CPSScaledImageView *)contentRatingImageView setAccessibilityIgnoresInvertColors:!appearanceCopy];
}

@end