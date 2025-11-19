@interface CSMiniPlayerArtworkView
- (CSMiniPlayerArtworkView)initWithFrame:(CGRect)a3;
- (id)_constraintsMatchingFramesOf:(id)a3 and:(id)a4;
- (void)setArtwork:(id)a3;
- (void)setBounds:(CGRect)a3;
@end

@implementation CSMiniPlayerArtworkView

- (CSMiniPlayerArtworkView)initWithFrame:(CGRect)a3
{
  v29.receiver = self;
  v29.super_class = CSMiniPlayerArtworkView;
  v3 = [(CSMiniPlayerArtworkView *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v27 = [MEMORY[0x277D75340] colorWithRed:0.17254902 green:0.17254902 blue:0.180392157 alpha:1.0];
    [(CSMiniPlayerArtworkView *)v3 setBackgroundColor:v27];
    v4 = [(CSMiniPlayerArtworkView *)v3 layer];
    [v4 setCornerRadius:5.0];

    [(CSMiniPlayerArtworkView *)v3 setClipsToBounds:1];
    v5 = [(CSMiniPlayerArtworkView *)v3 layer];
    v6 = [MEMORY[0x277D75340] colorWithWhite:1.0 alpha:0.12];
    [v5 setBorderColor:{objc_msgSend(v6, "CGColor")}];

    v7 = [(CSMiniPlayerArtworkView *)v3 layer];
    [v7 setBorderWidth:0.5];

    v26 = [MEMORY[0x277D755D8] configurationWithWeight:3];
    v8 = [MEMORY[0x277D755B0] _systemImageNamed:@"music" withConfiguration:v26];
    v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v8];
    placeholderImageView = v3->_placeholderImageView;
    v3->_placeholderImageView = v9;

    v11 = v3->_placeholderImageView;
    v12 = [MEMORY[0x277D75340] tertiaryLabelColor];
    [(UIImageView *)v11 setTintColor:v12];

    v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:0];
    artworkView = v3->_artworkView;
    v3->_artworkView = v13;

    [(CSMiniPlayerArtworkView *)v3 addSubview:v3->_placeholderImageView];
    [(CSMiniPlayerArtworkView *)v3 addSubview:v3->_artworkView];
    [(UIImageView *)v3->_placeholderImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_artworkView setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = MEMORY[0x277CCAAD0];
    v16 = [(CSMiniPlayerArtworkView *)v3 _constraintsMatchingFramesOf:v3 and:v3->_artworkView];
    [v15 activateConstraints:v16];

    v17 = MEMORY[0x277CCAAD0];
    v18 = [(UIImageView *)v3->_placeholderImageView centerXAnchor];
    v19 = [(CSMiniPlayerArtworkView *)v3 centerXAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v28[0] = v20;
    v21 = [(UIImageView *)v3->_placeholderImageView centerYAnchor];
    v22 = [(CSMiniPlayerArtworkView *)v3 centerYAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    v28[1] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    [v17 activateConstraints:v24];
  }

  return v3;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v6.receiver = self;
  v6.super_class = CSMiniPlayerArtworkView;
  [(CSMiniPlayerArtworkView *)&v6 setBounds:a3.origin.x, a3.origin.y];
  [(MPArtworkCatalog *)self->_artwork setFittingSize:width, height];
}

- (void)setArtwork:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_artwork, a3);
  [(UIImageView *)self->_artworkView setImage:0];
  if (v8)
  {
    artwork = self->_artwork;
    [(CSMiniPlayerArtworkView *)self bounds];
    [(MPArtworkCatalog *)artwork setFittingSize:v6, v7];
    [(MPArtworkCatalog *)self->_artwork setDestinationScale:0.0];
    [(MPArtworkCatalog *)self->_artwork setDestination:self->_artworkView configurationBlock:&__block_literal_global_0];
  }

  else
  {
    [(UIImageView *)self->_artworkView clearArtworkCatalogs];
  }
}

void __38__CSMiniPlayerArtworkView_setArtwork___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setImage:v5];
  }

  else
  {
    v6 = ContinuitySingLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __38__CSMiniPlayerArtworkView_setArtwork___block_invoke_cold_1(v6);
    }
  }
}

- (id)_constraintsMatchingFramesOf:(id)a3 and:(id)a4
{
  v5 = a4;
  v6 = a3;
  v20 = [v6 leadingAnchor];
  v19 = [v5 leadingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v21[0] = v18;
  v7 = [v6 trailingAnchor];
  v8 = [v5 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v21[1] = v9;
  v10 = [v6 topAnchor];
  v11 = [v5 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v21[2] = v12;
  v13 = [v6 bottomAnchor];

  v14 = [v5 bottomAnchor];

  v15 = [v13 constraintEqualToAnchor:v14];
  v21[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];

  return v16;
}

void __38__CSMiniPlayerArtworkView_setArtwork___block_invoke_cold_1(os_log_t log)
{
  v1 = 136315138;
  v2 = "[CSMiniPlayerArtworkView setArtwork:]_block_invoke";
  _os_log_fault_impl(&dword_2441FB000, log, OS_LOG_TYPE_FAULT, "%s: Artwork destination is not an UIImageView!", &v1, 0xCu);
}

@end