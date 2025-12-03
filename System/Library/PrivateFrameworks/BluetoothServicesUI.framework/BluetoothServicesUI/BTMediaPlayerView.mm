@interface BTMediaPlayerView
- (void)startMovieLoopWithPath:(id)path;
- (void)startMovieLoopWithPath:(id)path assetType:(int)type adjustmentsURL:(id)l;
- (void)stop;
@end

@implementation BTMediaPlayerView

- (void)startMovieLoopWithPath:(id)path
{
  pathCopy = path;
  v4 = self->_avPlayer;
  if (!v4)
  {
    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    [mEMORY[0x277CB83F8] setCategory:*MEMORY[0x277CB8020] withOptions:1 error:0];

    v4 = objc_alloc_init(MEMORY[0x277CE65F8]);
    [(AVQueuePlayer *)v4 setAllowsExternalPlayback:0];
    [(AVQueuePlayer *)v4 setPreventsDisplaySleepDuringVideoPlayback:0];
    [(AVQueuePlayer *)v4 _setDisallowsAutoPauseOnRouteRemovalIfNoAudio:1];
    objc_storeStrong(&self->_avPlayer, v4);
    layer = [(BTMediaPlayerView *)self layer];
    [layer setPlayer:v4];
  }

  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy isDirectory:0];
  v8 = [MEMORY[0x277CE65B0] playerItemWithURL:v7];
  v9 = [MEMORY[0x277CE65E0] playerLooperWithPlayer:v4 templateItem:v8];
  avLooper = self->_avLooper;
  self->_avLooper = v9;

  [(AVQueuePlayer *)self->_avPlayer play];
}

- (void)startMovieLoopWithPath:(id)path assetType:(int)type adjustmentsURL:(id)l
{
  pathCopy = path;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:l error:0];
  if (!v9)
  {
    goto LABEL_15;
  }

  if (type == 1)
  {
    v10 = MEMORY[0x277D54D10];
  }

  else
  {
    if (type != 2)
    {
      v12 = 0;
      goto LABEL_8;
    }

    v10 = MEMORY[0x277D54D18];
  }

  v11 = *v10;
  CFDictionaryGetTypeID();
  v12 = CFDictionaryGetTypedValue();
LABEL_8:
  v35 = 0;
  v13 = *MEMORY[0x277D54D20];
  CFDictionaryGetDouble();
  v15 = v14;
  v16 = objc_alloc(MEMORY[0x277CD9EA0]);
  v17 = [v16 initWithType:*MEMORY[0x277CDA2C0]];
  v27 = v15;
  v28 = *(MEMORY[0x277CD9DA0] + 4);
  v29 = *(MEMORY[0x277CD9DA0] + 20);
  v30 = v15;
  v31 = *(MEMORY[0x277CD9DA0] + 28);
  v32 = *(MEMORY[0x277CD9DA0] + 44);
  v33 = v15;
  *v34 = *(MEMORY[0x277CD9DA0] + 52);
  *&v34[12] = *(MEMORY[0x277CD9DA0] + 64);
  v18 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:&v27];
  [v17 setValue:v18 forKey:@"inputColorMatrix"];

  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v19 addObject:v17];

  v20 = *MEMORY[0x277D54D08];
  CFDictionaryGetDouble();
  if (!v35)
  {
    v22 = v21;
    v23 = objc_alloc(MEMORY[0x277CD9EA0]);
    v24 = [v23 initWithType:*MEMORY[0x277CDA270]];
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:v22];
    [v24 setValue:v25 forKey:@"inputAmount"];

    if (!v19)
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    [v19 addObject:v24];
  }

  if ([v19 count])
  {
    layer = [(BTMediaPlayerView *)self layer];
    [layer setFilters:v19];
  }

LABEL_15:
  [(BTMediaPlayerView *)self startMovieLoopWithPath:pathCopy];
}

- (void)stop
{
  [(AVQueuePlayer *)self->_avPlayer pause];
  layer = [(BTMediaPlayerView *)self layer];
  [layer setPlayer:0];

  [(AVQueuePlayer *)self->_avPlayer removeAllItems];
  avPlayer = self->_avPlayer;
  self->_avPlayer = 0;

  avLooper = self->_avLooper;
  self->_avLooper = 0;
}

@end