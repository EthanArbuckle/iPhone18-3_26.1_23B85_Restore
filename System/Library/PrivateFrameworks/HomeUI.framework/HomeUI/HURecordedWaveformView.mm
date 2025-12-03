@interface HURecordedWaveformView
- (HURecordedWaveformView)initWithFrame:(CGRect)frame waveformColor:(id)color backgroundColor:(id)backgroundColor tintColor:(id)tintColor;
- (id)_waveFormImageForWidth:(double)width havingColor:(id)color;
- (void)_playRecording:(id)recording;
- (void)_updateProgressForPlaybackTime:(double)time;
- (void)audioPlayer:(id)player didPausePlaybackWithReason:(id)reason;
- (void)audioPlayerDidFinishPlayback:(id)playback withError:(id)error;
- (void)audioPlayerDidResumePlayback:(id)playback;
- (void)audioPlayerDidStopPlayback:(id)playback;
- (void)layoutSubviews;
- (void)setAlpha:(double)alpha;
- (void)setAudioFileURL:(id)l;
- (void)setAudioPowerLevels:(id)levels;
@end

@implementation HURecordedWaveformView

- (HURecordedWaveformView)initWithFrame:(CGRect)frame waveformColor:(id)color backgroundColor:(id)backgroundColor tintColor:(id)tintColor
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  tintColorCopy = tintColor;
  v36.receiver = self;
  v36.super_class = HURecordedWaveformView;
  height = [(HURecordedWaveformView *)&v36 initWithFrame:x, y, width, height];
  v18 = height;
  if (height)
  {
    objc_storeStrong(&height->_waveformColor, color);
    objc_storeStrong(&v18->_backgroundColor, backgroundColor);
    v19 = objc_alloc(MEMORY[0x277D75D68]);
    v20 = [MEMORY[0x277D75210] effectWithStyle:1];
    v21 = [v19 initWithEffect:v20];
    blurView = v18->_blurView;
    v18->_blurView = v21;

    contentView = [(UIVisualEffectView *)v18->_blurView contentView];
    layer = [contentView layer];
    [layer setBackgroundColor:{objc_msgSend(backgroundColorCopy, "CGColor")}];

    contentView2 = [(UIVisualEffectView *)v18->_blurView contentView];
    layer2 = [contentView2 layer];
    [layer2 setCompositingFilter:*MEMORY[0x277CDA5A0]];

    layer3 = [(UIVisualEffectView *)v18->_blurView layer];
    [layer3 setMasksToBounds:1];

    [(HURecordedWaveformView *)v18 addSubview:v18->_blurView];
    v28 = [MEMORY[0x277D75220] buttonWithType:1];
    playRecordingButton = v18->_playRecordingButton;
    v18->_playRecordingButton = v28;

    hu_playButton = [MEMORY[0x277D755B8] hu_playButton];
    [(UIButton *)v18->_playRecordingButton setImage:hu_playButton forState:0];
    [(UIButton *)v18->_playRecordingButton setOpaque:0];
    [(UIButton *)v18->_playRecordingButton setTintColor:tintColorCopy];
    [(UIButton *)v18->_playRecordingButton accessibilitySetIdentification:@"playAnnounceRecordingButton"];
    [(UIButton *)v18->_playRecordingButton _setTouchInsets:-0.15, -0.15, -0.15, -0.15];
    [(UIButton *)v18->_playRecordingButton addTarget:v18 action:sel__playRecording_ forControlEvents:64];
    [(HURecordedWaveformView *)v18 addSubview:v18->_playRecordingButton];
    v31 = objc_alloc(MEMORY[0x277D755E8]);
    v32 = [v31 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(HURecordedWaveformView *)v18 setWaveformImageView:v32];

    waveformImageView = [(HURecordedWaveformView *)v18 waveformImageView];
    [waveformImageView setContentMode:8];

    waveformImageView2 = [(HURecordedWaveformView *)v18 waveformImageView];
    [(HURecordedWaveformView *)v18 addSubview:waveformImageView2];
  }

  return v18;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = HURecordedWaveformView;
  [(HURecordedWaveformView *)&v29 layoutSubviews];
  blurView = [(HURecordedWaveformView *)self blurView];
  layer = [blurView layer];
  [(HURecordedWaveformView *)self bounds];
  [layer setCornerRadius:v5 * 0.5];

  blurView2 = [(HURecordedWaveformView *)self blurView];
  [(HURecordedWaveformView *)self bounds];
  [blurView2 setFrame:?];

  playRecordingButton = [(HURecordedWaveformView *)self playRecordingButton];
  [playRecordingButton frame];
  v9 = v8;
  v11 = v10;

  blurView3 = [(HURecordedWaveformView *)self blurView];
  [blurView3 center];
  v14 = v13 - v11 * 0.5;

  playRecordingButton2 = [(HURecordedWaveformView *)self playRecordingButton];
  [playRecordingButton2 setFrame:{v9, v14, 44.0, 44.0}];

  [(HURecordedWaveformView *)self bounds];
  [(HURecordedWaveformView *)self bounds];
  v17 = v16;
  v18 = v9 + 44.0;
  blurView4 = [(HURecordedWaveformView *)self blurView];
  [blurView4 center];
  v21 = v20 - v17 * 0.5;

  [(HURecordedWaveformView *)self bounds];
  v23 = v22 + -244.0 + 200.0;
  waveformImageView = [(HURecordedWaveformView *)self waveformImageView];
  [waveformImageView setFrame:{v18, v21, v23, v17}];

  waveformImage = [(HURecordedWaveformView *)self waveformImage];

  if (!waveformImage)
  {
    waveformColor = [(HURecordedWaveformView *)self waveformColor];
    v27 = [(HURecordedWaveformView *)self _waveFormImageForWidth:waveformColor havingColor:v23];

    [(HURecordedWaveformView *)self setWaveformImage:v27];
    waveformImageView2 = [(HURecordedWaveformView *)self waveformImageView];
    [waveformImageView2 setImage:v27];
  }
}

- (void)setAudioPowerLevels:(id)levels
{
  levelsCopy = levels;
  if (self->_audioPowerLevels != levelsCopy)
  {
    v6 = levelsCopy;
    objc_storeStrong(&self->_audioPowerLevels, levels);
    [(HURecordedWaveformView *)self setWaveformImage:0];
    [(HURecordedWaveformView *)self setNeedsLayout];
    levelsCopy = v6;
  }
}

- (void)setAudioFileURL:(id)l
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  objc_storeStrong(&self->_audioFileURL, l);
  v6 = [objc_alloc(MEMORY[0x277D14420]) initWithAudioFileURL:lCopy audioSessionOptions:4 delegate:self];
  [(HURecordedWaveformView *)self setAudioPlayer:v6];

  audioPlayer = [(HURecordedWaveformView *)self audioPlayer];
  v10 = 0;
  [audioPlayer prepareToPlay:&v10];
  v8 = v10;

  if (v8)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = lCopy;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Failed prepare to play audioFile [%@] - [%@]", buf, 0x16u);
    }
  }
}

- (void)setAlpha:(double)alpha
{
  v7.receiver = self;
  v7.super_class = HURecordedWaveformView;
  [(HURecordedWaveformView *)&v7 setAlpha:alpha];
  audioPlayer = [(HURecordedWaveformView *)self audioPlayer];
  [audioPlayer stop];

  playRecordingButton = [(HURecordedWaveformView *)self playRecordingButton];
  hu_playButton = [MEMORY[0x277D755B8] hu_playButton];
  [playRecordingButton setImage:hu_playButton forState:0];
}

- (void)_playRecording:(id)recording
{
  audioPlayer = [(HURecordedWaveformView *)self audioPlayer];
  isPlaying = [audioPlayer isPlaying];

  audioPlayer2 = [(HURecordedWaveformView *)self audioPlayer];
  hu_pauseButton = audioPlayer2;
  if (isPlaying)
  {
    [audioPlayer2 pause];
  }

  else
  {
    [audioPlayer2 play];

    hu_pauseButton = [MEMORY[0x277D755B8] hu_pauseButton];
    playRecordingButton = [(HURecordedWaveformView *)self playRecordingButton];
    [playRecordingButton setImage:hu_pauseButton forState:0];
  }
}

- (id)_waveFormImageForWidth:(double)width havingColor:(id)color
{
  v65 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  audioPowerLevels = [(HURecordedWaveformView *)self audioPowerLevels];
  v8 = audioPowerLevels;
  v9 = (width * 0.25);
  if (v9 && (v10 = (8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0, v11 = &v54 - v10, -[HURecordedWaveformView audioPowerLevels](self, "audioPowerLevels", MEMORY[0x28223BE20](audioPowerLevels).n128_f64[0]), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 count], v12, v13))
  {
    v59 = (width * 0.25);
    v54 = &v54;
    v56 = colorCopy;
    MEMORY[0x28223BE20](v14);
    v15 = &v54 - v10;
    bzero(&v54 - v10, 8 * v9);
    bzero(&v54 - v10, 8 * v9);
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v55 = v8;
    v16 = v8;
    v17 = [v16 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = 0;
      v21 = *v61;
      v22 = v59 - 1;
      v57 = v11 + 16;
      v58 = xmmword_20D5C4080;
      do
      {
        v23 = 0;
        v24 = v19;
        do
        {
          if (*v61 != v21)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v60 + 1) + 8 * v23) floatValue];
          v26 = __exp10(v25 * 0.05) * 32767.0;
          v27 = v20 * v59;
          v28 = [v16 count];
          if (v27 / v28 >= v22)
          {
            v19 = v22;
          }

          else
          {
            v19 = v27 / v28;
          }

          v29 = *&v15[8 * v19];
          v30 = v26 * v26 + *&v11[8 * v19] * *&v11[8 * v19] * v29;
          v31 = v29 + 1;
          v32 = sqrt(v30 / v31);
          *&v11[8 * v19] = v32;
          v33 = v19 - v24;
          v34 = v19 == v24 || v24 + 1 >= v19;
          v35 = v58;
          if (!v34)
          {
            v36 = *&v11[8 * v24];
            v37 = v32 - v36;
            v38 = ((v37 / v33) + v36);
            v39 = v33 & 0xFFFFFFFFFFFFFFFELL;
            v40 = vdupq_n_s64(v19 + ~v24 - 1);
            v41 = &v57[8 * v24];
            v42 = 1;
            do
            {
              v43 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v42 - 1), v35)));
              if (v43.i8[0])
              {
                *(v41 - 1) = v38;
              }

              if (v43.i8[4])
              {
                *v41 = v38;
              }

              v42 += 2;
              v41 += 2;
              v39 -= 2;
            }

            while (v39);
          }

          *&v15[8 * v19] = v31;
          ++v20;
          ++v23;
          v24 = v19;
        }

        while (v23 != v18);
        v18 = [v16 countByEnumeratingWithState:&v60 objects:v64 count:16];
      }

      while (v18);
    }

    v44 = 0;
    v45 = 1.0;
    v46 = v59;
    do
    {
      v47 = fmax(*&v11[8 * v44] + -30.0, 0.0);
      *&v11[8 * v44] = v47;
      if (v45 < v47)
      {
        v45 = v47;
      }

      ++v44;
    }

    while (v46 != v44);
    v48 = 0;
    colorCopy = v56;
    do
    {
      *&v11[8 * v48] = *&v11[8 * v48] / v45;
      ++v48;
    }

    while (v46 != v48);
    v49 = [HUAudioWaveformUtilities waveformImageforPowerLevels:"waveformImageforPowerLevels:powerLevelsCount:color:" powerLevelsCount:v11 color:?];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    v51 = [v49 _flatImageWithColor:systemGrayColor];

    v52 = [v51 imageWithAlignmentRectInsets:{0.0, 0.0, 0.0, 1.0}];

    v8 = v55;
  }

  else
  {
    v52 = 0;
  }

  return v52;
}

- (void)_updateProgressForPlaybackTime:(double)time
{
  audioPlayer = [(HURecordedWaveformView *)self audioPlayer];
  [audioPlayer duration];
  v7 = v6;

  [HUAudioWaveformUtilities progressForTime:time duration:v7];
  audioPlayer2 = [(HURecordedWaveformView *)self audioPlayer];
  isPlaying = [audioPlayer2 isPlaying];

  if (isPlaying)
  {
    waveformImage = [(HURecordedWaveformView *)self waveformImage];
    [waveformImage size];
    v11 = v10;
    v13 = v12;
    [HUAudioWaveformUtilities disabledWaveformWidth:"disabledWaveformWidth:forProgress:" forProgress:?];
    v15 = v14;
    v21.width = v11;
    v21.height = v13;
    UIGraphicsBeginImageContextWithOptions(v21, 0, 0.0);
    [waveformImage drawAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [whiteColor set];

    v22.origin.x = v11 - v15;
    v22.origin.y = 0.0;
    v22.size.width = v15;
    v22.size.height = v13;
    UIRectFillUsingBlendMode(v22, kCGBlendModeSourceIn);
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    waveformImageView = [(HURecordedWaveformView *)self waveformImageView];
    [waveformImageView setImage:v17];
  }
}

- (void)audioPlayer:(id)player didPausePlaybackWithReason:(id)reason
{
  hu_playButton = [MEMORY[0x277D755B8] hu_playButton];
  playRecordingButton = [(HURecordedWaveformView *)self playRecordingButton];
  [playRecordingButton setImage:hu_playButton forState:0];
}

- (void)audioPlayerDidStopPlayback:(id)playback
{
  hu_playButton = [MEMORY[0x277D755B8] hu_playButton];
  playRecordingButton = [(HURecordedWaveformView *)self playRecordingButton];
  [playRecordingButton setImage:hu_playButton forState:0];
}

- (void)audioPlayerDidResumePlayback:(id)playback
{
  hu_pauseButton = [MEMORY[0x277D755B8] hu_pauseButton];
  playRecordingButton = [(HURecordedWaveformView *)self playRecordingButton];
  [playRecordingButton setImage:hu_pauseButton forState:0];
}

- (void)audioPlayerDidFinishPlayback:(id)playback withError:(id)error
{
  hu_playButton = [MEMORY[0x277D755B8] hu_playButton];
  playRecordingButton = [(HURecordedWaveformView *)self playRecordingButton];
  [playRecordingButton setImage:hu_playButton forState:0];
}

@end