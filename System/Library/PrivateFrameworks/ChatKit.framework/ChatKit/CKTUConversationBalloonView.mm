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
- (CGSize)layoutSizeForSize:(CGSize)a3 applyLayout:(BOOL)a4;
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CGSize)stackedLayoutSizeForSize:(CGSize)a3 applyLayout:(BOOL)a4;
- (CGSize)standardLayoutSizeForSize:(CGSize)a3 applyLayout:(BOOL)a4;
- (CKTUConversationBalloonView)initWithFrame:(CGRect)a3;
- (char)color;
- (id)_currentCall;
- (id)_iconJoinButtonConfiguration;
- (id)_joinButtonText;
- (id)_sharePlayImageWithDiameter:(double)a3;
- (id)_textJoinButtonConfiguration;
- (id)subtitleColor;
- (id)tuConversation;
- (unint64_t)conversationAVMode;
- (void)_joinButtonTapped:(id)a3;
- (void)_multiWayCallStateChanged:(id)a3;
- (void)configureForCurrentStateWithLayoutPass:(BOOL)a3;
- (void)configureForTUConversationChatItem:(id)a3;
- (void)configureIconView;
- (void)configureImageView;
- (void)configureJoinButton;
- (void)configureSessionAccessoryView;
- (void)configureSubtitle1;
- (void)configureSubtitle2;
- (void)configureTitle;
- (void)contentSizeCategoryDidChange:(id)a3;
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
  v3 = [v2 isAccessibilityPreferredContentSizeCategory];

  return v3;
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

- (CKTUConversationBalloonView)initWithFrame:(CGRect)a3
{
  v33.receiver = self;
  v33.super_class = CKTUConversationBalloonView;
  v3 = [(CKColoredBalloonView *)&v33 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v16 = [v15 tuConversationBalloonTitleFont];
    v17 = [v14 __ck_emphasizedFontFromFont:v16];
    [v13 setFont:v17];

    [v13 setLineBreakMode:4];
    [v13 setNumberOfLines:2];
    [(CKTUConversationBalloonView *)v4 addSubview:v13];
    [(CKTUConversationBalloonView *)v4 setTitleLabel:v13];
    v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    v19 = +[CKUIBehavior sharedBehaviors];
    v20 = [v19 tuConversationBalloonSubtitleFont];
    [v18 setFont:v20];

    [v18 setLineBreakMode:4];
    [v18 setNumberOfLines:2];
    [(CKTUConversationBalloonView *)v4 addSubview:v18];
    [(CKTUConversationBalloonView *)v4 setSubtitleLabel1:v18];
    v21 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
    v22 = +[CKUIBehavior sharedBehaviors];
    v23 = [v22 tuConversationBalloonSubtitleFont];
    [v21 setFont:v23];

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
    v26 = [(CKBalloonView *)v4 tapGestureRecognizer];
    [(CKTUConversationBalloonView *)v4 removeGestureRecognizer:v26];

    v27 = [(CKBalloonView *)v4 doubleTapGestureRecognizer];
    [(CKTUConversationBalloonView *)v4 removeGestureRecognizer:v27];

    v28 = [(CKBalloonView *)v4 longPressGestureRecognizer];
    [(CKTUConversationBalloonView *)v4 removeGestureRecognizer:v28];

    [(CKTUConversationBalloonView *)v4 setState:1];
    [(CKTUConversationBalloonView *)v4 configureForCurrentStateWithLayoutPass:0];
    v29 = [MEMORY[0x1E696AD88] defaultCenter];
    [v29 addObserver:v4 selector:sel__multiWayCallStateChanged_ name:*MEMORY[0x1E69A5840] object:0];

    v30 = [MEMORY[0x1E696AD88] defaultCenter];
    [v30 addObserver:v4 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

    v31 = [MEMORY[0x1E696AD88] defaultCenter];
    [v31 addObserver:v4 selector:sel_chatParticipantsChanged_ name:*MEMORY[0x1E69A5848] object:0];
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

- (CGSize)layoutSizeForSize:(CGSize)a3 applyLayout:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  if ([objc_opt_class() _shouldUseStackedLayout])
  {

    [(CKTUConversationBalloonView *)self stackedLayoutSizeForSize:v4 applyLayout:width, height];
  }

  else
  {

    [(CKTUConversationBalloonView *)self standardLayoutSizeForSize:v4 applyLayout:width, height];
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)_preferredSessionImageViewSize
{
  v3 = [(CKTUConversationBalloonView *)self sessionImageView];
  v4 = [v3 isHidden];

  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  if ((v4 & 1) == 0 && ([objc_opt_class() _shouldAlwaysHideSessionImageView] & 1) == 0)
  {
    v7 = MEMORY[0x1E69A5B78];
    v8 = [(CKTUConversationBalloonView *)self tuConversation];
    LODWORD(v7) = [v7 activeTUConversationHasActivitySession:v8];

    if (v7)
    {
      v9 = +[CKUIBehavior sharedBehaviors];
      [v9 tuConversationBalloonImageDimensions];
      v5 = v10;
      v11 = +[CKUIBehavior sharedBehaviors];
      [v11 tuConversationBalloonImageDimensions];
      v6 = v12;
    }

    else
    {
      v9 = [(CKTUConversationBalloonView *)self sessionImageView];
      [v9 sizeThatFits:{*(MEMORY[0x1E695F040] + 16), *(MEMORY[0x1E695F040] + 24)}];
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
  v3 = [(CKTUConversationBalloonView *)self joinButton];
  v4 = [v3 isHidden];

  if (v4)
  {
    v5 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v7 = [(CKTUConversationBalloonView *)self joinButton];
    [v7 sizeThatFits:{*(MEMORY[0x1E695F040] + 16), *(MEMORY[0x1E695F040] + 24)}];
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

- (CGSize)stackedLayoutSizeForSize:(CGSize)a3 applyLayout:(BOOL)a4
{
  v4 = a4;
  v6 = [(CKTUConversationBalloonView *)self _shouldReverseLayoutDirection:a3.width];
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
  v15 = [(CKTUConversationBalloonView *)self _textJoinButtonConfiguration];
  v16 = [v14 buttonWithConfiguration:v15 primaryAction:0];

  v17 = *(MEMORY[0x1E695F040] + 24);
  [v16 sizeThatFits:{*(MEMORY[0x1E695F040] + 16), v17}];
  [(CKTUConversationBalloonView *)self setShouldRenderJoinButtonAsIcon:v18 > v11];
  [(CKTUConversationBalloonView *)self configureJoinButton];
  [(CKTUConversationBalloonView *)self configureImageView];
  [(CKTUConversationBalloonView *)self _preferredJoinButtonSize];
  v20 = v19;
  v105 = v21;
  v22 = [(CKTUConversationBalloonView *)self titleLabel];
  [v22 sizeThatFits:{v11, v17}];
  v24 = v23;
  v26 = v25;

  v27 = [(CKTUConversationBalloonView *)self subtitleLabel1];
  [v27 sizeThatFits:{v11, v17}];
  v29 = v28;
  v31 = v30;

  v32 = [(CKTUConversationBalloonView *)self subtitleLabel2];
  [v32 sizeThatFits:{v11, v17}];
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
  v41 = [(CKTUConversationBalloonView *)self sessionImageView];
  v42 = [v41 isHidden];

  if ((v42 & 1) == 0)
  {
    [v7 tuConversationBalloonContentBottomPadding];
    v40 = v109 + v40 + v43;
  }

  [v7 tuConversationBalloonContentBottomPadding];
  v45 = v26 + v31 + v36 + v40 + v44;
  v46 = [(CKTUConversationBalloonView *)self joinButton];
  v47 = [v46 isHidden];

  if ((v47 & 1) == 0)
  {
    [v7 tuConversationBalloonContentBottomPadding];
    v45 = v105 + v45 + v48;
  }

  if ([objc_opt_class() _shouldAlwaysHideSessionImageView])
  {
    [v7 tuConversationBalloonContentBottomPadding];
    v45 = v45 + v49;
  }

  if (v4)
  {
    v50 = [(CKTUConversationBalloonView *)self sessionImageView];
    if ([v50 isHidden])
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

    v59 = [(CKTUConversationBalloonView *)self sessionAccessoryView];
    [v59 frame];
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

    v74 = [(CKTUConversationBalloonView *)self sessionImageView];
    [v74 setFrame:{MinX, MinY, v72, v73}];

    v75 = [(CKTUConversationBalloonView *)self sessionAccessoryView];
    [v75 setFrame:{v92, v91, v97, v96}];

    v76 = [(CKTUConversationBalloonView *)self titleLabel];
    [v76 setFrame:{v67, v98, v99, rect}];

    v77 = [(CKTUConversationBalloonView *)self subtitleLabel1];
    [v77 setFrame:{v67, v68, v99, v102}];

    v78 = [(CKTUConversationBalloonView *)self subtitleLabel2];
    v79 = v67;
    v38 = v99;
    [v78 setFrame:{v79, y, v99, v101}];

    v80 = [(CKTUConversationBalloonView *)self joinButton];
    [v80 setFrame:{v108, v95, v71, v105}];
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

- (CGSize)standardLayoutSizeForSize:(CGSize)a3 applyLayout:(BOOL)a4
{
  v4 = a4;
  [(CKTUConversationBalloonView *)self configureJoinButton:a3.width];
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 tuConversationBalloonContentMinHeight];
  v8 = v7;
  [(CKTUConversationBalloonView *)self bounds];
  [(CKTUConversationBalloonView *)self alignmentRectForFrame:?];
  rect = v9;
  rect_16 = v10;
  v12 = v11;
  v13 = [(CKTUConversationBalloonView *)self _shouldReverseLayoutDirection];
  v14 = *(MEMORY[0x1E695F040] + 16);
  v15 = *(MEMORY[0x1E695F040] + 24);
  v16 = [(CKTUConversationBalloonView *)self titleLabel];
  [v16 sizeThatFits:{v14, v15}];
  v18 = v17;

  v19 = [(CKTUConversationBalloonView *)self subtitleLabel1];
  [v19 sizeThatFits:{v14, v15}];
  v21 = v20;

  v22 = [(CKTUConversationBalloonView *)self subtitleLabel2];
  [v22 sizeThatFits:{v14, v15}];
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
  v28 = [(CKTUConversationBalloonView *)self _textJoinButtonConfiguration];
  v29 = [v27 buttonWithConfiguration:v28 primaryAction:0];

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
  v41 = [(CKTUConversationBalloonView *)self sessionImageView];
  v42 = [v41 isHidden];

  if (v42)
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
  v47 = [(CKTUConversationBalloonView *)self joinButton];
  v48 = [v47 isHidden];

  if ((v48 & 1) == 0)
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

  v51 = [(CKTUConversationBalloonView *)self joinButton];
  v52 = [v51 isHidden];

  if ((v52 & 1) == 0)
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

  v54 = [(CKTUConversationBalloonView *)self sessionImageView];
  v55 = [v54 isHidden];

  v142 = v40;
  if (v55)
  {
    v56 = v50;
  }

  else
  {
    v56 = v50 - v34 - v40;
  }

  [v6 tuConversationBalloonLabelTrailingPadding];
  v58 = v56 - v57;
  v59 = [(CKTUConversationBalloonView *)self joinButton];
  v60 = [v59 isHidden];

  rect_8 = v34;
  if ((v60 & 1) == 0)
  {
    [v6 tuConversationBalloonJoinButtonLeadingPadding];
    v58 = v58 - v61 - v37;
  }

  v62 = [(CKTUConversationBalloonView *)self titleLabel];
  [v62 sizeThatFits:{v58, 1.79769313e308}];
  v64 = v63;

  v65 = [(CKTUConversationBalloonView *)self subtitleLabel1];
  [v65 sizeThatFits:{v58, 1.79769313e308}];
  v67 = v66;

  v68 = [(CKTUConversationBalloonView *)self subtitleLabel2];
  [v68 sizeThatFits:{v58, 1.79769313e308}];
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

  if (v4)
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
    if (v13)
    {
      v82 = rect_8;
      MinX = CGRectGetMaxX(*&v79) - rect_8;
    }

    else
    {
      MinX = CGRectGetMinX(*&v79);
      v82 = rect_8;
    }

    v84 = [(CKTUConversationBalloonView *)self sessionAccessoryView];
    [v84 frame];
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
    if (v13)
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
    if (v13)
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

    v116 = [(CKTUConversationBalloonView *)self sessionAccessoryView];
    [v116 setFrame:{v134, v132, v140, v135}];

    v117 = [(CKTUConversationBalloonView *)self titleLabel];
    [v117 setFrame:{v94, v139, v58, v146}];

    v118 = [(CKTUConversationBalloonView *)self subtitleLabel1];
    [v118 setFrame:{v94, y, v58, v147}];

    v119 = [(CKTUConversationBalloonView *)self subtitleLabel2];
    [v119 setFrame:{v94, v102, v58, v141}];

    v120 = [(CKTUConversationBalloonView *)self joinButton];
    [v120 setFrame:{rect_16a, v106, v110, v104}];

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

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  height = a3.height;
  width = a3.width;
  [(CKTUConversationBalloonView *)self configureForCurrentStateWithLayoutPass:0, a5];

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
  v3 = [(CKTUConversationBalloonView *)self tuConversation];
  v4 = v3;
  if (v3)
  {
    conversationAVMode = [v3 avMode];
  }

  else
  {
    conversationAVMode = self->_conversationAVMode;
  }

  return conversationAVMode;
}

- (id)tuConversation
{
  v3 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v4 = [(CKTUConversationBalloonView *)self tuConversationUUID];
  v5 = [v3 existingConversationForTelephonyConversationUUID:v4];

  return v5;
}

- (void)configureForCurrentStateWithLayoutPass:(BOOL)a3
{
  v3 = a3;
  v5 = [(CKTUConversationBalloonView *)self tuConversation];
  [(CKTUConversationBalloonView *)self setState:[CKTUConversationViewUtilities ckTUConversationStateForTUConversation:v5]];

  [(CKTUConversationBalloonView *)self configureImageView];
  [(CKTUConversationBalloonView *)self configureSessionAccessoryView];
  [(CKTUConversationBalloonView *)self configureTitle];
  [(CKTUConversationBalloonView *)self configureSubtitle1];
  [(CKTUConversationBalloonView *)self configureSubtitle2];
  [(CKTUConversationBalloonView *)self configureJoinButton];
  if (v3)
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
  v5 = [(CKTUConversationBalloonView *)self tuConversation];
  LOBYTE(v4) = [v4 activeTUConversationHasActivitySession:v5];

  return v4;
}

- (void)configureImageView
{
  v3 = [(CKTUConversationBalloonView *)self _shouldShowSessionView];
  v4 = [(CKTUConversationBalloonView *)self sessionImageView];
  v7 = v4;
  if (v3)
  {
    [v4 setHidden:0];

    v5 = MEMORY[0x1E69A5B78];
    v6 = [(CKTUConversationBalloonView *)self tuConversation];
    LODWORD(v5) = [v5 activeTUConversationHasActivitySession:v6];

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
    [v4 setHidden:1];
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
  v3 = [(CKTUConversationBalloonView *)self sessionAccessoryView];
  [v3 removeFromSuperview];

  v4 = MEMORY[0x1E69A5B78];
  v5 = [(CKTUConversationBalloonView *)self tuConversation];
  LODWORD(v4) = [v4 isScreenShareActivityForTUConversation:v5];

  if (v4)
  {
    v6 = [(CKTUConversationBalloonView *)self avatarView];
  }

  else
  {
    v7 = MEMORY[0x1E69A5B78];
    v8 = [(CKTUConversationBalloonView *)self tuConversation];
    LODWORD(v7) = [v7 activeTUConversationHasActivitySession:v8];

    if (!v7)
    {
      return;
    }

    [(CKTUConversationBalloonView *)self configureIconView];
    v6 = [(CKTUConversationBalloonView *)self iconView];
  }

  v9 = v6;
  [(CKTUConversationBalloonView *)self setSessionAccessoryView:v6];

  v10 = [(CKTUConversationBalloonView *)self sessionAccessoryView];
  [(CKTUConversationBalloonView *)self addSubview:v10];
}

- (void)configureTitle
{
  v3 = [(CKTUConversationBalloonView *)self conversationAVMode];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 theme];
  v6 = v5;
  if (v3)
  {
    [v5 multiwayTitleTextColor];
  }

  else
  {
    [v5 sharePlayTitleTextColor];
  }
  v18 = ;

  v7 = [(CKTUConversationBalloonView *)self titleLabel];
  [v7 setTextColor:v18];

  state = self->_state;
  if (state - 1 < 2)
  {
    v12 = [(CKTUConversationBalloonView *)self titleLabel];
    v14 = [(CKTUConversationBalloonView *)self tuConversation];
    v16 = [CKTUConversationViewUtilities activityTitleForTUConversation:v14];
LABEL_11:
    v17 = v16;
    [v12 setText:v16];

LABEL_12:
    goto LABEL_13;
  }

  if (state - 3 < 2)
  {
    v9 = MEMORY[0x1E69A5B78];
    v10 = [(CKTUConversationBalloonView *)self tuConversation];
    v11 = [v9 isScreenShareActivityForTUConversation:v10];

    v12 = [(CKTUConversationBalloonView *)self titleLabel];
    v13 = CKFrameworkBundle();
    v14 = v13;
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
    v12 = [(CKTUConversationBalloonView *)self titleLabel];
    v14 = [CKTUConversationViewUtilities titleForAVMode:[(CKTUConversationBalloonView *)self conversationAVMode]];
    [v12 setText:v14];
    goto LABEL_12;
  }

LABEL_13:
}

- (id)subtitleColor
{
  v2 = [(CKTUConversationBalloonView *)self conversationAVMode];
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 theme];
  v5 = v4;
  if (v2)
  {
    [v4 multiwayCaptionTextColor];
  }

  else
  {
    [v4 sharePlayCaptionTextColor];
  }
  v6 = ;

  return v6;
}

- (void)configureSubtitle1
{
  v3 = [(CKTUConversationBalloonView *)self subtitleColor];
  v4 = [(CKTUConversationBalloonView *)self subtitleLabel1];
  [v4 setTextColor:v3];

  state = self->_state;
  if (state - 1 < 2)
  {
    v16 = [(CKTUConversationBalloonView *)self subtitleLabel1];
    v8 = [(CKTUConversationBalloonView *)self tuConversation];
    v10 = [CKTUConversationViewUtilities joinStateStatusStringForTUConversation:v8];
  }

  else
  {
    if (state - 3 < 2)
    {
      v6 = [(CKTUConversationBalloonView *)self tuConversation];
      v16 = [CKTUConversationViewUtilities activityTitleForTUConversation:v6];

      v7 = [(CKTUConversationBalloonView *)self tuConversation];
      v8 = [CKTUConversationViewUtilities activityTextForTUConversation:v7];

      v9 = [(CKTUConversationBalloonView *)self subtitleLabel1];
      if (v8)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ ⋅ %@", v16, v8];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v16, v15];
      }
      v14 = ;
      [v9 setText:v14];

      goto LABEL_15;
    }

    if (state)
    {
      return;
    }

    v11 = [(CKTUConversationBalloonView *)self conversationAVMode];
    v16 = [(CKTUConversationBalloonView *)self subtitleLabel1];
    v12 = CKFrameworkBundle();
    v8 = v12;
    if (v11)
    {
      v13 = @"CALL_ENDED";
    }

    else
    {
      v13 = @"ENDED";
    }

    v10 = [v12 localizedStringForKey:v13 value:&stru_1F04268F8 table:@"ChatKit"];
  }

  v9 = v10;
  [v16 setText:v10];
LABEL_15:
}

- (void)configureSubtitle2
{
  v3 = [(CKTUConversationBalloonView *)self subtitleColor];
  v4 = [(CKTUConversationBalloonView *)self subtitleLabel2];
  [v4 setTextColor:v3];

  state = self->_state;
  v6 = state >= 3;
  v7 = state - 3;
  if (v6)
  {
    if (v7 >= 2)
    {
      return;
    }

    v9 = [(CKTUConversationBalloonView *)self subtitleLabel2];
    [v9 setHidden:0];

    v12 = [(CKTUConversationBalloonView *)self subtitleLabel2];
    v10 = [(CKTUConversationBalloonView *)self tuConversation];
    v11 = [CKTUConversationViewUtilities joinStateStatusStringForTUConversation:v10];
    [v12 setText:v11];
  }

  else
  {
    v8 = [(CKTUConversationBalloonView *)self subtitleLabel2];
    [v8 setHidden:1];

    v12 = [(CKTUConversationBalloonView *)self subtitleLabel2];
    [v12 setText:0];
  }
}

- (void)configureJoinButton
{
  state = self->_state;
  if (state <= 4)
  {
    if (((1 << state) & 0x15) != 0)
    {
      v10 = [(CKTUConversationBalloonView *)self joinButton];
      [v10 setHidden:1];
    }

    else
    {
      v5 = [(CKTUConversationBalloonView *)self joinButton];
      [v5 setHidden:0];

      v6 = [(CKTUConversationBalloonView *)self joinButton];
      v7 = CKFrameworkBundle();
      v8 = [v7 localizedStringForKey:@"JOIN" value:&stru_1F04268F8 table:@"ChatKit"];
      [v6 setAccessibilityLabel:v8];

      if ([(CKTUConversationBalloonView *)self shouldRenderJoinButtonAsIcon])
      {
        [(CKTUConversationBalloonView *)self _iconJoinButtonConfiguration];
      }

      else
      {
        [(CKTUConversationBalloonView *)self _textJoinButtonConfiguration];
      }
      v10 = ;
      v9 = [(CKTUConversationBalloonView *)self joinButton];
      [v9 setConfiguration:v10];
    }
  }
}

- (id)_textJoinButtonConfiguration
{
  v3 = CKIsRunningInMacCatalyst();
  v4 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  v5 = v4;
  if (v3)
  {
    [v4 setMacIdiomStyle:1];
  }

  else
  {
    [v4 setButtonSize:1];
    [v5 setCornerStyle:4];
  }

  v6 = [objc_opt_class() _shouldUseStackedLayout];
  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = v7;
  if (v6)
  {
    [v7 tuConversationBalloonContentStackedLayoutJoinButtonInsets];
  }

  else
  {
    [v7 tuConversationBalloonContentStandardLayoutJoinButtonInsets];
  }

  [v5 setContentInsets:?];

  v9 = [(CKTUConversationBalloonView *)self _joinButtonText];
  v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v9];
  v11 = *MEMORY[0x1E69DB648];
  v12 = +[CKUIBehavior sharedBehaviors];
  v13 = [v12 tuConversationBalloonActionButtonFont];
  [v10 addAttribute:v11 value:v13 range:{0, objc_msgSend(v9, "length")}];

  [v5 setAttributedTitle:v10];
  v14 = +[CKUIBehavior sharedBehaviors];
  v15 = [v14 theme];
  v16 = [v15 multiwayButtonColor];
  [v5 setBaseBackgroundColor:v16];

  return v5;
}

- (id)_iconJoinButtonConfiguration
{
  v3 = MEMORY[0x1E69A5B78];
  v4 = [(CKTUConversationBalloonView *)self tuConversation];
  v5 = [v3 conversationIsVideoCall:v4];

  v6 = MEMORY[0x1E69A5B78];
  v7 = [(CKTUConversationBalloonView *)self tuConversation];
  v8 = [v6 conversationIsAVLessSharePlay:v7];

  v9 = *MEMORY[0x1E69DDD58];
  if (CKIsRunningInMacCatalyst())
  {
    v10 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [v10 setMacIdiomStyle:1];
    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [v11 theme];
    v13 = [v12 multiwayButtonColor];
    [v10 setBaseBackgroundColor:v13];

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

    v20 = [MEMORY[0x1E69DC888] whiteColor];
    v21 = [v19 imageWithTintColor:v20];

    goto LABEL_11;
  }

  v10 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
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

  v20 = [v27 imageWithRenderingMode:1];

  if (v8)
  {
    [v20 size];
    v21 = [(CKTUConversationBalloonView *)self _sharePlayImageWithDiameter:v28];
LABEL_11:

    v20 = v21;
  }

  [v10 setImage:v20];
  [v10 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];

  return v10;
}

- (id)_sharePlayImageWithDiameter:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{a3, a3}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__CKTUConversationBalloonView__sharePlayImageWithDiameter___block_invoke;
  v7[3] = &__block_descriptor_40_e40_v16__0__UIGraphicsImageRendererContext_8l;
  *&v7[4] = a3;
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
    v3 = [(CKTUConversationBalloonView *)self tuConversation];
    v15 = [CKTUConversationViewUtilities faceTimeIconForTUConversation:v3];

    [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  else
  {
    v15 = +[CKTUConversationViewUtilities sharePlayIcon];
    [MEMORY[0x1E69DC888] labelColor];
  }
  v4 = ;
  v5 = [(CKTUConversationBalloonView *)self sessionImageView];
  [v5 setImage:v15];

  v6 = [(CKTUConversationBalloonView *)self sessionImageView];
  [v15 size];
  v8 = v7;
  [v15 size];
  [v6 setBounds:{0.0, 0.0, v8, v9}];

  v10 = [(CKTUConversationBalloonView *)self sessionImageView];
  [v10 setBackgroundColor:0];

  v11 = [(CKTUConversationBalloonView *)self sessionImageView];
  [v11 setTintColor:v4];

  v12 = [(CKTUConversationBalloonView *)self sessionImageView];
  [v12 _setCornerRadius:0.0];

  v13 = [(CKTUConversationBalloonView *)self sessionImageView];
  [v13 setClipsToBounds:1];

  v14 = [(CKTUConversationBalloonView *)self sessionImageView];
  [v14 setContentMode:4];
}

- (void)formatImageViewForActivity
{
  if ([(CKTUConversationBalloonView *)self isUnknownSender])
  {
    v22 = [(CKTUConversationBalloonView *)self sessionImageView];
    [v22 setHidden:1];
  }

  else
  {
    v3 = [(CKTUConversationBalloonView *)self tuConversation];
    v22 = [CKTUConversationViewUtilities activityImageForTUConversation:v3];

    if (!v22)
    {
      v4 = [(CKTUConversationBalloonView *)self tuConversation];
      v5 = +[CKUIBehavior sharedBehaviors];
      [v5 tuConversationBalloonImageDimensions];
      v22 = [CKTUConversationViewUtilities activityIconForTUConversation:v4 iconSize:?];
    }

    v6 = [(CKTUConversationBalloonView *)self sessionImageView];
    [v6 setImage:v22];

    v7 = MEMORY[0x1E69A5B78];
    v8 = [(CKTUConversationBalloonView *)self tuConversation];
    v9 = [v7 isScreenShareActivityForTUConversation:v8];

    v10 = [(CKTUConversationBalloonView *)self sessionImageView];
    v11 = v10;
    if (v9)
    {
      v12 = [MEMORY[0x1E69DC888] systemDarkGrayColor];
      [v11 setBackgroundColor:v12];

      v10 = [(CKTUConversationBalloonView *)self sessionImageView];
      v11 = v10;
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    [v10 setContentMode:v13];

    [(CKTUConversationBalloonView *)self imageViewSize];
    v15 = v14;
    v17 = v16;
    v18 = [(CKTUConversationBalloonView *)self sessionImageView];
    [v18 setBounds:{0.0, 0.0, v15, v17}];

    v19 = [(CKTUConversationBalloonView *)self sessionImageView];
    [v19 _setCornerRadius:5.0];

    v20 = [(CKTUConversationBalloonView *)self sessionImageView];
    [v20 setClipsToBounds:1];

    v21 = [(CKTUConversationBalloonView *)self sessionImageView];
    [v21 setHidden:0];
  }
}

- (id)_currentCall
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [MEMORY[0x1E69D8A58] sharedInstance];
  v3 = [v2 currentAudioAndVideoCalls];

  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
        v10 = [MEMORY[0x1E69D8A58] sharedInstance];
        v11 = [v10 activeConversationForCall:v9];

        v12 = [v11 UUID];
        v13 = [(CKTUConversationBalloonView *)self tuConversation];
        v14 = [v13 UUID];
        v15 = [v12 isEqual:v14];

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

- (void)_joinButtonTapped:(id)a3
{
  v4 = [(CKBalloonView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKBalloonView *)self delegate];
    [v6 tuConversationBalloonJoinButtonTapped:self];
  }
}

- (id)_joinButtonText
{
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"JOIN" value:&stru_1F04268F8 table:@"ChatKit"];

  if (CKIsRunningUnitTests())
  {
    v5 = [(CKTUConversationBalloonView *)self joinButtonText_TestingOverride];

    if (v5)
    {
      v6 = [(CKTUConversationBalloonView *)self joinButtonText_TestingOverride];

      v4 = v6;
    }
  }

  return v4;
}

- (BOOL)joinButtonIsShowingImageContent
{
  v2 = [(CKTUConversationBalloonView *)self joinButton];
  v3 = [v2 imageForState:0];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)joinButtonIsShowingTextContent
{
  v2 = [(CKTUConversationBalloonView *)self joinButton];
  v3 = [v2 titleForState:0];

  return v3 != 0;
}

- (CGSize)imageViewSize
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 tuConversationBalloonImageDimensions];
  v4 = v3;

  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 isAccessibilityPreferredContentSizeCategory];

  if (v6)
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
  v6 = [v5 isAccessibilityPreferredContentSizeCategory];

  if (v6)
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
  v3 = [(CKTUConversationBalloonView *)self iconView];
  [v3 setHidden:1];

  v4 = [(CKTUConversationBalloonView *)self avatarView];
  [v4 setHidden:1];
}

- (void)formatIconViewForActivity
{
  if (([objc_opt_class() _shouldUseStackedLayout] & 1) != 0 || (-[CKTUConversationBalloonView tuConversation](self, "tuConversation"), v3 = objc_claimAutoreleasedReturnValue(), v4 = +[CKTUConversationViewUtilities activityHasImageForTUConversation:](CKTUConversationViewUtilities, "activityHasImageForTUConversation:", v3), v3, !v4))
  {
    v17 = [(CKTUConversationBalloonView *)self iconView];
    [v17 setHidden:1];
    goto LABEL_13;
  }

  v17 = [(CKTUConversationBalloonView *)self tuConversation];
  if (![MEMORY[0x1E69A5B78] isScreenShareActivityForTUConversation:?])
  {
    if (![(CKTUConversationBalloonView *)self isUnknownSender])
    {
      v7 = +[CKUIBehavior sharedBehaviors];
      [v7 tuConversationBalloonIconDimensions];
      v6 = [CKTUConversationViewUtilities activityIconForTUConversation:v17 iconSize:?];

      if (v6)
      {
        v8 = +[CKUIBehavior sharedBehaviors];
        [v8 tuConversationBalloonIconDimensions];
        v10 = v9;

        v11 = [(CKTUConversationBalloonView *)self iconView];
        [v11 setHidden:{objc_msgSend(MEMORY[0x1E69A5B78], "isScreenShareActivityForTUConversation:", v17)}];

        v12 = [(CKTUConversationBalloonView *)self iconView];
        [v12 setContentMode:1];

        v13 = [(CKTUConversationBalloonView *)self iconView];
        [v13 setImage:v6];

        v14 = [(CKTUConversationBalloonView *)self iconView];
        [v14 setBounds:{0.0, 0.0, v10, v10}];

        v15 = [(CKTUConversationBalloonView *)self iconView];
        [v15 setBackgroundColor:0];
      }

      else
      {
        v15 = [(CKTUConversationBalloonView *)self iconView];
        [v15 setHidden:1];
      }

      v16 = [(CKTUConversationBalloonView *)self avatarView];
      [v16 setHidden:1];

      goto LABEL_12;
    }

    v5 = [(CKTUConversationBalloonView *)self iconView];
    [v5 setHidden:1];
  }

  v6 = [(CKTUConversationBalloonView *)self avatarView];
  [v6 setHidden:1];
LABEL_12:

LABEL_13:
}

- (void)_multiWayCallStateChanged:(id)a3
{
  v4 = [a3 userInfo];
  v11 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69A5838]];

  v5 = [MEMORY[0x1E69A5AF8] sharedRegistry];
  v6 = [v5 existingConversationForTelephonyConversationUUID:v11];

  v7 = [v6 UUID];
  v8 = [(CKTUConversationBalloonView *)self tuConversation];
  v9 = [v8 UUID];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    [(CKTUConversationBalloonView *)self configureForCurrentState];
  }
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  [(CKTUConversationBalloonView *)self setNeedsLayout];

  [(CKTUConversationBalloonView *)self layoutIfNeeded];
}

- (void)configureForTUConversationChatItem:(id)a3
{
  v4 = a3;
  -[CKTUConversationBalloonView setOrientation:](self, "setOrientation:", [v4 balloonOrientation]);
  -[CKColoredBalloonView setHasTail:](self, "setHasTail:", [v4 hasTail]);
  [v4 textAlignmentInsets];
  [(CKBalloonView *)self setTextAlignmentInsets:?];
  -[CKBalloonView setBalloonCorners:](self, "setBalloonCorners:", [v4 balloonCorners]);
  [(CKBalloonView *)self setBalloonStyle:0];
  -[CKColoredBalloonView setColor:](self, "setColor:", [v4 color]);
  v5 = +[CKUIBehavior sharedBehaviors];
  [v5 balloonCornerRadius];
  [(CKBalloonView *)self setCornerRadius:?];

  v6 = [v4 tuConversationUUID];
  [(CKTUConversationBalloonView *)self setTuConversationUUID:v6];

  -[CKTUConversationBalloonView setUnknownSender:](self, "setUnknownSender:", [v4 isSenderUnknown]);
  v7 = [v4 conversationAVMode];

  [(CKTUConversationBalloonView *)self setConversationAVMode:v7];
}

@end