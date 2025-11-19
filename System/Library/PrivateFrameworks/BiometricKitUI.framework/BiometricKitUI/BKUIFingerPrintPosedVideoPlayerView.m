@interface BKUIFingerPrintPosedVideoPlayerView
- (BKUIFingerPrintPosedVideoPlayerView)initWithAssetName:(id)a3 subdirectory:(id)a4;
- (id)_devicePrefix;
- (id)_filters;
- (void)_setFilters:(id)a3;
- (void)_updateImageForOrientation:(int64_t)a3;
- (void)hideVideoPlayer;
- (void)itemDidFinishPlaying:(id)a3;
- (void)layoutSubviews;
- (void)load;
- (void)showVideoPlayer;
- (void)transitionToOrientation:(int64_t)a3;
@end

@implementation BKUIFingerPrintPosedVideoPlayerView

- (BKUIFingerPrintPosedVideoPlayerView)initWithAssetName:(id)a3 subdirectory:(id)a4
{
  v52[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v51.receiver = self;
  v51.super_class = BKUIFingerPrintPosedVideoPlayerView;
  v9 = *MEMORY[0x277CBF3A0];
  v10 = *(MEMORY[0x277CBF3A0] + 8);
  v11 = *(MEMORY[0x277CBF3A0] + 16);
  v12 = *(MEMORY[0x277CBF3A0] + 24);
  v13 = [(BKUIFingerPrintPosedVideoPlayerView *)&v51 initWithFrame:*MEMORY[0x277CBF3A0], v10, v11, v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_assetName, a3);
    objc_storeStrong(&v14->_subDirectory, a4);
    v15 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v9, v10, v11, v12}];
    v50 = v7;
    portraitImageView = v14->_portraitImageView;
    v14->_portraitImageView = v15;

    [(UIImageView *)v14->_portraitImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v14->_portraitImageView setAlpha:0.0];
    [(BKUIFingerPrintPosedVideoPlayerView *)v14 addSubview:v14->_portraitImageView];
    v44 = MEMORY[0x277CCAAD0];
    v48 = [(UIImageView *)v14->_portraitImageView leadingAnchor];
    v47 = [(BKUIFingerPrintPosedVideoPlayerView *)v14 leadingAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v52[0] = v46;
    v45 = [(UIImageView *)v14->_portraitImageView trailingAnchor];
    v17 = [(BKUIFingerPrintPosedVideoPlayerView *)v14 trailingAnchor];
    v18 = [v45 constraintEqualToAnchor:v17];
    v52[1] = v18;
    v19 = [(UIImageView *)v14->_portraitImageView topAnchor];
    v20 = [(BKUIFingerPrintPosedVideoPlayerView *)v14 topAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v52[2] = v21;
    v22 = [(UIImageView *)v14->_portraitImageView bottomAnchor];
    [(BKUIFingerPrintPosedVideoPlayerView *)v14 bottomAnchor];
    v23 = v49 = v8;
    v24 = [v22 constraintEqualToAnchor:v23];
    v52[3] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
    [v44 activateConstraints:v25];

    v26 = MEMORY[0x277D755B8];
    v27 = [(BKUIFingerPrintPosedVideoPlayerView *)v14 _devicePrefix];
    v28 = [v27 stringByAppendingString:@"_H"];
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = [v26 imageNamed:v28 inBundle:v29 withConfiguration:0];
    horizontalPosedImage = v14->_horizontalPosedImage;
    v14->_horizontalPosedImage = v30;

    v32 = MEMORY[0x277D755B8];
    v33 = [(BKUIFingerPrintPosedVideoPlayerView *)v14 _devicePrefix];
    v34 = [v33 stringByAppendingString:@"_V"];
    v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v36 = [v32 imageNamed:v34 inBundle:v35 withConfiguration:0];
    verticalPosedImage = v14->_verticalPosedImage;
    v14->_verticalPosedImage = v36;

    v8 = v49;
    v7 = v50;

    v38 = [MEMORY[0x277CE65D8] playerLayerWithPlayer:0];
    playerLayer = v14->_playerLayer;
    v14->_playerLayer = v38;

    v40 = [(BKUIFingerPrintPosedVideoPlayerView *)v14 layer];
    [v40 addSublayer:v14->_playerLayer];

    assetnameForAssetLengthDict = v14->_assetnameForAssetLengthDict;
    v14->_assetnameForAssetLengthDict = &unk_2853CCBC0;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)_setFilters:(id)a3
{
  v4 = a3;
  v5 = [(BKUIFingerPrintPosedVideoPlayerView *)self layer];
  [v5 setFilters:v4];
}

- (void)load
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 assetName];
  v5 = 138412290;
  v6 = v3;
  _os_log_fault_impl(&dword_241B0A000, a2, OS_LOG_TYPE_FAULT, "Defaulting to no tutorial video; unable to find one for %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)itemDidFinishPlaying:(id)a3
{
  v4 = [(BKUIFingerPrintPosedVideoPlayerView *)self videoPlayer];
  [v4 setActionAtItemEnd:1];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = BKUIFingerPrintPosedVideoPlayerView;
  [(BKUIFingerPrintPosedVideoPlayerView *)&v14 layoutSubviews];
  [(BKUIFingerPrintPosedVideoPlayerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(BKUIFingerPrintPosedVideoPlayerView *)self playerLayer];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = *MEMORY[0x277CE5DD8];
  v13 = [(BKUIFingerPrintPosedVideoPlayerView *)self playerLayer];
  [v13 setVideoGravity:v12];
}

- (id)_filters
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = [(BKUIFingerPrintPosedVideoPlayerView *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
  {
    v4 = 0.9;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = objc_alloc(MEMORY[0x277CD9EA0]);
  v6 = [v5 initWithType:*MEMORY[0x277CDA2C0]];
  v11 = v4;
  v12 = *(MEMORY[0x277CD9DA0] + 4);
  v13 = *(MEMORY[0x277CD9DA0] + 20);
  v14 = v4;
  v15 = *(MEMORY[0x277CD9DA0] + 28);
  v16 = *(MEMORY[0x277CD9DA0] + 44);
  v17 = v4;
  *v18 = *(MEMORY[0x277CD9DA0] + 52);
  *&v18[12] = *(MEMORY[0x277CD9DA0] + 64);
  v7 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:&v11];
  [v6 setValue:v7 forKey:@"inputColorMatrix"];

  v19[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)showVideoPlayer
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__BKUIFingerPrintPosedVideoPlayerView_showVideoPlayer__block_invoke;
  v2[3] = &unk_278D09978;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.15];
}

void __54__BKUIFingerPrintPosedVideoPlayerView_showVideoPlayer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) portraitImageView];
  [v2 setAlpha:0.0];

  v4 = [*(a1 + 32) playerLayer];
  LODWORD(v3) = 1.0;
  [v4 setOpacity:v3];
}

- (void)hideVideoPlayer
{
  v3 = [(BKUIFingerPrintPosedVideoPlayerView *)self portraitImageView];
  [v3 setAlpha:0.0];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__BKUIFingerPrintPosedVideoPlayerView_hideVideoPlayer__block_invoke;
  v4[3] = &unk_278D09978;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v4 animations:0.15];
}

void __54__BKUIFingerPrintPosedVideoPlayerView_hideVideoPlayer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) portraitImageView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) playerLayer];
  [v3 setOpacity:0.0];
}

- (void)_updateImageForOrientation:(int64_t)a3
{
  if ((a3 - 3) > 1)
  {
    [(BKUIFingerPrintPosedVideoPlayerView *)self verticalPosedImage];
  }

  else
  {
    [(BKUIFingerPrintPosedVideoPlayerView *)self horizontalPosedImage];
  }
  v5 = ;
  v4 = [(BKUIFingerPrintPosedVideoPlayerView *)self portraitImageView];
  [v4 setImage:v5];
}

- (void)transitionToOrientation:(int64_t)a3
{
  v5 = [(BKUIFingerPrintPosedVideoPlayerView *)self assetName];
  v6 = [(BKUIFingerPrintPosedVideoPlayerView *)self _devicePrefix];
  v7 = [v6 stringByAppendingString:@"_H"];
  if ([v5 isEqualToString:v7])
  {

LABEL_4:
    v12 = a3 - 1;
    goto LABEL_6;
  }

  v8 = [(BKUIFingerPrintPosedVideoPlayerView *)self assetName];
  v9 = [(BKUIFingerPrintPosedVideoPlayerView *)self _devicePrefix];
  v10 = [v9 stringByAppendingString:@"_V_rotate"];
  v11 = [v8 isEqualToString:v10];

  if (v11)
  {
    goto LABEL_4;
  }

  v12 = a3 - 3;
LABEL_6:
  if (v12 > 1)
  {

    [(BKUIFingerPrintPosedVideoPlayerView *)self showVideoPlayer];
  }

  else
  {
    [(BKUIFingerPrintPosedVideoPlayerView *)self _updateImageForOrientation:a3];

    [(BKUIFingerPrintPosedVideoPlayerView *)self hideVideoPlayer];
  }
}

- (id)_devicePrefix
{
  v2 = @"iPadMini2021";
  v3 = MGGetProductType();
  if (v3 > 2903084587)
  {
    if (v3 == 2903084588 || v3 == 2959111092)
    {
      return v2;
    }

    if (v3 != 4242862982)
    {
      return @"J307";
    }

    return @"iPadEDU2022";
  }

  if (v3 == 1878257790)
  {
    return @"iPadEDU2022";
  }

  if (v3 != 1895344378 && v3 != 2566016329)
  {
    return @"J307";
  }

  return v2;
}

@end