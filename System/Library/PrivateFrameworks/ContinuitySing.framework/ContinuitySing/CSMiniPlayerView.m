@interface CSMiniPlayerView
- (CSMiniPlayerView)initWithFrame:(CGRect)a3;
- (void)_addSubviewsForAutolayout:(id)a3;
- (void)updateViewStateToNormalWithMediaPlaying:(BOOL)a3 playingSong:(id)a4;
@end

@implementation CSMiniPlayerView

- (CSMiniPlayerView)initWithFrame:(CGRect)a3
{
  v66.receiver = self;
  v66.super_class = CSMiniPlayerView;
  v3 = [(CSMiniPlayerView *)&v66 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v9 = [MEMORY[0x277D75340] labelColor];
    [(UILabel *)v8 setTextColor:v9];

    v10 = v3->_titleLabel;
    v11 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76970] variant:1024];
    [(UILabel *)v10 setFont:v11];

    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v12 = [objc_alloc(MEMORY[0x277D25700]) initForAutolayout];
    titleMarqueeView = v3->_titleMarqueeView;
    v3->_titleMarqueeView = v12;

    v14 = [(MPUMarqueeView *)v3->_titleMarqueeView contentView];
    [v14 addSubview:v3->_titleLabel];

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
    v19 = [MEMORY[0x277D75340] secondaryLabelColor];
    [(UILabel *)v18 setTextColor:v19];

    v20 = v3->_subtitleLabel;
    v21 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76930] weight:*MEMORY[0x277D74418]];
    [(UILabel *)v20 setFont:v21];

    [(UILabel *)v3->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    v22 = [objc_alloc(MEMORY[0x277D25700]) initForAutolayout];
    subtitleMarqueeView = v3->_subtitleMarqueeView;
    v3->_subtitleMarqueeView = v22;

    v24 = [(MPUMarqueeView *)v3->_subtitleMarqueeView contentView];
    [v24 addSubview:v3->_subtitleLabel];

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

    v27 = [(CSMiniPlayerView *)v3 layer];
    [v27 setCornerRadius:24.0];

    v28 = [(CSMiniPlayerView *)v3 layer];
    [v28 setCornerCurve:*MEMORY[0x277CDA128]];

    v65[0] = v3->_artworkView;
    v65[1] = v3->_titleMarqueeView;
    v65[2] = v3->_subtitleMarqueeView;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:3];
    [(CSMiniPlayerView *)v3 _addSubviewsForAutolayout:v29];

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v51 = MEMORY[0x277CCAAD0];
    v63 = [(CSMiniPlayerArtworkView *)v3->_artworkView leadingAnchor];
    v62 = [(CSMiniPlayerView *)v3 leadingAnchor];
    v61 = [v63 constraintEqualToAnchor:v62 constant:16.0];
    v64[0] = v61;
    v60 = [(CSMiniPlayerArtworkView *)v3->_artworkView centerYAnchor];
    v59 = [(CSMiniPlayerView *)v3 centerYAnchor];
    v58 = [v60 constraintEqualToAnchor:v59];
    v64[1] = v58;
    v57 = [(CSMiniPlayerArtworkView *)v3->_artworkView heightAnchor];
    v56 = [v57 constraintEqualToConstant:30.0];
    v64[2] = v56;
    v55 = [(CSMiniPlayerArtworkView *)v3->_artworkView widthAnchor];
    v54 = [v55 constraintEqualToConstant:30.0];
    v64[3] = v54;
    v53 = [(MPUMarqueeView *)v3->_titleMarqueeView leadingAnchor];
    v52 = [(CSMiniPlayerArtworkView *)v3->_artworkView trailingAnchor];
    v50 = [v53 constraintEqualToAnchor:v52 constant:8.0];
    v64[4] = v50;
    v49 = [(MPUMarqueeView *)v3->_titleMarqueeView topAnchor];
    v48 = [(CSMiniPlayerView *)v3 topAnchor];
    v47 = [v49 constraintEqualToAnchor:v48 constant:9.0];
    v64[5] = v47;
    v46 = [(MPUMarqueeView *)v3->_titleMarqueeView trailingAnchor];
    v45 = [(CSMiniPlayerView *)v3 trailingAnchor];
    v44 = [v46 constraintEqualToAnchor:v45 constant:-8.0];
    v64[6] = v44;
    v43 = [(MPUMarqueeView *)v3->_subtitleMarqueeView leadingAnchor];
    v42 = [(MPUMarqueeView *)v3->_titleMarqueeView leadingAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v64[7] = v41;
    v40 = [(MPUMarqueeView *)v3->_subtitleMarqueeView topAnchor];
    v30 = [(MPUMarqueeView *)v3->_titleMarqueeView bottomAnchor];
    v31 = [v40 constraintEqualToAnchor:v30 constant:1.0];
    v64[8] = v31;
    v32 = [(MPUMarqueeView *)v3->_subtitleMarqueeView bottomAnchor];
    v33 = [(CSMiniPlayerView *)v3 bottomAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:-8.0];
    v64[9] = v34;
    v35 = [(MPUMarqueeView *)v3->_subtitleMarqueeView trailingAnchor];
    v36 = [(MPUMarqueeView *)v3->_titleMarqueeView trailingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    v64[10] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:11];
    [v51 activateConstraints:v38];

    [(CSMiniPlayerView *)v3 updateViewStateToHidden];
  }

  return v3;
}

- (void)_addSubviewsForAutolayout:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [(CSMiniPlayerView *)self addSubview:v9];
        [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }
}

- (void)updateViewStateToNormalWithMediaPlaying:(BOOL)a3 playingSong:(id)a4
{
  v12 = a4;
  [(CSMiniPlayerView *)self setAlpha:1.0];
  titleLabel = self->_titleLabel;
  if (v12)
  {
    v6 = [v12 title];
    [(UILabel *)titleLabel setText:v6];

    subtitleLabel = self->_subtitleLabel;
    v8 = [v12 artist];
    v9 = [v8 name];
    [(UILabel *)subtitleLabel setText:v9];

    artworkView = self->_artworkView;
    v11 = [v12 artworkCatalog];
    [(CSMiniPlayerArtworkView *)artworkView setArtwork:v11];
  }

  else
  {
    [(UILabel *)titleLabel setText:0];
    [(UILabel *)self->_subtitleLabel setText:0];
    [(CSMiniPlayerArtworkView *)self->_artworkView setArtwork:0];
  }
}

@end