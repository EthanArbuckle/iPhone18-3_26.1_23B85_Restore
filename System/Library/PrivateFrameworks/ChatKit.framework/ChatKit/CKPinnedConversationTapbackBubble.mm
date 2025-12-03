@interface CKPinnedConversationTapbackBubble
+ (CGRect)largeTailBalloonFrameForSize:(CGSize)size flipHorizontally:(BOOL)horizontally flipVertically:(BOOL)vertically;
+ (CGRect)smallTailBalloonFrameForSize:(CGSize)size flipHorizontally:(BOOL)horizontally flipVertically:(BOOL)vertically;
+ (CGRect)tapbackBalloonFrameForSize:(CGSize)size flipHorizontally:(BOOL)horizontally flipVertically:(BOOL)vertically;
+ (CGSize)largeTailBalloonSizeForSize:(CGSize)size;
+ (CGSize)sizeThatFits:(CGSize)fits flipHorizontally:(BOOL)horizontally flipVertically:(BOOL)vertically;
+ (CGSize)smallTailBalloonSizeForSize:(CGSize)size;
+ (CGSize)tapbackBalloonSizeForSize:(CGSize)size;
+ (char)colorTypeForTapBack:(int64_t)back;
+ (id)tapBackBubblePathForSize:(CGSize)size tapbackBalloonFrame:(CGRect)frame flipHorizontally:(BOOL)horizontally flipVertically:(BOOL)vertically;
- (CGPoint)originationPoint;
- (CGPoint)tailAttachmentPoint;
- (CGSize)parentAvatarViewSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKPinnedConversationActivityItemViewDelegate)activityItemViewDelegate;
- (CKPinnedConversationTapbackBubble)initWithActivityItem:(id)item;
- (int64_t)acknowledgmentType;
- (void)_updateAcknowledgmentType;
- (void)_updateUserInterfaceStyles;
- (void)configureWithTapback:(id)tapback;
- (void)layoutSubviews;
- (void)setAcknowledgmentType:(int64_t)type;
- (void)setActivityItem:(id)item;
- (void)setOriginationDirection:(int64_t)direction;
- (void)setPreferredTailAttachmentPointXCoordinate:(double)coordinate;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CKPinnedConversationTapbackBubble

- (CKPinnedConversationTapbackBubble)initWithActivityItem:(id)item
{
  itemCopy = item;
  v23.receiver = self;
  v23.super_class = CKPinnedConversationTapbackBubble;
  v6 = [(CKPinnedConversationTapbackBubble *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tapbackActivityItem, item);
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
    layer = [(CKPinnedConversationTapbackBubble *)v7 layer];
    [layer addSublayer:v7->_broadShadowLayer];

    layer2 = [(CKPinnedConversationTapbackBubble *)v7 layer];
    [layer2 addSublayer:v7->_tightShadowLayer];

    layer3 = [(CKPinnedConversationTapbackBubble *)v7 layer];
    [layer3 addSublayer:v7->_backdropLayer];

    v19 = objc_alloc(MEMORY[0x1E69DD250]);
    v20 = [v19 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    [(CKPinnedConversationTapbackBubble *)v7 setTapbackContainerView:v20];

    tapbackContainerView = [(CKPinnedConversationTapbackBubble *)v7 tapbackContainerView];
    [(CKPinnedConversationTapbackBubble *)v7 addSubview:tapbackContainerView];

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
  cGPath = [v23 CGPath];
  [(CAShapeLayer *)self->_backdropMaskShapeLayer setPath:cGPath];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self->_broadShadowLayer setShadowPath:cGPath];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self->_tightShadowLayer setShadowPath:cGPath];
  tapbackContainerView = [(CKPinnedConversationTapbackBubble *)self tapbackContainerView];
  [tapbackContainerView setFrame:{v16, v18, v20, v22}];
}

+ (id)tapBackBubblePathForSize:(CGSize)size tapbackBalloonFrame:(CGRect)frame flipHorizontally:(BOOL)horizontally flipVertically:(BOOL)vertically
{
  verticallyCopy = vertically;
  horizontallyCopy = horizontally;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12 = size.height;
  v13 = size.width;
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  v15 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{x, y, width, height}];
  [bezierPath appendPath:v15];
  [objc_opt_class() largeTailBalloonFrameForSize:horizontallyCopy flipHorizontally:verticallyCopy flipVertically:{v13, v12}];
  v16 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:?];
  [bezierPath appendPath:v16];
  [objc_opt_class() smallTailBalloonFrameForSize:horizontallyCopy flipHorizontally:verticallyCopy flipVertically:{v13, v12}];
  v17 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:?];
  [bezierPath appendPath:v17];

  return bezierPath;
}

- (void)setAcknowledgmentType:(int64_t)type
{
  tapbackGlyph = [(CKPinnedConversationTapbackBubble *)self tapbackGlyph];
  if (!tapbackGlyph || (v6 = tapbackGlyph, -[CKPinnedConversationTapbackBubble tapbackGlyph](self, "tapbackGlyph"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 acknowledgmentType], v7, v6, v8 != type))
  {
    tapbackGlyph2 = [(CKPinnedConversationTapbackBubble *)self tapbackGlyph];
    [tapbackGlyph2 removeFromSuperview];

    v10 = +[CKAcknowledgmentGlyphView glyphViewForAcknowledgmentType:glyphColor:](CKAcknowledgmentGlyphView, "glyphViewForAcknowledgmentType:glyphColor:", type, [objc_opt_class() colorTypeForTapBack:type]);
    [(CKPinnedConversationTapbackBubble *)self setTapbackGlyph:v10];

    tapbackGlyph3 = [(CKPinnedConversationTapbackBubble *)self tapbackGlyph];
    [(CKPinnedConversationTapbackBubble *)self addSubview:tapbackGlyph3];

    [(CKPinnedConversationTapbackBubble *)self setNeedsLayout];
  }
}

- (int64_t)acknowledgmentType
{
  tapbackGlyph = [(CKPinnedConversationTapbackBubble *)self tapbackGlyph];
  acknowledgmentType = [tapbackGlyph acknowledgmentType];

  return acknowledgmentType;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = objc_opt_class();
  flipHorizontally = [(CKPinnedConversationTapbackBubble *)self flipHorizontally];
  flipVertically = [(CKPinnedConversationTapbackBubble *)self flipVertically];

  [v6 sizeThatFits:flipHorizontally flipHorizontally:flipVertically flipVertically:{width, height}];
  result.height = v10;
  result.width = v9;
  return result;
}

+ (CGSize)sizeThatFits:(CGSize)fits flipHorizontally:(BOOL)horizontally flipVertically:(BOOL)vertically
{
  verticallyCopy = vertically;
  horizontallyCopy = horizontally;
  height = fits.height;
  width = fits.width;
  v9 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28] addingSymbolicTraits:0 options:1];
  v10 = [MEMORY[0x1E69DB878] fontWithDescriptor:v9 size:0.0];
  [v10 lineHeight];
  v12 = v11 * 2.5;
  if (v12 < height)
  {
    height = v12;
  }

  [objc_opt_class() tapbackBalloonFrameForSize:horizontallyCopy flipHorizontally:verticallyCopy flipVertically:{width, height}];
  v51 = v14;
  v52 = v13;
  v54 = v15;
  v42 = v16;
  [objc_opt_class() largeTailBalloonFrameForSize:horizontallyCopy flipHorizontally:verticallyCopy flipVertically:{width, height}];
  v18 = v17;
  v47 = v19;
  v48 = v17;
  v20 = v19;
  v22 = v21;
  v46 = v21;
  v53 = v23;
  [objc_opt_class() smallTailBalloonFrameForSize:horizontallyCopy flipHorizontally:verticallyCopy flipVertically:{width, height}];
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

+ (char)colorTypeForTapBack:(int64_t)back
{
  v4 = +[CKUIBehavior sharedBehaviors];
  theme = [v4 theme];
  messageAcknowledgmentPinnedColor = [theme messageAcknowledgmentPinnedColor];

  if (back == 2000)
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v7 theme];
    messageAcknowledgmentRedColor = [theme2 messageAcknowledgmentRedColor];

    messageAcknowledgmentPinnedColor = messageAcknowledgmentRedColor;
  }

  v10 = +[CKUIBehavior sharedBehaviors];
  theme3 = [v10 theme];
  v12 = [theme3 ckAcknowledgementColorTypeForColor:messageAcknowledgmentPinnedColor];

  return v12;
}

+ (CGSize)tapbackBalloonSizeForSize:(CGSize)size
{
  v3 = size.width / size.height;
  v4 = size.width * 0.914285714;
  v5 = size.height * 0.8;
  if (v3 > 0.875)
  {
    v4 = v5;
  }

  v6 = v4;
  result.height = v6;
  result.width = v4;
  return result;
}

+ (CGSize)largeTailBalloonSizeForSize:(CGSize)size
{
  [self tapbackBalloonSizeForSize:{size.width, size.height}];
  v4 = v3 * 0.375;
  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)smallTailBalloonSizeForSize:(CGSize)size
{
  [self largeTailBalloonSizeForSize:{size.width, size.height}];
  v4 = v3 * 0.5;
  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGRect)tapbackBalloonFrameForSize:(CGSize)size flipHorizontally:(BOOL)horizontally flipVertically:(BOOL)vertically
{
  verticallyCopy = vertically;
  horizontallyCopy = horizontally;
  height = size.height;
  [self tapbackBalloonSizeForSize:size.width];
  v9 = v8;
  v11 = v10;
  v12 = v8 * 0.09375;
  v13 = 0.0;
  if (horizontallyCopy)
  {
    v12 = 0.0;
  }

  if (verticallyCopy)
  {
    v13 = height - v11;
  }

  result.size.height = v11;
  result.size.width = v9;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

+ (CGRect)largeTailBalloonFrameForSize:(CGSize)size flipHorizontally:(BOOL)horizontally flipVertically:(BOOL)vertically
{
  verticallyCopy = vertically;
  horizontallyCopy = horizontally;
  height = size.height;
  width = size.width;
  [self largeTailBalloonSizeForSize:?];
  v11 = v10;
  v13 = v12;
  [self tapbackBalloonFrameForSize:horizontallyCopy flipHorizontally:verticallyCopy flipVertically:{width, height}];
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = v16 * 0.09375;
  if (horizontallyCopy)
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
  if (verticallyCopy)
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

+ (CGRect)smallTailBalloonFrameForSize:(CGSize)size flipHorizontally:(BOOL)horizontally flipVertically:(BOOL)vertically
{
  verticallyCopy = vertically;
  horizontallyCopy = horizontally;
  height = size.height;
  width = size.width;
  [self smallTailBalloonSizeForSize:?];
  v11 = v10;
  v13 = v12;
  [self largeTailBalloonFrameForSize:horizontallyCopy flipHorizontally:verticallyCopy flipVertically:{width, height}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [self tapbackBalloonFrameForSize:horizontallyCopy flipHorizontally:verticallyCopy flipVertically:{width, height}];
  v23 = v22 * 0.03125;
  v24 = v15;
  v25 = v17;
  v26 = v19;
  v27 = v21;
  if (horizontallyCopy)
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
  if (verticallyCopy)
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

- (void)setActivityItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_tapbackActivityItem, item);
    [(CKPinnedConversationTapbackBubble *)self _updateAcknowledgmentType];
  }
}

- (void)setPreferredTailAttachmentPointXCoordinate:(double)coordinate
{
  if (self->_preferredTailAttachmentPointXCoordinate != coordinate)
  {
    self->_preferredTailAttachmentPointXCoordinate = coordinate;
    [(CKPinnedConversationTapbackBubble *)self setNeedsLayout];
  }
}

- (void)setOriginationDirection:(int64_t)direction
{
  if (self->_originationDirection != direction)
  {
    self->_originationDirection = direction;
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
  flipVertically = [(CKPinnedConversationTapbackBubble *)self flipVertically];
  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  if (flipVertically)
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
  message = [(CKPinnedConversationTapbackBubbleActivityItem *)self->_tapbackActivityItem message];
  tapback = [message tapback];

  [(CKPinnedConversationTapbackBubble *)self configureWithTapback:tapback];
}

- (void)configureWithTapback:(id)tapback
{
  tapbackCopy = tapback;
  displayedTapback = [(CKPinnedConversationTapbackBubble *)self displayedTapback];
  if (([displayedTapback isEqual:tapbackCopy] & 1) == 0)
  {
    tapbackView = [(CKPinnedConversationTapbackBubble *)self tapbackView];
    [tapbackView removeFromSuperview];

    v6 = [CKTapbackViewUtils viewFor:tapbackCopy isSelected:0];
    [(CKPinnedConversationTapbackBubble *)self setTapbackView:v6];
    [v6 platterEdgeInsets];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(CKPinnedConversationTapbackBubble *)self setDisplayedTapback:tapbackCopy];
    tapbackContainerView = [(CKPinnedConversationTapbackBubble *)self tapbackContainerView];
    [tapbackContainerView addSubview:v6];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [v6 topAnchor];
    tapbackContainerView2 = [(CKPinnedConversationTapbackBubble *)self tapbackContainerView];
    topAnchor2 = [tapbackContainerView2 topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v8];
    [v19 setActive:1];

    leadingAnchor = [v6 leadingAnchor];
    tapbackContainerView3 = [(CKPinnedConversationTapbackBubble *)self tapbackContainerView];
    leadingAnchor2 = [tapbackContainerView3 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v10];
    [v23 setActive:1];

    tapbackContainerView4 = [(CKPinnedConversationTapbackBubble *)self tapbackContainerView];
    bottomAnchor = [tapbackContainerView4 bottomAnchor];
    bottomAnchor2 = [v6 bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v12];
    [v27 setActive:1];

    tapbackContainerView5 = [(CKPinnedConversationTapbackBubble *)self tapbackContainerView];
    trailingAnchor = [tapbackContainerView5 trailingAnchor];
    trailingAnchor2 = [v6 trailingAnchor];
    v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v14];
    [v31 setActive:1];

    [(CKPinnedConversationTapbackBubble *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CKPinnedConversationTapbackBubble;
  [(CKPinnedConversationTapbackBubble *)&v4 traitCollectionDidChange:change];
  [(CKPinnedConversationTapbackBubble *)self _updateUserInterfaceStyles];
}

- (void)_updateUserInterfaceStyles
{
  traitCollection = [(CKPinnedConversationTapbackBubble *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  [(CKPinnedConversationActivityItemViewBackdropLayer *)self->_backdropLayer setUserInterfaceStyle:userInterfaceStyle];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self->_broadShadowLayer setUserInterfaceStyle:userInterfaceStyle];
  tightShadowLayer = self->_tightShadowLayer;

  [(CKPinnedConversationActivityItemViewShadowLayer *)tightShadowLayer setUserInterfaceStyle:userInterfaceStyle];
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