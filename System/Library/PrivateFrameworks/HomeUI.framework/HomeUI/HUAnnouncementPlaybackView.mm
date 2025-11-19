@interface HUAnnouncementPlaybackView
- (HUAnnouncementPlaybackView)initWithFrame:(CGRect)a3;
- (id)_avatarImageSymbolConfiguration;
- (id)_imageOrViewForServiceType:(id)a3;
- (id)_requiredKeyDescriptors;
- (id)description;
- (void)_animateLayerWaveAtIndex:(unint64_t)a3 forAveragePower:(double)a4;
- (void)_configureAnnounceSender:(id)a3;
- (void)_generateRippleForAveragePower:(double)a3;
- (void)_setupAudioWaveLayers;
- (void)_updateIconViewForServiceType:(id)a3;
- (void)didUpdateAveragePower:(double)a3;
- (void)playbackStopped;
- (void)resumePlaybackAnimation;
- (void)setAnnouncementInfo:(id)a3;
- (void)updateConstraints;
@end

@implementation HUAnnouncementPlaybackView

- (HUAnnouncementPlaybackView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = HUAnnouncementPlaybackView;
  v3 = [(HUAnnouncementPlaybackView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v4 = [(HUAnnouncementPlaybackView *)self announcementInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CEA768]];
  v6 = [(HUAnnouncementPlaybackView *)self announcementInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CEAA18]];
  v8 = [(HUAnnouncementPlaybackView *)self fullyPlayed];
  v9 = [(HUAnnouncementPlaybackView *)self audioPlayer];
  v10 = [v3 stringWithFormat:@"ID [%@], index [%@] - isFullyPlayed [%d] - isPlaying [%d]", v5, v7, v8, objc_msgSend(v9, "isPlaying")];

  return v10;
}

- (void)updateConstraints
{
  v58.receiver = self;
  v58.super_class = HUAnnouncementPlaybackView;
  [(HUAnnouncementPlaybackView *)&v58 updateConstraints];
  v3 = objc_opt_new();
  v4 = [(HUAnnouncementPlaybackView *)self avatarView];
  v5 = [v4 centerXAnchor];
  v6 = [(HUAnnouncementPlaybackView *)self centerXAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  [v3 addObject:v7];

  v8 = [(HUAnnouncementPlaybackView *)self avatarView];
  v9 = [v8 centerYAnchor];
  v10 = [(HUAnnouncementPlaybackView *)self centerYAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  [v3 addObject:v11];

  v12 = [(HUAnnouncementPlaybackView *)self avatarView];
  v13 = [v12 heightAnchor];
  v14 = [(HUAnnouncementPlaybackView *)self heightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v3 addObject:v15];

  v16 = [(HUAnnouncementPlaybackView *)self avatarView];
  v17 = [v16 widthAnchor];
  v18 = [(HUAnnouncementPlaybackView *)self avatarView];
  v19 = [v18 heightAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  [v3 addObject:v20];

  v21 = [(HUAnnouncementPlaybackView *)self genericAvatarView];
  v22 = [v21 centerXAnchor];
  v23 = [(HUAnnouncementPlaybackView *)self centerXAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];
  [v3 addObject:v24];

  v25 = [(HUAnnouncementPlaybackView *)self genericAvatarView];
  v26 = [v25 centerYAnchor];
  v27 = [(HUAnnouncementPlaybackView *)self centerYAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  [v3 addObject:v28];

  v29 = [(HUAnnouncementPlaybackView *)self genericAvatarView];
  v30 = [v29 widthAnchor];
  v31 = [(HUAnnouncementPlaybackView *)self heightAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  [v3 addObject:v32];

  v33 = [(HUAnnouncementPlaybackView *)self genericAvatarView];
  v34 = [v33 heightAnchor];
  v35 = [(HUAnnouncementPlaybackView *)self genericAvatarView];
  v36 = [v35 widthAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];
  [v3 addObject:v37];

  v38 = [(HUAnnouncementPlaybackView *)self iconView];
  v39 = [v38 centerXAnchor];
  v40 = [(HUAnnouncementPlaybackView *)self centerXAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];
  [v3 addObject:v41];

  v42 = [(HUAnnouncementPlaybackView *)self iconView];
  v43 = [v42 centerYAnchor];
  v44 = [(HUAnnouncementPlaybackView *)self centerYAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];
  [v3 addObject:v45];

  v46 = [(HUAnnouncementPlaybackView *)self iconView];
  v47 = [v46 widthAnchor];
  v48 = [(HUAnnouncementPlaybackView *)self heightAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];
  [v3 addObject:v49];

  v50 = [(HUAnnouncementPlaybackView *)self iconView];
  v51 = [v50 heightAnchor];
  v52 = [(HUAnnouncementPlaybackView *)self iconView];
  v53 = [v52 widthAnchor];
  v54 = [v51 constraintEqualToAnchor:v53];
  [v3 addObject:v54];

  CGAffineTransformMakeScale(&v57, 0.75, 0.75);
  v55 = [(HUAnnouncementPlaybackView *)self iconView];
  v56 = v57;
  [v55 setTransform:&v56];

  [MEMORY[0x277CCAAD0] activateConstraints:v3];
}

- (void)_configureAnnounceSender:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HUAnnouncementPlaybackView *)self avatarView];
    [v5 setAlpha:1.0];

    v6 = [(HUAnnouncementPlaybackView *)self genericAvatarView];
    [v6 setAlpha:0.0];

    v7 = [(HUAnnouncementPlaybackView *)self iconView];
    [v7 setAlpha:0.0];

    v8 = [(HUAnnouncementPlaybackView *)self avatarView];
    [v8 setContact:v4];
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

      v10 = [(HUAnnouncementPlaybackView *)self avatarView];
      [v10 setAlpha:0.0];

      v11 = [(HUAnnouncementPlaybackView *)self iconView];
      [v11 setAlpha:0.0];

      v12 = [(HUAnnouncementPlaybackView *)self genericAvatarView];
      [v12 setAlpha:1.0];

      v13 = [(HUAnnouncementPlaybackView *)self announcementInfo];
      v8 = [v13 objectForKeyedSubscript:*MEMORY[0x277CEAA90]];

      v14 = [(HUAnnouncementPlaybackView *)self _imageOrViewForServiceType:v8];
      v15 = HFLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 138412546;
        v35 = v8;
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

      v18 = v17;

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

        [(HUAnnouncementPlaybackView *)self _updateIconViewForServiceType:v8];
        v23 = [(HUAnnouncementPlaybackView *)self iconView];
        [v23 setAlpha:1.0];

        v18 = v22;
      }

      v24 = [(HUAnnouncementPlaybackView *)self genericAvatarView];
      v25 = v24;
      v26 = v18;
    }

    else
    {
      v27 = [(HUAnnouncementPlaybackView *)self avatarView];
      [v27 setAlpha:0.0];

      v28 = [(HUAnnouncementPlaybackView *)self iconView];
      [v28 setAlpha:0.0];

      v29 = [(HUAnnouncementPlaybackView *)self genericAvatarView];
      [v29 setAlpha:1.0];

      v8 = [(HUAnnouncementPlaybackView *)self _avatarImageSymbolConfiguration];
      v30 = [(HUAnnouncementPlaybackView *)self announcementInfo];
      v19 = [v30 objectForKeyedSubscript:*MEMORY[0x277CEAAB0]];

      v18 = [MEMORY[0x277D75348] whiteColor];
      v21 = [MEMORY[0x277D755B8] hu_avatarImageWithSymbolNamed:v19 configuration:v8 backgroundColor:v18 diameter:120.0];
      if (!v21)
      {
        if ([(HUAnnouncementPlaybackView *)self _isProductTypeHomePod])
        {
          v31 = [(HUAnnouncementPlaybackView *)self productType];
          v32 = MEMORY[0x277D755B8];
          if (v31 == 3348380076)
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

        v21 = [v32 hu_avatarImageWithSymbolNamed:v33 configuration:v8 backgroundColor:v18 diameter:120.0];
      }

      v24 = [(HUAnnouncementPlaybackView *)self genericAvatarView];
      v25 = v24;
      v26 = v21;
    }

    [v24 setImage:v26];
  }

  [(HUAnnouncementPlaybackView *)self setNeedsLayout];
}

- (void)setAnnouncementInfo:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_announcementInfo, a3);
  v6 = MEMORY[0x277CBEBC0];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEA7F0]];
  v8 = [v6 fileURLWithPath:v7];

  [(HUAnnouncementPlaybackView *)self setAnnouncementURL:v8];
  v9 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEA7D0]];
  v10 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v11 = [v9 stringByTrimmingCharactersInSet:v10];

  if (v11)
  {
    v12 = [v11 isEqualToString:&stru_2823E0EE8] ^ 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEAA70]];
  -[HUAnnouncementPlaybackView setIsSiriEndpointAccessory:](self, "setIsSiriEndpointAccessory:", [v13 integerValue] == 1);

  v14 = HFLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v22[0] = 67109120;
    v22[1] = [(HUAnnouncementPlaybackView *)self isSiriEndpointAccessory];
    _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "isSiriEndpointAccessory = %{BOOL}d", v22, 8u);
  }

  v15 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEAA60]];
  v16 = [v15 integerValue];

  if (v12)
  {
    if ([v11 hf_isEmail])
    {
      v17 = [MEMORY[0x277D145B0] defaultStore];
      v18 = [(HUAnnouncementPlaybackView *)self _requiredKeyDescriptors];
      v19 = [v17 contactForEmailAddress:v11 withKeys:v18];
    }

    else
    {
      if (![v11 hf_isPhoneNumber])
      {
        v21 = 0;
        goto LABEL_21;
      }

      v17 = [MEMORY[0x277D145B0] defaultStore];
      v18 = [(HUAnnouncementPlaybackView *)self _requiredKeyDescriptors];
      v19 = [v17 contactForPhoneNumber:v11 withKeys:v18];
    }

    v21 = v19;

LABEL_21:
    [(HUAnnouncementPlaybackView *)self _configureAnnounceSender:v21];

    goto LABEL_22;
  }

  if (v16 <= 3348380075)
  {
    if (v16 != 1540760353)
    {
      v20 = 2702125347;
      goto LABEL_17;
    }

LABEL_18:
    [(HUAnnouncementPlaybackView *)self setProductType:v16];
    goto LABEL_19;
  }

  if (v16 == 4240173202)
  {
    goto LABEL_18;
  }

  v20 = 3348380076;
LABEL_17:
  if (v16 == v20)
  {
    goto LABEL_18;
  }

LABEL_19:
  [(HUAnnouncementPlaybackView *)self _configureAnnounceSender:0];
LABEL_22:
}

- (void)didUpdateAveragePower:(double)a3
{
  v5 = [(HUAnnouncementPlaybackView *)self audioWaveLayers];
  v6 = [v5 count];

  if (!v6)
  {
    [(HUAnnouncementPlaybackView *)self _setupAudioWaveLayers];

    [(HUAnnouncementPlaybackView *)self _generateRippleForAveragePower:a3];
  }
}

- (void)playbackStopped
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(HUAnnouncementPlaybackView *)self audioWaveLayers];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [v8 removeAllAnimations];
        v9 = [MEMORY[0x277D75348] clearColor];
        [v8 setStrokeColor:{objc_msgSend(v9, "CGColor")}];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [(HUAnnouncementPlaybackView *)self audioWaveLayers];
  [v10 makeObjectsPerformSelector:sel_removeFromSuperlayer];

  v11 = [(HUAnnouncementPlaybackView *)self audioWaveLayers];
  [v11 removeAllObjects];
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
  v17 = self;
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  v4 = *MEMORY[0x277CDA780];
  v5 = 3;
  do
  {
    v6 = objc_opt_new();
    v7 = MEMORY[0x277D75208];
    [(HUAnnouncementPlaybackView *)v17 bounds];
    v9 = [v7 bezierPathWithArcCenter:1 radius:v2 startAngle:v3 endAngle:v8 * 0.5 clockwise:{0.0, 6.28318531}];
    [v6 setPath:{objc_msgSend(v9, "CGPath")}];
    [v6 setLineWidth:2.0];
    v10 = [MEMORY[0x277D75348] clearColor];
    [v6 setStrokeColor:{objc_msgSend(v10, "CGColor")}];

    v11 = [MEMORY[0x277D75348] clearColor];
    [v6 setFillColor:{objc_msgSend(v11, "CGColor")}];

    [v6 setLineCap:v4];
    [(HUAnnouncementPlaybackView *)v17 frame];
    v13 = v12 * 0.5;
    [(HUAnnouncementPlaybackView *)v17 frame];
    [v6 setPosition:{v13, v14 * 0.5}];
    v15 = [(HUAnnouncementPlaybackView *)v17 layer];
    [v15 addSublayer:v6];

    v16 = [(HUAnnouncementPlaybackView *)v17 audioWaveLayers];
    [v16 addObject:v6];

    --v5;
  }

  while (v5);
}

- (void)_generateRippleForAveragePower:(double)a3
{
  [(HUAnnouncementPlaybackView *)self _animateLayerWaveAtIndex:0 forAveragePower:?];
  v5 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 400000000);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__HUAnnouncementPlaybackView__generateRippleForAveragePower___block_invoke;
  v6[3] = &unk_277DB7BA8;
  v6[4] = self;
  *&v6[5] = a3;
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

- (void)_animateLayerWaveAtIndex:(unint64_t)a3 forAveragePower:(double)a4
{
  v21[3] = *MEMORY[0x277D85DE8];
  v6 = [(HUAnnouncementPlaybackView *)self audioWaveLayers];
  v7 = [v6 count];

  if (v7 > a3)
  {
    v8 = [(HUAnnouncementPlaybackView *)self audioWaveLayers];
    v9 = [v8 objectAtIndexedSubscript:a3];

    [v9 removeAllAnimations];
    v10 = [(HUAnnouncementPlaybackView *)self traitCollection];
    if ([v10 userInterfaceStyle] == 2)
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
    v19 = [MEMORY[0x277CD9E00] animation];
    v21[0] = v12;
    v21[1] = v15;
    v21[2] = v17;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
    [v19 setAnimations:v20];

    [v9 addAnimation:v19 forKey:@"groupAnimation"];
  }
}

- (id)_imageOrViewForServiceType:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D75348] whiteColor];
  v6 = MEMORY[0x277D755B8];
  v7 = [(HUAnnouncementPlaybackView *)self _avatarImageSymbolConfiguration];
  v8 = [v6 hu_avatarImageWithSymbolNamed:@"hifispeaker.fill" configuration:v7 backgroundColor:v5 diameter:120.0];

  if (v4)
  {
    v9 = [MEMORY[0x277D14AC0] defaultIconDescriptorForServiceType:v4 serviceSubtype:*MEMORY[0x277CD0DB8]];
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
        v15 = [(HUAnnouncementPlaybackView *)self iconView];

        goto LABEL_15;
      }

      v10 = v9;
      if ([v10 isSystemImage])
      {
        v12 = [v10 imageSymbolConfiguration];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:36.0];
        }

        v16 = v14;

        v17 = MEMORY[0x277D755B8];
        v18 = [v10 imageIdentifier];
        v11 = [v17 systemImageNamed:v18 withConfiguration:v16];

        v8 = v18;
      }

      else
      {
        v16 = [v10 imageIdentifier];
        v11 = HUImageNamed(v16);
      }

      v8 = v16;
    }

    v8 = v11;
  }

  v8 = v8;
  v15 = v8;
LABEL_15:

  return v15;
}

- (void)_updateIconViewForServiceType:(id)a3
{
  v10 = [MEMORY[0x277D14AC0] defaultIconDescriptorForServiceType:a3 serviceSubtype:*MEMORY[0x277CD0DB8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277D14440];
    v5 = v10;
    v6 = [v4 alloc];
    v7 = [v5 packageIdentifier];

    v8 = [v6 initWithPackageIdentifier:v7 state:*MEMORY[0x277D13758]];
    v9 = [(HUAnnouncementPlaybackView *)self iconView];
    [v9 updateWithIconDescriptor:v8 displayStyle:1 animated:1];
  }

  else
  {
    v8 = [(HUAnnouncementPlaybackView *)self iconView];
    [v8 updateWithIconDescriptor:v10 displayStyle:1 animated:1];
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