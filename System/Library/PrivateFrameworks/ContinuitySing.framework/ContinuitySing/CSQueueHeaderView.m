@interface CSQueueHeaderView
- (CSQueueHeaderView)initWithFrame:(CGRect)a3;
- (void)_onBackwardPressed;
- (void)_onForwardPressed;
- (void)_onPlayPausePressed;
- (void)setNowPlayingItem:(id)a3;
- (void)setupArtistLabel;
- (void)setupArtworkView;
- (void)setupConstraints;
- (void)setupPlayerControlsView;
- (void)setupSubviews;
- (void)setupTitleLabel;
@end

@implementation CSQueueHeaderView

- (CSQueueHeaderView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CSQueueHeaderView;
  v3 = [(CSQueueHeaderView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CSQueueHeaderView *)v3 setupSubviews];
    [(CSQueueHeaderView *)v4 setupConstraints];
  }

  return v4;
}

- (void)setNowPlayingItem:(id)a3
{
  v16 = a3;
  v4 = [v16 metadataObject];
  v5 = [(CSArtworkImageView *)self->_artworkView content];
  v6 = [v5 metadataObject];
  v7 = [v4 isEqual:v6];

  if ((v7 & 1) == 0)
  {
    v8 = CSArtworkPlaceholderImage(28);
    [(CSArtworkImageView *)self->_artworkView setImage:v8];

    [(CSArtworkImageView *)self->_artworkView setContentMode:4];
    [(CSArtworkImageView *)self->_artworkView setContent:v16];
  }

  v9 = [v16 metadataObject];
  v10 = [v9 song];
  v11 = [v10 title];
  [(UILabel *)self->_titleLabel setText:v11];

  v12 = [v16 metadataObject];
  v13 = [v12 song];
  v14 = [v13 artist];
  v15 = [v14 name];
  [(UILabel *)self->_artistLabel setText:v15];
}

- (void)setupSubviews
{
  [(CSQueueHeaderView *)self setupArtworkView];
  [(CSQueueHeaderView *)self setupTitleLabel];
  [(CSQueueHeaderView *)self setupArtistLabel];

  [(CSQueueHeaderView *)self setupPlayerControlsView];
}

- (void)setupArtworkView
{
  v3 = objc_alloc_init(CSArtworkImageView);
  artworkView = self->_artworkView;
  self->_artworkView = v3;

  v5 = CSArtworkPlaceholderImage(28);
  [(CSArtworkImageView *)self->_artworkView setImage:v5];

  v6 = [(CSArtworkImageView *)self->_artworkView layer];
  [v6 setCornerRadius:12.0];

  [(CSArtworkImageView *)self->_artworkView setClipsToBounds:1];
  v7 = [MEMORY[0x277D75340] colorWithRed:0.196078431 green:0.192156863 blue:0.215686275 alpha:1.0];
  [(CSArtworkImageView *)self->_artworkView setBackgroundColor:v7];

  [(CSArtworkImageView *)self->_artworkView setContentMode:4];
  v8 = self->_artworkView;

  [(CSQueueHeaderView *)self addSubview:v8];
}

- (void)setupTitleLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756C0]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  v5 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A30] weight:*MEMORY[0x277D74420]];
  [(UILabel *)self->_titleLabel setFont:v5];

  v6 = [MEMORY[0x277D75340] labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v6];

  [(UILabel *)self->_titleLabel setMarqueeEnabled:1];
  v7 = self->_titleLabel;

  [(CSQueueHeaderView *)self addSubview:v7];
}

- (void)setupArtistLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756C0]);
  artistLabel = self->_artistLabel;
  self->_artistLabel = v3;

  v5 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76928] weight:*MEMORY[0x277D74418]];
  [(UILabel *)self->_artistLabel setFont:v5];

  v6 = [MEMORY[0x277D75340] secondaryLabelColor];
  [(UILabel *)self->_artistLabel setTextColor:v6];

  [(UILabel *)self->_artistLabel setMarqueeEnabled:1];
  v7 = self->_artistLabel;

  [(CSQueueHeaderView *)self addSubview:v7];
}

- (void)setupPlayerControlsView
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D750C0];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__CSQueueHeaderView_setupPlayerControlsView__block_invoke;
  v19[3] = &unk_278E0B3C0;
  objc_copyWeak(&v20, &location);
  v4 = [v3 actionWithHandler:v19];
  v5 = MEMORY[0x277D750C0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44__CSQueueHeaderView_setupPlayerControlsView__block_invoke_2;
  v17[3] = &unk_278E0B3C0;
  objc_copyWeak(&v18, &location);
  v6 = [v5 actionWithHandler:v17];
  v7 = MEMORY[0x277D750C0];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __44__CSQueueHeaderView_setupPlayerControlsView__block_invoke_3;
  v15 = &unk_278E0B3C0;
  objc_copyWeak(&v16, &location);
  v8 = [v7 actionWithHandler:&v12];
  v9 = [CSQueuePlaybackControlsView alloc];
  v10 = [(CSQueuePlaybackControlsView *)v9 initWithPlayAction:v4 backAction:v8 forwardAction:v6, v12, v13, v14, v15];
  playerControlsView = self->_playerControlsView;
  self->_playerControlsView = v10;

  [(CSQueueHeaderView *)self addSubview:self->_playerControlsView];
  objc_destroyWeak(&v16);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __44__CSQueueHeaderView_setupPlayerControlsView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onPlayPausePressed];
}

void __44__CSQueueHeaderView_setupPlayerControlsView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onForwardPressed];
}

void __44__CSQueueHeaderView_setupPlayerControlsView__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _onBackwardPressed];
}

- (void)setupConstraints
{
  [(CSArtworkImageView *)self->_artworkView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_artistLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CSQueuePlaybackControlsView *)self->_playerControlsView setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = MEMORY[0x277CCAAD0];
  v42 = [(CSArtworkImageView *)self->_artworkView leadingAnchor];
  v41 = [(CSQueueHeaderView *)self leadingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41 constant:32.0];
  v43[0] = v40;
  v39 = [(CSArtworkImageView *)self->_artworkView topAnchor];
  v38 = [(CSQueueHeaderView *)self topAnchor];
  v37 = [v39 constraintEqualToAnchor:v38 constant:32.0];
  v43[1] = v37;
  v36 = [(CSArtworkImageView *)self->_artworkView widthAnchor];
  v35 = [v36 constraintEqualToConstant:66.0];
  v43[2] = v35;
  v34 = [(CSArtworkImageView *)self->_artworkView heightAnchor];
  v33 = [(CSArtworkImageView *)self->_artworkView widthAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v43[3] = v32;
  v31 = [(UILabel *)self->_titleLabel leadingAnchor];
  v30 = [(CSArtworkImageView *)self->_artworkView trailingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30 constant:20.0];
  v43[4] = v29;
  v27 = [(UILabel *)self->_titleLabel trailingAnchor];
  v26 = [(CSQueueHeaderView *)self trailingAnchor];
  v25 = [v27 constraintEqualToAnchor:v26 constant:-35.0];
  v43[5] = v25;
  v24 = [(UILabel *)self->_titleLabel bottomAnchor];
  v23 = [(CSArtworkImageView *)self->_artworkView centerYAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v43[6] = v22;
  v21 = [(UILabel *)self->_artistLabel leadingAnchor];
  v20 = [(UILabel *)self->_titleLabel leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v43[7] = v19;
  v18 = [(UILabel *)self->_artistLabel trailingAnchor];
  v17 = [(UILabel *)self->_titleLabel trailingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v43[8] = v16;
  v15 = [(UILabel *)self->_artistLabel topAnchor];
  v14 = [(UILabel *)self->_titleLabel bottomAnchor];
  v13 = [v15 constraintEqualToAnchor:v14 constant:2.0];
  v43[9] = v13;
  v3 = [(CSQueuePlaybackControlsView *)self->_playerControlsView leadingAnchor];
  v4 = [(CSQueueHeaderView *)self leadingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  v43[10] = v5;
  v6 = [(CSQueuePlaybackControlsView *)self->_playerControlsView trailingAnchor];
  v7 = [(CSQueueHeaderView *)self trailingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v43[11] = v8;
  v9 = [(CSQueuePlaybackControlsView *)self->_playerControlsView topAnchor];
  v10 = [(CSArtworkImageView *)self->_artworkView bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:20.0];
  v43[12] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:13];
  [v28 activateConstraints:v12];
}

- (void)_onPlayPausePressed
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[CSQueueHeaderView _onPlayPausePressed]";
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: Play/Pause button pressed!", &v7, 0xCu);
  }

  v3 = +[CSShieldManager sharedManager];
  v4 = [v3 playbackManager];

  v5 = [v4 currentState];
  v6 = [v5 playerState];

  if (v6 == 2)
  {
    [v4 pause];
  }

  else
  {
    [v4 play];
  }
}

- (void)_onForwardPressed
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSQueueHeaderView _onForwardPressed]";
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: Forward button pressed!", &v5, 0xCu);
  }

  v3 = +[CSShieldManager sharedManager];
  v4 = [v3 playbackManager];
  [v4 forward];
}

- (void)_onBackwardPressed
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSQueueHeaderView _onBackwardPressed]";
    _os_log_impl(&dword_2441FB000, v2, OS_LOG_TYPE_DEFAULT, "%s: Backward button pressed!", &v5, 0xCu);
  }

  v3 = +[CSShieldManager sharedManager];
  v4 = [v3 playbackManager];
  [v4 backward];
}

@end