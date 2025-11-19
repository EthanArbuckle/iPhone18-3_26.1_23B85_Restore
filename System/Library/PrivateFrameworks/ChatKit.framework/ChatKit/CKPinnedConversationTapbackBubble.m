@interface CKPinnedConversationTapbackBubble
+ (CGRect)largeTailBalloonFrameForSize:(CGSize)a3 flipHorizontally:(BOOL)a4 flipVertically:(BOOL)a5;
+ (CGRect)smallTailBalloonFrameForSize:(CGSize)a3 flipHorizontally:(BOOL)a4 flipVertically:(BOOL)a5;
+ (CGRect)tapbackBalloonFrameForSize:(CGSize)a3 flipHorizontally:(BOOL)a4 flipVertically:(BOOL)a5;
+ (CGSize)largeTailBalloonSizeForSize:(CGSize)a3;
+ (CGSize)sizeThatFits:(CGSize)a3 flipHorizontally:(BOOL)a4 flipVertically:(BOOL)a5;
+ (CGSize)smallTailBalloonSizeForSize:(CGSize)a3;
+ (CGSize)tapbackBalloonSizeForSize:(CGSize)a3;
+ (char)colorTypeForTapBack:(int64_t)a3;
+ (id)tapBackBubblePathForSize:(CGSize)a3 tapbackBalloonFrame:(CGRect)a4 flipHorizontally:(BOOL)a5 flipVertically:(BOOL)a6;
- (CGPoint)originationPoint;
- (CGPoint)tailAttachmentPoint;
- (CGSize)parentAvatarViewSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKPinnedConversationActivityItemViewDelegate)activityItemViewDelegate;
- (CKPinnedConversationTapbackBubble)initWithActivityItem:(id)a3;
- (int64_t)acknowledgmentType;
- (void)_updateAcknowledgmentType;
- (void)_updateUserInterfaceStyles;
- (void)configureWithTapback:(id)a3;
- (void)layoutSubviews;
- (void)setAcknowledgmentType:(int64_t)a3;
- (void)setActivityItem:(id)a3;
- (void)setOriginationDirection:(int64_t)a3;
- (void)setPreferredTailAttachmentPointXCoordinate:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CKPinnedConversationTapbackBubble

- (CKPinnedConversationTapbackBubble)initWithActivityItem:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = CKPinnedConversationTapbackBubble;
  v6 = [(CKPinnedConversationTapbackBubble *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tapbackActivityItem, a3);
    v8 = [[CKPinnedConversationActivityItemViewShadowLayer alloc] initWithShadowType:0];
    broadShadowLayer = v7->_broadShadowLayer;
    v7->_broadShadowLayer = v8;

    v10 = [[CKPinnedConversationActivityItemViewShadowLayer alloc] initWithShadowType:1];
    tightShadowLayer = v7->_tightShadowLayer;
    v7->_tightShadowLayer = v10;

    v12 = objc_alloc_init(CKPinnedConversationActivityItemViewBackdropLayer);
    backdropLayer = v7->_backdropLayer;
    v7->_backdropLayer = v12;

    v14 = objc_alloc_init(MEMORY[0x1E69794A0]);
    backdropMaskShapeLayer = v7->_backdropMaskShapeLayer;
    v7->_backdropMaskShapeLayer = v14;

    [(CKPinnedConversationActivityItemViewBackdropLayer *)v7->_backdropLayer setMask:v7->_backdropMaskShapeLayer];
    [(CKPinnedConversationTapbackBubble *)v7 _updateUserInterfaceStyles];
    v16 = [(CKPinnedConversationTapbackBubble *)v7 layer];
    [v16 addSublayer:v7->_broadShadowLayer];

    v17 = [(CKPinnedConversationTapbackBubble *)v7 layer];
    [v17 addSublayer:v7->_tightShadowLayer];

    v18 = [(CKPinnedConversationTapbackBubble *)v7 layer];
    [v18 addSublayer:v7->_backdropLayer];

    v19 = objc_alloc(MEMORY[0x1E69DD250]);
    v20 = [v19 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CKPinnedConversationTapbackBubble *)v7 setTapbackContainerView:v20];

    v21 = [(CKPinnedConversationTapbackBubble *)v7 tapbackContainerView];
    [(CKPinnedConversationTapbackBubble *)v7 addSubview:v21];

    [(CKPinnedConversationTapbackBubble *)v7 _updateAcknowledgmentType];
  }

  return v7;
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = CKPinnedConversationTapbackBubble;
  [(CKPinnedConversationTapbackBubble *)&v26 layoutSubviews];
  [(CKPinnedConversationTapbackBubble *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CKPinnedConversationActivityItemViewBackdropLayer *)self->_backdropLayer setFrame:?];
  [(CAShapeLayer *)self->_backdropMaskShapeLayer setFrame:v4, v6, v8, v10];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self->_broadShadowLayer setFrame:v4, v6, v8, v10];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self->_tightShadowLayer setFrame:v4, v6, v8, v10];
  [(CKPinnedConversationTapbackBubble *)self bounds];
  v12 = v11;
  v14 = v13;
  [objc_opt_class() tapbackBalloonFrameForSize:-[CKPinnedConversationTapbackBubble flipHorizontally](self flipHorizontally:"flipHorizontally") flipVertically:{-[CKPinnedConversationTapbackBubble flipVertically](self, "flipVertically"), v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [objc_opt_class() tapBackBubblePathForSize:-[CKPinnedConversationTapbackBubble flipHorizontally](self tapbackBalloonFrame:"flipHorizontally") flipHorizontally:-[CKPinnedConversationTapbackBubble flipVertically](self flipVertically:{"flipVertically"), v12, v14, v15, v17, v19, v21}];
  v24 = [v23 CGPath];
  [(CAShapeLayer *)self->_backdropMaskShapeLayer setPath:v24];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self->_broadShadowLayer setShadowPath:v24];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self->_tightShadowLayer setShadowPath:v24];
  v25 = [(CKPinnedConversationTapbackBubble *)self tapbackContainerView];
  [v25 setFrame:{v16, v18, v20, v22}];
}

+ (id)tapBackBubblePathForSize:(CGSize)a3 tapbackBalloonFrame:(CGRect)a4 flipHorizontally:(BOOL)a5 flipVertically:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3.height;
  v13 = a3.width;
  v14 = [MEMORY[0x1E69DC728] bezierPath];
  v15 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{x, y, width, height}];
  [v14 appendPath:v15];
  [objc_opt_class() largeTailBalloonFrameForSize:v7 flipHorizontally:v6 flipVertically:{v13, v12}];
  v16 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:?];
  [v14 appendPath:v16];
  [objc_opt_class() smallTailBalloonFrameForSize:v7 flipHorizontally:v6 flipVertically:{v13, v12}];
  v17 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:?];
  [v14 appendPath:v17];

  return v14;
}

- (void)setAcknowledgmentType:(int64_t)a3
{
  v5 = [(CKPinnedConversationTapbackBubble *)self tapbackGlyph];
  if (!v5 || (v6 = v5, -[CKPinnedConversationTapbackBubble tapbackGlyph](self, "tapbackGlyph"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 acknowledgmentType], v7, v6, v8 != a3))
  {
    v9 = [(CKPinnedConversationTapbackBubble *)self tapbackGlyph];
    [v9 removeFromSuperview];

    v10 = +[CKAcknowledgmentGlyphView glyphViewForAcknowledgmentType:glyphColor:](CKAcknowledgmentGlyphView, "glyphViewForAcknowledgmentType:glyphColor:", a3, [objc_opt_class() colorTypeForTapBack:a3]);
    [(CKPinnedConversationTapbackBubble *)self setTapbackGlyph:v10];

    v11 = [(CKPinnedConversationTapbackBubble *)self tapbackGlyph];
    [(CKPinnedConversationTapbackBubble *)self addSubview:v11];

    [(CKPinnedConversationTapbackBubble *)self setNeedsLayout];
  }
}

- (int64_t)acknowledgmentType
{
  v2 = [(CKPinnedConversationTapbackBubble *)self tapbackGlyph];
  v3 = [v2 acknowledgmentType];

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = objc_opt_class();
  v7 = [(CKPinnedConversationTapbackBubble *)self flipHorizontally];
  v8 = [(CKPinnedConversationTapbackBubble *)self flipVertically];

  [v6 sizeThatFits:v7 flipHorizontally:v8 flipVertically:{width, height}];
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)sizeThatFits:(CGSize)a3 flipHorizontally:(BOOL)a4 flipVertically:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  height = a3.height;
  width = a3.width;
  v9 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28] addingSymbolicTraits:0 options:1];
  v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v9 size:0.0];
  [v10 lineHeight];
  v12 = v11 * 2.5;
  if (v12 < height)
  {
    height = v12;
  }

  [objc_opt_class() tapbackBalloonFrameForSize:v6 flipHorizontally:v5 flipVertically:{width, height}];
  v51 = v14;
  v52 = v13;
  v54 = v15;
  v42 = v16;
  [objc_opt_class() largeTailBalloonFrameForSize:v6 flipHorizontally:v5 flipVertically:{width, height}];
  v18 = v17;
  v47 = v19;
  v48 = v17;
  v20 = v19;
  v22 = v21;
  v46 = v21;
  v53 = v23;
  [objc_opt_class() smallTailBalloonFrameForSize:v6 flipHorizontally:v5 flipVertically:{width, height}];
  y = v56.origin.y;
  rect = v56.size.width;
  v50 = v56.size.height;
  x = v56.origin.x;
  v41 = v56.origin.x;
  v25 = v56.size.height;
  MaxY = CGRectGetMaxY(v56);
  v57.origin.x = v18;
  v57.origin.y = v20;
  v57.size.width = v22;
  v57.size.height = v53;
  v27 = CGRectGetMaxY(v57);
  if (MaxY < v27)
  {
    MaxY = v27;
  }

  v58.origin.x = v52;
  v58.origin.y = v51;
  v58.size.width = v54;
  v58.size.height = v42;
  v28 = CGRectGetMaxY(v58);
  if (MaxY >= v28)
  {
    v28 = MaxY;
  }

  v43 = v28;
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = rect;
  v59.size.height = v25;
  MinY = CGRectGetMinY(v59);
  v60.origin.y = v47;
  v60.origin.x = v48;
  v60.size.width = v46;
  v60.size.height = v53;
  v30 = CGRectGetMinY(v60);
  if (MinY >= v30)
  {
    MinY = v30;
  }

  v61.origin.x = v52;
  v61.origin.y = v51;
  v61.size.width = v54;
  v61.size.height = v42;
  v31 = CGRectGetMinY(v61);
  if (MinY < v31)
  {
    v31 = MinY;
  }

  v44 = v43 - v31;
  v62.origin.x = v41;
  v62.origin.y = y;
  v62.size.height = v50;
  v62.size.width = rect;
  MaxX = CGRectGetMaxX(v62);
  v63.origin.x = v48;
  v63.origin.y = v47;
  v63.size.width = v46;
  v63.size.height = v53;
  v33 = CGRectGetMaxX(v63);
  if (MaxX < v33)
  {
    MaxX = v33;
  }

  v64.origin.x = v52;
  v64.origin.y = v51;
  v64.size.width = v54;
  v64.size.height = v42;
  v34 = CGRectGetMaxX(v64);
  if (MaxX < v34)
  {
    MaxX = v34;
  }

  v65.origin.x = v41;
  v65.origin.y = y;
  v65.size.width = rect;
  v65.size.height = v50;
  MinX = CGRectGetMinX(v65);
  v66.origin.x = v48;
  v66.origin.y = v47;
  v66.size.width = v46;
  v66.size.height = v53;
  v36 = CGRectGetMinX(v66);
  if (MinX >= v36)
  {
    MinX = v36;
  }

  v67.origin.x = v52;
  v67.origin.y = v51;
  v67.size.width = v54;
  v67.size.height = v42;
  v37 = CGRectGetMinX(v67);
  if (MinX < v37)
  {
    v37 = MinX;
  }

  v38 = MaxX - v37;

  v39 = v38;
  v40 = v44;
  result.height = v40;
  result.width = v39;
  return result;
}

+ (char)colorTypeForTapBack:(int64_t)a3
{
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 theme];
  v6 = [v5 messageAcknowledgmentPinnedColor];

  if (a3 == 2000)
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 theme];
    v9 = [v8 messageAcknowledgmentRedColor];

    v6 = v9;
  }

  v10 = +[CKUIBehavior sharedBehaviors];
  v11 = [v10 theme];
  v12 = [v11 ckAcknowledgementColorTypeForColor:v6];

  return v12;
}

+ (CGSize)tapbackBalloonSizeForSize:(CGSize)a3
{
  v3 = a3.width / a3.height;
  v4 = a3.width * 0.914285714;
  v5 = a3.height * 0.8;
  if (v3 > 0.875)
  {
    v4 = v5;
  }

  v6 = v4;
  result.height = v6;
  result.width = v4;
  return result;
}

+ (CGSize)largeTailBalloonSizeForSize:(CGSize)a3
{
  [a1 tapbackBalloonSizeForSize:{a3.width, a3.height}];
  v4 = v3 * 0.375;
  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)smallTailBalloonSizeForSize:(CGSize)a3
{
  [a1 largeTailBalloonSizeForSize:{a3.width, a3.height}];
  v4 = v3 * 0.5;
  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGRect)tapbackBalloonFrameForSize:(CGSize)a3 flipHorizontally:(BOOL)a4 flipVertically:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  height = a3.height;
  [a1 tapbackBalloonSizeForSize:a3.width];
  v9 = v8;
  v11 = v10;
  v12 = v8 * 0.09375;
  v13 = 0.0;
  if (v6)
  {
    v12 = 0.0;
  }

  if (v5)
  {
    v13 = height - v11;
  }

  result.size.height = v11;
  result.size.width = v9;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

+ (CGRect)largeTailBalloonFrameForSize:(CGSize)a3 flipHorizontally:(BOOL)a4 flipVertically:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  height = a3.height;
  width = a3.width;
  [a1 largeTailBalloonSizeForSize:?];
  v11 = v10;
  v13 = v12;
  [a1 tapbackBalloonFrameForSize:v6 flipHorizontally:v5 flipVertically:{width, height}];
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = v16 * 0.09375;
  if (v6)
  {
    v23 = CGRectGetMaxX(*&v14) - (v11 - v22);
  }

  else
  {
    v23 = CGRectGetMinX(*&v14) - v22;
  }

  v24 = v20 * 0.71875;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  if (v5)
  {
    v29 = CGRectGetMaxY(*&v25) - v24 - v13;
  }

  else
  {
    v29 = v24 + CGRectGetMinY(*&v25);
  }

  v30 = v23;
  v31 = v11;
  v32 = v13;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v29;
  result.origin.x = v30;
  return result;
}

+ (CGRect)smallTailBalloonFrameForSize:(CGSize)a3 flipHorizontally:(BOOL)a4 flipVertically:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  height = a3.height;
  width = a3.width;
  [a1 smallTailBalloonSizeForSize:?];
  v11 = v10;
  v13 = v12;
  [a1 largeTailBalloonFrameForSize:v6 flipHorizontally:v5 flipVertically:{width, height}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [a1 tapbackBalloonFrameForSize:v6 flipHorizontally:v5 flipVertically:{width, height}];
  v23 = v22 * 0.03125;
  v24 = v15;
  v25 = v17;
  v26 = v19;
  v27 = v21;
  if (v6)
  {
    v28 = CGRectGetMinX(*&v24) - (v11 - v23);
  }

  else
  {
    v28 = CGRectGetMaxX(*&v24) - v23;
  }

  v29 = v15;
  v30 = v17;
  v31 = v19;
  v32 = v21;
  if (v5)
  {
    v33 = CGRectGetMinY(*&v29) - (v13 - v23);
  }

  else
  {
    v33 = CGRectGetMaxY(*&v29) - v23;
  }

  v34 = v28;
  v35 = v11;
  v36 = v13;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v33;
  result.origin.x = v34;
  return result;
}

- (void)setActivityItem:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_tapbackActivityItem, a3);
    [(CKPinnedConversationTapbackBubble *)self _updateAcknowledgmentType];
  }
}

- (void)setPreferredTailAttachmentPointXCoordinate:(double)a3
{
  if (self->_preferredTailAttachmentPointXCoordinate != a3)
  {
    self->_preferredTailAttachmentPointXCoordinate = a3;
    [(CKPinnedConversationTapbackBubble *)self setNeedsLayout];
  }
}

- (void)setOriginationDirection:(int64_t)a3
{
  if (self->_originationDirection != a3)
  {
    self->_originationDirection = a3;
    [(CKPinnedConversationTapbackBubble *)self setNeedsLayout];
  }
}

- (CGPoint)tailAttachmentPoint
{
  v3 = objc_opt_class();
  [(CKPinnedConversationTapbackBubble *)self bounds];
  [v3 smallTailBalloonFrameForSize:-[CKPinnedConversationTapbackBubble flipHorizontally](self flipHorizontally:"flipHorizontally") flipVertically:{-[CKPinnedConversationTapbackBubble flipVertically](self, "flipVertically"), v4, v5}];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  MidX = CGRectGetMidX(v20);
  v11 = [(CKPinnedConversationTapbackBubble *)self flipVertically];
  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  if (v11)
  {
    MaxY = CGRectGetMaxY(*&v12);
  }

  else
  {
    MaxY = CGRectGetMinY(*&v12);
  }

  v17 = MaxY;
  v18 = MidX;
  result.y = v17;
  result.x = v18;
  return result;
}

- (void)_updateAcknowledgmentType
{
  v3 = [(CKPinnedConversationTapbackBubbleActivityItem *)self->_tapbackActivityItem message];
  v4 = [v3 tapback];

  [(CKPinnedConversationTapbackBubble *)self configureWithTapback:v4];
}

- (void)configureWithTapback:(id)a3
{
  v32 = a3;
  v4 = [(CKPinnedConversationTapbackBubble *)self displayedTapback];
  if (([v4 isEqual:v32] & 1) == 0)
  {
    v5 = [(CKPinnedConversationTapbackBubble *)self tapbackView];
    [v5 removeFromSuperview];

    v6 = [CKTapbackViewUtils viewFor:v32 isSelected:0];
    [(CKPinnedConversationTapbackBubble *)self setTapbackView:v6];
    [v6 platterEdgeInsets];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(CKPinnedConversationTapbackBubble *)self setDisplayedTapback:v32];
    v15 = [(CKPinnedConversationTapbackBubble *)self tapbackContainerView];
    [v15 addSubview:v6];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [v6 topAnchor];
    v17 = [(CKPinnedConversationTapbackBubble *)self tapbackContainerView];
    v18 = [v17 topAnchor];
    v19 = [v16 constraintEqualToAnchor:v18 constant:v8];
    [v19 setActive:1];

    v20 = [v6 leadingAnchor];
    v21 = [(CKPinnedConversationTapbackBubble *)self tapbackContainerView];
    v22 = [v21 leadingAnchor];
    v23 = [v20 constraintEqualToAnchor:v22 constant:v10];
    [v23 setActive:1];

    v24 = [(CKPinnedConversationTapbackBubble *)self tapbackContainerView];
    v25 = [v24 bottomAnchor];
    v26 = [v6 bottomAnchor];
    v27 = [v25 constraintEqualToAnchor:v26 constant:v12];
    [v27 setActive:1];

    v28 = [(CKPinnedConversationTapbackBubble *)self tapbackContainerView];
    v29 = [v28 trailingAnchor];
    v30 = [v6 trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:v14];
    [v31 setActive:1];

    [(CKPinnedConversationTapbackBubble *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKPinnedConversationTapbackBubble;
  [(CKPinnedConversationTapbackBubble *)&v4 traitCollectionDidChange:a3];
  [(CKPinnedConversationTapbackBubble *)self _updateUserInterfaceStyles];
}

- (void)_updateUserInterfaceStyles
{
  v3 = [(CKPinnedConversationTapbackBubble *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  [(CKPinnedConversationActivityItemViewBackdropLayer *)self->_backdropLayer setUserInterfaceStyle:v4];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self->_broadShadowLayer setUserInterfaceStyle:v4];
  tightShadowLayer = self->_tightShadowLayer;

  [(CKPinnedConversationActivityItemViewShadowLayer *)tightShadowLayer setUserInterfaceStyle:v4];
}

- (CKPinnedConversationActivityItemViewDelegate)activityItemViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_activityItemViewDelegate);

  return WeakRetained;
}

- (CGSize)parentAvatarViewSize
{
  width = self->_parentAvatarViewSize.width;
  height = self->_parentAvatarViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)originationPoint
{
  x = self->_originationPoint.x;
  y = self->_originationPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end