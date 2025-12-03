@interface CKNicknamePreviewView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKNicknamePreviewView)initWithContact:(id)contact avatarRecord:(id)record;
- (CNSharingProfileAvatarItemProviderConfiguration)avatarItemProviderConfiguration;
- (id)balloonText;
- (id)flipAnimation;
- (id)imageForAvatarType:(int64_t)type;
- (id)senderStringForAvatarType:(int64_t)type;
- (void)avatarDidFinishTransitionToAvatarAtIndex:(unint64_t)index;
- (void)beginAnimation;
- (void)layoutSubviews;
- (void)runFlipAnimationOnAvatarView:(id)view completion:(id)completion;
- (void)setSenderLabelVisible:(BOOL)visible completion:(id)completion;
- (void)updateBalloonTraitCollection;
@end

@implementation CKNicknamePreviewView

- (CKNicknamePreviewView)initWithContact:(id)contact avatarRecord:(id)record
{
  v44 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  recordCopy = record;
  v42.receiver = self;
  v42.super_class = CKNicknamePreviewView;
  v6 = [(CKNicknamePreviewView *)&v42 init];
  if (v6)
  {
    if (_ContactsUIForwardDeclareInit_onceToken_0 != -1)
    {
      [CKNicknamePreviewView initWithContact:avatarRecord:];
    }

    v7 = [[_CKCNSharingProfileAvatarItemProvider alloc] initWithContact:contactCopy avatarRecord:recordCopy logger:0];
    [(CKNicknamePreviewView *)v6 setAvatarItemProvider:v7];

    avatarItemProvider = [(CKNicknamePreviewView *)v6 avatarItemProvider];
    [avatarItemProvider setShouldIncludeSilhouette:1];

    [(CKNicknamePreviewView *)v6 setContact:contactCopy];
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
        layer = [v15 layer];
        [layer setCornerRadius:22.0];

        layer2 = [v15 layer];
        [layer2 setMasksToBounds:1];

        [v15 setImage:v13];
        [v9 addObject:v15];
        [(CKNicknamePreviewView *)v6 addSubview:v15];
        CATransform3DMakeRotation(&v41, -1.57079633, 0.0, 1.0, 0.0);
        layer3 = [v15 layer];
        buf = v41;
        [layer3 setTransform:&buf];

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
    senderStrings = [(CKNicknamePreviewView *)v6 senderStrings];
    firstObject = [senderStrings firstObject];
    [v22 setAttributedText:firstObject];

    [(CKNicknamePreviewView *)v6 addSubview:v22];
    [(CKNicknamePreviewView *)v6 setSenderLabel:v22];
    v25 = [CKTextBalloonView alloc];
    v26 = [(CKTextBalloonView *)v25 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CKNicknamePreviewView *)v6 addSubview:v26];
    [(CKColoredBalloonView *)v26 setColor:0xFFFFFFFFLL];
    balloonView = [(CKNicknamePreviewView *)v6 balloonView];
    traitCollection = [(CKNicknamePreviewView *)v6 traitCollection];
    [balloonView updateBalloonForTraitCollection:traitCollection];

    [(CKBalloonView *)v26 setOrientation:0];
    [(CKColoredBalloonView *)v26 setHasTail:1];
    [(CKBalloonView *)v26 setBalloonCorners:-1];
    [(CKColoredBalloonView *)v26 setCanUseOpaqueMask:0];
    v29 = +[CKUIBehavior sharedBehaviors];
    [v29 nicknamePreviewOnboardingBalloonCornerRadius];
    v31 = v30;

    traitCollection2 = [(CKNicknamePreviewView *)v6 traitCollection];
    v33 = COERCE_DOUBLE([traitCollection2 userInterfaceStyle]);

    traitCollection3 = [(CKNicknamePreviewView *)v6 traitCollection];
    v35 = COERCE_DOUBLE(CKBackgroundLevelForTraitCollection(traitCollection3));

    *&buf.m11 = 256;
    buf.m12 = NAN;
    buf.m13 = v31;
    LOBYTE(buf.m14) = -1;
    memset(&buf.m14 + 1, 0, 79);
    buf.m42 = v33;
    buf.m43 = v35;
    buf.m44 = COERCE_DOUBLE(257);
    [(CKColoredBalloonView *)v26 setBalloonDescriptor:&buf];
    balloonText = [(CKNicknamePreviewView *)v6 balloonText];
    [(CKTextBalloonView *)v26 setAttributedText:balloonText];

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
  nicknamePreviewOnboardingBalloonFont = [v9 nicknamePreviewOnboardingBalloonFont];
  [v6 addAttribute:v8 value:nicknamePreviewOnboardingBalloonFont range:{0, v7}];

  v11 = *MEMORY[0x1E69DB650];
  v12 = +[CKUIBehavior sharedBehaviors];
  theme = [v12 theme];
  balloonView = [(CKNicknamePreviewView *)self balloonView];
  v15 = [theme balloonTextColorForColorType:{objc_msgSend(balloonView, "color")}];
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
  balloonView = [(CKNicknamePreviewView *)self balloonView];
  traitCollection = [(CKNicknamePreviewView *)self traitCollection];
  [balloonView updateBalloonForTraitCollection:traitCollection];

  balloonView2 = [(CKNicknamePreviewView *)self balloonView];
  balloonText = [(CKNicknamePreviewView *)self balloonText];
  [balloonView2 setAttributedText:balloonText];

  balloonView3 = [(CKNicknamePreviewView *)self balloonView];
  [balloonView3 setNeedsPrepareForDisplay];

  balloonView4 = [(CKNicknamePreviewView *)self balloonView];
  [balloonView4 prepareForDisplayIfNeeded];
}

- (void)beginAnimation
{
  avatarViews = [(CKNicknamePreviewView *)self avatarViews];
  -[CKNicknamePreviewView avatarDidFinishTransitionToAvatarAtIndex:](self, "avatarDidFinishTransitionToAvatarAtIndex:", [avatarViews count] - 1);
}

- (void)layoutSubviews
{
  v56 = *MEMORY[0x1E69E9840];
  senderLabel = [(CKNicknamePreviewView *)self senderLabel];
  [senderLabel sizeToFit];

  senderLabel2 = [(CKNicknamePreviewView *)self senderLabel];
  [senderLabel2 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v57.origin.y = 0.0;
  v57.origin.x = v6;
  v57.size.width = v8;
  v57.size.height = v10;
  Height = CGRectGetHeight(v57);
  senderLabel3 = [(CKNicknamePreviewView *)self senderLabel];
  [senderLabel3 _lastLineBaseline];
  v14 = v13;

  v15 = *(MEMORY[0x1E69DDCE0] + 16);
  v53 = *MEMORY[0x1E69DDCE0];
  v54 = v15;
  v52[0] = v53;
  v52[1] = v15;
  balloonView = [(CKNicknamePreviewView *)self balloonView];
  [balloonView sizeThatFits:&v53 textAlignmentInsets:v52 tailInsets:{320.0, 1.79769313e308}];
  v18 = v17;
  v20 = v19;

  balloonView2 = [(CKNicknamePreviewView *)self balloonView];
  [balloonView2 setTextAlignmentInsets:{v53, v54}];

  v22 = *MEMORY[0x1E695F058];
  v58.origin.y = 0.0;
  v58.origin.x = v6;
  v58.size.width = v8;
  v58.size.height = v10;
  v23 = v14 - Height + CGRectGetMaxY(v58) + 5.0;
  v24 = v22 + 56.0;
  balloonView3 = [(CKNicknamePreviewView *)self balloonView];
  [balloonView3 setFrame:{v22 + 56.0, v23, v18, v20}];

  balloonView4 = [(CKNicknamePreviewView *)self balloonView];
  [balloonView4 alignmentRectInsets];
  v28 = v22 + 56.0 + v27;

  [(CKNicknamePreviewView *)self frame];
  Width = CGRectGetWidth(v59);
  v60.origin.y = 0.0;
  v60.origin.x = v28;
  v60.size.width = v8;
  v60.size.height = v10;
  v30 = Width - CGRectGetMinX(v60);
  senderLabel4 = [(CKNicknamePreviewView *)self senderLabel];
  [senderLabel4 setFrame:{v28, 0.0, v30, v10}];

  avatarViews = [(CKNicknamePreviewView *)self avatarViews];
  firstObject = [avatarViews firstObject];
  [firstObject frame];
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
  avatarViews2 = [(CKNicknamePreviewView *)self avatarViews];
  v43 = [avatarViews2 countByEnumeratingWithState:&v48 objects:v55 count:16];
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
          objc_enumerationMutation(avatarViews2);
        }

        [*(*(&v48 + 1) + 8 * v47++) setFrame:{0.0, v45, 44.0, 44.0}];
      }

      while (v44 != v47);
      v44 = [avatarViews2 countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v44);
  }

  [(CKNicknamePreviewView *)self setShouldStopAnimation:0];
}

- (void)avatarDidFinishTransitionToAvatarAtIndex:(unint64_t)index
{
  avatarViews = [(CKNicknamePreviewView *)self avatarViews];
  if ([avatarViews count] <= index)
  {
  }

  else
  {
    shouldStopAnimation = [(CKNicknamePreviewView *)self shouldStopAnimation];

    if (!shouldStopAnimation)
    {
      avatarViews2 = [(CKNicknamePreviewView *)self avatarViews];
      v7 = (index + 1) % [avatarViews2 count];

      avatarViews3 = [(CKNicknamePreviewView *)self avatarViews];
      v9 = [avatarViews3 objectAtIndexedSubscript:v7];

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __66__CKNicknamePreviewView_avatarDidFinishTransitionToAvatarAtIndex___block_invoke;
      v26[3] = &unk_1E72ED810;
      v26[4] = self;
      v26[5] = v7;
      [(CKNicknamePreviewView *)self runFlipAnimationOnAvatarView:v9 completion:v26];
      v10 = index + 2;
      senderStrings = [(CKNicknamePreviewView *)self senderStrings];
      v12 = v10 % [senderStrings count];

      senderStrings2 = [(CKNicknamePreviewView *)self senderStrings];
      v14 = [senderStrings2 objectAtIndexedSubscript:v7];

      senderStrings3 = [(CKNicknamePreviewView *)self senderStrings];
      v16 = [senderStrings3 objectAtIndexedSubscript:v12];

      string = [v14 string];
      string2 = [v16 string];
      v19 = [string isEqualToString:string2];

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

- (void)setSenderLabelVisible:(BOOL)visible completion:(id)completion
{
  visibleCopy = visible;
  v6 = MEMORY[0x1E6979518];
  completionCopy = completion;
  [v6 begin];
  [MEMORY[0x1E6979518] setCompletionBlock:completionCopy];

  animation = [MEMORY[0x1E6979318] animation];
  [animation setKeyPath:@"opacity"];
  [animation setDuration:0.1];
  v8 = MEMORY[0x1E696AD98];
  senderLabel = [(CKNicknamePreviewView *)self senderLabel];
  layer = [senderLabel layer];
  [layer opacity];
  v11 = [v8 numberWithFloat:?];
  [animation setFromValue:v11];

  if (visibleCopy)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  [animation setToValue:v13];

  senderLabel2 = [(CKNicknamePreviewView *)self senderLabel];
  layer2 = [senderLabel2 layer];
  v14 = v12;
  *&v17 = v14;
  [layer2 setOpacity:v17];

  senderLabel3 = [(CKNicknamePreviewView *)self senderLabel];
  [senderLabel3 addAnimation:animation forKey:@"fadeAnimation"];

  [MEMORY[0x1E6979518] commit];
}

- (void)runFlipAnimationOnAvatarView:(id)view completion:(id)completion
{
  v6 = MEMORY[0x1E6979518];
  completionCopy = completion;
  viewCopy = view;
  [v6 begin];
  [MEMORY[0x1E6979518] setCompletionBlock:completionCopy];

  flipAnimation = [(CKNicknamePreviewView *)self flipAnimation];
  layer = [viewCopy layer];

  [layer addAnimation:flipAnimation forKey:@"flipAnimation"];
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

- (id)imageForAvatarType:(int64_t)type
{
  v3 = 0;
  if (type > 1)
  {
    if (type == 2)
    {
      avatarItemProvider = [(CKNicknamePreviewView *)self avatarItemProvider];
      photoItem = [avatarItemProvider photoItem];
    }

    else
    {
      if (type != 3)
      {
        goto LABEL_13;
      }

      avatarItemProvider = [(CKNicknamePreviewView *)self avatarItemProvider];
      photoItem = [avatarItemProvider monogramItem];
    }
  }

  else if (type)
  {
    if (type != 1)
    {
      goto LABEL_13;
    }

    avatarItemProvider = [(CKNicknamePreviewView *)self avatarItemProvider];
    photoItem = [avatarItemProvider animojiItem];
  }

  else
  {
    avatarItemProvider = [(CKNicknamePreviewView *)self avatarItemProvider];
    photoItem = [avatarItemProvider silhouetteItem];
  }

  v6 = photoItem;

  if (v6)
  {
    imageProvider = [v6 imageProvider];
    v3 = imageProvider[2](44.0, 44.0);
  }

  else
  {
    v3 = 0;
  }

LABEL_13:

  return v3;
}

- (id)senderStringForAvatarType:(int64_t)type
{
  v29 = *MEMORY[0x1E69E9840];
  iMessageService = [MEMORY[0x1E69A5CA0] iMessageService];
  v6 = IMPreferredAccountForService();
  displayName = [v6 displayName];
  v8 = displayName;
  if ((type - 1) >= 3)
  {
    if (type)
    {
      v11 = 0;
    }

    else
    {
      v11 = displayName;
    }
  }

  else
  {
    v9 = MEMORY[0x1E695CD80];
    contact = [(CKNicknamePreviewView *)self contact];
    v11 = [v9 stringFromContact:contact style:0];
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
      typeCopy = type;
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
  senderTranscriptTextAttributes = [v14 senderTranscriptTextAttributes];
  v16 = [senderTranscriptTextAttributes mutableCopy];

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

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = [(CKNicknamePreviewView *)self balloonView:fits.width];
  [v4 frame];
  MaxX = CGRectGetMaxX(v11);

  balloonView = [(CKNicknamePreviewView *)self balloonView];
  [balloonView frame];
  MaxY = CGRectGetMaxY(v12);

  v8 = MaxX;
  v9 = MaxY;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CNSharingProfileAvatarItemProviderConfiguration)avatarItemProviderConfiguration
{
  avatarItemProvider = [(CKNicknamePreviewView *)self avatarItemProvider];
  configuration = [avatarItemProvider configuration];

  return configuration;
}

@end