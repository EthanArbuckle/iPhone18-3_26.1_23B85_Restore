@interface CSQueueHeaderView
- (CSQueueHeaderView)initWithFrame:(CGRect)frame;
- (void)_onBackwardPressed;
- (void)_onForwardPressed;
- (void)_onPlayPausePressed;
- (void)setNowPlayingItem:(id)item;
- (void)setupArtistLabel;
- (void)setupArtworkView;
- (void)setupConstraints;
- (void)setupPlayerControlsView;
- (void)setupSubviews;
- (void)setupTitleLabel;
@end

@implementation CSQueueHeaderView

- (CSQueueHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CSQueueHeaderView;
  v3 = [(CSQueueHeaderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CSQueueHeaderView *)v3 setupSubviews];
    [(CSQueueHeaderView *)v4 setupConstraints];
  }

  return v4;
}

- (void)setNowPlayingItem:(id)item
{
  itemCopy = item;
  metadataObject = [itemCopy metadataObject];
  content = [(CSArtworkImageView *)self->_artworkView content];
  metadataObject2 = [content metadataObject];
  v7 = [metadataObject isEqual:metadataObject2];

  if ((v7 & 1) == 0)
  {
    v8 = CSArtworkPlaceholderImage(28);
    [(CSArtworkImageView *)self->_artworkView setImage:v8];

    [(CSArtworkImageView *)self->_artworkView setContentMode:4];
    [(CSArtworkImageView *)self->_artworkView setContent:itemCopy];
  }

  metadataObject3 = [itemCopy metadataObject];
  song = [metadataObject3 song];
  title = [song title];
  [(UILabel *)self->_titleLabel setText:title];

  metadataObject4 = [itemCopy metadataObject];
  song2 = [metadataObject4 song];
  artist = [song2 artist];
  name = [artist name];
  [(UILabel *)self->_artistLabel setText:name];
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

  layer = [(CSArtworkImageView *)self->_artworkView layer];
  [layer setCornerRadius:12.0];

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

  labelColor = [MEMORY[0x277D75340] labelColor];
  [(UILabel *)self->_titleLabel setTextColor:labelColor];

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

  secondaryLabelColor = [MEMORY[0x277D75340] secondaryLabelColor];
  [(UILabel *)self->_artistLabel setTextColor:secondaryLabelColor];

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
  leadingAnchor = [(CSArtworkImageView *)self->_artworkView leadingAnchor];
  leadingAnchor2 = [(CSQueueHeaderView *)self leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:32.0];
  v43[0] = v40;
  topAnchor = [(CSArtworkImageView *)self->_artworkView topAnchor];
  topAnchor2 = [(CSQueueHeaderView *)self topAnchor];
  v37 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:32.0];
  v43[1] = v37;
  widthAnchor = [(CSArtworkImageView *)self->_artworkView widthAnchor];
  v35 = [widthAnchor constraintEqualToConstant:66.0];
  v43[2] = v35;
  heightAnchor = [(CSArtworkImageView *)self->_artworkView heightAnchor];
  widthAnchor2 = [(CSArtworkImageView *)self->_artworkView widthAnchor];
  v32 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v43[3] = v32;
  leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
  trailingAnchor = [(CSArtworkImageView *)self->_artworkView trailingAnchor];
  v29 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:20.0];
  v43[4] = v29;
  trailingAnchor2 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor3 = [(CSQueueHeaderView *)self trailingAnchor];
  v25 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-35.0];
  v43[5] = v25;
  bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
  centerYAnchor = [(CSArtworkImageView *)self->_artworkView centerYAnchor];
  v22 = [bottomAnchor constraintEqualToAnchor:centerYAnchor];
  v43[6] = v22;
  leadingAnchor4 = [(UILabel *)self->_artistLabel leadingAnchor];
  leadingAnchor5 = [(UILabel *)self->_titleLabel leadingAnchor];
  v19 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v43[7] = v19;
  trailingAnchor4 = [(UILabel *)self->_artistLabel trailingAnchor];
  trailingAnchor5 = [(UILabel *)self->_titleLabel trailingAnchor];
  v16 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v43[8] = v16;
  topAnchor3 = [(UILabel *)self->_artistLabel topAnchor];
  bottomAnchor2 = [(UILabel *)self->_titleLabel bottomAnchor];
  v13 = [topAnchor3 constraintEqualToAnchor:bottomAnchor2 constant:2.0];
  v43[9] = v13;
  leadingAnchor6 = [(CSQueuePlaybackControlsView *)self->_playerControlsView leadingAnchor];
  leadingAnchor7 = [(CSQueueHeaderView *)self leadingAnchor];
  v5 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v43[10] = v5;
  trailingAnchor6 = [(CSQueuePlaybackControlsView *)self->_playerControlsView trailingAnchor];
  trailingAnchor7 = [(CSQueueHeaderView *)self trailingAnchor];
  v8 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v43[11] = v8;
  topAnchor4 = [(CSQueuePlaybackControlsView *)self->_playerControlsView topAnchor];
  bottomAnchor3 = [(CSArtworkImageView *)self->_artworkView bottomAnchor];
  v11 = [topAnchor4 constraintEqualToAnchor:bottomAnchor3 constant:20.0];
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
  playbackManager = [v3 playbackManager];

  currentState = [playbackManager currentState];
  playerState = [currentState playerState];

  if (playerState == 2)
  {
    [playbackManager pause];
  }

  else
  {
    [playbackManager play];
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
  playbackManager = [v3 playbackManager];
  [playbackManager forward];
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
  playbackManager = [v3 playbackManager];
  [playbackManager backward];
}

@end