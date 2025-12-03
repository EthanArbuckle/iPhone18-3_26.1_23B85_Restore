@interface HUAnnouncementPlaybackView
- (HUAnnouncementPlaybackView)initWithFrame:(CGRect)frame;
- (id)_avatarImageSymbolConfiguration;
- (id)_imageOrViewForServiceType:(id)type;
- (id)_requiredKeyDescriptors;
- (id)description;
- (void)_animateLayerWaveAtIndex:(unint64_t)index forAveragePower:(double)power;
- (void)_configureAnnounceSender:(id)sender;
- (void)_generateRippleForAveragePower:(double)power;
- (void)_setupAudioWaveLayers;
- (void)_updateIconViewForServiceType:(id)type;
- (void)didUpdateAveragePower:(double)power;
- (void)playbackStopped;
- (void)resumePlaybackAnimation;
- (void)setAnnouncementInfo:(id)info;
- (void)updateConstraints;
@end

@implementation HUAnnouncementPlaybackView

- (HUAnnouncementPlaybackView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = HUAnnouncementPlaybackView;
  v3 = [(HUAnnouncementPlaybackView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_currentWaveLayerIndex = 0;
    v3->_playbackFractionComplete = 0.0;
    v5 = objc_opt_new();
    audioWaveLayers = v4->_audioWaveLayers;
    v4->_audioWaveLayers = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBDBE8]);
    avatarView = v4->_avatarView;
    v4->_avatarView = v7;

    [(CNAvatarView *)v4->_avatarView setUserInteractionEnabled:0];
    [(CNAvatarView *)v4->_avatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNAvatarView *)v4->_avatarView setAlpha:0.0];
    [(HUAnnouncementPlaybackView *)v4 addSubview:v4->_avatarView];
    v9 = objc_alloc_init(MEMORY[0x277D755E8]);
    genericAvatarView = v4->_genericAvatarView;
    v4->_genericAvatarView = v9;

    [(UIImageView *)v4->_genericAvatarView setUserInteractionEnabled:0];
    [(UIImageView *)v4->_genericAvatarView setContentMode:1];
    [(UIImageView *)v4->_genericAvatarView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUAnnouncementPlaybackView *)v4 addSubview:v4->_genericAvatarView];
    v11 = objc_alloc(MEMORY[0x277D180D0]);
    v12 = [v11 initWithFrame:1 contentMode:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    iconView = v4->_iconView;
    v4->_iconView = v12;

    [(HUIconView *)v4->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUIconView *)v4->_iconView setAlpha:0.0];
    [(HUAnnouncementPlaybackView *)v4 addSubview:v4->_iconView];
    [(HUAnnouncementPlaybackView *)v4 setNeedsUpdateConstraints];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  announcementInfo = [(HUAnnouncementPlaybackView *)self announcementInfo];
  v5 = [announcementInfo objectForKeyedSubscript:*MEMORY[0x277CEA768]];
  announcementInfo2 = [(HUAnnouncementPlaybackView *)self announcementInfo];
  v7 = [announcementInfo2 objectForKeyedSubscript:*MEMORY[0x277CEAA18]];
  fullyPlayed = [(HUAnnouncementPlaybackView *)self fullyPlayed];
  audioPlayer = [(HUAnnouncementPlaybackView *)self audioPlayer];
  v10 = [v3 stringWithFormat:@"ID [%@], index [%@] - isFullyPlayed [%d] - isPlaying [%d]", v5, v7, fullyPlayed, objc_msgSend(audioPlayer, "isPlaying")];

  return v10;
}

- (void)updateConstraints
{
  v58.receiver = self;
  v58.super_class = HUAnnouncementPlaybackView;
  [(HUAnnouncementPlaybackView *)&v58 updateConstraints];
  v3 = objc_opt_new();
  avatarView = [(HUAnnouncementPlaybackView *)self avatarView];
  centerXAnchor = [avatarView centerXAnchor];
  centerXAnchor2 = [(HUAnnouncementPlaybackView *)self centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v3 addObject:v7];

  avatarView2 = [(HUAnnouncementPlaybackView *)self avatarView];
  centerYAnchor = [avatarView2 centerYAnchor];
  centerYAnchor2 = [(HUAnnouncementPlaybackView *)self centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v3 addObject:v11];

  avatarView3 = [(HUAnnouncementPlaybackView *)self avatarView];
  heightAnchor = [avatarView3 heightAnchor];
  heightAnchor2 = [(HUAnnouncementPlaybackView *)self heightAnchor];
  v15 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [v3 addObject:v15];

  avatarView4 = [(HUAnnouncementPlaybackView *)self avatarView];
  widthAnchor = [avatarView4 widthAnchor];
  avatarView5 = [(HUAnnouncementPlaybackView *)self avatarView];
  heightAnchor3 = [avatarView5 heightAnchor];
  v20 = [widthAnchor constraintEqualToAnchor:heightAnchor3];
  [v3 addObject:v20];

  genericAvatarView = [(HUAnnouncementPlaybackView *)self genericAvatarView];
  centerXAnchor3 = [genericAvatarView centerXAnchor];
  centerXAnchor4 = [(HUAnnouncementPlaybackView *)self centerXAnchor];
  v24 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v3 addObject:v24];

  genericAvatarView2 = [(HUAnnouncementPlaybackView *)self genericAvatarView];
  centerYAnchor3 = [genericAvatarView2 centerYAnchor];
  centerYAnchor4 = [(HUAnnouncementPlaybackView *)self centerYAnchor];
  v28 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v3 addObject:v28];

  genericAvatarView3 = [(HUAnnouncementPlaybackView *)self genericAvatarView];
  widthAnchor2 = [genericAvatarView3 widthAnchor];
  heightAnchor4 = [(HUAnnouncementPlaybackView *)self heightAnchor];
  v32 = [widthAnchor2 constraintEqualToAnchor:heightAnchor4];
  [v3 addObject:v32];

  genericAvatarView4 = [(HUAnnouncementPlaybackView *)self genericAvatarView];
  heightAnchor5 = [genericAvatarView4 heightAnchor];
  genericAvatarView5 = [(HUAnnouncementPlaybackView *)self genericAvatarView];
  widthAnchor3 = [genericAvatarView5 widthAnchor];
  v37 = [heightAnchor5 constraintEqualToAnchor:widthAnchor3];
  [v3 addObject:v37];

  iconView = [(HUAnnouncementPlaybackView *)self iconView];
  centerXAnchor5 = [iconView centerXAnchor];
  centerXAnchor6 = [(HUAnnouncementPlaybackView *)self centerXAnchor];
  v41 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  [v3 addObject:v41];

  iconView2 = [(HUAnnouncementPlaybackView *)self iconView];
  centerYAnchor5 = [iconView2 centerYAnchor];
  centerYAnchor6 = [(HUAnnouncementPlaybackView *)self centerYAnchor];
  v45 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  [v3 addObject:v45];

  iconView3 = [(HUAnnouncementPlaybackView *)self iconView];
  widthAnchor4 = [iconView3 widthAnchor];
  heightAnchor6 = [(HUAnnouncementPlaybackView *)self heightAnchor];
  v49 = [widthAnchor4 constraintEqualToAnchor:heightAnchor6];
  [v3 addObject:v49];

  iconView4 = [(HUAnnouncementPlaybackView *)self iconView];
  heightAnchor7 = [iconView4 heightAnchor];
  iconView5 = [(HUAnnouncementPlaybackView *)self iconView];
  widthAnchor5 = [iconView5 widthAnchor];
  v54 = [heightAnchor7 constraintEqualToAnchor:widthAnchor5];
  [v3 addObject:v54];

  CGAffineTransformMakeScale(&v57, 0.75, 0.75);
  iconView6 = [(HUAnnouncementPlaybackView *)self iconView];
  v56 = v57;
  [iconView6 setTransform:&v56];

  [MEMORY[0x277CCAAD0] activateConstraints:v3];
}

- (void)_configureAnnounceSender:(id)sender
{
  v38 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    avatarView = [(HUAnnouncementPlaybackView *)self avatarView];
    [avatarView setAlpha:1.0];

    genericAvatarView = [(HUAnnouncementPlaybackView *)self genericAvatarView];
    [genericAvatarView setAlpha:0.0];

    iconView = [(HUAnnouncementPlaybackView *)self iconView];
    [iconView setAlpha:0.0];

    avatarView2 = [(HUAnnouncementPlaybackView *)self avatarView];
    [avatarView2 setContact:senderCopy];
  }

  else
  {
    if ([(HUAnnouncementPlaybackView *)self isSiriEndpointAccessory])
    {
      v9 = HFLogForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v34) = 0;
        _os_log_impl(&dword_20CEB6000, v9, OS_LOG_TYPE_DEFAULT, "Now Configuring AvatarView for SiriEndpointAccessory", &v34, 2u);
      }

      avatarView3 = [(HUAnnouncementPlaybackView *)self avatarView];
      [avatarView3 setAlpha:0.0];

      iconView2 = [(HUAnnouncementPlaybackView *)self iconView];
      [iconView2 setAlpha:0.0];

      genericAvatarView2 = [(HUAnnouncementPlaybackView *)self genericAvatarView];
      [genericAvatarView2 setAlpha:1.0];

      announcementInfo = [(HUAnnouncementPlaybackView *)self announcementInfo];
      avatarView2 = [announcementInfo objectForKeyedSubscript:*MEMORY[0x277CEAA90]];

      v14 = [(HUAnnouncementPlaybackView *)self _imageOrViewForServiceType:avatarView2];
      v15 = HFLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 138412546;
        v35 = avatarView2;
        v36 = 2112;
        v37 = v14;
        _os_log_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_DEFAULT, "imageOrViewForServiceType [%@] = [%@]", &v34, 0x16u);
      }

      objc_opt_class();
      v16 = v14;
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      whiteColor = v17;

      objc_opt_class();
      v19 = v16;
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;

      if (v21)
      {
        v22 = [MEMORY[0x277D755B8] hu_circleImageWithDiameter:120.0];

        [(HUAnnouncementPlaybackView *)self _updateIconViewForServiceType:avatarView2];
        iconView3 = [(HUAnnouncementPlaybackView *)self iconView];
        [iconView3 setAlpha:1.0];

        whiteColor = v22;
      }

      genericAvatarView3 = [(HUAnnouncementPlaybackView *)self genericAvatarView];
      v25 = genericAvatarView3;
      v26 = whiteColor;
    }

    else
    {
      avatarView4 = [(HUAnnouncementPlaybackView *)self avatarView];
      [avatarView4 setAlpha:0.0];

      iconView4 = [(HUAnnouncementPlaybackView *)self iconView];
      [iconView4 setAlpha:0.0];

      genericAvatarView4 = [(HUAnnouncementPlaybackView *)self genericAvatarView];
      [genericAvatarView4 setAlpha:1.0];

      avatarView2 = [(HUAnnouncementPlaybackView *)self _avatarImageSymbolConfiguration];
      announcementInfo2 = [(HUAnnouncementPlaybackView *)self announcementInfo];
      v19 = [announcementInfo2 objectForKeyedSubscript:*MEMORY[0x277CEAAB0]];

      whiteColor = [MEMORY[0x277D75348] whiteColor];
      v21 = [MEMORY[0x277D755B8] hu_avatarImageWithSymbolNamed:v19 configuration:avatarView2 backgroundColor:whiteColor diameter:120.0];
      if (!v21)
      {
        if ([(HUAnnouncementPlaybackView *)self _isProductTypeHomePod])
        {
          productType = [(HUAnnouncementPlaybackView *)self productType];
          v32 = MEMORY[0x277D755B8];
          if (productType == 3348380076)
          {
            v33 = @"homepod.mini.fill";
          }

          else
          {
            v33 = @"homepod.fill";
          }
        }

        else
        {
          v32 = MEMORY[0x277D755B8];
          v33 = @"person.crop.circle.fill";
        }

        v21 = [v32 hu_avatarImageWithSymbolNamed:v33 configuration:avatarView2 backgroundColor:whiteColor diameter:120.0];
      }

      genericAvatarView3 = [(HUAnnouncementPlaybackView *)self genericAvatarView];
      v25 = genericAvatarView3;
      v26 = v21;
    }

    [genericAvatarView3 setImage:v26];
  }

  [(HUAnnouncementPlaybackView *)self setNeedsLayout];
}

- (void)setAnnouncementInfo:(id)info
{
  v23 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  objc_storeStrong(&self->_announcementInfo, info);
  v6 = MEMORY[0x277CBEBC0];
  v7 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CEA7F0]];
  v8 = [v6 fileURLWithPath:v7];

  [(HUAnnouncementPlaybackView *)self setAnnouncementURL:v8];
  v9 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CEA7D0]];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  if (v11)
  {
    v12 = [v11 isEqualToString:&stru_2823E0EE8] ^ 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CEAA70]];
  -[HUAnnouncementPlaybackView setIsSiriEndpointAccessory:](self, "setIsSiriEndpointAccessory:", [v13 integerValue] == 1);

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v22[0] = 67109120;
    v22[1] = [(HUAnnouncementPlaybackView *)self isSiriEndpointAccessory];
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "isSiriEndpointAccessory = %{BOOL}d", v22, 8u);
  }

  v15 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277CEAA60]];
  integerValue = [v15 integerValue];

  if (v12)
  {
    if ([v11 hf_isEmail])
    {
      defaultStore = [MEMORY[0x277D145B0] defaultStore];
      _requiredKeyDescriptors = [(HUAnnouncementPlaybackView *)self _requiredKeyDescriptors];
      v19 = [defaultStore contactForEmailAddress:v11 withKeys:_requiredKeyDescriptors];
    }

    else
    {
      if (![v11 hf_isPhoneNumber])
      {
        v21 = 0;
        goto LABEL_21;
      }

      defaultStore = [MEMORY[0x277D145B0] defaultStore];
      _requiredKeyDescriptors = [(HUAnnouncementPlaybackView *)self _requiredKeyDescriptors];
      v19 = [defaultStore contactForPhoneNumber:v11 withKeys:_requiredKeyDescriptors];
    }

    v21 = v19;

LABEL_21:
    [(HUAnnouncementPlaybackView *)self _configureAnnounceSender:v21];

    goto LABEL_22;
  }

  if (integerValue <= 3348380075)
  {
    if (integerValue != 1540760353)
    {
      v20 = 2702125347;
      goto LABEL_17;
    }

LABEL_18:
    [(HUAnnouncementPlaybackView *)self setProductType:integerValue];
    goto LABEL_19;
  }

  if (integerValue == 4240173202)
  {
    goto LABEL_18;
  }

  v20 = 3348380076;
LABEL_17:
  if (integerValue == v20)
  {
    goto LABEL_18;
  }

LABEL_19:
  [(HUAnnouncementPlaybackView *)self _configureAnnounceSender:0];
LABEL_22:
}

- (void)didUpdateAveragePower:(double)power
{
  audioWaveLayers = [(HUAnnouncementPlaybackView *)self audioWaveLayers];
  v6 = [audioWaveLayers count];

  if (!v6)
  {
    [(HUAnnouncementPlaybackView *)self _setupAudioWaveLayers];

    [(HUAnnouncementPlaybackView *)self _generateRippleForAveragePower:power];
  }
}

- (void)playbackStopped
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  audioWaveLayers = [(HUAnnouncementPlaybackView *)self audioWaveLayers];
  v4 = [audioWaveLayers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(audioWaveLayers);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [v8 removeAllAnimations];
        clearColor = [MEMORY[0x277D75348] clearColor];
        [v8 setStrokeColor:{objc_msgSend(clearColor, "CGColor")}];
      }

      v5 = [audioWaveLayers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  audioWaveLayers2 = [(HUAnnouncementPlaybackView *)self audioWaveLayers];
  [audioWaveLayers2 makeObjectsPerformSelector:sel_removeFromSuperlayer];

  audioWaveLayers3 = [(HUAnnouncementPlaybackView *)self audioWaveLayers];
  [audioWaveLayers3 removeAllObjects];
}

- (void)resumePlaybackAnimation
{
  [(HUAnnouncementPlaybackView *)self _setupAudioWaveLayers];

  [(HUAnnouncementPlaybackView *)self _generateRippleForAveragePower:0.5];
}

- (id)_requiredKeyDescriptors
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBDBE8] descriptorForRequiredKeysWithThreeDTouchEnabled:1];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

- (void)_setupAudioWaveLayers
{
  selfCopy = self;
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  v4 = *MEMORY[0x277CDA780];
  v5 = 3;
  do
  {
    v6 = objc_opt_new();
    v7 = MEMORY[0x277D75208];
    [(HUAnnouncementPlaybackView *)selfCopy bounds];
    v9 = [v7 bezierPathWithArcCenter:1 radius:v2 startAngle:v3 endAngle:v8 * 0.5 clockwise:{0.0, 6.28318531}];
    [v6 setPath:{objc_msgSend(v9, "CGPath")}];
    [v6 setLineWidth:2.0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v6 setStrokeColor:{objc_msgSend(clearColor, "CGColor")}];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [v6 setFillColor:{objc_msgSend(clearColor2, "CGColor")}];

    [v6 setLineCap:v4];
    [(HUAnnouncementPlaybackView *)selfCopy frame];
    v13 = v12 * 0.5;
    [(HUAnnouncementPlaybackView *)selfCopy frame];
    [v6 setPosition:{v13, v14 * 0.5}];
    layer = [(HUAnnouncementPlaybackView *)selfCopy layer];
    [layer addSublayer:v6];

    audioWaveLayers = [(HUAnnouncementPlaybackView *)selfCopy audioWaveLayers];
    [audioWaveLayers addObject:v6];

    --v5;
  }

  while (v5);
}

- (void)_generateRippleForAveragePower:(double)power
{
  [(HUAnnouncementPlaybackView *)self _animateLayerWaveAtIndex:0 forAveragePower:?];
  v5 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 400000000);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__HUAnnouncementPlaybackView__generateRippleForAveragePower___block_invoke;
  v6[3] = &unk_277DB7BA8;
  v6[4] = self;
  *&v6[5] = power;
  dispatch_after(v5, MEMORY[0x277D85CD0], v6);
}

void __61__HUAnnouncementPlaybackView__generateRippleForAveragePower___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _animateLayerWaveAtIndex:1 forAveragePower:*(a1 + 40)];
  v2 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 600000000);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__HUAnnouncementPlaybackView__generateRippleForAveragePower___block_invoke_2;
  v3[3] = &unk_277DB7BA8;
  v3[4] = *(a1 + 32);
  v3[5] = *(a1 + 40);
  dispatch_after(v2, MEMORY[0x277D85CD0], v3);
}

- (void)_animateLayerWaveAtIndex:(unint64_t)index forAveragePower:(double)power
{
  v21[3] = *MEMORY[0x277D85DE8];
  audioWaveLayers = [(HUAnnouncementPlaybackView *)self audioWaveLayers];
  v7 = [audioWaveLayers count];

  if (v7 > index)
  {
    audioWaveLayers2 = [(HUAnnouncementPlaybackView *)self audioWaveLayers];
    v9 = [audioWaveLayers2 objectAtIndexedSubscript:index];

    [v9 removeAllAnimations];
    traitCollection = [(HUAnnouncementPlaybackView *)self traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      [MEMORY[0x277D75348] lightGrayColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemWhiteColor];
    }
    v11 = ;
    [v9 setStrokeColor:{objc_msgSend(v11, "CGColor")}];

    v12 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
    [v12 setDuration:1.0];
    [v12 setFromValue:&unk_282493300];
    [v12 setToValue:&unk_282493310];
    [v12 setRepeatCount:3.53369517e72];
    v13 = *MEMORY[0x277CDA7C0];
    v14 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
    [v12 setTimingFunction:v14];

    [v9 addAnimation:v12 forKey:@"scale"];
    v15 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v15 setDuration:1.0];
    [v15 setValues:&unk_282492870];
    [v15 setKeyTimes:&unk_282492888];
    [v15 setRepeatCount:3.53369517e72];
    v16 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
    [v15 setTimingFunction:v16];

    [v9 addAnimation:v15 forKey:@"opacity"];
    v17 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"lineWidth"];
    [v17 setDuration:1.0];
    [v17 setValues:&unk_2824928A0];
    [v17 setKeyTimes:&unk_2824928B8];
    v18 = [MEMORY[0x277CD9EF8] functionWithName:v13];
    [v17 setTimingFunction:v18];

    [v17 setRepeatCount:3.53369517e72];
    animation = [MEMORY[0x277CD9E00] animation];
    v21[0] = v12;
    v21[1] = v15;
    v21[2] = v17;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
    [animation setAnimations:v20];

    [v9 addAnimation:animation forKey:@"groupAnimation"];
  }
}

- (id)_imageOrViewForServiceType:(id)type
{
  typeCopy = type;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v6 = MEMORY[0x277D755B8];
  _avatarImageSymbolConfiguration = [(HUAnnouncementPlaybackView *)self _avatarImageSymbolConfiguration];
  v8 = [v6 hu_avatarImageWithSymbolNamed:@"hifispeaker.fill" configuration:_avatarImageSymbolConfiguration backgroundColor:whiteColor diameter:120.0];

  if (typeCopy)
  {
    v9 = [MEMORY[0x277D14AC0] defaultIconDescriptorForServiceType:typeCopy serviceSubtype:*MEMORY[0x277CD0DB8]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 imageIdentifierForSize:*MEMORY[0x277D13AE8]];
      v11 = HUImageNamed(v10);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        iconView = [(HUAnnouncementPlaybackView *)self iconView];

        goto LABEL_15;
      }

      v10 = v9;
      if ([v10 isSystemImage])
      {
        imageSymbolConfiguration = [v10 imageSymbolConfiguration];
        v13 = imageSymbolConfiguration;
        if (imageSymbolConfiguration)
        {
          v14 = imageSymbolConfiguration;
        }

        else
        {
          v14 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:36.0];
        }

        imageIdentifier2 = v14;

        v17 = MEMORY[0x277D755B8];
        imageIdentifier = [v10 imageIdentifier];
        v11 = [v17 systemImageNamed:imageIdentifier withConfiguration:imageIdentifier2];

        v8 = imageIdentifier;
      }

      else
      {
        imageIdentifier2 = [v10 imageIdentifier];
        v11 = HUImageNamed(imageIdentifier2);
      }

      v8 = imageIdentifier2;
    }

    v8 = v11;
  }

  v8 = v8;
  iconView = v8;
LABEL_15:

  return iconView;
}

- (void)_updateIconViewForServiceType:(id)type
{
  v10 = [MEMORY[0x277D14AC0] defaultIconDescriptorForServiceType:type serviceSubtype:*MEMORY[0x277CD0DB8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277D14440];
    v5 = v10;
    v6 = [v4 alloc];
    packageIdentifier = [v5 packageIdentifier];

    iconView2 = [v6 initWithPackageIdentifier:packageIdentifier state:*MEMORY[0x277D13758]];
    iconView = [(HUAnnouncementPlaybackView *)self iconView];
    [iconView updateWithIconDescriptor:iconView2 displayStyle:1 animated:1];
  }

  else
  {
    iconView2 = [(HUAnnouncementPlaybackView *)self iconView];
    [iconView2 updateWithIconDescriptor:v10 displayStyle:1 animated:1];
  }
}

- (id)_avatarImageSymbolConfiguration
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277D75348] colorNamed:@"Intercom-Accessory-Primary-Color" inBundle:v2 compatibleWithTraitCollection:0];
  v10[0] = v3;
  v4 = [MEMORY[0x277D75348] colorNamed:@"Intercom-Accessory-Secondary-Color" inBundle:v2 compatibleWithTraitCollection:0];
  v10[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  v6 = [MEMORY[0x277D755D0] configurationWithPaletteColors:v5];
  v7 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D769A8] scale:3];
  v8 = [v6 configurationByApplyingConfiguration:v7];

  return v8;
}

@end