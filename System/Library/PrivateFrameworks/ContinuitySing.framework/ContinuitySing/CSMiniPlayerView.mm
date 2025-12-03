@interface CSMiniPlayerView
- (CSMiniPlayerView)initWithFrame:(CGRect)frame;
- (void)_addSubviewsForAutolayout:(id)autolayout;
- (void)updateViewStateToNormalWithMediaPlaying:(BOOL)playing playingSong:(id)song;
@end

@implementation CSMiniPlayerView

- (CSMiniPlayerView)initWithFrame:(CGRect)frame
{
  v66.receiver = self;
  v66.super_class = CSMiniPlayerView;
  v3 = [(CSMiniPlayerView *)&v66 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(CSMiniPlayerArtworkView);
    artworkView = v3->_artworkView;
    v3->_artworkView = v4;

    v6 = objc_alloc_init(MEMORY[0x277D756C0]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v6;

    [(UILabel *)v3->_titleLabel setNumberOfLines:1];
    v8 = v3->_titleLabel;
    labelColor = [MEMORY[0x277D75340] labelColor];
    [(UILabel *)v8 setTextColor:labelColor];

    v10 = v3->_titleLabel;
    v11 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76970] variant:1024];
    [(UILabel *)v10 setFont:v11];

    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    initForAutolayout = [objc_alloc(MEMORY[0x277D25700]) initForAutolayout];
    titleMarqueeView = v3->_titleMarqueeView;
    v3->_titleMarqueeView = initForAutolayout;

    contentView = [(MPUMarqueeView *)v3->_titleMarqueeView contentView];
    [contentView addSubview:v3->_titleLabel];

    [(MPUMarqueeView *)v3->_titleMarqueeView setViewForContentSize:v3->_titleLabel];
    [(MPUMarqueeView *)v3->_titleMarqueeView setAnimationReferenceView:v3->_titleMarqueeView];
    [(MPUMarqueeView *)v3->_titleMarqueeView setFadeEdgeInsets:0.0, 0.0, 0.0, 20.0];
    [(MPUMarqueeView *)v3->_titleMarqueeView setContentGap:32.0];
    LODWORD(v15) = 1131937792;
    [(MPUMarqueeView *)v3->_titleMarqueeView setContentCompressionResistancePriority:0 forAxis:v15];
    [(MPUMarqueeView *)v3->_titleMarqueeView setMarqueeDelay:5.0];
    [(MPUMarqueeView *)v3->_titleMarqueeView setUserInteractionEnabled:0];
    v16 = objc_alloc_init(MEMORY[0x277D756C0]);
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v16;

    [(UILabel *)v3->_subtitleLabel setNumberOfLines:1];
    v18 = v3->_subtitleLabel;
    secondaryLabelColor = [MEMORY[0x277D75340] secondaryLabelColor];
    [(UILabel *)v18 setTextColor:secondaryLabelColor];

    v20 = v3->_subtitleLabel;
    v21 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76930] weight:*MEMORY[0x277D74418]];
    [(UILabel *)v20 setFont:v21];

    [(UILabel *)v3->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    initForAutolayout2 = [objc_alloc(MEMORY[0x277D25700]) initForAutolayout];
    subtitleMarqueeView = v3->_subtitleMarqueeView;
    v3->_subtitleMarqueeView = initForAutolayout2;

    contentView2 = [(MPUMarqueeView *)v3->_subtitleMarqueeView contentView];
    [contentView2 addSubview:v3->_subtitleLabel];

    [(MPUMarqueeView *)v3->_subtitleMarqueeView setViewForContentSize:v3->_subtitleLabel];
    [(MPUMarqueeView *)v3->_subtitleMarqueeView setAnimationReferenceView:v3->_subtitleMarqueeView];
    [(MPUMarqueeView *)v3->_subtitleMarqueeView setFadeEdgeInsets:0.0, 0.0, 0.0, 20.0];
    [(MPUMarqueeView *)v3->_subtitleMarqueeView setContentGap:32.0];
    LODWORD(v25) = 1131937792;
    [(MPUMarqueeView *)v3->_subtitleMarqueeView setContentCompressionResistancePriority:0 forAxis:v25];
    [(MPUMarqueeView *)v3->_subtitleMarqueeView setUserInteractionEnabled:0];
    [(MPUMarqueeView *)v3->_subtitleMarqueeView setMarqueeDelay:5.0];
    [(MPUMarqueeView *)v3->_titleMarqueeView addCoordinatedMarqueeView:v3->_subtitleMarqueeView];
    if (_UISolariumEnabled())
    {
      v26 = [objc_alloc(MEMORY[0x277D763A8]) initWithVariant:0];
      [(CSMiniPlayerView *)v3 _setBackground:v26];
    }

    else
    {
      v26 = [MEMORY[0x277D75340] colorWithWhite:1.0 alpha:0.1];
      [(CSMiniPlayerView *)v3 setBackgroundColor:v26];
    }

    layer = [(CSMiniPlayerView *)v3 layer];
    [layer setCornerRadius:24.0];

    layer2 = [(CSMiniPlayerView *)v3 layer];
    [layer2 setCornerCurve:*MEMORY[0x277CDA128]];

    v65[0] = v3->_artworkView;
    v65[1] = v3->_titleMarqueeView;
    v65[2] = v3->_subtitleMarqueeView;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:3];
    [(CSMiniPlayerView *)v3 _addSubviewsForAutolayout:v29];

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v51 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(CSMiniPlayerArtworkView *)v3->_artworkView leadingAnchor];
    leadingAnchor2 = [(CSMiniPlayerView *)v3 leadingAnchor];
    v61 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v64[0] = v61;
    centerYAnchor = [(CSMiniPlayerArtworkView *)v3->_artworkView centerYAnchor];
    centerYAnchor2 = [(CSMiniPlayerView *)v3 centerYAnchor];
    v58 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v64[1] = v58;
    heightAnchor = [(CSMiniPlayerArtworkView *)v3->_artworkView heightAnchor];
    v56 = [heightAnchor constraintEqualToConstant:30.0];
    v64[2] = v56;
    widthAnchor = [(CSMiniPlayerArtworkView *)v3->_artworkView widthAnchor];
    v54 = [widthAnchor constraintEqualToConstant:30.0];
    v64[3] = v54;
    leadingAnchor3 = [(MPUMarqueeView *)v3->_titleMarqueeView leadingAnchor];
    trailingAnchor = [(CSMiniPlayerArtworkView *)v3->_artworkView trailingAnchor];
    v50 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:8.0];
    v64[4] = v50;
    topAnchor = [(MPUMarqueeView *)v3->_titleMarqueeView topAnchor];
    topAnchor2 = [(CSMiniPlayerView *)v3 topAnchor];
    v47 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:9.0];
    v64[5] = v47;
    trailingAnchor2 = [(MPUMarqueeView *)v3->_titleMarqueeView trailingAnchor];
    trailingAnchor3 = [(CSMiniPlayerView *)v3 trailingAnchor];
    v44 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-8.0];
    v64[6] = v44;
    leadingAnchor4 = [(MPUMarqueeView *)v3->_subtitleMarqueeView leadingAnchor];
    leadingAnchor5 = [(MPUMarqueeView *)v3->_titleMarqueeView leadingAnchor];
    v41 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v64[7] = v41;
    topAnchor3 = [(MPUMarqueeView *)v3->_subtitleMarqueeView topAnchor];
    bottomAnchor = [(MPUMarqueeView *)v3->_titleMarqueeView bottomAnchor];
    v31 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:1.0];
    v64[8] = v31;
    bottomAnchor2 = [(MPUMarqueeView *)v3->_subtitleMarqueeView bottomAnchor];
    bottomAnchor3 = [(CSMiniPlayerView *)v3 bottomAnchor];
    v34 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-8.0];
    v64[9] = v34;
    trailingAnchor4 = [(MPUMarqueeView *)v3->_subtitleMarqueeView trailingAnchor];
    trailingAnchor5 = [(MPUMarqueeView *)v3->_titleMarqueeView trailingAnchor];
    v37 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v64[10] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:11];
    [v51 activateConstraints:v38];

    [(CSMiniPlayerView *)v3 updateViewStateToHidden];
  }

  return v3;
}

- (void)_addSubviewsForAutolayout:(id)autolayout
{
  autolayoutCopy = autolayout;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [autolayoutCopy countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(autolayoutCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [(CSMiniPlayerView *)self addSubview:v9];
        [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      v6 = [autolayoutCopy countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }
}

- (void)updateViewStateToNormalWithMediaPlaying:(BOOL)playing playingSong:(id)song
{
  songCopy = song;
  [(CSMiniPlayerView *)self setAlpha:1.0];
  titleLabel = self->_titleLabel;
  if (songCopy)
  {
    title = [songCopy title];
    [(UILabel *)titleLabel setText:title];

    subtitleLabel = self->_subtitleLabel;
    artist = [songCopy artist];
    name = [artist name];
    [(UILabel *)subtitleLabel setText:name];

    artworkView = self->_artworkView;
    artworkCatalog = [songCopy artworkCatalog];
    [(CSMiniPlayerArtworkView *)artworkView setArtwork:artworkCatalog];
  }

  else
  {
    [(UILabel *)titleLabel setText:0];
    [(UILabel *)self->_subtitleLabel setText:0];
    [(CSMiniPlayerArtworkView *)self->_artworkView setArtwork:0];
  }
}

@end