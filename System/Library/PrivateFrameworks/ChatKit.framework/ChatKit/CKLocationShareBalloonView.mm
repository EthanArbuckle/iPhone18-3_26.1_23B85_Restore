@interface CKLocationShareBalloonView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKLocationShareBalloonView)initWithFrame:(CGRect)frame;
- (void)_ignoreButtonHit:(id)hit;
- (void)addFilter:(id)filter;
- (void)clearFilters;
- (void)configureForLocationShareOfferChatItem:(id)item;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)setDelegate:(id)delegate;
- (void)setLocationString:(id)string;
- (void)setOfferState:(int64_t)state;
- (void)setTitleString:(id)string;
@end

@implementation CKLocationShareBalloonView

- (CKLocationShareBalloonView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CKLocationShareBalloonView;
  v3 = [(CKImageBalloonView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKLocationShareBalloonView *)v3 setClipsToBounds:1];
    [(CKLocationShareBalloonView *)v4 setContentMode:5];
  }

  return v4;
}

- (void)layoutSubviews
{
  v89.receiver = self;
  v89.super_class = CKLocationShareBalloonView;
  [(CKImageBalloonView *)&v89 layoutSubviews];
  [(CKLocationShareBalloonView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 locationShareBalloonButtonHeight];
  v9 = v8;
  v10 = +[CKUIBehavior sharedBehaviors];
  [v10 locationShareBalloonLabelMaxHeightForOfferState:{-[CKLocationShareBalloonView offerState](self, "offerState")}];
  v12 = v9 + v11;

  effectView = [(CKLocationShareBalloonView *)self effectView];
  [effectView setFrame:{0.0, v6 - v12, v4, v12}];

  v14 = +[CKUIBehavior sharedBehaviors];
  [v14 balloonMaskTailSizeForTailShape:1];
  v16 = v15;

  v17 = +[CKUIBehavior sharedBehaviors];
  [v17 locationShareBalloonButtonHeight];
  v19 = v18;

  v20 = +[CKUIBehavior sharedBehaviors];
  [v20 locationShareBalloonLabelMaxHeightForOfferState:{-[CKLocationShareBalloonView offerState](self, "offerState")}];
  v22 = v21;

  [(CKLocationShareBalloonView *)self bounds];
  v24 = v23 - v16 + -20.0;
  v25 = v16 + 10.0;
  if ([(CKLocationShareBalloonView *)self offerState])
  {
    if ([(CKLocationShareBalloonView *)self offerState]== 1)
    {
      titleLabel = [(CKLocationShareBalloonView *)self titleLabel];
      [titleLabel sizeThatFits:{v24, v22}];
      v28 = v27;
      v30 = v29;

      [(CKLocationShareBalloonView *)self bounds];
      v32 = v22 - v30 + v31 - v19;
      titleLabel2 = [(CKLocationShareBalloonView *)self titleLabel];
      [titleLabel2 setFrame:{v25, v32, v28, v30}];

      locationLabel = [(CKLocationShareBalloonView *)self locationLabel];
      [locationLabel sizeThatFits:{v24, v22}];
      v36 = v35;
      v38 = v37;

      v90.origin.x = v25;
      v90.origin.y = v32;
      v90.size.width = v28;
      v90.size.height = v30;
      MaxY = CGRectGetMaxY(v90);
      locationLabel2 = [(CKLocationShareBalloonView *)self locationLabel];
      [locationLabel2 setFrame:{v25, MaxY, v36, v38}];

      chevron = [(CKLocationShareBalloonView *)self chevron];
      image = [chevron image];
      [image size];
      v44 = v43;
      v46 = v45;

      [(CKLocationShareBalloonView *)self bounds];
      v47 = CGRectGetMaxX(v91) - v44 + -10.0;
      [(CKLocationShareBalloonView *)self bounds];
      v49 = v48 - v19;
      v50 = (v19 - v46) * 0.5;
      if (CKMainScreenScale_once_8 != -1)
      {
        [CKLocationShareBalloonView layoutSubviews];
      }

      v51 = *&CKMainScreenScale_sMainScreenScale_8;
      if (*&CKMainScreenScale_sMainScreenScale_8 == 0.0)
      {
        v51 = 1.0;
      }

      v52 = v49 + ceil(v50 * v51) / v51;
      titleLabel4 = chevron;
      v54 = v47;
      v55 = v44;
      v56 = v46;
    }

    else
    {
      if ([(CKLocationShareBalloonView *)self offerState]!= 2)
      {
        return;
      }

      titleLabel3 = [(CKLocationShareBalloonView *)self titleLabel];
      [titleLabel3 sizeThatFits:{v24, v22}];
      v84 = v83;
      v86 = v85;

      [(CKLocationShareBalloonView *)self bounds];
      v88 = v87 - v22;
      titleLabel4 = [(CKLocationShareBalloonView *)self titleLabel];
      chevron = titleLabel4;
      v54 = v25;
      v52 = v88;
      v55 = v84;
      v56 = v86;
    }
  }

  else
  {
    v57 = v22 + -6.0;
    [(CKLocationShareBalloonView *)self bounds];
    v59 = v58 - v19 - v22 + 3.0;
    titleLabel5 = [(CKLocationShareBalloonView *)self titleLabel];
    [titleLabel5 setFrame:{v16 + 10.0, v59, v24, v57}];

    [(CKLocationShareBalloonView *)self bounds];
    v62 = (v61 - v16) * 0.5;
    if (CKMainScreenScale_once_8 != -1)
    {
      [CKLocationShareBalloonView layoutSubviews];
    }

    v63 = *&CKMainScreenScale_sMainScreenScale_8;
    if (*&CKMainScreenScale_sMainScreenScale_8 == 0.0)
    {
      v63 = 1.0;
    }

    v64 = ceil(v62 * v63) / v63;
    v65 = +[CKUIBehavior sharedBehaviors];
    [v65 locationShareBalloonButtonHeight];
    v67 = v66;

    [(CKLocationShareBalloonView *)self bounds];
    v69 = v68 - v19;
    ignoreButton = [(CKLocationShareBalloonView *)self ignoreButton];
    [ignoreButton setFrame:{v16, v69, v64, v67}];

    v71 = v16 + v64;
    startSharingButton = [(CKLocationShareBalloonView *)self startSharingButton];
    [startSharingButton setFrame:{v16 + v64, v69, v64, v67}];

    [(CKLocationShareBalloonView *)self bounds];
    v74 = v73 - v19;
    [(CKLocationShareBalloonView *)self bounds];
    v76 = v75 - v16;
    if (CKMainScreenScale_once_8 != -1)
    {
      [CKLocationShareBalloonView layoutSubviews];
    }

    v77 = *&CKMainScreenScale_sMainScreenScale_8;
    if (*&CKMainScreenScale_sMainScreenScale_8 == 0.0)
    {
      v77 = 1.0;
    }

    v78 = ceil(v77 * 0.5) / v77;
    horizontalSeparator = [(CKLocationShareBalloonView *)self horizontalSeparator];
    [horizontalSeparator setFrame:{v16, v74, v76, v78}];

    if (CKMainScreenScale_once_8 != -1)
    {
      [CKLocationShareBalloonView layoutSubviews];
    }

    v80 = *&CKMainScreenScale_sMainScreenScale_8;
    if (*&CKMainScreenScale_sMainScreenScale_8 == 0.0)
    {
      v80 = 1.0;
    }

    v81 = ceil(v80 * 0.5) / v80;
    titleLabel4 = [(CKLocationShareBalloonView *)self verticalSeparator];
    chevron = titleLabel4;
    v54 = v71;
    v52 = v74;
    v55 = v81;
    v56 = v19;
  }

  [titleLabel4 setFrame:{v54, v52, v55, v56}];
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  width = fits.width;
  v7 = [CKUIBehavior sharedBehaviors:insets];
  image = [(CKImageBalloonView *)self image];
  [image size];
  v10 = v9;

  if (width >= v10)
  {
    width = v10;
  }

  [v7 locationShareBalloonSizeForWidth:-[CKLocationShareBalloonView offerState](self offerState:{"offerState"), width}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)addFilter:(id)filter
{
  v5.receiver = self;
  v5.super_class = CKLocationShareBalloonView;
  [(CKImageBalloonView *)&v5 addFilter:filter];
  effectView = [(CKLocationShareBalloonView *)self effectView];
  [effectView setHidden:1];
}

- (void)clearFilters
{
  v4.receiver = self;
  v4.super_class = CKLocationShareBalloonView;
  [(CKImageBalloonView *)&v4 clearFilters];
  effectView = [(CKLocationShareBalloonView *)self effectView];
  [effectView setHidden:0];
}

- (void)prepareForDisplay
{
  v82.receiver = self;
  v82.super_class = CKLocationShareBalloonView;
  [(CKImageBalloonView *)&v82 prepareForDisplay];
  effectView = [(CKLocationShareBalloonView *)self effectView];

  if (!effectView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD298]);
    v5 = [MEMORY[0x1E69DC730] effectWithStyle:6];
    v6 = [v4 initWithEffect:v5];
    [(CKLocationShareBalloonView *)self setEffectView:v6];

    effectView2 = [(CKLocationShareBalloonView *)self effectView];
    [(CKLocationShareBalloonView *)self addSubview:effectView2];
  }

  effectView3 = [(CKLocationShareBalloonView *)self effectView];
  [(CKLocationShareBalloonView *)self sendSubviewToBack:effectView3];

  titleLabel = [(CKLocationShareBalloonView *)self titleLabel];

  if (!titleLabel)
  {
    v10 = objc_alloc(MEMORY[0x1E69DCC10]);
    v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v11 setOpaque:0];
    [v11 setBackgroundColor:0];
    v12 = +[CKUIBehavior sharedBehaviors];
    previewTitleFont = [v12 previewTitleFont];
    [v11 setFont:previewTitleFont];

    [v11 setTextAlignment:4];
    titleString = [(CKLocationShareBalloonView *)self titleString];
    [v11 setText:titleString];

    [(CKLocationShareBalloonView *)self setTitleLabel:v11];
  }

  titleLabel2 = [(CKLocationShareBalloonView *)self titleLabel];
  titleString2 = [(CKLocationShareBalloonView *)self titleString];
  [titleLabel2 setText:titleString2];

  titleLabel3 = [(CKLocationShareBalloonView *)self titleLabel];
  [(CKLocationShareBalloonView *)self addSubview:titleLabel3];

  if ([(CKLocationShareBalloonView *)self offerState])
  {
    if ([(CKLocationShareBalloonView *)self offerState]== 1)
    {
      titleLabel4 = [(CKLocationShareBalloonView *)self titleLabel];
      [titleLabel4 setLineBreakMode:4];

      titleLabel5 = [(CKLocationShareBalloonView *)self titleLabel];
      [titleLabel5 setNumberOfLines:1];

      locationLabel = [(CKLocationShareBalloonView *)self locationLabel];

      if (!locationLabel)
      {
        v21 = objc_alloc(MEMORY[0x1E69DCC10]);
        v22 = [v21 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        [v22 setOpaque:0];
        [v22 setBackgroundColor:0];
        locationString = [(CKLocationShareBalloonView *)self locationString];
        [v22 setText:locationString];

        [v22 setAlpha:0.400000006];
        v24 = +[CKUIBehavior sharedBehaviors];
        previewTitleFont2 = [v24 previewTitleFont];
        [v22 setFont:previewTitleFont2];

        [(CKLocationShareBalloonView *)self setLocationLabel:v22];
      }

      chevron = [(CKLocationShareBalloonView *)self chevron];

      if (!chevron)
      {
        v27 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v28 = +[CKUIBehavior sharedBehaviors];
        v29 = [v28 chevronImageForColorType:0xFFFFFFFFLL];
        v30 = [v27 initWithImage:v29];

        [v30 setContentMode:4];
        [(CKLocationShareBalloonView *)self setChevron:v30];
      }

      locationLabel2 = [(CKLocationShareBalloonView *)self locationLabel];
      locationString2 = [(CKLocationShareBalloonView *)self locationString];
      [locationLabel2 setText:locationString2];

      locationLabel3 = [(CKLocationShareBalloonView *)self locationLabel];
      [(CKLocationShareBalloonView *)self addSubview:locationLabel3];

      chevron2 = [(CKLocationShareBalloonView *)self chevron];
      [(CKLocationShareBalloonView *)self addSubview:chevron2];

      startSharingButton = [(CKLocationShareBalloonView *)self startSharingButton];
      [startSharingButton removeFromSuperview];

      ignoreButton = [(CKLocationShareBalloonView *)self ignoreButton];
      [ignoreButton removeFromSuperview];

      horizontalSeparator = [(CKLocationShareBalloonView *)self horizontalSeparator];
      [horizontalSeparator removeFromSuperview];

      verticalSeparator = [(CKLocationShareBalloonView *)self verticalSeparator];
      goto LABEL_24;
    }

    if ([(CKLocationShareBalloonView *)self offerState]!= 2)
    {
      return;
    }

    titleLabel6 = [(CKLocationShareBalloonView *)self titleLabel];
    [titleLabel6 setLineBreakMode:4];

    titleLabel7 = [(CKLocationShareBalloonView *)self titleLabel];
    [titleLabel7 setNumberOfLines:1];

    startSharingButton2 = [(CKLocationShareBalloonView *)self startSharingButton];
    [startSharingButton2 removeFromSuperview];

    ignoreButton2 = [(CKLocationShareBalloonView *)self ignoreButton];
    [ignoreButton2 removeFromSuperview];

    horizontalSeparator2 = [(CKLocationShareBalloonView *)self horizontalSeparator];
    [horizontalSeparator2 removeFromSuperview];

    verticalSeparator2 = [(CKLocationShareBalloonView *)self verticalSeparator];
    [verticalSeparator2 removeFromSuperview];
  }

  else
  {
    titleLabel8 = [(CKLocationShareBalloonView *)self titleLabel];
    [titleLabel8 setLineBreakMode:0];

    titleLabel9 = [(CKLocationShareBalloonView *)self titleLabel];
    [titleLabel9 setNumberOfLines:0];

    startSharingButton3 = [(CKLocationShareBalloonView *)self startSharingButton];

    if (!startSharingButton3)
    {
      v42 = [MEMORY[0x1E69DC738] buttonWithType:1];
      [v42 addTarget:self action:sel__shareButtonHit_ forControlEvents:64];
      v43 = CKFrameworkBundle();
      v44 = [v43 localizedStringForKey:@"SHARE_BUTTON_START" value:&stru_1F04268F8 table:@"ChatKit"];
      [v42 setTitle:v44 forState:0];

      titleLabel10 = [v42 titleLabel];
      [titleLabel10 setTextAlignment:1];

      titleLabel11 = [v42 titleLabel];
      v47 = +[CKUIBehavior sharedBehaviors];
      locationBoldButtonFont = [v47 locationBoldButtonFont];
      [titleLabel11 setFont:locationBoldButtonFont];

      titleLabel12 = [v42 titleLabel];
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      [titleLabel12 setTextColor:systemBlueColor];

      delegate = [(CKBalloonView *)self delegate];
      sharingMenu = [delegate sharingMenu];
      [v42 setMenu:sharingMenu];

      [v42 setContextMenuIsPrimary:1];
      [v42 setEnabled:1];
      [(CKLocationShareBalloonView *)self setStartSharingButton:v42];
    }

    ignoreButton3 = [(CKLocationShareBalloonView *)self ignoreButton];

    if (!ignoreButton3)
    {
      v54 = [MEMORY[0x1E69DC738] buttonWithType:1];
      [v54 addTarget:self action:sel__ignoreButtonHit_ forControlEvents:64];
      v55 = CKFrameworkBundle();
      v56 = [v55 localizedStringForKey:@"SHARE_BUTTON_IGNORE" value:&stru_1F04268F8 table:@"ChatKit"];
      [v54 setTitle:v56 forState:0];

      titleLabel13 = [v54 titleLabel];
      [titleLabel13 setTextAlignment:1];

      titleLabel14 = [v54 titleLabel];
      v59 = +[CKUIBehavior sharedBehaviors];
      locationButtonFont = [v59 locationButtonFont];
      [titleLabel14 setFont:locationButtonFont];

      titleLabel15 = [v54 titleLabel];
      systemBlueColor2 = [MEMORY[0x1E69DC888] systemBlueColor];
      [titleLabel15 setTextColor:systemBlueColor2];

      [(CKLocationShareBalloonView *)self setIgnoreButton:v54];
    }

    horizontalSeparator3 = [(CKLocationShareBalloonView *)self horizontalSeparator];

    if (!horizontalSeparator3)
    {
      v64 = objc_alloc(MEMORY[0x1E69DD250]);
      v65 = [v64 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      opaqueSeparatorColor = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
      [v65 setBackgroundColor:opaqueSeparatorColor];

      [(CKLocationShareBalloonView *)self setHorizontalSeparator:v65];
    }

    verticalSeparator3 = [(CKLocationShareBalloonView *)self verticalSeparator];

    if (!verticalSeparator3)
    {
      v68 = objc_alloc(MEMORY[0x1E69DD250]);
      v69 = [v68 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      opaqueSeparatorColor2 = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
      [v69 setBackgroundColor:opaqueSeparatorColor2];

      [(CKLocationShareBalloonView *)self setVerticalSeparator:v69];
    }

    startSharingButton4 = [(CKLocationShareBalloonView *)self startSharingButton];
    [(CKLocationShareBalloonView *)self addSubview:startSharingButton4];

    ignoreButton4 = [(CKLocationShareBalloonView *)self ignoreButton];
    [(CKLocationShareBalloonView *)self addSubview:ignoreButton4];

    horizontalSeparator4 = [(CKLocationShareBalloonView *)self horizontalSeparator];
    [(CKLocationShareBalloonView *)self addSubview:horizontalSeparator4];

    verticalSeparator2 = [(CKLocationShareBalloonView *)self verticalSeparator];
    [(CKLocationShareBalloonView *)self addSubview:verticalSeparator2];
  }

  locationLabel4 = [(CKLocationShareBalloonView *)self locationLabel];
  [locationLabel4 removeFromSuperview];

  verticalSeparator = [(CKLocationShareBalloonView *)self chevron];
LABEL_24:
  v81 = verticalSeparator;
  [verticalSeparator removeFromSuperview];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  view = [touch view];
  if ([view isEqual:self->_startSharingButton])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [view isEqual:self->_ignoreButton] ^ 1;
  }

  return v6;
}

- (void)setOfferState:(int64_t)state
{
  if (self->_offerState != state)
  {
    self->_offerState = state;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setTitleString:(id)string
{
  stringCopy = string;
  if (![(NSString *)self->_titleString isEqualToString:?])
  {
    v4 = [stringCopy copy];
    titleString = self->_titleString;
    self->_titleString = v4;

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setLocationString:(id)string
{
  stringCopy = string;
  if (![(NSString *)self->_locationString isEqualToString:?])
  {
    v4 = [stringCopy copy];
    locationString = self->_locationString;
    self->_locationString = v4;

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setDelegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = CKLocationShareBalloonView;
  delegateCopy = delegate;
  [(CKBalloonView *)&v7 setDelegate:delegateCopy];
  v5 = [(CKLocationShareBalloonView *)self startSharingButton:v7.receiver];
  sharingMenu = [delegateCopy sharingMenu];

  [v5 setMenu:sharingMenu];
}

- (void)_ignoreButtonHit:(id)hit
{
  delegate = [(CKBalloonView *)self delegate];
  [delegate locationShareBalloonViewIgnoreButtonTapped:self];
}

- (void)configureForLocationShareOfferChatItem:(id)item
{
  itemCopy = item;
  -[CKBalloonView setOrientation:](self, "setOrientation:", [itemCopy balloonOrientation]);
  -[CKImageBalloonView setHasTail:](self, "setHasTail:", [itemCopy hasTail]);
  -[CKBalloonView setBalloonCorners:](self, "setBalloonCorners:", [itemCopy balloonCorners]);
  [itemCopy textAlignmentInsets];
  [(CKBalloonView *)self setTextAlignmentInsets:?];
  -[CKLocationShareBalloonView setOfferState:](self, "setOfferState:", [itemCopy offerState]);
  titleText = [itemCopy titleText];
  [(CKLocationShareBalloonView *)self setTitleString:titleText];

  locationText = [itemCopy locationText];
  [(CKLocationShareBalloonView *)self setLocationString:locationText];

  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 mapPreviewMaxWidth];
  v8 = [itemCopy previewForWidth:-[CKBalloonView orientation](self orientation:{"orientation"), v7}];

  [(CKImageBalloonView *)self setImage:v8];
}

@end