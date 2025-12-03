@interface CKBrowserCell
+ (Class)classForItemType:(int64_t)type;
+ (id)reuseIdentifier;
- (CGRect)browserCellIconFrame;
- (CGRect)selectionFrame;
- (CKBrowserCell)initWithFrame:(CGRect)frame;
- (CKBrowserCellDelegate)delegate;
- (double)browserCellSelectionBorderOutset;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBorderStyle:(int64_t)style;
@end

@implementation CKBrowserCell

+ (id)reuseIdentifier
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CKBrowserCell.m" lineNumber:50 description:@"Please override +reuseIdentifier in your subclass"];

  return NSStringFromClass(self);
}

+ (Class)classForItemType:(int64_t)type
{
  if (type >= 3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CKBrowserCell *)type classForItemType:v4];
    }
  }

  v5 = objc_opt_class();

  return v5;
}

- (CKBrowserCell)initWithFrame:(CGRect)frame
{
  v32.receiver = self;
  v32.super_class = CKBrowserCell;
  v3 = [(CKBrowserCell *)&v32 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(CKBrowserCell *)v3 setBackgroundColor:clearColor];

    contentView = [(CKBrowserCell *)v3 contentView];
    iconView = [(CKBrowserCell *)v3 iconView];
    [contentView addSubview:iconView];

    v7 = objc_alloc(MEMORY[0x1E69DCC10]);
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    v12 = [v7 initWithFrame:{*MEMORY[0x1E695F058], v9, v10, v11}];
    [(CKBrowserCell *)v3 setBrowserLabel:v12];

    browserLabel = [(CKBrowserCell *)v3 browserLabel];
    [browserLabel setTextAlignment:1];

    browserLabel2 = [(CKBrowserCell *)v3 browserLabel];
    [browserLabel2 setLineBreakMode:4];

    browserLabel3 = [(CKBrowserCell *)v3 browserLabel];
    [browserLabel3 setNumberOfLines:1];

    browserLabel4 = [(CKBrowserCell *)v3 browserLabel];
    [browserLabel4 setAllowsDefaultTighteningForTruncation:1];

    browserLabel5 = [(CKBrowserCell *)v3 browserLabel];
    v18 = +[CKUIBehavior sharedBehaviors];
    browserCellFont = [v18 browserCellFont];
    [browserLabel5 setFont:browserCellFont];

    contentView2 = [(CKBrowserCell *)v3 contentView];
    browserLabel6 = [(CKBrowserCell *)v3 browserLabel];
    [contentView2 addSubview:browserLabel6];

    v22 = [[CKBadgeView alloc] initWithFrame:v8, v9, v10, v11];
    [(CKBrowserCell *)v3 setBadgeView:v22];

    contentView3 = [(CKBrowserCell *)v3 contentView];
    badgeView = [(CKBrowserCell *)v3 badgeView];
    [contentView3 addSubview:badgeView];

    v25 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    [(CKBrowserCell *)v3 setBorderView:v25];

    borderView = [(CKBrowserCell *)v3 borderView];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v28 = [whiteColor colorWithAlphaComponent:0.25];
    [borderView setTintColor:v28];

    contentView4 = [(CKBrowserCell *)v3 contentView];
    borderView2 = [(CKBrowserCell *)v3 borderView];
    [contentView4 addSubview:borderView2];

    v3->_shouldShowLabel = 1;
  }

  return v3;
}

- (void)layoutSubviews
{
  v110.receiver = self;
  v110.super_class = CKBrowserCell;
  [(CKBrowserCell *)&v110 layoutSubviews];
  contentView = [(CKBrowserCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v102.origin.x = v5;
  v102.origin.y = v7;
  v111.origin.x = v5;
  v111.origin.y = v7;
  v102.size.width = v9;
  v102.size.height = v11;
  v111.size.width = v9;
  v111.size.height = v11;
  Width = CGRectGetWidth(v111);
  [(CKBrowserCell *)self browserCellIconFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v17 + v13 * 2.0;
  browserLabel = [(CKBrowserCell *)self browserLabel];
  v23 = browserLabel;
  v24 = Width;
  if (Width <= v21)
  {
    [browserLabel setAlpha:0.0];

    shinyStatusView = [(CKBrowserCell *)self shinyStatusView];
    [shinyStatusView setAlpha:0.0];

    badgeView = [(CKBrowserCell *)self badgeView];
    [badgeView setAlpha:0.0];
  }

  else
  {
    [browserLabel setAlpha:1.0];

    shinyStatusView2 = [(CKBrowserCell *)self shinyStatusView];
    [shinyStatusView2 setAlpha:1.0];

    badgeView2 = [(CKBrowserCell *)self badgeView];
    [badgeView2 setAlpha:1.0];

    v14 = 12.0;
    v16 = 5.0;
    v18 = 60.0;
    v20 = 45.0;
  }

  iconView = [(CKBrowserCell *)self iconView];
  [iconView setFrame:{v14, v16, v18, v20}];

  [(CKBrowserCell *)self browserCellSelectionBorderOutset];
  v31 = -v30;
  v108 = v16;
  v109 = v14;
  v112.origin.x = v14;
  v112.origin.y = v16;
  v106 = v20;
  v107 = v18;
  v112.size.width = v18;
  v112.size.height = v20;
  v113 = CGRectInset(v112, v31, v31);
  [(CKBrowserCell *)self setSelectionFrame:v113.origin.x, v113.origin.y, v113.size.width, v113.size.height];
  shinyStatusView3 = [(CKBrowserCell *)self shinyStatusView];
  [shinyStatusView3 sizeToFit];
  [shinyStatusView3 frame];
  v33 = CGRectGetWidth(v114);
  contentView2 = [(CKBrowserCell *)self contentView];
  [contentView2 bounds];
  v35 = CGRectGetWidth(v115) + -3.0;

  v103 = v33;
  v36 = v33 + 2.0;
  if (shinyStatusView3)
  {
    v37 = v35 - (v33 + 2.0);
  }

  else
  {
    v37 = v35;
  }

  browserLabel2 = [(CKBrowserCell *)self browserLabel];
  [browserLabel2 sizeToFit];

  browserLabel3 = [(CKBrowserCell *)self browserLabel];
  iconView2 = [(CKBrowserCell *)self iconView];
  [iconView2 frame];
  [browserLabel3 _setFirstLineBaselineFrameOriginY:CGRectGetMaxY(v116) + 13.0];

  browserLabel4 = [(CKBrowserCell *)self browserLabel];
  [browserLabel4 frame];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v117.origin.x = v43;
  v117.origin.y = v45;
  v117.size.width = v47;
  v117.size.height = v49;
  v50 = CGRectGetWidth(v117);
  if (v37 >= v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = v37;
  }

  v118.origin.x = v43;
  v118.origin.y = v45;
  v118.size.width = v51;
  v118.size.height = v49;
  v52 = CGRectGetWidth(v118);
  if (shinyStatusView3)
  {
    v99 = v36;
    [shinyStatusView3 frame];
    v54 = v53;
    v101 = v55;
    if (CKMainScreenScale_once_42 != -1)
    {
      [CKBrowserCell layoutSubviews];
    }

    v56 = 1.0;
    if (*&CKMainScreenScale_sMainScreenScale_42 == 0.0)
    {
      v57 = 1.0;
    }

    else
    {
      v57 = *&CKMainScreenScale_sMainScreenScale_42;
    }

    v58 = floor((v45 + (v49 - v54) * 0.5) * v57) / v57;
    v100 = v58;
    if (v24 * 0.5 - (v103 + v52 * 0.5 + 2.0) >= 2.0)
    {
      MidX = CGRectGetMidX(v102);
      CGRectGetMidY(v102);
      if (CKMainScreenScale_once_42 != -1)
      {
        [CKBrowserCell layoutSubviews];
      }

      v70 = *&CKMainScreenScale_sMainScreenScale_42;
      if (*&CKMainScreenScale_sMainScreenScale_42 == 0.0)
      {
        v70 = 1.0;
      }

      v67 = MidX - round(v52 * 0.5 * v70) / v70;
      v119.origin.x = v67;
      v119.origin.y = v45;
      v119.size.width = v51;
      v119.size.height = v49;
      v60 = CGRectGetMinX(v119) + -2.0 - v103;
      v62 = v101;
    }

    else
    {
      v59 = fmax((v24 - (v99 + v52)) * 0.5, 2.0);
      if (*&CKMainScreenScale_sMainScreenScale_42 != 0.0)
      {
        v56 = *&CKMainScreenScale_sMainScreenScale_42;
      }

      v60 = round(v59 * v56) / v56;
      v61 = v60;
      v62 = v101;
      v63 = v101;
      v64 = v54;
      v65 = CGRectGetMaxX(*(&v58 - 1)) + 2.0;
      if (CKMainScreenScale_once_42 != -1)
      {
        [CKBrowserCell layoutSubviews];
      }

      v66 = *&CKMainScreenScale_sMainScreenScale_42;
      if (*&CKMainScreenScale_sMainScreenScale_42 == 0.0)
      {
        v66 = 1.0;
      }

      v67 = round(v65 * v66) / v66;
    }

    [shinyStatusView3 setFrame:{v60, v100, v62, v54}];
  }

  else
  {
    v104 = CGRectGetMidX(v102);
    CGRectGetMidY(v102);
    v68 = v52 * 0.5;
    if (CKMainScreenScale_once_42 != -1)
    {
      [CKBrowserCell layoutSubviews];
    }

    v69 = *&CKMainScreenScale_sMainScreenScale_42;
    if (*&CKMainScreenScale_sMainScreenScale_42 == 0.0)
    {
      v69 = 1.0;
    }

    v67 = v104 - round(v68 * v69) / v69;
  }

  browserLabel5 = [(CKBrowserCell *)self browserLabel];
  [browserLabel5 setFrame:{v67, v45, v51, v49}];

  badgeView3 = [(CKBrowserCell *)self badgeView];
  [badgeView3 sizeToFit];

  badgeView4 = [(CKBrowserCell *)self badgeView];
  [badgeView4 frame];
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;

  v120.origin.x = v109;
  v120.origin.y = v108;
  v120.size.width = v107;
  v120.size.height = v106;
  MaxX = CGRectGetMaxX(v120);
  v121.origin.x = v75;
  v121.origin.y = v77;
  v121.size.width = v79;
  v121.size.height = v81;
  v82 = CGRectGetWidth(v121);
  v122.origin.x = v109;
  v122.origin.y = v108;
  v122.size.width = v107;
  v122.size.height = v106;
  MinY = CGRectGetMinY(v122);
  if (CKMainScreenScale_once_42 != -1)
  {
    [CKBrowserCell layoutSubviews];
  }

  v84 = *&CKMainScreenScale_sMainScreenScale_42;
  if (*&CKMainScreenScale_sMainScreenScale_42 == 0.0)
  {
    v84 = 1.0;
  }

  v85 = round((MaxX + v82 * -0.5 + -5.0) * v84) / v84;
  v86 = round((MinY + -1.0) * v84) / v84;
  badgeView5 = [(CKBrowserCell *)self badgeView];
  [badgeView5 setFrame:{v85, v86, v79, v81}];

  iconView3 = [(CKBrowserCell *)self iconView];
  [iconView3 frame];
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  borderView = [(CKBrowserCell *)self borderView];
  [borderView setFrame:{v90, v92, v94, v96}];
}

- (CGRect)browserCellIconFrame
{
  if ([MEMORY[0x1E69DCBB8] __ck_isUsingCompactHeightPredictionBar] && (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isAppStripInKeyboard"), v2, (v3 & 1) != 0))
  {
    v4 = 4.5;
    v5 = 7.0;
    v6 = 28.5;
    v7 = 0x4043000000000000;
  }

  else
  {
    v6 = 30.0;
    v4 = 4.0;
    v5 = 6.0;
    v7 = 0x4044000000000000;
  }

  v8 = *&v7;
  result.size.height = v6;
  result.size.width = v8;
  result.origin.y = v4;
  result.origin.x = v5;
  return result;
}

- (double)browserCellSelectionBorderOutset
{
  __ck_isUsingCompactHeightPredictionBar = [MEMORY[0x1E69DCBB8] __ck_isUsingCompactHeightPredictionBar];
  result = 3.0;
  if (__ck_isUsingCompactHeightPredictionBar)
  {
    v4 = +[CKUIBehavior sharedBehaviors];
    isAppStripInKeyboard = [v4 isAppStripInKeyboard];

    result = 3.0;
    if (isAppStripInKeyboard)
    {
      return 2.0;
    }
  }

  return result;
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v7.receiver = self;
  v7.super_class = CKBrowserCell;
  [(CKBrowserCell *)&v7 applyLayoutAttributes:attributesCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = attributesCopy;
    if ([v5 showsBorder])
    {
      if ([v5 appStripSize])
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 0;
    }

    [(CKBrowserCell *)self setBorderStyle:v6];
  }
}

- (void)setBorderStyle:(int64_t)style
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__CKBrowserCell_setBorderStyle___block_invoke;
  block[3] = &unk_1E72EBA18;
  block[4] = self;
  if (setBorderStyle__onceToken != -1)
  {
    dispatch_once(&setBorderStyle__onceToken, block);
    if (style)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = 0.0;
    goto LABEL_10;
  }

  if (!style)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (style == 1)
  {
    v5 = &setBorderStyle__onePxBorderImage;
  }

  else
  {
    if (style != 2)
    {
      return;
    }

    v5 = &setBorderStyle__twoPxBorderImage;
  }

  borderView = [(CKBrowserCell *)self borderView];
  [borderView setImage:*v5];

  v7 = 1.0;
LABEL_10:
  borderView2 = [(CKBrowserCell *)self borderView];
  [borderView2 setAlpha:v7];
}

void __32__CKBrowserCell_setBorderStyle___block_invoke()
{
  v0 = MEMORY[0x1E69DCAB8];
  v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v2 = [v0 imageNamed:@"BorderPath-1px" inBundle:v1];
  v3 = [v2 imageWithRenderingMode:2];
  v4 = setBorderStyle__onePxBorderImage;
  setBorderStyle__onePxBorderImage = v3;

  v5 = MEMORY[0x1E69DCAB8];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 imageNamed:@"BorderPath" inBundle:v9];
  v7 = [v6 imageWithRenderingMode:2];
  v8 = setBorderStyle__twoPxBorderImage;
  setBorderStyle__twoPxBorderImage = v7;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKBrowserCell;
  [(CKBrowserCell *)&v4 prepareForReuse];
  badgeView = [(CKBrowserCell *)self badgeView];
  [badgeView setValue:0];
}

- (CKBrowserCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)selectionFrame
{
  x = self->_selectionFrame.origin.x;
  y = self->_selectionFrame.origin.y;
  width = self->_selectionFrame.size.width;
  height = self->_selectionFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (void)classForItemType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "classForItemType called with invalid type %lu", &v2, 0xCu);
}

@end