@interface CPUISongAttributionView
- (CPUISongAttributionView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setArtwork:(id)artwork;
- (void)setName:(id)name;
@end

@implementation CPUISongAttributionView

- (CPUISongAttributionView)initWithFrame:(CGRect)frame
{
  v39[9] = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = CPUISongAttributionView;
  v3 = [(CPUISongAttributionView *)&v38 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(CPUISongAttributionView *)v3 layer];
    [layer setAllowsGroupBlending:0];

    [(CPUISongAttributionView *)v4 setClipsToBounds:1];
    v6 = objc_opt_new();
    button = v4->_button;
    v4->_button = v6;

    [(CPUIModernButton *)v4->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUIModernButton *)v4->_button setShowButtonBackgroundShape:1];
    [(CPUIModernButton *)v4->_button setContentEdgeInsets:0.0, 24.0, 0.0, 5.0];
    v8 = objc_opt_new();
    artworkImageView = v4->_artworkImageView;
    v4->_artworkImageView = v8;

    [(UIImageView *)v4->_artworkImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_artworkImageView setContentMode:2];
    [(UIImageView *)v4->_artworkImageView setClipsToBounds:1];
    [(CPUISongAttributionView *)v4 addSubview:v4->_button];
    [(CPUISongAttributionView *)v4 addSubview:v4->_artworkImageView];
    v27 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(CPUIModernButton *)v4->_button leadingAnchor];
    leadingAnchor2 = [(CPUISongAttributionView *)v4 leadingAnchor];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v39[0] = v35;
    trailingAnchor = [(CPUIModernButton *)v4->_button trailingAnchor];
    trailingAnchor2 = [(CPUISongAttributionView *)v4 trailingAnchor];
    v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v39[1] = v32;
    topAnchor = [(CPUIModernButton *)v4->_button topAnchor];
    topAnchor2 = [(CPUISongAttributionView *)v4 topAnchor];
    v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v39[2] = v29;
    bottomAnchor = [(CPUIModernButton *)v4->_button bottomAnchor];
    bottomAnchor2 = [(CPUISongAttributionView *)v4 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v39[3] = v25;
    heightAnchor = [(UIImageView *)v4->_artworkImageView heightAnchor];
    widthAnchor = [(UIImageView *)v4->_artworkImageView widthAnchor];
    v22 = [heightAnchor constraintEqualToAnchor:widthAnchor];
    v39[4] = v22;
    widthAnchor2 = [(UIImageView *)v4->_artworkImageView widthAnchor];
    v20 = [widthAnchor2 constraintEqualToConstant:14.0];
    v39[5] = v20;
    leadingAnchor3 = [(UIImageView *)v4->_artworkImageView leadingAnchor];
    leadingAnchor4 = [(CPUISongAttributionView *)v4 leadingAnchor];
    v12 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:4.0];
    v39[6] = v12;
    centerYAnchor = [(UIImageView *)v4->_artworkImageView centerYAnchor];
    centerYAnchor2 = [(CPUISongAttributionView *)v4 centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v39[7] = v15;
    heightAnchor2 = [(CPUISongAttributionView *)v4 heightAnchor];
    v17 = [heightAnchor2 constraintEqualToConstant:22.0];
    v39[8] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:9];
    [v27 activateConstraints:v18];
  }

  return v4;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = CPUISongAttributionView;
  [(CPUISongAttributionView *)&v8 layoutSubviews];
  artworkImageView = [(CPUISongAttributionView *)self artworkImageView];
  [artworkImageView bounds];
  v5 = v4 * 0.5;
  artworkImageView2 = [(CPUISongAttributionView *)self artworkImageView];
  [artworkImageView2 _setContinuousCornerRadius:v5];

  [(CPUISongAttributionView *)self bounds];
  [(CPUISongAttributionView *)self _setContinuousCornerRadius:v7 * 0.5];
}

- (void)setArtwork:(id)artwork
{
  objc_storeStrong(&self->_artwork, artwork);
  artworkCopy = artwork;
  artworkImageView = [(CPUISongAttributionView *)self artworkImageView];
  [artworkImageView setImage:artworkCopy];
}

- (void)setName:(id)name
{
  objc_storeStrong(&self->_name, name);
  nameCopy = name;
  button = [(CPUISongAttributionView *)self button];
  [button setTitle:nameCopy forState:0];
}

@end