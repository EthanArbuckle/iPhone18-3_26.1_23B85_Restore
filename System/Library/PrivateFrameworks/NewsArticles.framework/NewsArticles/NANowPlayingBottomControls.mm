@interface NANowPlayingBottomControls
+ (id)_accessibilityValueForRate:(double)a3;
+ (id)_labelForRate:(double)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NANowPlayingBottomControls)initWithFrame:(CGRect)a3;
- (NANowPlayingBottomControlsDelegate)delegate;
- (double)widestPlaybackSpeedLabelWidth;
- (id)buttonTitleFont;
- (void)dealloc;
- (void)dismissAirplayPicker;
- (void)layoutPlaybackSpeedButton;
- (void)layoutRouteButton;
- (void)layoutSubviews;
- (void)playbackSpeedButtonTapped:(id)a3;
- (void)routeButtonTapped:(id)a3;
- (void)routeButtonTouchDown:(id)a3;
- (void)routeButtonTouchUpOutside:(id)a3;
- (void)routeDidChange:(id)a3;
- (void)setRate:(double)a3;
- (void)startAirplayStatusUpdates;
- (void)updateRouteButtonWithRoute:(id)a3;
@end

@implementation NANowPlayingBottomControls

- (NANowPlayingBottomControls)initWithFrame:(CGRect)a3
{
  v23.receiver = self;
  v23.super_class = NANowPlayingBottomControls;
  v3 = [(NANowPlayingBottomControls *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __44__NANowPlayingBottomControls_initWithFrame___block_invoke;
    v21[3] = &unk_1E84EA238;
    v5 = v3;
    v22 = v5;
    v6 = __44__NANowPlayingBottomControls_initWithFrame___block_invoke(v21);
    playbackSpeedButton = v5->_playbackSpeedButton;
    v5->_playbackSpeedButton = v6;

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __44__NANowPlayingBottomControls_initWithFrame___block_invoke_2;
    v19[3] = &unk_1E84EA238;
    v8 = v5;
    v20 = v8;
    v9 = __44__NANowPlayingBottomControls_initWithFrame___block_invoke_2(v19);
    sizingPlaybackSpeedButton = v8->_sizingPlaybackSpeedButton;
    v8->_sizingPlaybackSpeedButton = v9;

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __44__NANowPlayingBottomControls_initWithFrame___block_invoke_3;
    v17[3] = &unk_1E84EA260;
    v11 = v8;
    v18 = v11;
    v12 = __44__NANowPlayingBottomControls_initWithFrame___block_invoke_3(v17);
    routeButton = v11->_routeButton;
    v11->_routeButton = v12;

    v14 = objc_alloc_init(MEMORY[0x1E69705B0]);
    mediaControls = v11->_mediaControls;
    v11->_mediaControls = v14;

    [(MPMediaControls *)v11->_mediaControls setSourceView:v11->_routeButton];
  }

  return v4;
}

id __44__NANowPlayingBottomControls_initWithFrame___block_invoke(uint64_t a1)
{
  v2 = [NATouchInsetsButton buttonWithType:0];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setTintColor:v3];

  v4 = [v2 titleLabel];
  [v4 setAdjustsFontForContentSizeCategory:1];

  v5 = [MEMORY[0x1E69DCC60] menuWithChildren:MEMORY[0x1E695E0F0]];
  [v2 setMenu:v5];

  [v2 setShowsMenuAsPrimaryAction:1];
  [v2 addTarget:*(a1 + 32) action:sel_playbackSpeedButtonTapped_ forControlEvents:0x4000];
  v6 = NABundle();
  v7 = [v6 localizedStringForKey:@"playback speed" value:&stru_1F52B5BC8 table:0];
  [v2 setAccessibilityLabel:v7];

  [*(a1 + 32) addSubview:v2];

  return v2;
}

id __44__NANowPlayingBottomControls_initWithFrame___block_invoke_2(uint64_t a1)
{
  v2 = [NATouchInsetsButton buttonWithType:0];
  v3 = [*(a1 + 32) playbackSpeedButton];
  v4 = [v3 titleLabel];
  v5 = [v4 adjustsFontForContentSizeCategory];
  v6 = [v2 titleLabel];
  [v6 setAdjustsFontForContentSizeCategory:v5];

  [v2 setHidden:1];
  [*(a1 + 32) addSubview:v2];

  return v2;
}

id __44__NANowPlayingBottomControls_initWithFrame___block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E6970928]);
  v3 = [v2 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v3 setExclusiveTouch:1];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"airplayaudio"];
  v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:22.0];
  v6 = [v4 imageWithConfiguration:v5];
  [v3 setAccessoryImage:v6];

  v7 = [MEMORY[0x1E69DC888] whiteColor];
  [v3 setTintColor:v7];

  v8 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB980]];
  [v3 setFont:v8];

  [v3 setRouteLabelAxis:1];
  [v3 addTarget:*(a1 + 32) action:sel_routeButtonTouchDown_ forControlEvents:1];
  [v3 addTarget:*(a1 + 32) action:sel_routeButtonTouchUpOutside_ forControlEvents:128];
  [v3 addTarget:*(a1 + 32) action:sel_routeButtonTapped_ forControlEvents:64];
  [*(a1 + 32) addSubview:v3];

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NANowPlayingBottomControls;
  [(NANowPlayingBottomControls *)&v3 layoutSubviews];
  [(NANowPlayingBottomControls *)self layoutPlaybackSpeedButton];
  [(NANowPlayingBottomControls *)self layoutRouteButton];
}

- (id)buttonTitleFont
{
  v2 = [MEMORY[0x1E69DB878] systemFontOfSize:20.0 weight:*MEMORY[0x1E69DB980]];
  v3 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDDC8]];
  v4 = [v3 scaledFontForFont:v2 maximumPointSize:26.0];

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(NANowPlayingBottomControls *)self routeButton:a3.width];
  [v5 intrinsicContentSize];
  v7 = v6;

  if (v7 >= 48.0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [NANowPlayingBottomControls sizeThatFits:];
  }

  v8 = [(NANowPlayingBottomControls *)self routeButton];
  v9 = [v8 accessoryImage];
  [v9 size];
  v11 = v10 * -0.5;

  [(NANowPlayingBottomControls *)self iconCenterY];
  v13 = v12 + v11;
  v14 = [(NANowPlayingBottomControls *)self routeButton];
  [v14 accessoryImageSpacing];
  v16 = v15;

  v17 = v13 + 48.0 + v16;
  v18 = width;
  result.height = v17;
  result.width = v18;
  return result;
}

- (void)layoutPlaybackSpeedButton
{
  v3 = [(NANowPlayingBottomControls *)self buttonTitleFont];
  v4 = [(NANowPlayingBottomControls *)self playbackSpeedButton];
  v5 = [v4 titleLabel];
  [v5 setFont:v3];

  v6 = [(NANowPlayingBottomControls *)self buttonTitleFont];
  v7 = [(NANowPlayingBottomControls *)self sizingPlaybackSpeedButton];
  v8 = [v7 titleLabel];
  [v8 setFont:v6];

  v9 = [(NANowPlayingBottomControls *)self playbackSpeedButton];
  [v9 sizeToFit];

  v10 = [(NANowPlayingBottomControls *)self playbackSpeedButton];
  [v10 bounds];
  Height = CGRectGetHeight(v37);

  [(NANowPlayingBottomControls *)self bounds];
  MidX = CGRectGetMidX(v38);
  [(NANowPlayingBottomControls *)self spacingBetweenButtonCenters];
  v14 = MidX - v13 * 0.5;
  [(NANowPlayingBottomControls *)self widestPlaybackSpeedLabelWidth];
  v16 = v15;
  v17 = v14 - v15 * 0.5;
  [(NANowPlayingBottomControls *)self iconCenterY];
  v19 = v18 - Height * 0.5;
  v20 = [(NANowPlayingBottomControls *)self playbackSpeedButton];
  [v20 bounds];
  v21 = CGRectGetHeight(v39);
  v22 = [(NANowPlayingBottomControls *)self playbackSpeedButton];
  [v22 setFrame:{v17, v19, v16, v21}];

  v35 = [(NANowPlayingBottomControls *)self playbackSpeedButton];
  [v35 bounds];
  v27 = NAInsetsToMinimumTapTargetForFrame(v23, v24, v25, v26);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [(NANowPlayingBottomControls *)self playbackSpeedButton];
  [v34 setTouchInsets:{v27, v29, v31, v33}];
}

- (void)layoutRouteButton
{
  [(NANowPlayingBottomControls *)self bounds];
  MidX = CGRectGetMidX(v38);
  [(NANowPlayingBottomControls *)self spacingBetweenButtonCenters];
  v5 = MidX + v4 * 0.5;
  v6 = [(NANowPlayingBottomControls *)self playbackSpeedButton];
  [v6 frame];
  v7 = CGRectGetMidX(v39);
  [(NANowPlayingBottomControls *)self widestPlaybackSpeedLabelWidth];
  v9 = v7 + v8 * 0.5;

  [(NANowPlayingBottomControls *)self bounds];
  v10 = CGRectGetMaxX(v40) - v5 + -4.0;
  if (v5 - v9 + -4.0 < v10)
  {
    v10 = v5 - v9 + -4.0;
  }

  v11 = v10 + v10;
  v12 = [(NANowPlayingBottomControls *)self routeButton];
  [(NANowPlayingBottomControls *)self bounds];
  [v12 sizeThatFits:{v11, CGRectGetHeight(v41)}];
  v14 = v13;
  v16 = v15;

  if (v11 >= v14)
  {
    v11 = v14;
  }

  v17 = [(NANowPlayingBottomControls *)self routeButton];
  v18 = [v17 accessoryImage];
  [v18 size];
  v20 = v19 * 0.5;

  [(NANowPlayingBottomControls *)self iconCenterY];
  v22 = v21 - v20;
  v23 = [(NANowPlayingBottomControls *)self routeButton];
  [v23 setFrame:{v5 - v11 * 0.5, v22, v11, v16}];

  v36 = [(NANowPlayingBottomControls *)self routeButton];
  [v36 bounds];
  v28 = NAInsetsToMinimumTapTargetForFrame(v24, v25, v26, v27);
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = [(NANowPlayingBottomControls *)self routeButton];
  [v35 setHitRectInsets:{v28, v30, v32, v34}];
}

- (double)widestPlaybackSpeedLabelWidth
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [&unk_1F52DE0F8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = *v17;
  v6 = 0.0;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v17 != v5)
      {
        objc_enumerationMutation(&unk_1F52DE0F8);
      }

      v8 = *(*(&v16 + 1) + 8 * i);
      v9 = objc_opt_class();
      [v8 doubleValue];
      v10 = [v9 _labelForRate:?];
      v11 = [(NANowPlayingBottomControls *)self sizingPlaybackSpeedButton];
      [v11 setTitle:v10 forState:0];

      v12 = [(NANowPlayingBottomControls *)self sizingPlaybackSpeedButton];
      [v12 intrinsicContentSize];
      v14 = v13;

      if (v14 >= v6)
      {
        v6 = v14;
      }
    }

    v4 = [&unk_1F52DE0F8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v4);
  return v6;
}

- (void)setRate:(double)a3
{
  v5 = [(NANowPlayingBottomControls *)self playbackSpeedButton];
  v6 = [objc_opt_class() _labelForRate:a3];
  [v5 setTitle:v6 forState:0];

  v7 = [objc_opt_class() _accessibilityValueForRate:a3];
  v8 = [(NANowPlayingBottomControls *)self playbackSpeedButton];
  [v8 setAccessibilityValue:v7];

  [(NANowPlayingBottomControls *)self setNeedsLayout];
}

+ (id)_accessibilityValueForRate:(double)a3
{
  if (a3 >= 1.0)
  {
    if (a3 >= 1.25)
    {
      if (a3 >= 1.5)
      {
        if (a3 >= 1.75)
        {
          v4 = NABundle();
          v5 = v4;
          if (a3 >= 2.0)
          {
            v6 = @"double speed";
          }

          else
          {
            v6 = @"one and three quarters speed";
          }
        }

        else
        {
          v4 = NABundle();
          v5 = v4;
          v6 = @"one and a half speed";
        }
      }

      else
      {
        v4 = NABundle();
        v5 = v4;
        v6 = @"one and a quarter speed";
      }
    }

    else
    {
      v4 = NABundle();
      v5 = v4;
      v6 = @"normal speed";
    }
  }

  else
  {
    v4 = NABundle();
    v5 = v4;
    v6 = @"three quarters speed";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F52B5BC8 table:0];

  return v7;
}

+ (id)_labelForRate:(double)a3
{
  if (a3 >= 1.0)
  {
    if (a3 >= 1.25)
    {
      if (a3 >= 1.5)
      {
        if (a3 >= 1.75)
        {
          v4 = NABundle();
          v5 = v4;
          if (a3 >= 2.0)
          {
            v6 = @"2";
          }

          else
          {
            v6 = @"1.75";
          }
        }

        else
        {
          v4 = NABundle();
          v5 = v4;
          v6 = @"1.5";
        }
      }

      else
      {
        v4 = NABundle();
        v5 = v4;
        v6 = @"1.25";
      }
    }

    else
    {
      v4 = NABundle();
      v5 = v4;
      v6 = @"1";
    }
  }

  else
  {
    v4 = NABundle();
    v5 = v4;
    v6 = @"0.75";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F52B5BC8 table:0];

  v8 = NABundle();
  v9 = [v8 localizedStringForKey:@"×" value:&stru_1F52B5BC8 table:0];
  v10 = [v7 stringByAppendingString:v9];

  return v10;
}

- (void)playbackSpeedButtonTapped:(id)a3
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "playbackSpeedButtonMenuAction:", v8, 2u);
  }

  v5 = [(NANowPlayingBottomControls *)self delegate];
  v6 = [v5 nowPlayingBottomControlsProvidePlaybackRateMenu:self];
  v7 = [(NANowPlayingBottomControls *)self playbackSpeedButton];
  [v7 setMenu:v6];
}

- (void)routeButtonTouchDown:(id)a3
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "routeButtonTouchDown:", v6, 2u);
  }

  v5 = [(NANowPlayingBottomControls *)self mediaControls];
  [v5 startPrewarming];
}

- (void)routeButtonTapped:(id)a3
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "routeButtonTapped:", v6, 2u);
  }

  v5 = [(NANowPlayingBottomControls *)self mediaControls];
  [v5 present];
}

- (void)routeButtonTouchUpOutside:(id)a3
{
  v4 = NANowPlayingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D7987000, v4, OS_LOG_TYPE_DEFAULT, "routeButtonTouchUpOutside:", v6, 2u);
  }

  v5 = [(NANowPlayingBottomControls *)self mediaControls];
  [v5 stopPrewarming];
}

- (void)startAirplayStatusUpdates
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_routeDidChange_ name:*MEMORY[0x1E696F860] object:0];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__NANowPlayingBottomControls_startAirplayStatusUpdates__block_invoke;
  v4[3] = &unk_1E84EA288;
  v4[4] = self;
  [MEMORY[0x1E6970490] getActiveRouteWithTimeout:v4 completion:1.0];
}

void __55__NANowPlayingBottomControls_startAirplayStatusUpdates__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 updateRouteButtonWithRoute:a2];
  }

  else
  {
    v4 = [MEMORY[0x1E6970490] systemRoute];
    [v2 updateRouteButtonWithRoute:v4];
  }
}

- (void)dismissAirplayPicker
{
  v2 = [(NANowPlayingBottomControls *)self mediaControls];
  [v2 dismiss];
}

- (void)routeDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 object];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__NANowPlayingBottomControls_routeDidChange___block_invoke;
    v9[3] = &unk_1E84EA210;
    v9[4] = self;
    v10 = v7;
    v8 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

- (void)updateRouteButtonWithRoute:(id)a3
{
  v4 = a3;
  v5 = [(NANowPlayingBottomControls *)self routeButton];
  [v5 setRoute:v4];

  LODWORD(v5) = [v4 isRoutingToWirelessDevice];
  v6 = [(NANowPlayingBottomControls *)self routeButton];
  [v6 setRouteLabelHidden:v5 ^ 1];

  [(NANowPlayingBottomControls *)self setNeedsLayout];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = NANowPlayingBottomControls;
  [(NANowPlayingBottomControls *)&v4 dealloc];
}

- (NANowPlayingBottomControlsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sizeThatFits:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"MPRouteButton needs to be remeasured to find out its max height"];
  v1 = 136315906;
  v2 = "[NANowPlayingBottomControls sizeThatFits:]";
  v3 = 2080;
  v4 = "NANowPlayingBottomControls.m";
  v5 = 1024;
  v6 = 111;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&dword_1D7987000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

@end