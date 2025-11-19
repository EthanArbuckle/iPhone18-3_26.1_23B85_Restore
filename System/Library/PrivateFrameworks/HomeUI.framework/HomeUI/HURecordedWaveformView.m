@interface HURecordedWaveformView
- (HURecordedWaveformView)initWithFrame:(CGRect)a3 waveformColor:(id)a4 backgroundColor:(id)a5 tintColor:(id)a6;
- (id)_waveFormImageForWidth:(double)a3 havingColor:(id)a4;
- (void)_playRecording:(id)a3;
- (void)_updateProgressForPlaybackTime:(double)a3;
- (void)audioPlayer:(id)a3 didPausePlaybackWithReason:(id)a4;
- (void)audioPlayerDidFinishPlayback:(id)a3 withError:(id)a4;
- (void)audioPlayerDidResumePlayback:(id)a3;
- (void)audioPlayerDidStopPlayback:(id)a3;
- (void)layoutSubviews;
- (void)setAlpha:(double)a3;
- (void)setAudioFileURL:(id)a3;
- (void)setAudioPowerLevels:(id)a3;
@end

@implementation HURecordedWaveformView

- (HURecordedWaveformView)initWithFrame:(CGRect)a3 waveformColor:(id)a4 backgroundColor:(id)a5 tintColor:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v36.receiver = self;
  v36.super_class = HURecordedWaveformView;
  v17 = [(HURecordedWaveformView *)&v36 initWithFrame:x, y, width, height];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_waveformColor, a4);
    objc_storeStrong(&v18->_backgroundColor, a5);
    v19 = objc_alloc(MEMORY[0x277D75D68]);
    v20 = [MEMORY[0x277D75210] effectWithStyle:1];
    v21 = [v19 initWithEffect:v20];
    blurView = v18->_blurView;
    v18->_blurView = v21;

    v23 = [(UIVisualEffectView *)v18->_blurView contentView];
    v24 = [v23 layer];
    [v24 setBackgroundColor:{objc_msgSend(v15, "CGColor")}];

    v25 = [(UIVisualEffectView *)v18->_blurView contentView];
    v26 = [v25 layer];
    [v26 setCompositingFilter:*MEMORY[0x277CDA5A0]];

    v27 = [(UIVisualEffectView *)v18->_blurView layer];
    [v27 setMasksToBounds:1];

    [(HURecordedWaveformView *)v18 addSubview:v18->_blurView];
    v28 = [MEMORY[0x277D75220] buttonWithType:1];
    playRecordingButton = v18->_playRecordingButton;
    v18->_playRecordingButton = v28;

    v30 = [MEMORY[0x277D755B8] hu_playButton];
    [(UIButton *)v18->_playRecordingButton setImage:v30 forState:0];
    [(UIButton *)v18->_playRecordingButton setOpaque:0];
    [(UIButton *)v18->_playRecordingButton setTintColor:v16];
    [(UIButton *)v18->_playRecordingButton accessibilitySetIdentification:@"playAnnounceRecordingButton"];
    [(UIButton *)v18->_playRecordingButton _setTouchInsets:-0.15, -0.15, -0.15, -0.15];
    [(UIButton *)v18->_playRecordingButton addTarget:v18 action:sel__playRecording_ forControlEvents:64];
    [(HURecordedWaveformView *)v18 addSubview:v18->_playRecordingButton];
    v31 = objc_alloc(MEMORY[0x277D755E8]);
    v32 = [v31 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(HURecordedWaveformView *)v18 setWaveformImageView:v32];

    v33 = [(HURecordedWaveformView *)v18 waveformImageView];
    [v33 setContentMode:8];

    v34 = [(HURecordedWaveformView *)v18 waveformImageView];
    [(HURecordedWaveformView *)v18 addSubview:v34];
  }

  return v18;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = HURecordedWaveformView;
  [(HURecordedWaveformView *)&v29 layoutSubviews];
  v3 = [(HURecordedWaveformView *)self blurView];
  v4 = [v3 layer];
  [(HURecordedWaveformView *)self bounds];
  [v4 setCornerRadius:v5 * 0.5];

  v6 = [(HURecordedWaveformView *)self blurView];
  [(HURecordedWaveformView *)self bounds];
  [v6 setFrame:?];

  v7 = [(HURecordedWaveformView *)self playRecordingButton];
  [v7 frame];
  v9 = v8;
  v11 = v10;

  v12 = [(HURecordedWaveformView *)self blurView];
  [v12 center];
  v14 = v13 - v11 * 0.5;

  v15 = [(HURecordedWaveformView *)self playRecordingButton];
  [v15 setFrame:{v9, v14, 44.0, 44.0}];

  [(HURecordedWaveformView *)self bounds];
  [(HURecordedWaveformView *)self bounds];
  v17 = v16;
  v18 = v9 + 44.0;
  v19 = [(HURecordedWaveformView *)self blurView];
  [v19 center];
  v21 = v20 - v17 * 0.5;

  [(HURecordedWaveformView *)self bounds];
  v23 = v22 + -244.0 + 200.0;
  v24 = [(HURecordedWaveformView *)self waveformImageView];
  [v24 setFrame:{v18, v21, v23, v17}];

  v25 = [(HURecordedWaveformView *)self waveformImage];

  if (!v25)
  {
    v26 = [(HURecordedWaveformView *)self waveformColor];
    v27 = [(HURecordedWaveformView *)self _waveFormImageForWidth:v26 havingColor:v23];

    [(HURecordedWaveformView *)self setWaveformImage:v27];
    v28 = [(HURecordedWaveformView *)self waveformImageView];
    [v28 setImage:v27];
  }
}

- (void)setAudioPowerLevels:(id)a3
{
  v5 = a3;
  if (self->_audioPowerLevels != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_audioPowerLevels, a3);
    [(HURecordedWaveformView *)self setWaveformImage:0];
    [(HURecordedWaveformView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setAudioFileURL:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_audioFileURL, a3);
  v6 = [objc_alloc(MEMORY[0x277D14420]) initWithAudioFileURL:v5 audioSessionOptions:4 delegate:self];
  [(HURecordedWaveformView *)self setAudioPlayer:v6];

  v7 = [(HURecordedWaveformView *)self audioPlayer];
  v10 = 0;
  [v7 prepareToPlay:&v10];
  v8 = v10;

  if (v8)
  {
    v9 = HFLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Failed prepare to play audioFile [%@] - [%@]", buf, 0x16u);
    }
  }
}

- (void)setAlpha:(double)a3
{
  v7.receiver = self;
  v7.super_class = HURecordedWaveformView;
  [(HURecordedWaveformView *)&v7 setAlpha:a3];
  v4 = [(HURecordedWaveformView *)self audioPlayer];
  [v4 stop];

  v5 = [(HURecordedWaveformView *)self playRecordingButton];
  v6 = [MEMORY[0x277D755B8] hu_playButton];
  [v5 setImage:v6 forState:0];
}

- (void)_playRecording:(id)a3
{
  v4 = [(HURecordedWaveformView *)self audioPlayer];
  v5 = [v4 isPlaying];

  v6 = [(HURecordedWaveformView *)self audioPlayer];
  v8 = v6;
  if (v5)
  {
    [v6 pause];
  }

  else
  {
    [v6 play];

    v8 = [MEMORY[0x277D755B8] hu_pauseButton];
    v7 = [(HURecordedWaveformView *)self playRecordingButton];
    [v7 setImage:v8 forState:0];
  }
}

- (id)_waveFormImageForWidth:(double)a3 havingColor:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HURecordedWaveformView *)self audioPowerLevels];
  v8 = v7;
  v9 = (a3 * 0.25);
  if (v9 && (v10 = (8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0, v11 = &v54 - v10, -[HURecordedWaveformView audioPowerLevels](self, "audioPowerLevels", MEMORY[0x28223BE20](v7).n128_f64[0]), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 count], v12, v13))
  {
    v59 = (a3 * 0.25);
    v54 = &v54;
    v56 = v6;
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
    v6 = v56;
    do
    {
      *&v11[8 * v48] = *&v11[8 * v48] / v45;
      ++v48;
    }

    while (v46 != v48);
    v49 = [HUAudioWaveformUtilities waveformImageforPowerLevels:"waveformImageforPowerLevels:powerLevelsCount:color:" powerLevelsCount:v11 color:?];
    v50 = [MEMORY[0x277D75348] systemGrayColor];
    v51 = [v49 _flatImageWithColor:v50];

    v52 = [v51 imageWithAlignmentRectInsets:{0.0, 0.0, 0.0, 1.0}];

    v8 = v55;
  }

  else
  {
    v52 = 0;
  }

  return v52;
}

- (void)_updateProgressForPlaybackTime:(double)a3
{
  v5 = [(HURecordedWaveformView *)self audioPlayer];
  [v5 duration];
  v7 = v6;

  [HUAudioWaveformUtilities progressForTime:a3 duration:v7];
  v8 = [(HURecordedWaveformView *)self audioPlayer];
  v9 = [v8 isPlaying];

  if (v9)
  {
    v19 = [(HURecordedWaveformView *)self waveformImage];
    [v19 size];
    v11 = v10;
    v13 = v12;
    [HUAudioWaveformUtilities disabledWaveformWidth:"disabledWaveformWidth:forProgress:" forProgress:?];
    v15 = v14;
    v21.width = v11;
    v21.height = v13;
    UIGraphicsBeginImageContextWithOptions(v21, 0, 0.0);
    [v19 drawAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
    v16 = [MEMORY[0x277D75348] whiteColor];
    [v16 set];

    v22.origin.x = v11 - v15;
    v22.origin.y = 0.0;
    v22.size.width = v15;
    v22.size.height = v13;
    UIRectFillUsingBlendMode(v22, kCGBlendModeSourceIn);
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v18 = [(HURecordedWaveformView *)self waveformImageView];
    [v18 setImage:v17];
  }
}

- (void)audioPlayer:(id)a3 didPausePlaybackWithReason:(id)a4
{
  v6 = [MEMORY[0x277D755B8] hu_playButton];
  v5 = [(HURecordedWaveformView *)self playRecordingButton];
  [v5 setImage:v6 forState:0];
}

- (void)audioPlayerDidStopPlayback:(id)a3
{
  v5 = [MEMORY[0x277D755B8] hu_playButton];
  v4 = [(HURecordedWaveformView *)self playRecordingButton];
  [v4 setImage:v5 forState:0];
}

- (void)audioPlayerDidResumePlayback:(id)a3
{
  v5 = [MEMORY[0x277D755B8] hu_pauseButton];
  v4 = [(HURecordedWaveformView *)self playRecordingButton];
  [v4 setImage:v5 forState:0];
}

- (void)audioPlayerDidFinishPlayback:(id)a3 withError:(id)a4
{
  v6 = [MEMORY[0x277D755B8] hu_playButton];
  v5 = [(HURecordedWaveformView *)self playRecordingButton];
  [v5 setImage:v6 forState:0];
}

@end