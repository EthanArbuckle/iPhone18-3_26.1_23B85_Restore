@interface HPSSpatialProfileEarTutorialView
- (HPSSpatialProfileEarTutorialView)init;
- (void)dealloc;
- (void)initPlayerLeftEar;
- (void)initPlayerRightEar;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)startPlayerLeftEar;
- (void)startPlayerRightEar;
- (void)stopPlayerLeftEar;
- (void)stopPlayerRightEar;
- (void)stopPlayers;
@end

@implementation HPSSpatialProfileEarTutorialView

- (HPSSpatialProfileEarTutorialView)init
{
  v5.receiver = self;
  v5.super_class = HPSSpatialProfileEarTutorialView;
  v2 = [(HPSSpatialProfileEarTutorialView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_playersPlaying = 0;
    v2->_playersStartTriggered = 0;
    v2->_statusRightEar = 0;
    v2->_statusLeftEar = 0;
    [(HPSSpatialProfileEarTutorialView *)v2 initPlayerRightEar];
    [(HPSSpatialProfileEarTutorialView *)v3 initPlayerLeftEar];
  }

  return v3;
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v4.receiver = self;
  v4.super_class = HPSSpatialProfileEarTutorialView;
  [(HPSSpatialProfileEarTutorialView *)&v4 layoutSublayersOfLayer:a3];
  [(HPSSpatialProfileEarTutorialView *)self bounds];
  [(AVPlayerLayer *)self->_playerLayerLeftEar setFrame:?];
  [(HPSSpatialProfileEarTutorialView *)self bounds];
  [(AVPlayerLayer *)self->_playerLayerRightEar setFrame:?];
}

- (void)dealloc
{
  [(AVPlayerLooper *)self->_looperLeftEar removeObserver:self forKeyPath:@"status" context:&self->_looperLeftEar];
  [(AVQueuePlayer *)self->_playerLeftEar removeObserver:self forKeyPath:@"status" context:&self->_playerLeftEar];
  [(AVPlayerLooper *)self->_looperRightEar removeObserver:self forKeyPath:@"status" context:&self->_looperRightEar];
  [(AVQueuePlayer *)self->_playerRightEar removeObserver:self forKeyPath:@"status" context:&self->_playerRightEar];
  v3.receiver = self;
  v3.super_class = HPSSpatialProfileEarTutorialView;
  [(HPSSpatialProfileEarTutorialView *)&v3 dealloc];
}

- (void)initPlayerLeftEar
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"HRTF_Tutorial_Left_Ear" ofType:@"mov"];

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v6 = [MEMORY[0x277CE65B0] playerItemWithURL:v5];
  playerItemLeftEar = self->_playerItemLeftEar;
  self->_playerItemLeftEar = v6;

  [(AVPlayerItem *)self->_playerItemLeftEar setAllowedAudioSpatializationFormats:0];
  v8 = objc_alloc_init(MEMORY[0x277CE65F8]);
  playerLeftEar = self->_playerLeftEar;
  self->_playerLeftEar = v8;

  [(AVQueuePlayer *)self->_playerLeftEar setAutomaticallyWaitsToMinimizeStalling:0];
  v10 = MEMORY[0x277CE65E0];
  v11 = self->_playerLeftEar;
  v12 = self->_playerItemLeftEar;
  CMTimeMake(&duration, 9000, 1000);
  v18 = **&MEMORY[0x277CC08F0];
  CMTimeRangeMake(&v20, &v18, &duration);
  v13 = [v10 playerLooperWithPlayer:v11 templateItem:v12 timeRange:&v20];
  looperLeftEar = self->_looperLeftEar;
  self->_looperLeftEar = v13;

  [(AVPlayerLooper *)self->_looperLeftEar addObserver:self forKeyPath:@"status" options:5 context:&self->_looperLeftEar];
  [(AVQueuePlayer *)self->_playerLeftEar addObserver:self forKeyPath:@"status" options:5 context:&self->_playerLeftEar];
  v15 = [MEMORY[0x277CE65D8] playerLayerWithPlayer:self->_playerLeftEar];
  playerLayerLeftEar = self->_playerLayerLeftEar;
  self->_playerLayerLeftEar = v15;

  v17 = [(HPSSpatialProfileEarTutorialView *)self layer];
  [v17 addSublayer:self->_playerLayerLeftEar];

  [(AVPlayerLayer *)self->_playerLayerLeftEar setHidden:1];
}

- (void)initPlayerRightEar
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"HRTF_Tutorial_Right_Ear" ofType:@"mov"];

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  v6 = [MEMORY[0x277CE65B0] playerItemWithURL:v5];
  playerItemRightEar = self->_playerItemRightEar;
  self->_playerItemRightEar = v6;

  v8 = objc_alloc_init(MEMORY[0x277CE65F8]);
  playerRightEar = self->_playerRightEar;
  self->_playerRightEar = v8;

  [(AVQueuePlayer *)self->_playerRightEar setAutomaticallyWaitsToMinimizeStalling:0];
  v10 = MEMORY[0x277CE65E0];
  v11 = self->_playerRightEar;
  v12 = self->_playerItemRightEar;
  CMTimeMake(&duration, 9000, 1000);
  v18 = **&MEMORY[0x277CC08F0];
  CMTimeRangeMake(&v20, &v18, &duration);
  v13 = [v10 playerLooperWithPlayer:v11 templateItem:v12 timeRange:&v20];
  looperRightEar = self->_looperRightEar;
  self->_looperRightEar = v13;

  [(AVPlayerLooper *)self->_looperRightEar addObserver:self forKeyPath:@"status" options:5 context:&self->_looperRightEar];
  [(AVQueuePlayer *)self->_playerRightEar addObserver:self forKeyPath:@"status" options:5 context:&self->_playerRightEar];
  v15 = [MEMORY[0x277CE65D8] playerLayerWithPlayer:self->_playerRightEar];
  playerLayerRightEar = self->_playerLayerRightEar;
  self->_playerLayerRightEar = v15;

  v17 = [(HPSSpatialProfileEarTutorialView *)self layer];
  [v17 addSublayer:self->_playerLayerRightEar];

  [(AVPlayerLayer *)self->_playerLayerRightEar setHidden:0];
}

- (void)startPlayerLeftEar
{
  if (self->_statusLeftEar.looperReady && self->_statusLeftEar.playerReady)
  {
    [(AVPlayerLayer *)self->_playerLayerLeftEar setHidden:0];
    playerLeftEar = self->_playerLeftEar;
    v5 = *MEMORY[0x277CC08F0];
    v6 = *(MEMORY[0x277CC08F0] + 16);
    [(AVQueuePlayer *)playerLeftEar seekToTime:&v5];
    [(AVQueuePlayer *)self->_playerLeftEar play];
    [(AVPlayerLayer *)self->_playerLayerRightEar setHidden:1];
    [(AVQueuePlayer *)self->_playerRightEar pause];
  }

  else
  {
    v4 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(HPSSpatialProfileEarTutorialView *)v4 startPlayerLeftEar];
    }
  }
}

- (void)startPlayerRightEar
{
  if (self->_statusRightEar.looperReady && self->_statusRightEar.playerReady)
  {
    [(AVPlayerLayer *)self->_playerLayerRightEar setHidden:0];
    playerRightEar = self->_playerRightEar;
    v5 = *MEMORY[0x277CC08F0];
    v6 = *(MEMORY[0x277CC08F0] + 16);
    [(AVQueuePlayer *)playerRightEar seekToTime:&v5];
    [(AVQueuePlayer *)self->_playerRightEar play];
    [(AVPlayerLayer *)self->_playerLayerLeftEar setHidden:1];
    [(AVQueuePlayer *)self->_playerLeftEar pause];
  }

  else
  {
    v4 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(HPSSpatialProfileEarTutorialView *)v4 startPlayerLeftEar];
    }
  }
}

- (void)stopPlayerLeftEar
{
  [(AVQueuePlayer *)self->_playerLeftEar pause];
  playerLayerLeftEar = self->_playerLayerLeftEar;

  [(AVPlayerLayer *)playerLayerLeftEar setHidden:1];
}

- (void)stopPlayerRightEar
{
  [(AVQueuePlayer *)self->_playerRightEar pause];
  playerLayerRightEar = self->_playerLayerRightEar;

  [(AVPlayerLayer *)playerLayerRightEar setHidden:1];
}

- (void)stopPlayers
{
  [(AVQueuePlayer *)self->_playerLeftEar pause];
  playerRightEar = self->_playerRightEar;

  [(AVQueuePlayer *)playerRightEar pause];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HPSSpatialProfileEarTutorialView_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_2796AE558;
  v11 = v8;
  v12 = a6;
  block[4] = self;
  v9 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __83__HPSSpatialProfileEarTutorialView_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == v3 + 408 || v2 == v3 + 416)
  {
    v4 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 integerValue];
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    if (v6 == v7 + 408)
    {
      v11 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 134217984;
        v19 = v5;
        _os_log_impl(&dword_251143000, v11, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Tutorial: LeftEar player status changed to %ld\n", &v18, 0xCu);
      }

      if (v5 != 1)
      {
        goto LABEL_35;
      }

      v9 = &OBJC_IVAR___HPSSpatialProfileEarTutorialView__statusLeftEar;
    }

    else
    {
      if (v6 != v7 + 416)
      {
        goto LABEL_35;
      }

      v8 = sharedBluetoothSettingsLogComponent();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 134217984;
        v19 = v5;
        _os_log_impl(&dword_251143000, v8, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Tutorial: RightEar player status changed to %ld\n", &v18, 0xCu);
      }

      if (v5 != 1)
      {
        goto LABEL_35;
      }

      v9 = &OBJC_IVAR___HPSSpatialProfileEarTutorialView__statusRightEar;
    }

    *(*(a1 + 32) + *v9) = 1;
    goto LABEL_35;
  }

  if (v2 != v3 + 424 && v2 != v3 + 432)
  {
    v4 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_251143000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Tutorial: Invalid context\n", &v18, 2u);
    }

    goto LABEL_35;
  }

  v4 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v4 integerValue];
  }

  else
  {
    v10 = 0;
  }

  v12 = *(a1 + 48);
  v13 = *(a1 + 32);
  if (v12 == v13 + 424)
  {
    v16 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = v10;
      _os_log_impl(&dword_251143000, v16, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Tutorial: LeftEar looper status changed to %ld\n", &v18, 0xCu);
    }

    if (v10 == 1)
    {
      v15 = &OBJC_IVAR___HPSSpatialProfileEarTutorialView__statusLeftEar;
      goto LABEL_34;
    }
  }

  else if (v12 == v13 + 432)
  {
    v14 = sharedBluetoothSettingsLogComponent();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = v10;
      _os_log_impl(&dword_251143000, v14, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Tutorial: RightEar looper status changed to %ld\n", &v18, 0xCu);
    }

    if (v10 == 1)
    {
      v15 = &OBJC_IVAR___HPSSpatialProfileEarTutorialView__statusRightEar;
LABEL_34:
      *(*(a1 + 32) + *v15 + 1) = 1;
    }
  }

LABEL_35:

  v17 = *MEMORY[0x277D85DE8];
}

@end