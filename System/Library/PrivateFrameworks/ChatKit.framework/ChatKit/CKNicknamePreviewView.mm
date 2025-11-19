@interface CKNicknamePreviewView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKNicknamePreviewView)initWithContact:(id)a3 avatarRecord:(id)a4;
- (CNSharingProfileAvatarItemProviderConfiguration)avatarItemProviderConfiguration;
- (id)balloonText;
- (id)flipAnimation;
- (id)imageForAvatarType:(int64_t)a3;
- (id)senderStringForAvatarType:(int64_t)a3;
- (void)avatarDidFinishTransitionToAvatarAtIndex:(unint64_t)a3;
- (void)beginAnimation;
- (void)layoutSubviews;
- (void)runFlipAnimationOnAvatarView:(id)a3 completion:(id)a4;
- (void)setSenderLabelVisible:(BOOL)a3 completion:(id)a4;
- (void)updateBalloonTraitCollection;
@end

@implementation CKNicknamePreviewView

- (CKNicknamePreviewView)initWithContact:(id)a3 avatarRecord:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v40 = a3;
  v39 = a4;
  v42.receiver = self;
  v42.super_class = CKNicknamePreviewView;
  v6 = [(CKNicknamePreviewView *)&v42 init];
  if (v6)
  {
    if (_ContactsUIForwardDeclareInit_onceToken_0 != -1)
    {
      [CKNicknamePreviewView initWithContact:avatarRecord:];
    }

    v7 = [[_CKCNSharingProfileAvatarItemProvider alloc] initWithContact:v40 avatarRecord:v39 logger:0];
    [(CKNicknamePreviewView *)v6 setAvatarItemProvider:v7];

    v8 = [(CKNicknamePreviewView *)v6 avatarItemProvider];
    [v8 setShouldIncludeSilhouette:1];

    [(CKNicknamePreviewView *)v6 setContact:v40];
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = 0;
    *&v12 = 134217984;
    v38 = v12;
    do
    {
      v13 = [(CKNicknamePreviewView *)v6 imageForAvatarType:v11, v38];
      if (v13)
      {
        v14 = [(CKNicknamePreviewView *)v6 senderStringForAvatarType:v11];
        v15 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
        v16 = [v15 layer];
        [v16 setCornerRadius:22.0];

        v17 = [v15 layer];
        [v17 setMasksToBounds:1];

        [v15 setImage:v13];
        [v9 addObject:v15];
        [(CKNicknamePreviewView *)v6 addSubview:v15];
        CATransform3DMakeRotation(&v41, -1.57079633, 0.0, 1.0, 0.0);
        v18 = [v15 layer];
        buf = v41;
        [v18 setTransform:&buf];

        [v10 addObject:v14];
      }

      else if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.m11) = v38;
          *(&buf.m11 + 4) = v11;
          _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Didn't get an avatar image for type %li", &buf, 0xCu);
        }
      }

      ++v11;
    }

    while (v11 != 4);
    v20 = [v9 copy];
    [(CKNicknamePreviewView *)v6 setAvatarViews:v20];

    v21 = [v10 copy];
    [(CKNicknamePreviewView *)v6 setSenderStrings:v21];

    v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v23 = [(CKNicknamePreviewView *)v6 senderStrings];
    v24 = [v23 firstObject];
    [v22 setAttributedText:v24];

    [(CKNicknamePreviewView *)v6 addSubview:v22];
    [(CKNicknamePreviewView *)v6 setSenderLabel:v22];
    v25 = [CKTextBalloonView alloc];
    v26 = [(CKTextBalloonView *)v25 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CKNicknamePreviewView *)v6 addSubview:v26];
    [(CKColoredBalloonView *)v26 setColor:0xFFFFFFFFLL];
    v27 = [(CKNicknamePreviewView *)v6 balloonView];
    v28 = [(CKNicknamePreviewView *)v6 traitCollection];
    [v27 updateBalloonForTraitCollection:v28];

    [(CKBalloonView *)v26 setOrientation:0];
    [(CKColoredBalloonView *)v26 setHasTail:1];
    [(CKBalloonView *)v26 setBalloonCorners:-1];
    [(CKColoredBalloonView *)v26 setCanUseOpaqueMask:0];
    v29 = +[CKUIBehavior sharedBehaviors];
    [v29 nicknamePreviewOnboardingBalloonCornerRadius];
    v31 = v30;

    v32 = [(CKNicknamePreviewView *)v6 traitCollection];
    v33 = COERCE_DOUBLE([v32 userInterfaceStyle]);

    v34 = [(CKNicknamePreviewView *)v6 traitCollection];
    v35 = COERCE_DOUBLE(CKBackgroundLevelForTraitCollection(v34));

    *&buf.m11 = 256;
    buf.m12 = NAN;
    buf.m13 = v31;
    LOBYTE(buf.m14) = -1;
    memset(&buf.m14 + 1, 0, 79);
    buf.m42 = v33;
    buf.m43 = v35;
    buf.m44 = COERCE_DOUBLE(257);
    [(CKColoredBalloonView *)v26 setBalloonDescriptor:&buf];
    v36 = [(CKNicknamePreviewView *)v6 balloonText];
    [(CKTextBalloonView *)v26 setAttributedText:v36];

    [(CKBalloonView *)v26 setNeedsPrepareForDisplay];
    [(CKBalloonView *)v26 prepareForDisplayIfNeeded];
    [(CKNicknamePreviewView *)v6 setBalloonView:v26];
  }

  return v6;
}

- (id)balloonText
{
  v3 = objc_alloc(MEMORY[0x1E696AD40]);
  v4 = CKFrameworkBundle();
  v5 = [v4 localizedStringForKey:@"WHATS_NEW_NAME_AND_PHOTO_SHARING_HI_ITS_ME" value:&stru_1F04268F8 table:@"ChatKit"];
  v6 = [v3 initWithString:v5];

  v7 = [v6 length];
  v8 = *MEMORY[0x1E69DB648];
  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 nicknamePreviewOnboardingBalloonFont];
  [v6 addAttribute:v8 value:v10 range:{0, v7}];

  v11 = *MEMORY[0x1E69DB650];
  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 theme];
  v14 = [(CKNicknamePreviewView *)self balloonView];
  v15 = [v13 balloonTextColorForColorType:{objc_msgSend(v14, "color")}];
  [v6 addAttribute:v11 value:v15 range:{0, v7}];

  v16 = +[CKUIBehavior sharedBehaviors];
  [v16 nicknamePreviewOnboardingBalloonFontSize];
  v18 = v17 * 0.03;

  v19 = *MEMORY[0x1E69DB660];
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
  [v6 addAttribute:v19 value:v20 range:{0, objc_msgSend(v6, "length")}];

  return v6;
}

- (void)updateBalloonTraitCollection
{
  v3 = [(CKNicknamePreviewView *)self balloonView];
  v4 = [(CKNicknamePreviewView *)self traitCollection];
  [v3 updateBalloonForTraitCollection:v4];

  v5 = [(CKNicknamePreviewView *)self balloonView];
  v6 = [(CKNicknamePreviewView *)self balloonText];
  [v5 setAttributedText:v6];

  v7 = [(CKNicknamePreviewView *)self balloonView];
  [v7 setNeedsPrepareForDisplay];

  v8 = [(CKNicknamePreviewView *)self balloonView];
  [v8 prepareForDisplayIfNeeded];
}

- (void)beginAnimation
{
  v3 = [(CKNicknamePreviewView *)self avatarViews];
  -[CKNicknamePreviewView avatarDidFinishTransitionToAvatarAtIndex:](self, "avatarDidFinishTransitionToAvatarAtIndex:", [v3 count] - 1);
}

- (void)layoutSubviews
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = [(CKNicknamePreviewView *)self senderLabel];
  [v3 sizeToFit];

  v4 = [(CKNicknamePreviewView *)self senderLabel];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v57.origin.y = 0.0;
  v57.origin.x = v6;
  v57.size.width = v8;
  v57.size.height = v10;
  Height = CGRectGetHeight(v57);
  v12 = [(CKNicknamePreviewView *)self senderLabel];
  [v12 _lastLineBaseline];
  v14 = v13;

  v15 = *(MEMORY[0x1E69DDCE0] + 16);
  v53 = *MEMORY[0x1E69DDCE0];
  v54 = v15;
  v52[0] = v53;
  v52[1] = v15;
  v16 = [(CKNicknamePreviewView *)self balloonView];
  [v16 sizeThatFits:&v53 textAlignmentInsets:v52 tailInsets:{320.0, 1.79769313e308}];
  v18 = v17;
  v20 = v19;

  v21 = [(CKNicknamePreviewView *)self balloonView];
  [v21 setTextAlignmentInsets:{v53, v54}];

  v22 = *MEMORY[0x1E695F058];
  v58.origin.y = 0.0;
  v58.origin.x = v6;
  v58.size.width = v8;
  v58.size.height = v10;
  v23 = v14 - Height + CGRectGetMaxY(v58) + 5.0;
  v24 = v22 + 56.0;
  v25 = [(CKNicknamePreviewView *)self balloonView];
  [v25 setFrame:{v22 + 56.0, v23, v18, v20}];

  v26 = [(CKNicknamePreviewView *)self balloonView];
  [v26 alignmentRectInsets];
  v28 = v22 + 56.0 + v27;

  [(CKNicknamePreviewView *)self frame];
  Width = CGRectGetWidth(v59);
  v60.origin.y = 0.0;
  v60.origin.x = v28;
  v60.size.width = v8;
  v60.size.height = v10;
  v30 = Width - CGRectGetMinX(v60);
  v31 = [(CKNicknamePreviewView *)self senderLabel];
  [v31 setFrame:{v28, 0.0, v30, v10}];

  v32 = [(CKNicknamePreviewView *)self avatarViews];
  v33 = [v32 firstObject];
  [v33 frame];
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v61.origin.x = v24;
  v61.origin.y = v23;
  v61.size.width = v18;
  v61.size.height = v20;
  MidY = CGRectGetMidY(v61);
  v62.origin.x = 0.0;
  v62.origin.y = v35;
  v62.size.width = v37;
  v62.size.height = v39;
  v41 = CGRectGetHeight(v62);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v42 = [(CKNicknamePreviewView *)self avatarViews];
  v43 = [v42 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = MidY + v41 * -0.5;
    v46 = *v49;
    do
    {
      v47 = 0;
      do
      {
        if (*v49 != v46)
        {
          objc_enumerationMutation(v42);
        }

        [*(*(&v48 + 1) + 8 * v47++) setFrame:{0.0, v45, 44.0, 44.0}];
      }

      while (v44 != v47);
      v44 = [v42 countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v44);
  }

  [(CKNicknamePreviewView *)self setShouldStopAnimation:0];
}

- (void)avatarDidFinishTransitionToAvatarAtIndex:(unint64_t)a3
{
  v21 = [(CKNicknamePreviewView *)self avatarViews];
  if ([v21 count] <= a3)
  {
  }

  else
  {
    v5 = [(CKNicknamePreviewView *)self shouldStopAnimation];

    if (!v5)
    {
      v6 = [(CKNicknamePreviewView *)self avatarViews];
      v7 = (a3 + 1) % [v6 count];

      v8 = [(CKNicknamePreviewView *)self avatarViews];
      v9 = [v8 objectAtIndexedSubscript:v7];

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __66__CKNicknamePreviewView_avatarDidFinishTransitionToAvatarAtIndex___block_invoke;
      v26[3] = &unk_1E72ED810;
      v26[4] = self;
      v26[5] = v7;
      [(CKNicknamePreviewView *)self runFlipAnimationOnAvatarView:v9 completion:v26];
      v10 = a3 + 2;
      v11 = [(CKNicknamePreviewView *)self senderStrings];
      v12 = v10 % [v11 count];

      v13 = [(CKNicknamePreviewView *)self senderStrings];
      v14 = [v13 objectAtIndexedSubscript:v7];

      v15 = [(CKNicknamePreviewView *)self senderStrings];
      v16 = [v15 objectAtIndexedSubscript:v12];

      v17 = [v14 string];
      v18 = [v16 string];
      v19 = [v17 isEqualToString:v18];

      if ((v19 & 1) == 0)
      {
        objc_initWeak(&location, self);
        v20 = dispatch_time(0, 1700000000);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __66__CKNicknamePreviewView_avatarDidFinishTransitionToAvatarAtIndex___block_invoke_2;
        block[3] = &unk_1E72ED660;
        block[4] = self;
        objc_copyWeak(&v24, &location);
        v23 = v16;
        dispatch_after(v20, MEMORY[0x1E69E96A0], block);

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __66__CKNicknamePreviewView_avatarDidFinishTransitionToAvatarAtIndex___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__CKNicknamePreviewView_avatarDidFinishTransitionToAvatarAtIndex___block_invoke_3;
  v3[3] = &unk_1E72EBB98;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  [v2 setSenderLabelVisible:0 completion:v3];

  objc_destroyWeak(&v5);
}

void __66__CKNicknamePreviewView_avatarDidFinishTransitionToAvatarAtIndex___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained senderLabel];
  [v4 setAttributedText:v2];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 setSenderLabelVisible:1 completion:0];
}

- (void)setSenderLabelVisible:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = MEMORY[0x1E6979518];
  v7 = a4;
  [v6 begin];
  [MEMORY[0x1E6979518] setCompletionBlock:v7];

  v19 = [MEMORY[0x1E6979318] animation];
  [v19 setKeyPath:@"opacity"];
  [v19 setDuration:0.1];
  v8 = MEMORY[0x1E696AD98];
  v9 = [(CKNicknamePreviewView *)self senderLabel];
  v10 = [v9 layer];
  [v10 opacity];
  v11 = [v8 numberWithFloat:?];
  [v19 setFromValue:v11];

  if (v4)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  [v19 setToValue:v13];

  v15 = [(CKNicknamePreviewView *)self senderLabel];
  v16 = [v15 layer];
  v14 = v12;
  *&v17 = v14;
  [v16 setOpacity:v17];

  v18 = [(CKNicknamePreviewView *)self senderLabel];
  [v18 addAnimation:v19 forKey:@"fadeAnimation"];

  [MEMORY[0x1E6979518] commit];
}

- (void)runFlipAnimationOnAvatarView:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x1E6979518];
  v7 = a4;
  v8 = a3;
  [v6 begin];
  [MEMORY[0x1E6979518] setCompletionBlock:v7];

  v10 = [(CKNicknamePreviewView *)self flipAnimation];
  v9 = [v8 layer];

  [v9 addAnimation:v10 forKey:@"flipAnimation"];
  [MEMORY[0x1E6979518] commit];
}

- (id)flipAnimation
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6979390] animationWithKeyPath:@"transform.rotation.y"];
  [v2 setValues:&unk_1F04E6DE0];
  [v2 setKeyTimes:&unk_1F04E6DF8];
  LODWORD(v3) = 0.25;
  LODWORD(v4) = 0.25;
  LODWORD(v5) = 1.0;
  v6 = [MEMORY[0x1E69793D0] functionWithControlPoints:v3 :v4 :0.0 :v5];
  v7 = [MEMORY[0x1E69793D0] functionWithName:{*MEMORY[0x1E6979ED8], v6}];
  v15[1] = v7;
  LODWORD(v8) = 1011129254;
  LODWORD(v9) = 1.0;
  LODWORD(v10) = 0.75;
  LODWORD(v11) = 0.75;
  v12 = [MEMORY[0x1E69793D0] functionWithControlPoints:v9 :v8 :v10 :v11];
  v15[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  [v2 setTimingFunctions:v13];

  [v2 setDuration:1.9];

  return v2;
}

- (id)imageForAvatarType:(int64_t)a3
{
  v3 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = [(CKNicknamePreviewView *)self avatarItemProvider];
      v5 = [v4 photoItem];
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_13;
      }

      v4 = [(CKNicknamePreviewView *)self avatarItemProvider];
      v5 = [v4 monogramItem];
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_13;
    }

    v4 = [(CKNicknamePreviewView *)self avatarItemProvider];
    v5 = [v4 animojiItem];
  }

  else
  {
    v4 = [(CKNicknamePreviewView *)self avatarItemProvider];
    v5 = [v4 silhouetteItem];
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 imageProvider];
    v3 = v7[2](44.0, 44.0);
  }

  else
  {
    v3 = 0;
  }

LABEL_13:

  return v3;
}

- (id)senderStringForAvatarType:(int64_t)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69A5CA0] iMessageService];
  v6 = IMPreferredAccountForService();
  v7 = [v6 displayName];
  v8 = v7;
  if ((a3 - 1) >= 3)
  {
    if (a3)
    {
      v11 = 0;
    }

    else
    {
      v11 = v7;
    }
  }

  else
  {
    v9 = MEMORY[0x1E695CD80];
    v10 = [(CKNicknamePreviewView *)self contact];
    v11 = [v9 stringFromContact:v10 style:0];
  }

  if ([(__CFString *)v11 length])
  {
    if (v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v12 = v8;

    v11 = v12;
    if (v12)
    {
      goto LABEL_15;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v23 = 134218498;
      v24 = a3;
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "senderStringForAvatarType %li is nil. Account: %@, Display name: %@", &v23, 0x20u);
    }
  }

  v11 = &stru_1F04268F8;
LABEL_15:
  v14 = +[CKUIBehavior sharedBehaviors];
  v15 = [v14 senderTranscriptTextAttributes];
  v16 = [v15 mutableCopy];

  v17 = CKIsRunningInMacCatalyst();
  v18 = MEMORY[0x1E69DDD28];
  if (v17)
  {
    v18 = MEMORY[0x1E69DDD00];
  }

  v19 = [MEMORY[0x1E69DB878] __ck_preferredFontForStyle:*v18];
  [v16 setObject:v19 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  v20 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v20 setLineBreakMode:4];
  [v16 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69DB688]];
  v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:v16];

  return v21;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = [(CKNicknamePreviewView *)self balloonView:a3.width];
  [v4 frame];
  MaxX = CGRectGetMaxX(v11);

  v6 = [(CKNicknamePreviewView *)self balloonView];
  [v6 frame];
  MaxY = CGRectGetMaxY(v12);

  v8 = MaxX;
  v9 = MaxY;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CNSharingProfileAvatarItemProviderConfiguration)avatarItemProviderConfiguration
{
  v2 = [(CKNicknamePreviewView *)self avatarItemProvider];
  v3 = [v2 configuration];

  return v3;
}

@end