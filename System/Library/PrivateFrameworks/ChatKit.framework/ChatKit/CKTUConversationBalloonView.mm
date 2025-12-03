@interface CKTUConversationBalloonView
+ (BOOL)_shouldAlwaysHideSessionImageView;
+ (BOOL)_shouldUseStackedLayout;
+ (CGSize)appIconSize;
- (BOOL)_shouldShowSessionView;
- (BOOL)joinButtonIsShowingImageContent;
- (BOOL)joinButtonIsShowingTextContent;
- (CGSize)_preferredJoinButtonSize;
- (CGSize)_preferredSessionImageViewSize;
- (CGSize)imageViewSize;
- (CGSize)joinButtonRenderedAsIconSize;
- (CGSize)layoutSizeForSize:(CGSize)size applyLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CGSize)stackedLayoutSizeForSize:(CGSize)size applyLayout:(BOOL)layout;
- (CGSize)standardLayoutSizeForSize:(CGSize)size applyLayout:(BOOL)layout;
- (CKTUConversationBalloonView)initWithFrame:(CGRect)frame;
- (char)color;
- (id)_currentCall;
- (id)_iconJoinButtonConfiguration;
- (id)_joinButtonText;
- (id)_sharePlayImageWithDiameter:(double)diameter;
- (id)_textJoinButtonConfiguration;
- (id)subtitleColor;
- (id)tuConversation;
- (unint64_t)conversationAVMode;
- (void)_joinButtonTapped:(id)tapped;
- (void)_multiWayCallStateChanged:(id)changed;
- (void)configureForCurrentStateWithLayoutPass:(BOOL)pass;
- (void)configureForTUConversationChatItem:(id)item;
- (void)configureIconView;
- (void)configureImageView;
- (void)configureJoinButton;
- (void)configureSessionAccessoryView;
- (void)configureSubtitle1;
- (void)configureSubtitle2;
- (void)configureTitle;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)formatIconViewForActivity;
- (void)formatIconViewForFaceTime;
- (void)formatImageViewForActivity;
- (void)formatImageViewForFaceTime;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)prepareForReuse;
@end

@implementation CKTUConversationBalloonView

+ (BOOL)_shouldUseStackedLayout
{
  v2 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v2 isAccessibilityPreferredContentSizeCategory];

  return isAccessibilityPreferredContentSizeCategory;
}

+ (BOOL)_shouldAlwaysHideSessionImageView
{
  v2 = CKPreferredContentSizeCategory();
  if ([v2 isEqualToString:*MEMORY[0x1E69DDC28]])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:*MEMORY[0x1E69DDC20]];
  }

  return v3;
}

- (CKTUConversationBalloonView)initWithFrame:(CGRect)frame
{
  v33.receiver = self;
  v33.super_class = CKTUConversationBalloonView;
  v3 = [(CKColoredBalloonView *)&v33 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_state = 1;
    v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
    [v10 setContentMode:2];
    [(CKTUConversationBalloonView *)v4 addSubview:v10];
    [(CKTUConversationBalloonView *)v4 setSessionImageView:v10];
    v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v6, v7, v8, v9}];
    [v11 setContentMode:2];
    [(CKTUConversationBalloonView *)v4 addSubview:v11];
    [(CKTUConversationBalloonView *)v4 setIconView:v11];
    v12 = [[CKAvatarView alloc] initWithFrame:v6, v7, v8, v9];
    [(CKAvatarView *)v12 setContentMode:2];
    [(CKTUConversationBalloonView *)v4 addSubview:v12];
    [(CKTUConversationBalloonView *)v4 setAvatarView:v12];
    v13 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    v14 = MEMORY[0x1E69DB878];
    v15 = +[CKUIBehavior sharedBehaviors];
    tuConversationBalloonTitleFont = [v15 tuConversationBalloonTitleFont];
    v17 = [v14 __ck_emphasizedFontFromFont:tuConversationBalloonTitleFont];
    [v13 setFont:v17];

    [v13 setLineBreakMode:4];
    [v13 setNumberOfLines:2];
    [(CKTUConversationBalloonView *)v4 addSubview:v13];
    [(CKTUConversationBalloonView *)v4 setTitleLabel:v13];
    v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    v19 = +[CKUIBehavior sharedBehaviors];
    tuConversationBalloonSubtitleFont = [v19 tuConversationBalloonSubtitleFont];
    [v18 setFont:tuConversationBalloonSubtitleFont];

    [v18 setLineBreakMode:4];
    [v18 setNumberOfLines:2];
    [(CKTUConversationBalloonView *)v4 addSubview:v18];
    [(CKTUConversationBalloonView *)v4 setSubtitleLabel1:v18];
    v21 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    v22 = +[CKUIBehavior sharedBehaviors];
    tuConversationBalloonSubtitleFont2 = [v22 tuConversationBalloonSubtitleFont];
    [v21 setFont:tuConversationBalloonSubtitleFont2];

    [v21 setLineBreakMode:4];
    [v21 setNumberOfLines:2];
    [(CKTUConversationBalloonView *)v4 addSubview:v21];
    [(CKTUConversationBalloonView *)v4 setSubtitleLabel2:v21];
    v24 = [MEMORY[0x1E69DC738] buttonWithType:0];
    [v24 addTarget:v4 action:sel__joinButtonTapped_ forControlEvents:64];
    if (CKIsRunningInMacCatalyst())
    {
      v25 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v4 action:sel_didHoverOverCell_];
      [v24 addGestureRecognizer:v25];
    }

    [(CKTUConversationBalloonView *)v4 addSubview:v24];
    [(CKTUConversationBalloonView *)v4 setJoinButton:v24];
    tapGestureRecognizer = [(CKBalloonView *)v4 tapGestureRecognizer];
    [(CKTUConversationBalloonView *)v4 removeGestureRecognizer:tapGestureRecognizer];

    doubleTapGestureRecognizer = [(CKBalloonView *)v4 doubleTapGestureRecognizer];
    [(CKTUConversationBalloonView *)v4 removeGestureRecognizer:doubleTapGestureRecognizer];

    longPressGestureRecognizer = [(CKBalloonView *)v4 longPressGestureRecognizer];
    [(CKTUConversationBalloonView *)v4 removeGestureRecognizer:longPressGestureRecognizer];

    [(CKTUConversationBalloonView *)v4 setState:1];
    [(CKTUConversationBalloonView *)v4 configureForCurrentStateWithLayoutPass:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__multiWayCallStateChanged_ name:*MEMORY[0x1E69A5840] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v4 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v4 selector:sel_chatParticipantsChanged_ name:*MEMORY[0x1E69A5848] object:0];
  }

  return v4;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CKTUConversationBalloonView;
  [(CKColoredBalloonView *)&v5 layoutSubviews];
  if (![(CKTUConversationBalloonView *)self animating])
  {
    [(CKTUConversationBalloonView *)self bounds];
    [(CKTUConversationBalloonView *)self layoutSizeForSize:1 applyLayout:v3, v4];
  }
}

- (CGSize)layoutSizeForSize:(CGSize)size applyLayout:(BOOL)layout
{
  layoutCopy = layout;
  height = size.height;
  width = size.width;
  if ([objc_opt_class() _shouldUseStackedLayout])
  {

    [(CKTUConversationBalloonView *)self stackedLayoutSizeForSize:layoutCopy applyLayout:width, height];
  }

  else
  {

    [(CKTUConversationBalloonView *)self standardLayoutSizeForSize:layoutCopy applyLayout:width, height];
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)_preferredSessionImageViewSize
{
  sessionImageView = [(CKTUConversationBalloonView *)self sessionImageView];
  isHidden = [sessionImageView isHidden];

  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  if ((isHidden & 1) == 0 && ([objc_opt_class() _shouldAlwaysHideSessionImageView] & 1) == 0)
  {
    v7 = MEMORY[0x1E69A5B78];
    tuConversation = [(CKTUConversationBalloonView *)self tuConversation];
    LODWORD(v7) = [v7 activeTUConversationHasActivitySession:tuConversation];

    if (v7)
    {
      sessionImageView2 = +[CKUIBehavior sharedBehaviors];
      [sessionImageView2 tuConversationBalloonImageDimensions];
      v5 = v10;
      v11 = +[CKUIBehavior sharedBehaviors];
      [v11 tuConversationBalloonImageDimensions];
      v6 = v12;
    }

    else
    {
      sessionImageView2 = [(CKTUConversationBalloonView *)self sessionImageView];
      [sessionImageView2 sizeThatFits:{*(MEMORY[0x1E695F040] + 16), *(MEMORY[0x1E695F040] + 24)}];
      v5 = v13;
      v6 = v14;
    }
  }

  v15 = v5;
  v16 = v6;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)_preferredJoinButtonSize
{
  joinButton = [(CKTUConversationBalloonView *)self joinButton];
  isHidden = [joinButton isHidden];

  if (isHidden)
  {
    v5 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    joinButton2 = [(CKTUConversationBalloonView *)self joinButton];
    [joinButton2 sizeThatFits:{*(MEMORY[0x1E695F040] + 16), *(MEMORY[0x1E695F040] + 24)}];
    v5 = v8;
    v6 = v9;

    if (![(CKTUConversationBalloonView *)self shouldRenderJoinButtonAsIcon]|| CKIsRunningInMacCatalyst())
    {
      v10 = +[CKUIBehavior sharedBehaviors];
      [v10 tuConversationBalloonJoinButtonMinWidth];
      v12 = v11;

      if (v5 < v12)
      {
        v5 = v12;
      }
    }
  }

  v13 = v5;
  v14 = v6;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)stackedLayoutSizeForSize:(CGSize)size applyLayout:(BOOL)layout
{
  layoutCopy = layout;
  v6 = [(CKTUConversationBalloonView *)self _shouldReverseLayoutDirection:size.width];
  v7 = +[CKUIBehavior sharedBehaviors];
  [(CKTUConversationBalloonView *)self bounds];
  [(CKTUConversationBalloonView *)self alignmentRectForFrame:?];
  v106 = v9;
  v107 = v8;
  v11 = v10;
  [(CKTUConversationBalloonView *)self _preferredSessionImageViewSize];
  v104 = v12;
  v109 = v13;
  v14 = MEMORY[0x1E69DC738];
  _textJoinButtonConfiguration = [(CKTUConversationBalloonView *)self _textJoinButtonConfiguration];
  v16 = [v14 buttonWithConfiguration:_textJoinButtonConfiguration primaryAction:0];

  v17 = *(MEMORY[0x1E695F040] + 24);
  [v16 sizeThatFits:{*(MEMORY[0x1E695F040] + 16), v17}];
  [(CKTUConversationBalloonView *)self setShouldRenderJoinButtonAsIcon:v18 > v11];
  [(CKTUConversationBalloonView *)self configureJoinButton];
  [(CKTUConversationBalloonView *)self configureImageView];
  [(CKTUConversationBalloonView *)self _preferredJoinButtonSize];
  v20 = v19;
  v105 = v21;
  titleLabel = [(CKTUConversationBalloonView *)self titleLabel];
  [titleLabel sizeThatFits:{v11, v17}];
  v24 = v23;
  v26 = v25;

  subtitleLabel1 = [(CKTUConversationBalloonView *)self subtitleLabel1];
  [subtitleLabel1 sizeThatFits:{v11, v17}];
  v29 = v28;
  v31 = v30;

  subtitleLabel2 = [(CKTUConversationBalloonView *)self subtitleLabel2];
  [subtitleLabel2 sizeThatFits:{v11, v17}];
  v34 = v33;
  v36 = v35;

  if (v24 >= v29)
  {
    v37 = v24;
  }

  else
  {
    v37 = v29;
  }

  if (v37 < v34)
  {
    v37 = v34;
  }

  v100 = v20;
  v101 = v36;
  if (v37 >= v20)
  {
    v38 = v37;
  }

  else
  {
    v38 = v20;
  }

  v102 = v31;
  rect = v26;
  [v7 tuConversationBalloonContentTopPadding];
  v40 = v39;
  sessionImageView = [(CKTUConversationBalloonView *)self sessionImageView];
  isHidden = [sessionImageView isHidden];

  if ((isHidden & 1) == 0)
  {
    [v7 tuConversationBalloonContentBottomPadding];
    v40 = v109 + v40 + v43;
  }

  [v7 tuConversationBalloonContentBottomPadding];
  v45 = v26 + v31 + v36 + v40 + v44;
  joinButton = [(CKTUConversationBalloonView *)self joinButton];
  isHidden2 = [joinButton isHidden];

  if ((isHidden2 & 1) == 0)
  {
    [v7 tuConversationBalloonContentBottomPadding];
    v45 = v105 + v45 + v48;
  }

  if ([objc_opt_class() _shouldAlwaysHideSessionImageView])
  {
    [v7 tuConversationBalloonContentBottomPadding];
    v45 = v45 + v49;
  }

  if (layoutCopy)
  {
    sessionImageView2 = [(CKTUConversationBalloonView *)self sessionImageView];
    if ([sessionImageView2 isHidden])
    {
      v111.origin.y = v106;
      v111.origin.x = v107;
      v111.size.width = v11;
      v111.size.height = v45;
      MinY = CGRectGetMinY(v111);
    }

    else
    {
      [v7 tuConversationBalloonContentTopPadding];
      v53 = v52;
      v112.origin.y = v106;
      v112.origin.x = v107;
      v112.size.width = v11;
      v112.size.height = v45;
      MinY = v53 + CGRectGetMinY(v112);
    }

    v99 = v38;
    v55 = v106;
    v54 = v107;
    v56 = v11;
    v57 = v45;
    if (v6)
    {
      MinX = CGRectGetMaxX(*&v54) - v104;
    }

    else
    {
      MinX = CGRectGetMinX(*&v54);
    }

    sessionAccessoryView = [(CKTUConversationBalloonView *)self sessionAccessoryView];
    [sessionAccessoryView frame];
    v61 = v60;
    v96 = v62;

    v113.origin.x = MinX;
    v113.origin.y = MinY;
    v113.size.width = v104;
    v113.size.height = v109;
    v94 = CGRectGetMaxX(v113) - v61;
    v114.origin.x = MinX;
    v114.origin.y = MinY;
    v114.size.width = v104;
    v114.size.height = v109;
    v97 = v61;
    v63 = CGRectGetMaxY(v114) - v61;
    v115.origin.x = MinX;
    v115.origin.y = MinY;
    v115.size.width = v104;
    v115.size.height = v109;
    MaxY = CGRectGetMaxY(v115);
    [v7 tuConversationBalloonContentBottomPadding];
    v98 = MaxY + v65;
    if (v6)
    {
      v116.origin.y = v106;
      v116.origin.x = v107;
      v116.size.width = v11;
      v116.size.height = v45;
      v66 = v99;
      v67 = CGRectGetMaxX(v116) - v99;
    }

    else
    {
      v117.origin.x = MinX;
      v117.origin.y = MinY;
      v117.size.width = v104;
      v117.size.height = v109;
      v67 = CGRectGetMinX(v117);
      v66 = v99;
    }

    v91 = v63 + 4.0;
    v92 = v94 + 4.0;
    v118.origin.x = v67;
    v118.origin.y = v98;
    v118.size.width = v66;
    v118.size.height = v26;
    v68 = CGRectGetMaxY(v118);
    v119.origin.x = v67;
    v119.origin.y = v68;
    v119.size.width = v66;
    v119.size.height = v102;
    v120.origin.y = CGRectGetMaxY(v119);
    v120.origin.x = v67;
    y = v120.origin.y;
    v120.size.width = v66;
    v120.size.height = v101;
    v69 = CGRectGetMaxY(v120);
    [v7 tuConversationBalloonContentBottomPadding];
    v95 = v69 + v70;
    if (v6)
    {
      v121.origin.y = v106;
      v121.origin.x = v107;
      v121.size.width = v11;
      v121.size.height = v45;
      v71 = v100;
      v108 = CGRectGetMaxX(v121) - v100;
      v72 = v104;
      v73 = v109;
    }

    else
    {
      v122.origin.x = MinX;
      v122.origin.y = MinY;
      v72 = v104;
      v122.size.width = v104;
      v73 = v109;
      v122.size.height = v109;
      v108 = CGRectGetMinX(v122);
      v71 = v100;
    }

    sessionImageView3 = [(CKTUConversationBalloonView *)self sessionImageView];
    [sessionImageView3 setFrame:{MinX, MinY, v72, v73}];

    sessionAccessoryView2 = [(CKTUConversationBalloonView *)self sessionAccessoryView];
    [sessionAccessoryView2 setFrame:{v92, v91, v97, v96}];

    titleLabel2 = [(CKTUConversationBalloonView *)self titleLabel];
    [titleLabel2 setFrame:{v67, v98, v99, rect}];

    subtitleLabel12 = [(CKTUConversationBalloonView *)self subtitleLabel1];
    [subtitleLabel12 setFrame:{v67, v68, v99, v102}];

    subtitleLabel22 = [(CKTUConversationBalloonView *)self subtitleLabel2];
    v79 = v67;
    v38 = v99;
    [subtitleLabel22 setFrame:{v79, y, v99, v101}];

    joinButton2 = [(CKTUConversationBalloonView *)self joinButton];
    [joinButton2 setFrame:{v108, v95, v71, v105}];
  }

  [(CKBalloonView *)self alignmentRectInsets];
  v82 = v38 + v81;
  [(CKBalloonView *)self alignmentRectInsets];
  v84 = v82 + v83;
  [(CKBalloonView *)self alignmentRectInsets];
  v86 = v45 + v85;
  [(CKBalloonView *)self alignmentRectInsets];
  v88 = v86 + v87;

  v89 = v84;
  v90 = v88;
  result.height = v90;
  result.width = v89;
  return result;
}

- (CGSize)standardLayoutSizeForSize:(CGSize)size applyLayout:(BOOL)layout
{
  layoutCopy = layout;
  [(CKTUConversationBalloonView *)self configureJoinButton:size.width];
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 tuConversationBalloonContentMinHeight];
  v8 = v7;
  [(CKTUConversationBalloonView *)self bounds];
  [(CKTUConversationBalloonView *)self alignmentRectForFrame:?];
  rect = v9;
  rect_16 = v10;
  v12 = v11;
  _shouldReverseLayoutDirection = [(CKTUConversationBalloonView *)self _shouldReverseLayoutDirection];
  v14 = *(MEMORY[0x1E695F040] + 16);
  v15 = *(MEMORY[0x1E695F040] + 24);
  titleLabel = [(CKTUConversationBalloonView *)self titleLabel];
  [titleLabel sizeThatFits:{v14, v15}];
  v18 = v17;

  subtitleLabel1 = [(CKTUConversationBalloonView *)self subtitleLabel1];
  [subtitleLabel1 sizeThatFits:{v14, v15}];
  v21 = v20;

  subtitleLabel2 = [(CKTUConversationBalloonView *)self subtitleLabel2];
  [subtitleLabel2 sizeThatFits:{v14, v15}];
  v24 = v23;

  if (v18 >= v21)
  {
    v25 = v18;
  }

  else
  {
    v25 = v21;
  }

  if (v25 >= v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = v24;
  }

  v27 = MEMORY[0x1E69DC738];
  _textJoinButtonConfiguration = [(CKTUConversationBalloonView *)self _textJoinButtonConfiguration];
  v29 = [v27 buttonWithConfiguration:_textJoinButtonConfiguration primaryAction:0];

  [v29 sizeThatFits:{v14, v15}];
  v31 = v30;
  [v6 tuConversationBalloonJoinButtonMaxWidth];
  [(CKTUConversationBalloonView *)self setShouldRenderJoinButtonAsIcon:v31 > v32];
  [(CKTUConversationBalloonView *)self configureJoinButton];
  [(CKTUConversationBalloonView *)self configureImageView];
  [(CKTUConversationBalloonView *)self _preferredSessionImageViewSize];
  v34 = v33;
  rect_24 = v35;
  [(CKTUConversationBalloonView *)self _preferredJoinButtonSize];
  v37 = v36;
  v144 = v38;
  [v6 tuConversationBalloonLabelLeadingPadding];
  v40 = v39;
  sessionImageView = [(CKTUConversationBalloonView *)self sessionImageView];
  isHidden = [sessionImageView isHidden];

  if (isHidden)
  {
    v43 = 0.0;
  }

  else
  {
    v43 = v34 + 0.0;
    [v6 tuConversationBalloonSessionImageTrailingPadding];
    v40 = v44;
  }

  [v6 tuConversationBalloonLabelTrailingPadding];
  v46 = v45 + v26 + v40 + v43;
  joinButton = [(CKTUConversationBalloonView *)self joinButton];
  isHidden2 = [joinButton isHidden];

  if ((isHidden2 & 1) == 0)
  {
    [v6 tuConversationBalloonJoinButtonLeadingPadding];
    v46 = v37 + v46 + v49;
  }

  if (v46 >= v12)
  {
    v50 = v12;
  }

  else
  {
    v50 = v46;
  }

  joinButton2 = [(CKTUConversationBalloonView *)self joinButton];
  isHidden3 = [joinButton2 isHidden];

  if ((isHidden3 & 1) == 0)
  {
    if ([(CKTUConversationBalloonView *)self shouldRenderJoinButtonAsIcon])
    {
      [v6 tuConversationBalloonContentCompressedMinWidth];
    }

    else
    {
      [v6 tuConversationBalloonContentStandardMinWidth];
    }

    if (v50 < v53)
    {
      v50 = v53;
    }
  }

  sessionImageView2 = [(CKTUConversationBalloonView *)self sessionImageView];
  isHidden4 = [sessionImageView2 isHidden];

  v142 = v40;
  if (isHidden4)
  {
    v56 = v50;
  }

  else
  {
    v56 = v50 - v34 - v40;
  }

  [v6 tuConversationBalloonLabelTrailingPadding];
  v58 = v56 - v57;
  joinButton3 = [(CKTUConversationBalloonView *)self joinButton];
  isHidden5 = [joinButton3 isHidden];

  rect_8 = v34;
  if ((isHidden5 & 1) == 0)
  {
    [v6 tuConversationBalloonJoinButtonLeadingPadding];
    v58 = v58 - v61 - v37;
  }

  titleLabel2 = [(CKTUConversationBalloonView *)self titleLabel];
  [titleLabel2 sizeThatFits:{v58, 1.79769313e308}];
  v64 = v63;

  subtitleLabel12 = [(CKTUConversationBalloonView *)self subtitleLabel1];
  [subtitleLabel12 sizeThatFits:{v58, 1.79769313e308}];
  v67 = v66;

  subtitleLabel22 = [(CKTUConversationBalloonView *)self subtitleLabel2];
  [subtitleLabel22 sizeThatFits:{v58, 1.79769313e308}];
  v70 = v69;

  v146 = v64;
  v147 = v67;
  v141 = v70;
  v71 = v64 + v67 + v70;
  if (v71 >= rect_24)
  {
    v72 = v71;
  }

  else
  {
    v72 = rect_24;
  }

  [v6 tuConversationBalloonContentTopPadding];
  v74 = v73 + v72;
  [v6 tuConversationBalloonContentBottomPadding];
  v76 = v75 + v74;
  if (v76 >= v8)
  {
    v8 = v76;
  }

  if (layoutCopy)
  {
    if (CKMainScreenScale_once_7 != -1)
    {
      [CKTUConversationBalloonView standardLayoutSizeForSize:applyLayout:];
    }

    v77 = *&CKMainScreenScale_sMainScreenScale_7;
    if (*&CKMainScreenScale_sMainScreenScale_7 == 0.0)
    {
      v77 = 1.0;
    }

    v78 = rect_16;
    v145 = floor((rect_16 + (v8 - rect_24) * 0.5) * v77) / v77;
    v137 = v37;
    v138 = v12;
    v136 = v50;
    v79 = rect;
    v80 = v12;
    v81 = v8;
    if (_shouldReverseLayoutDirection)
    {
      v82 = rect_8;
      MinX = CGRectGetMaxX(*&v79) - rect_8;
    }

    else
    {
      MinX = CGRectGetMinX(*&v79);
      v82 = rect_8;
    }

    sessionAccessoryView = [(CKTUConversationBalloonView *)self sessionAccessoryView];
    [sessionAccessoryView frame];
    v140 = v85;
    v135 = v86;

    v154.origin.x = MinX;
    v154.origin.y = v145;
    v154.size.width = v82;
    v154.size.height = rect_24;
    MaxX = CGRectGetMaxX(v154);
    v155.origin.x = MinX;
    v155.origin.y = v145;
    v155.size.width = v82;
    v155.size.height = rect_24;
    MaxY = CGRectGetMaxY(v155);
    if (CKMainScreenScale_once_7 != -1)
    {
      [CKTUConversationBalloonView standardLayoutSizeForSize:applyLayout:];
    }

    v89 = *&CKMainScreenScale_sMainScreenScale_7;
    if (*&CKMainScreenScale_sMainScreenScale_7 == 0.0)
    {
      v89 = 1.0;
    }

    v139 = floor((rect_16 + (v8 - v71) * 0.5) * v89) / v89;
    v90 = MinX;
    v91 = v145;
    v92 = rect_8;
    v93 = rect_24;
    if (_shouldReverseLayoutDirection)
    {
      v94 = CGRectGetMinX(*&v90) - v142 - v58;
    }

    else
    {
      v94 = v142 + CGRectGetMaxX(*&v90);
    }

    v156.origin.y = v139;
    v95 = MaxX - v140;
    v96 = MaxY - v140;
    v156.origin.x = v94;
    v156.size.width = v58;
    v156.size.height = v146;
    v97 = CGRectGetMaxY(v156);
    [v6 tuConversationBalloonInteritemSpacing];
    v157.origin.y = v97 + v98;
    v157.origin.x = v94;
    y = v157.origin.y;
    v157.size.width = v58;
    v157.size.height = v147;
    v99 = CGRectGetMaxY(v157);
    [v6 tuConversationBalloonInteritemSpacing];
    v101 = v100;
    if (CKMainScreenScale_once_7 != -1)
    {
      [CKTUConversationBalloonView standardLayoutSizeForSize:applyLayout:];
    }

    v131 = v96 + 4.0;
    v133 = v95 + 4.0;
    v102 = v99 + v101;
    v103 = *&CKMainScreenScale_sMainScreenScale_7;
    if (*&CKMainScreenScale_sMainScreenScale_7 == 0.0)
    {
      v103 = 1.0;
    }

    v104 = v144;
    v105 = rect_16;
    v106 = floor((rect_16 + (v8 - v144) * 0.5) * v103) / v103;
    v107 = rect;
    v108 = v138;
    v109 = v8;
    if (_shouldReverseLayoutDirection)
    {
      rect_16a = CGRectGetMinX(*&v107);
      v110 = v137;
    }

    else
    {
      v110 = v137;
      v111 = v106;
      v112 = v102;
      v113 = CGRectGetMaxX(*&v107) - v137;
      [v6 tuConversationBalloonJoinButtonTrailingPadding];
      rect_16a = v113 - v114;
      v102 = v112;
      v106 = v111;
      v104 = v144;
    }

    v115 = [(CKTUConversationBalloonView *)self sessionImageView:*&v131];
    [v115 setFrame:{MinX, v145, rect_8, rect_24}];

    sessionAccessoryView2 = [(CKTUConversationBalloonView *)self sessionAccessoryView];
    [sessionAccessoryView2 setFrame:{v134, v132, v140, v135}];

    titleLabel3 = [(CKTUConversationBalloonView *)self titleLabel];
    [titleLabel3 setFrame:{v94, v139, v58, v146}];

    subtitleLabel13 = [(CKTUConversationBalloonView *)self subtitleLabel1];
    [subtitleLabel13 setFrame:{v94, y, v58, v147}];

    subtitleLabel23 = [(CKTUConversationBalloonView *)self subtitleLabel2];
    [subtitleLabel23 setFrame:{v94, v102, v58, v141}];

    joinButton4 = [(CKTUConversationBalloonView *)self joinButton];
    [joinButton4 setFrame:{rect_16a, v106, v110, v104}];

    v50 = v136;
  }

  [(CKBalloonView *)self alignmentRectInsets];
  v122 = v50 + v121;
  [(CKBalloonView *)self alignmentRectInsets];
  v124 = v122 + v123;
  [(CKBalloonView *)self alignmentRectInsets];
  v126 = v8 + v125;
  [(CKBalloonView *)self alignmentRectInsets];
  v128 = v126 + v127;

  v129 = v124;
  v130 = v128;
  result.height = v130;
  result.width = v129;
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKTUConversationBalloonView;
  [(CKColoredBalloonView *)&v3 prepareForReuse];
  [(CKTUConversationBalloonView *)self setAnimating:0];
}

- (void)prepareForDisplay
{
  v3.receiver = self;
  v3.super_class = CKTUConversationBalloonView;
  [(CKColoredBalloonView *)&v3 prepareForDisplay];
  [(CKTUConversationBalloonView *)self configureForCurrentStateWithLayoutPass:0];
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  height = fits.height;
  width = fits.width;
  [(CKTUConversationBalloonView *)self configureForCurrentStateWithLayoutPass:0, tailInsets];

  [(CKTUConversationBalloonView *)self layoutSizeForSize:0 applyLayout:width, height];
  result.height = v9;
  result.width = v8;
  return result;
}

- (char)color
{
  if ([(CKTUConversationBalloonView *)self conversationAVMode])
  {
    return 7;
  }

  else
  {
    return -1;
  }
}

- (unint64_t)conversationAVMode
{
  tuConversation = [(CKTUConversationBalloonView *)self tuConversation];
  v4 = tuConversation;
  if (tuConversation)
  {
    conversationAVMode = [tuConversation avMode];
  }

  else
  {
    conversationAVMode = self->_conversationAVMode;
  }

  return conversationAVMode;
}

- (id)tuConversation
{
  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  tuConversationUUID = [(CKTUConversationBalloonView *)self tuConversationUUID];
  v5 = [mEMORY[0x1E69A5AF8] existingConversationForTelephonyConversationUUID:tuConversationUUID];

  return v5;
}

- (void)configureForCurrentStateWithLayoutPass:(BOOL)pass
{
  passCopy = pass;
  tuConversation = [(CKTUConversationBalloonView *)self tuConversation];
  [(CKTUConversationBalloonView *)self setState:[CKTUConversationViewUtilities ckTUConversationStateForTUConversation:tuConversation]];

  [(CKTUConversationBalloonView *)self configureImageView];
  [(CKTUConversationBalloonView *)self configureSessionAccessoryView];
  [(CKTUConversationBalloonView *)self configureTitle];
  [(CKTUConversationBalloonView *)self configureSubtitle1];
  [(CKTUConversationBalloonView *)self configureSubtitle2];
  [(CKTUConversationBalloonView *)self configureJoinButton];
  if (passCopy)
  {
    [(CKTUConversationBalloonView *)self setNeedsLayout];

    [(CKTUConversationBalloonView *)self layoutIfNeeded];
  }
}

- (BOOL)_shouldShowSessionView
{
  if ([objc_opt_class() _shouldAlwaysHideSessionImageView])
  {
    return 0;
  }

  if (![(CKTUConversationBalloonView *)self _shouldShowJoinButton]|| ![(CKTUConversationBalloonView *)self shouldRenderJoinButtonAsIcon])
  {
    return 1;
  }

  v4 = MEMORY[0x1E69A5B78];
  tuConversation = [(CKTUConversationBalloonView *)self tuConversation];
  LOBYTE(v4) = [v4 activeTUConversationHasActivitySession:tuConversation];

  return v4;
}

- (void)configureImageView
{
  _shouldShowSessionView = [(CKTUConversationBalloonView *)self _shouldShowSessionView];
  sessionImageView = [(CKTUConversationBalloonView *)self sessionImageView];
  v7 = sessionImageView;
  if (_shouldShowSessionView)
  {
    [sessionImageView setHidden:0];

    v5 = MEMORY[0x1E69A5B78];
    tuConversation = [(CKTUConversationBalloonView *)self tuConversation];
    LODWORD(v5) = [v5 activeTUConversationHasActivitySession:tuConversation];

    if (v5)
    {

      [(CKTUConversationBalloonView *)self formatImageViewForActivity];
    }

    else
    {

      [(CKTUConversationBalloonView *)self formatImageViewForFaceTime];
    }
  }

  else
  {
    [sessionImageView setHidden:1];
  }
}

- (void)configureIconView
{
  state = self->_state;
  v3 = state >= 3;
  v4 = state - 3;
  if (v3)
  {
    if (v4 < 2)
    {
      [(CKTUConversationBalloonView *)self formatIconViewForActivity];
    }
  }

  else
  {
    [(CKTUConversationBalloonView *)self formatIconViewForFaceTime];
  }
}

- (void)configureSessionAccessoryView
{
  sessionAccessoryView = [(CKTUConversationBalloonView *)self sessionAccessoryView];
  [sessionAccessoryView removeFromSuperview];

  v4 = MEMORY[0x1E69A5B78];
  tuConversation = [(CKTUConversationBalloonView *)self tuConversation];
  LODWORD(v4) = [v4 isScreenShareActivityForTUConversation:tuConversation];

  if (v4)
  {
    avatarView = [(CKTUConversationBalloonView *)self avatarView];
  }

  else
  {
    v7 = MEMORY[0x1E69A5B78];
    tuConversation2 = [(CKTUConversationBalloonView *)self tuConversation];
    LODWORD(v7) = [v7 activeTUConversationHasActivitySession:tuConversation2];

    if (!v7)
    {
      return;
    }

    [(CKTUConversationBalloonView *)self configureIconView];
    avatarView = [(CKTUConversationBalloonView *)self iconView];
  }

  v9 = avatarView;
  [(CKTUConversationBalloonView *)self setSessionAccessoryView:avatarView];

  sessionAccessoryView2 = [(CKTUConversationBalloonView *)self sessionAccessoryView];
  [(CKTUConversationBalloonView *)self addSubview:sessionAccessoryView2];
}

- (void)configureTitle
{
  conversationAVMode = [(CKTUConversationBalloonView *)self conversationAVMode];
  v4 = +[CKUIBehavior sharedBehaviors];
  theme = [v4 theme];
  v6 = theme;
  if (conversationAVMode)
  {
    [theme multiwayTitleTextColor];
  }

  else
  {
    [theme sharePlayTitleTextColor];
  }
  v18 = ;

  titleLabel = [(CKTUConversationBalloonView *)self titleLabel];
  [titleLabel setTextColor:v18];

  state = self->_state;
  if (state - 1 < 2)
  {
    titleLabel2 = [(CKTUConversationBalloonView *)self titleLabel];
    tuConversation = [(CKTUConversationBalloonView *)self tuConversation];
    v16 = [CKTUConversationViewUtilities activityTitleForTUConversation:tuConversation];
LABEL_11:
    v17 = v16;
    [titleLabel2 setText:v16];

LABEL_12:
    goto LABEL_13;
  }

  if (state - 3 < 2)
  {
    v9 = MEMORY[0x1E69A5B78];
    tuConversation2 = [(CKTUConversationBalloonView *)self tuConversation];
    v11 = [v9 isScreenShareActivityForTUConversation:tuConversation2];

    titleLabel2 = [(CKTUConversationBalloonView *)self titleLabel];
    v13 = CKFrameworkBundle();
    tuConversation = v13;
    if (v11)
    {
      v15 = @"EXPANSE_SCREENSHARE_DEFAULT";
    }

    else
    {
      v15 = @"EXPANSE_DEFAULT";
    }

    v16 = [v13 localizedStringForKey:v15 value:&stru_1F04268F8 table:@"ChatKit"];
    goto LABEL_11;
  }

  if (!state)
  {
    titleLabel2 = [(CKTUConversationBalloonView *)self titleLabel];
    tuConversation = [CKTUConversationViewUtilities titleForAVMode:[(CKTUConversationBalloonView *)self conversationAVMode]];
    [titleLabel2 setText:tuConversation];
    goto LABEL_12;
  }

LABEL_13:
}

- (id)subtitleColor
{
  conversationAVMode = [(CKTUConversationBalloonView *)self conversationAVMode];
  v3 = +[CKUIBehavior sharedBehaviors];
  theme = [v3 theme];
  v5 = theme;
  if (conversationAVMode)
  {
    [theme multiwayCaptionTextColor];
  }

  else
  {
    [theme sharePlayCaptionTextColor];
  }
  v6 = ;

  return v6;
}

- (void)configureSubtitle1
{
  subtitleColor = [(CKTUConversationBalloonView *)self subtitleColor];
  subtitleLabel1 = [(CKTUConversationBalloonView *)self subtitleLabel1];
  [subtitleLabel1 setTextColor:subtitleColor];

  state = self->_state;
  if (state - 1 < 2)
  {
    subtitleLabel12 = [(CKTUConversationBalloonView *)self subtitleLabel1];
    tuConversation = [(CKTUConversationBalloonView *)self tuConversation];
    v10 = [CKTUConversationViewUtilities joinStateStatusStringForTUConversation:tuConversation];
  }

  else
  {
    if (state - 3 < 2)
    {
      tuConversation2 = [(CKTUConversationBalloonView *)self tuConversation];
      subtitleLabel12 = [CKTUConversationViewUtilities activityTitleForTUConversation:tuConversation2];

      tuConversation3 = [(CKTUConversationBalloonView *)self tuConversation];
      tuConversation = [CKTUConversationViewUtilities activityTextForTUConversation:tuConversation3];

      subtitleLabel13 = [(CKTUConversationBalloonView *)self subtitleLabel1];
      if (tuConversation)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ ⋅ %@", subtitleLabel12, tuConversation];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", subtitleLabel12, v15];
      }
      v14 = ;
      [subtitleLabel13 setText:v14];

      goto LABEL_15;
    }

    if (state)
    {
      return;
    }

    conversationAVMode = [(CKTUConversationBalloonView *)self conversationAVMode];
    subtitleLabel12 = [(CKTUConversationBalloonView *)self subtitleLabel1];
    v12 = CKFrameworkBundle();
    tuConversation = v12;
    if (conversationAVMode)
    {
      v13 = @"CALL_ENDED";
    }

    else
    {
      v13 = @"ENDED";
    }

    v10 = [v12 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKit"];
  }

  subtitleLabel13 = v10;
  [subtitleLabel12 setText:v10];
LABEL_15:
}

- (void)configureSubtitle2
{
  subtitleColor = [(CKTUConversationBalloonView *)self subtitleColor];
  subtitleLabel2 = [(CKTUConversationBalloonView *)self subtitleLabel2];
  [subtitleLabel2 setTextColor:subtitleColor];

  state = self->_state;
  v6 = state >= 3;
  v7 = state - 3;
  if (v6)
  {
    if (v7 >= 2)
    {
      return;
    }

    subtitleLabel22 = [(CKTUConversationBalloonView *)self subtitleLabel2];
    [subtitleLabel22 setHidden:0];

    subtitleLabel23 = [(CKTUConversationBalloonView *)self subtitleLabel2];
    tuConversation = [(CKTUConversationBalloonView *)self tuConversation];
    v11 = [CKTUConversationViewUtilities joinStateStatusStringForTUConversation:tuConversation];
    [subtitleLabel23 setText:v11];
  }

  else
  {
    subtitleLabel24 = [(CKTUConversationBalloonView *)self subtitleLabel2];
    [subtitleLabel24 setHidden:1];

    subtitleLabel23 = [(CKTUConversationBalloonView *)self subtitleLabel2];
    [subtitleLabel23 setText:0];
  }
}

- (void)configureJoinButton
{
  state = self->_state;
  if (state <= 4)
  {
    if (((1 << state) & 0x15) != 0)
    {
      joinButton = [(CKTUConversationBalloonView *)self joinButton];
      [joinButton setHidden:1];
    }

    else
    {
      joinButton2 = [(CKTUConversationBalloonView *)self joinButton];
      [joinButton2 setHidden:0];

      joinButton3 = [(CKTUConversationBalloonView *)self joinButton];
      v7 = CKFrameworkBundle();
      v8 = [v7 localizedStringForKey:@"JOIN" value:&stru_1F04268F8 table:@"ChatKit"];
      [joinButton3 setAccessibilityLabel:v8];

      if ([(CKTUConversationBalloonView *)self shouldRenderJoinButtonAsIcon])
      {
        [(CKTUConversationBalloonView *)self _iconJoinButtonConfiguration];
      }

      else
      {
        [(CKTUConversationBalloonView *)self _textJoinButtonConfiguration];
      }
      joinButton = ;
      joinButton4 = [(CKTUConversationBalloonView *)self joinButton];
      [joinButton4 setConfiguration:joinButton];
    }
  }
}

- (id)_textJoinButtonConfiguration
{
  v3 = CKIsRunningInMacCatalyst();
  filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  v5 = filledButtonConfiguration;
  if (v3)
  {
    [filledButtonConfiguration setMacIdiomStyle:1];
  }

  else
  {
    [filledButtonConfiguration setButtonSize:1];
    [v5 setCornerStyle:4];
  }

  _shouldUseStackedLayout = [objc_opt_class() _shouldUseStackedLayout];
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = v7;
  if (_shouldUseStackedLayout)
  {
    [v7 tuConversationBalloonContentStackedLayoutJoinButtonInsets];
  }

  else
  {
    [v7 tuConversationBalloonContentStandardLayoutJoinButtonInsets];
  }

  [v5 setContentInsets:?];

  _joinButtonText = [(CKTUConversationBalloonView *)self _joinButtonText];
  v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:_joinButtonText];
  v11 = *MEMORY[0x1E69DB648];
  v12 = +[CKUIBehavior sharedBehaviors];
  tuConversationBalloonActionButtonFont = [v12 tuConversationBalloonActionButtonFont];
  [v10 addAttribute:v11 value:tuConversationBalloonActionButtonFont range:{0, objc_msgSend(_joinButtonText, "length")}];

  [v5 setAttributedTitle:v10];
  v14 = +[CKUIBehavior sharedBehaviors];
  theme = [v14 theme];
  multiwayButtonColor = [theme multiwayButtonColor];
  [v5 setBaseBackgroundColor:multiwayButtonColor];

  return v5;
}

- (id)_iconJoinButtonConfiguration
{
  v3 = MEMORY[0x1E69A5B78];
  tuConversation = [(CKTUConversationBalloonView *)self tuConversation];
  v5 = [v3 conversationIsVideoCall:tuConversation];

  v6 = MEMORY[0x1E69A5B78];
  tuConversation2 = [(CKTUConversationBalloonView *)self tuConversation];
  v8 = [v6 conversationIsAVLessSharePlay:tuConversation2];

  v9 = *MEMORY[0x1E69DDD58];
  if (CKIsRunningInMacCatalyst())
  {
    filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [filledButtonConfiguration setMacIdiomStyle:1];
    v11 = +[CKUIBehavior sharedBehaviors];
    theme = [v11 theme];
    multiwayButtonColor = [theme multiwayButtonColor];
    [filledButtonConfiguration setBaseBackgroundColor:multiwayButtonColor];

    v14 = @"phone.fill";
    if (v5)
    {
      v14 = @"video.fill";
    }

    if (v8)
    {
      v14 = @"shareplay";
    }

    v15 = v14;
    v16 = MEMORY[0x1E69DCAB8];
    v17 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v9 scale:2];
    v18 = [v16 systemImageNamed:v15 withConfiguration:v17];

    v19 = [v18 imageWithRenderingMode:2];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v21 = [v19 imageWithTintColor:whiteColor];

    goto LABEL_11;
  }

  filledButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v22 = @"phone.circle.fill";
  if (v5)
  {
    v22 = @"video.circle.fill";
  }

  v23 = MEMORY[0x1E69DCAB8];
  v24 = MEMORY[0x1E69DCAD8];
  v25 = v22;
  v26 = [v24 configurationWithTextStyle:v9 scale:2];
  v27 = [v23 systemImageNamed:v25 withConfiguration:v26];

  whiteColor = [v27 imageWithRenderingMode:1];

  if (v8)
  {
    [whiteColor size];
    v21 = [(CKTUConversationBalloonView *)self _sharePlayImageWithDiameter:v28];
LABEL_11:

    whiteColor = v21;
  }

  [filledButtonConfiguration setImage:whiteColor];
  [filledButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];

  return filledButtonConfiguration;
}

- (id)_sharePlayImageWithDiameter:(double)diameter
{
  v4 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{diameter, diameter}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__CKTUConversationBalloonView__sharePlayImageWithDiameter___block_invoke;
  v7[3] = &__block_descriptor_40_e40_v16__0__UIGraphicsImageRendererContext_8l;
  *&v7[4] = diameter;
  v5 = [v4 imageWithActions:v7];

  return v5;
}

void __59__CKTUConversationBalloonView__sharePlayImageWithDiameter___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a2;
  v5 = [v3 systemGreenColor];
  [v5 setFill];

  v6 = [v4 CGContext];
  v14.size.width = *(a1 + 32);
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.height = v14.size.width;
  CGContextFillEllipseInRect(v6, v14);
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"shareplay"];
  v8 = [MEMORY[0x1E69DC888] whiteColor];
  v12 = [v7 imageWithTintColor:v8];

  [v12 size];
  v10 = v9;
  [v12 size];
  [v12 drawInRect:{(*(a1 + 32) - v10 / v11 * (*(a1 + 32) * 0.43)) * 0.5, (*(a1 + 32) - *(a1 + 32) * 0.43) * 0.5 + *(a1 + 32) * 0.43 * -0.16}];
}

- (void)formatImageViewForFaceTime
{
  if ([(CKTUConversationBalloonView *)self conversationAVMode])
  {
    tuConversation = [(CKTUConversationBalloonView *)self tuConversation];
    v15 = [CKTUConversationViewUtilities faceTimeIconForTUConversation:tuConversation];

    [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  else
  {
    v15 = +[CKTUConversationViewUtilities sharePlayIcon];
    [MEMORY[0x1E69DC888] labelColor];
  }
  v4 = ;
  sessionImageView = [(CKTUConversationBalloonView *)self sessionImageView];
  [sessionImageView setImage:v15];

  sessionImageView2 = [(CKTUConversationBalloonView *)self sessionImageView];
  [v15 size];
  v8 = v7;
  [v15 size];
  [sessionImageView2 setBounds:{0.0, 0.0, v8, v9}];

  sessionImageView3 = [(CKTUConversationBalloonView *)self sessionImageView];
  [sessionImageView3 setBackgroundColor:0];

  sessionImageView4 = [(CKTUConversationBalloonView *)self sessionImageView];
  [sessionImageView4 setTintColor:v4];

  sessionImageView5 = [(CKTUConversationBalloonView *)self sessionImageView];
  [sessionImageView5 _setCornerRadius:0.0];

  sessionImageView6 = [(CKTUConversationBalloonView *)self sessionImageView];
  [sessionImageView6 setClipsToBounds:1];

  sessionImageView7 = [(CKTUConversationBalloonView *)self sessionImageView];
  [sessionImageView7 setContentMode:4];
}

- (void)formatImageViewForActivity
{
  if ([(CKTUConversationBalloonView *)self isUnknownSender])
  {
    sessionImageView = [(CKTUConversationBalloonView *)self sessionImageView];
    [sessionImageView setHidden:1];
  }

  else
  {
    tuConversation = [(CKTUConversationBalloonView *)self tuConversation];
    sessionImageView = [CKTUConversationViewUtilities activityImageForTUConversation:tuConversation];

    if (!sessionImageView)
    {
      tuConversation2 = [(CKTUConversationBalloonView *)self tuConversation];
      v5 = +[CKUIBehavior sharedBehaviors];
      [v5 tuConversationBalloonImageDimensions];
      sessionImageView = [CKTUConversationViewUtilities activityIconForTUConversation:tuConversation2 iconSize:?];
    }

    sessionImageView2 = [(CKTUConversationBalloonView *)self sessionImageView];
    [sessionImageView2 setImage:sessionImageView];

    v7 = MEMORY[0x1E69A5B78];
    tuConversation3 = [(CKTUConversationBalloonView *)self tuConversation];
    v9 = [v7 isScreenShareActivityForTUConversation:tuConversation3];

    sessionImageView3 = [(CKTUConversationBalloonView *)self sessionImageView];
    v11 = sessionImageView3;
    if (v9)
    {
      systemDarkGrayColor = [MEMORY[0x1E69DC888] systemDarkGrayColor];
      [v11 setBackgroundColor:systemDarkGrayColor];

      sessionImageView3 = [(CKTUConversationBalloonView *)self sessionImageView];
      v11 = sessionImageView3;
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    [sessionImageView3 setContentMode:v13];

    [(CKTUConversationBalloonView *)self imageViewSize];
    v15 = v14;
    v17 = v16;
    sessionImageView4 = [(CKTUConversationBalloonView *)self sessionImageView];
    [sessionImageView4 setBounds:{0.0, 0.0, v15, v17}];

    sessionImageView5 = [(CKTUConversationBalloonView *)self sessionImageView];
    [sessionImageView5 _setCornerRadius:5.0];

    sessionImageView6 = [(CKTUConversationBalloonView *)self sessionImageView];
    [sessionImageView6 setClipsToBounds:1];

    sessionImageView7 = [(CKTUConversationBalloonView *)self sessionImageView];
    [sessionImageView7 setHidden:0];
  }
}

- (id)_currentCall
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  mEMORY[0x1E69D8A58] = [MEMORY[0x1E69D8A58] sharedInstance];
  currentAudioAndVideoCalls = [mEMORY[0x1E69D8A58] currentAudioAndVideoCalls];

  obj = currentAudioAndVideoCalls;
  v4 = [currentAudioAndVideoCalls countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        mEMORY[0x1E69D8A58]2 = [MEMORY[0x1E69D8A58] sharedInstance];
        v11 = [mEMORY[0x1E69D8A58]2 activeConversationForCall:v9];

        uUID = [v11 UUID];
        tuConversation = [(CKTUConversationBalloonView *)self tuConversation];
        uUID2 = [tuConversation UUID];
        v15 = [uUID isEqual:uUID2];

        if (v15)
        {
          v16 = v9;

          v6 = v16;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_joinButtonTapped:(id)tapped
{
  delegate = [(CKBalloonView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CKBalloonView *)self delegate];
    [delegate2 tuConversationBalloonJoinButtonTapped:self];
  }
}

- (id)_joinButtonText
{
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"JOIN" value:&stru_1F04268F8 table:@"ChatKit"];

  if (CKIsRunningUnitTests())
  {
    joinButtonText_TestingOverride = [(CKTUConversationBalloonView *)self joinButtonText_TestingOverride];

    if (joinButtonText_TestingOverride)
    {
      joinButtonText_TestingOverride2 = [(CKTUConversationBalloonView *)self joinButtonText_TestingOverride];

      v4 = joinButtonText_TestingOverride2;
    }
  }

  return v4;
}

- (BOOL)joinButtonIsShowingImageContent
{
  joinButton = [(CKTUConversationBalloonView *)self joinButton];
  v3 = [joinButton imageForState:0];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)joinButtonIsShowingTextContent
{
  joinButton = [(CKTUConversationBalloonView *)self joinButton];
  v3 = [joinButton titleForState:0];

  return v3 != 0;
}

- (CGSize)imageViewSize
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 tuConversationBalloonImageDimensions];
  v4 = v3;

  v5 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v5 isAccessibilityPreferredContentSizeCategory];

  if (isAccessibilityPreferredContentSizeCategory)
  {
    v7 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD28]];
    [v7 scaledValueForValue:v4];
    v4 = v8;
  }

  v9 = v4;
  v10 = v4;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)joinButtonRenderedAsIconSize
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 tuConversationBalloonButtonAsIconSize];
  v4 = v3;

  v5 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD58]];
  [v5 scaledValueForValue:v4];
  v7 = v6;

  v8 = v7;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (CGSize)appIconSize
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 tuConversationBalloonIconDimensions];
  v4 = v3;

  v5 = +[CKUIBehavior sharedBehaviors];
  isAccessibilityPreferredContentSizeCategory = [v5 isAccessibilityPreferredContentSizeCategory];

  if (isAccessibilityPreferredContentSizeCategory)
  {
    v7 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD28]];
    [v7 scaledValueForValue:v4];
    v4 = v8;
  }

  v9 = v4;
  v10 = v4;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)formatIconViewForFaceTime
{
  iconView = [(CKTUConversationBalloonView *)self iconView];
  [iconView setHidden:1];

  avatarView = [(CKTUConversationBalloonView *)self avatarView];
  [avatarView setHidden:1];
}

- (void)formatIconViewForActivity
{
  if (([objc_opt_class() _shouldUseStackedLayout] & 1) != 0 || (-[CKTUConversationBalloonView tuConversation](self, "tuConversation"), v3 = objc_claimAutoreleasedReturnValue(), v4 = +[CKTUConversationViewUtilities activityHasImageForTUConversation:](CKTUConversationViewUtilities, "activityHasImageForTUConversation:", v3), v3, !v4))
  {
    iconView = [(CKTUConversationBalloonView *)self iconView];
    [iconView setHidden:1];
    goto LABEL_13;
  }

  iconView = [(CKTUConversationBalloonView *)self tuConversation];
  if (![MEMORY[0x1E69A5B78] isScreenShareActivityForTUConversation:?])
  {
    if (![(CKTUConversationBalloonView *)self isUnknownSender])
    {
      v7 = +[CKUIBehavior sharedBehaviors];
      [v7 tuConversationBalloonIconDimensions];
      avatarView2 = [CKTUConversationViewUtilities activityIconForTUConversation:iconView iconSize:?];

      if (avatarView2)
      {
        v8 = +[CKUIBehavior sharedBehaviors];
        [v8 tuConversationBalloonIconDimensions];
        v10 = v9;

        iconView2 = [(CKTUConversationBalloonView *)self iconView];
        [iconView2 setHidden:{objc_msgSend(MEMORY[0x1E69A5B78], "isScreenShareActivityForTUConversation:", iconView)}];

        iconView3 = [(CKTUConversationBalloonView *)self iconView];
        [iconView3 setContentMode:1];

        iconView4 = [(CKTUConversationBalloonView *)self iconView];
        [iconView4 setImage:avatarView2];

        iconView5 = [(CKTUConversationBalloonView *)self iconView];
        [iconView5 setBounds:{0.0, 0.0, v10, v10}];

        iconView6 = [(CKTUConversationBalloonView *)self iconView];
        [iconView6 setBackgroundColor:0];
      }

      else
      {
        iconView6 = [(CKTUConversationBalloonView *)self iconView];
        [iconView6 setHidden:1];
      }

      avatarView = [(CKTUConversationBalloonView *)self avatarView];
      [avatarView setHidden:1];

      goto LABEL_12;
    }

    iconView7 = [(CKTUConversationBalloonView *)self iconView];
    [iconView7 setHidden:1];
  }

  avatarView2 = [(CKTUConversationBalloonView *)self avatarView];
  [avatarView2 setHidden:1];
LABEL_12:

LABEL_13:
}

- (void)_multiWayCallStateChanged:(id)changed
{
  userInfo = [changed userInfo];
  v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69A5838]];

  mEMORY[0x1E69A5AF8] = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v6 = [mEMORY[0x1E69A5AF8] existingConversationForTelephonyConversationUUID:v11];

  uUID = [v6 UUID];
  tuConversation = [(CKTUConversationBalloonView *)self tuConversation];
  uUID2 = [tuConversation UUID];
  v10 = [uUID isEqual:uUID2];

  if (v10)
  {
    [(CKTUConversationBalloonView *)self configureForCurrentState];
  }
}

- (void)contentSizeCategoryDidChange:(id)change
{
  [(CKTUConversationBalloonView *)self setNeedsLayout];

  [(CKTUConversationBalloonView *)self layoutIfNeeded];
}

- (void)configureForTUConversationChatItem:(id)item
{
  itemCopy = item;
  -[CKTUConversationBalloonView setOrientation:](self, "setOrientation:", [itemCopy balloonOrientation]);
  -[CKColoredBalloonView setHasTail:](self, "setHasTail:", [itemCopy hasTail]);
  [itemCopy textAlignmentInsets];
  [(CKBalloonView *)self setTextAlignmentInsets:?];
  -[CKBalloonView setBalloonCorners:](self, "setBalloonCorners:", [itemCopy balloonCorners]);
  [(CKBalloonView *)self setBalloonStyle:0];
  -[CKColoredBalloonView setColor:](self, "setColor:", [itemCopy color]);
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 balloonCornerRadius];
  [(CKBalloonView *)self setCornerRadius:?];

  tuConversationUUID = [itemCopy tuConversationUUID];
  [(CKTUConversationBalloonView *)self setTuConversationUUID:tuConversationUUID];

  -[CKTUConversationBalloonView setUnknownSender:](self, "setUnknownSender:", [itemCopy isSenderUnknown]);
  conversationAVMode = [itemCopy conversationAVMode];

  [(CKTUConversationBalloonView *)self setConversationAVMode:conversationAVMode];
}

@end