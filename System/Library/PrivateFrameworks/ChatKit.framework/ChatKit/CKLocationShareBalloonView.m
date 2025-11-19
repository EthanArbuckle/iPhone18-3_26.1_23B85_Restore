@interface CKLocationShareBalloonView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKLocationShareBalloonView)initWithFrame:(CGRect)a3;
- (void)_ignoreButtonHit:(id)a3;
- (void)addFilter:(id)a3;
- (void)clearFilters;
- (void)configureForLocationShareOfferChatItem:(id)a3;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)setDelegate:(id)a3;
- (void)setLocationString:(id)a3;
- (void)setOfferState:(int64_t)a3;
- (void)setTitleString:(id)a3;
@end

@implementation CKLocationShareBalloonView

- (CKLocationShareBalloonView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CKLocationShareBalloonView;
  v3 = [(CKImageBalloonView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v13 = [(CKLocationShareBalloonView *)self effectView];
  [v13 setFrame:{0.0, v6 - v12, v4, v12}];

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
      v26 = [(CKLocationShareBalloonView *)self titleLabel];
      [v26 sizeThatFits:{v24, v22}];
      v28 = v27;
      v30 = v29;

      [(CKLocationShareBalloonView *)self bounds];
      v32 = v22 - v30 + v31 - v19;
      v33 = [(CKLocationShareBalloonView *)self titleLabel];
      [v33 setFrame:{v25, v32, v28, v30}];

      v34 = [(CKLocationShareBalloonView *)self locationLabel];
      [v34 sizeThatFits:{v24, v22}];
      v36 = v35;
      v38 = v37;

      v90.origin.x = v25;
      v90.origin.y = v32;
      v90.size.width = v28;
      v90.size.height = v30;
      MaxY = CGRectGetMaxY(v90);
      v40 = [(CKLocationShareBalloonView *)self locationLabel];
      [v40 setFrame:{v25, MaxY, v36, v38}];

      v41 = [(CKLocationShareBalloonView *)self chevron];
      v42 = [v41 image];
      [v42 size];
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
      v53 = v41;
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

      v82 = [(CKLocationShareBalloonView *)self titleLabel];
      [v82 sizeThatFits:{v24, v22}];
      v84 = v83;
      v86 = v85;

      [(CKLocationShareBalloonView *)self bounds];
      v88 = v87 - v22;
      v53 = [(CKLocationShareBalloonView *)self titleLabel];
      v41 = v53;
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
    v60 = [(CKLocationShareBalloonView *)self titleLabel];
    [v60 setFrame:{v16 + 10.0, v59, v24, v57}];

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
    v70 = [(CKLocationShareBalloonView *)self ignoreButton];
    [v70 setFrame:{v16, v69, v64, v67}];

    v71 = v16 + v64;
    v72 = [(CKLocationShareBalloonView *)self startSharingButton];
    [v72 setFrame:{v16 + v64, v69, v64, v67}];

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
    v79 = [(CKLocationShareBalloonView *)self horizontalSeparator];
    [v79 setFrame:{v16, v74, v76, v78}];

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
    v53 = [(CKLocationShareBalloonView *)self verticalSeparator];
    v41 = v53;
    v54 = v71;
    v52 = v74;
    v55 = v81;
    v56 = v19;
  }

  [v53 setFrame:{v54, v52, v55, v56}];
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  width = a3.width;
  v7 = [CKUIBehavior sharedBehaviors:a4];
  v8 = [(CKImageBalloonView *)self image];
  [v8 size];
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

- (void)addFilter:(id)a3
{
  v5.receiver = self;
  v5.super_class = CKLocationShareBalloonView;
  [(CKImageBalloonView *)&v5 addFilter:a3];
  v4 = [(CKLocationShareBalloonView *)self effectView];
  [v4 setHidden:1];
}

- (void)clearFilters
{
  v4.receiver = self;
  v4.super_class = CKLocationShareBalloonView;
  [(CKImageBalloonView *)&v4 clearFilters];
  v3 = [(CKLocationShareBalloonView *)self effectView];
  [v3 setHidden:0];
}

- (void)prepareForDisplay
{
  v82.receiver = self;
  v82.super_class = CKLocationShareBalloonView;
  [(CKImageBalloonView *)&v82 prepareForDisplay];
  v3 = [(CKLocationShareBalloonView *)self effectView];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD298]);
    v5 = [MEMORY[0x1E69DC730] effectWithStyle:6];
    v6 = [v4 initWithEffect:v5];
    [(CKLocationShareBalloonView *)self setEffectView:v6];

    v7 = [(CKLocationShareBalloonView *)self effectView];
    [(CKLocationShareBalloonView *)self addSubview:v7];
  }

  v8 = [(CKLocationShareBalloonView *)self effectView];
  [(CKLocationShareBalloonView *)self sendSubviewToBack:v8];

  v9 = [(CKLocationShareBalloonView *)self titleLabel];

  if (!v9)
  {
    v10 = objc_alloc(MEMORY[0x1E69DCC10]);
    v11 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [v11 setOpaque:0];
    [v11 setBackgroundColor:0];
    v12 = +[CKUIBehavior sharedBehaviors];
    v13 = [v12 previewTitleFont];
    [v11 setFont:v13];

    [v11 setTextAlignment:4];
    v14 = [(CKLocationShareBalloonView *)self titleString];
    [v11 setText:v14];

    [(CKLocationShareBalloonView *)self setTitleLabel:v11];
  }

  v15 = [(CKLocationShareBalloonView *)self titleLabel];
  v16 = [(CKLocationShareBalloonView *)self titleString];
  [v15 setText:v16];

  v17 = [(CKLocationShareBalloonView *)self titleLabel];
  [(CKLocationShareBalloonView *)self addSubview:v17];

  if ([(CKLocationShareBalloonView *)self offerState])
  {
    if ([(CKLocationShareBalloonView *)self offerState]== 1)
    {
      v18 = [(CKLocationShareBalloonView *)self titleLabel];
      [v18 setLineBreakMode:4];

      v19 = [(CKLocationShareBalloonView *)self titleLabel];
      [v19 setNumberOfLines:1];

      v20 = [(CKLocationShareBalloonView *)self locationLabel];

      if (!v20)
      {
        v21 = objc_alloc(MEMORY[0x1E69DCC10]);
        v22 = [v21 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        [v22 setOpaque:0];
        [v22 setBackgroundColor:0];
        v23 = [(CKLocationShareBalloonView *)self locationString];
        [v22 setText:v23];

        [v22 setAlpha:0.400000006];
        v24 = +[CKUIBehavior sharedBehaviors];
        v25 = [v24 previewTitleFont];
        [v22 setFont:v25];

        [(CKLocationShareBalloonView *)self setLocationLabel:v22];
      }

      v26 = [(CKLocationShareBalloonView *)self chevron];

      if (!v26)
      {
        v27 = objc_alloc(MEMORY[0x1E69DCAE0]);
        v28 = +[CKUIBehavior sharedBehaviors];
        v29 = [v28 chevronImageForColorType:0xFFFFFFFFLL];
        v30 = [v27 initWithImage:v29];

        [v30 setContentMode:4];
        [(CKLocationShareBalloonView *)self setChevron:v30];
      }

      v31 = [(CKLocationShareBalloonView *)self locationLabel];
      v32 = [(CKLocationShareBalloonView *)self locationString];
      [v31 setText:v32];

      v33 = [(CKLocationShareBalloonView *)self locationLabel];
      [(CKLocationShareBalloonView *)self addSubview:v33];

      v34 = [(CKLocationShareBalloonView *)self chevron];
      [(CKLocationShareBalloonView *)self addSubview:v34];

      v35 = [(CKLocationShareBalloonView *)self startSharingButton];
      [v35 removeFromSuperview];

      v36 = [(CKLocationShareBalloonView *)self ignoreButton];
      [v36 removeFromSuperview];

      v37 = [(CKLocationShareBalloonView *)self horizontalSeparator];
      [v37 removeFromSuperview];

      v38 = [(CKLocationShareBalloonView *)self verticalSeparator];
      goto LABEL_24;
    }

    if ([(CKLocationShareBalloonView *)self offerState]!= 2)
    {
      return;
    }

    v75 = [(CKLocationShareBalloonView *)self titleLabel];
    [v75 setLineBreakMode:4];

    v76 = [(CKLocationShareBalloonView *)self titleLabel];
    [v76 setNumberOfLines:1];

    v77 = [(CKLocationShareBalloonView *)self startSharingButton];
    [v77 removeFromSuperview];

    v78 = [(CKLocationShareBalloonView *)self ignoreButton];
    [v78 removeFromSuperview];

    v79 = [(CKLocationShareBalloonView *)self horizontalSeparator];
    [v79 removeFromSuperview];

    v74 = [(CKLocationShareBalloonView *)self verticalSeparator];
    [v74 removeFromSuperview];
  }

  else
  {
    v39 = [(CKLocationShareBalloonView *)self titleLabel];
    [v39 setLineBreakMode:0];

    v40 = [(CKLocationShareBalloonView *)self titleLabel];
    [v40 setNumberOfLines:0];

    v41 = [(CKLocationShareBalloonView *)self startSharingButton];

    if (!v41)
    {
      v42 = [MEMORY[0x1E69DC738] buttonWithType:1];
      [v42 addTarget:self action:sel__shareButtonHit_ forControlEvents:64];
      v43 = CKFrameworkBundle();
      v44 = [v43 localizedStringForKey:@"SHARE_BUTTON_START" value:&stru_1F04268F8 table:@"ChatKit"];
      [v42 setTitle:v44 forState:0];

      v45 = [v42 titleLabel];
      [v45 setTextAlignment:1];

      v46 = [v42 titleLabel];
      v47 = +[CKUIBehavior sharedBehaviors];
      v48 = [v47 locationBoldButtonFont];
      [v46 setFont:v48];

      v49 = [v42 titleLabel];
      v50 = [MEMORY[0x1E69DC888] systemBlueColor];
      [v49 setTextColor:v50];

      v51 = [(CKBalloonView *)self delegate];
      v52 = [v51 sharingMenu];
      [v42 setMenu:v52];

      [v42 setContextMenuIsPrimary:1];
      [v42 setEnabled:1];
      [(CKLocationShareBalloonView *)self setStartSharingButton:v42];
    }

    v53 = [(CKLocationShareBalloonView *)self ignoreButton];

    if (!v53)
    {
      v54 = [MEMORY[0x1E69DC738] buttonWithType:1];
      [v54 addTarget:self action:sel__ignoreButtonHit_ forControlEvents:64];
      v55 = CKFrameworkBundle();
      v56 = [v55 localizedStringForKey:@"SHARE_BUTTON_IGNORE" value:&stru_1F04268F8 table:@"ChatKit"];
      [v54 setTitle:v56 forState:0];

      v57 = [v54 titleLabel];
      [v57 setTextAlignment:1];

      v58 = [v54 titleLabel];
      v59 = +[CKUIBehavior sharedBehaviors];
      v60 = [v59 locationButtonFont];
      [v58 setFont:v60];

      v61 = [v54 titleLabel];
      v62 = [MEMORY[0x1E69DC888] systemBlueColor];
      [v61 setTextColor:v62];

      [(CKLocationShareBalloonView *)self setIgnoreButton:v54];
    }

    v63 = [(CKLocationShareBalloonView *)self horizontalSeparator];

    if (!v63)
    {
      v64 = objc_alloc(MEMORY[0x1E69DD250]);
      v65 = [v64 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v66 = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
      [v65 setBackgroundColor:v66];

      [(CKLocationShareBalloonView *)self setHorizontalSeparator:v65];
    }

    v67 = [(CKLocationShareBalloonView *)self verticalSeparator];

    if (!v67)
    {
      v68 = objc_alloc(MEMORY[0x1E69DD250]);
      v69 = [v68 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v70 = [MEMORY[0x1E69DC888] opaqueSeparatorColor];
      [v69 setBackgroundColor:v70];

      [(CKLocationShareBalloonView *)self setVerticalSeparator:v69];
    }

    v71 = [(CKLocationShareBalloonView *)self startSharingButton];
    [(CKLocationShareBalloonView *)self addSubview:v71];

    v72 = [(CKLocationShareBalloonView *)self ignoreButton];
    [(CKLocationShareBalloonView *)self addSubview:v72];

    v73 = [(CKLocationShareBalloonView *)self horizontalSeparator];
    [(CKLocationShareBalloonView *)self addSubview:v73];

    v74 = [(CKLocationShareBalloonView *)self verticalSeparator];
    [(CKLocationShareBalloonView *)self addSubview:v74];
  }

  v80 = [(CKLocationShareBalloonView *)self locationLabel];
  [v80 removeFromSuperview];

  v38 = [(CKLocationShareBalloonView *)self chevron];
LABEL_24:
  v81 = v38;
  [v38 removeFromSuperview];
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = [a4 view];
  if ([v5 isEqual:self->_startSharingButton])
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [v5 isEqual:self->_ignoreButton] ^ 1;
  }

  return v6;
}

- (void)setOfferState:(int64_t)a3
{
  if (self->_offerState != a3)
  {
    self->_offerState = a3;
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setTitleString:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_titleString isEqualToString:?])
  {
    v4 = [v6 copy];
    titleString = self->_titleString;
    self->_titleString = v4;

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setLocationString:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_locationString isEqualToString:?])
  {
    v4 = [v6 copy];
    locationString = self->_locationString;
    self->_locationString = v4;

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setDelegate:(id)a3
{
  v7.receiver = self;
  v7.super_class = CKLocationShareBalloonView;
  v4 = a3;
  [(CKBalloonView *)&v7 setDelegate:v4];
  v5 = [(CKLocationShareBalloonView *)self startSharingButton:v7.receiver];
  v6 = [v4 sharingMenu];

  [v5 setMenu:v6];
}

- (void)_ignoreButtonHit:(id)a3
{
  v4 = [(CKBalloonView *)self delegate];
  [v4 locationShareBalloonViewIgnoreButtonTapped:self];
}

- (void)configureForLocationShareOfferChatItem:(id)a3
{
  v4 = a3;
  -[CKBalloonView setOrientation:](self, "setOrientation:", [v4 balloonOrientation]);
  -[CKImageBalloonView setHasTail:](self, "setHasTail:", [v4 hasTail]);
  -[CKBalloonView setBalloonCorners:](self, "setBalloonCorners:", [v4 balloonCorners]);
  [v4 textAlignmentInsets];
  [(CKBalloonView *)self setTextAlignmentInsets:?];
  -[CKLocationShareBalloonView setOfferState:](self, "setOfferState:", [v4 offerState]);
  v5 = [v4 titleText];
  [(CKLocationShareBalloonView *)self setTitleString:v5];

  v6 = [v4 locationText];
  [(CKLocationShareBalloonView *)self setLocationString:v6];

  v9 = +[CKUIBehavior sharedBehaviors];
  [v9 mapPreviewMaxWidth];
  v8 = [v4 previewForWidth:-[CKBalloonView orientation](self orientation:{"orientation"), v7}];

  [(CKImageBalloonView *)self setImage:v8];
}

@end