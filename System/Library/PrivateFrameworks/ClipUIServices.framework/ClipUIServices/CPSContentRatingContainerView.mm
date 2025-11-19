@interface CPSContentRatingContainerView
- (CPSContentRatingContainerView)init;
- (void)setImage:(id)a3 usesVibrantAppearance:(BOOL)a4;
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
    v5 = [(UIVisualEffectView *)v2->_visualEffectView contentView];
    v6 = objc_alloc_init(CPSScaledImageView);
    contentRatingImageView = v2->_contentRatingImageView;
    v2->_contentRatingImageView = v6;

    [(CPSScaledImageView *)v2->_contentRatingImageView setContentMode:0];
    [(CPSScaledImageView *)v2->_contentRatingImageView setTextStyleForScaling:*MEMORY[0x277D76968]];
    [(CPSScaledImageView *)v2->_contentRatingImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v8) = 1148846080;
    [(CPSScaledImageView *)v2->_contentRatingImageView setContentCompressionResistancePriority:0 forAxis:v8];
    [v5 addSubview:v2->_contentRatingImageView];
    v28 = MEMORY[0x277CCAAD0];
    v37 = [(UIVisualEffectView *)v2->_visualEffectView leadingAnchor];
    v36 = [(CPSContentRatingContainerView *)v2 leadingAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v39[0] = v35;
    v34 = [(UIVisualEffectView *)v2->_visualEffectView topAnchor];
    v33 = [(CPSContentRatingContainerView *)v2 topAnchor];
    v32 = [v34 constraintEqualToAnchor:v33];
    v39[1] = v32;
    v31 = [(UIVisualEffectView *)v2->_visualEffectView trailingAnchor];
    v30 = [(CPSContentRatingContainerView *)v2 trailingAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v39[2] = v29;
    v27 = [(UIVisualEffectView *)v2->_visualEffectView bottomAnchor];
    v26 = [(CPSContentRatingContainerView *)v2 bottomAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v39[3] = v25;
    v23 = [(CPSScaledImageView *)v2->_contentRatingImageView leadingAnchor];
    v22 = [v5 leadingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v39[4] = v21;
    v20 = [(CPSScaledImageView *)v2->_contentRatingImageView topAnchor];
    v9 = [v5 topAnchor];
    v10 = [v20 constraintEqualToAnchor:v9];
    v39[5] = v10;
    v11 = [(CPSScaledImageView *)v2->_contentRatingImageView trailingAnchor];
    v24 = v5;
    v12 = [v5 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v39[6] = v13;
    v14 = [(CPSScaledImageView *)v2->_contentRatingImageView bottomAnchor];
    v15 = [v5 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v39[7] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:8];
    [v28 activateConstraints:v17];

    v18 = v2;
  }

  return v2;
}

- (void)setImage:(id)a3 usesVibrantAppearance:(BOOL)a4
{
  v4 = a4;
  [(CPSScaledImageView *)self->_contentRatingImageView setImage:a3];
  if (v4)
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

  [(CPSScaledImageView *)contentRatingImageView setAccessibilityIgnoresInvertColors:!v4];
}

@end