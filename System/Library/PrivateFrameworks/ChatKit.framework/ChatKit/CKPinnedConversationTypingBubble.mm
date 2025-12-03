@interface CKPinnedConversationTypingBubble
- (CGPoint)mediumBubbleOffset;
- (CGPoint)originationPoint;
- (CGPoint)smallBubbleOffset;
- (CGPoint)tailAttachmentPoint;
- (CGSize)largeBubbleSize;
- (CGSize)mediumBubbleSize;
- (CGSize)parentAvatarViewSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)smallBubbleSize;
- (CGSize)thinkingDotContainerSize;
- (CKPinnedConversationActivityItemViewDelegate)activityItemViewDelegate;
- (CKPinnedConversationTypingBubble)initWithActivityItem:(id)item;
- (unint64_t)tailCornerAnchor;
- (void)_updateThinkingDotColor;
- (void)_updateUserInterfaceStyles;
- (void)calculateBezierPathWithOutputsForPath:(id *)path largeBubbleFrame:(CGRect *)frame mediumBubbleFrame:(CGRect *)bubbleFrame smallBubbleFrame:(CGRect *)smallBubbleFrame;
- (void)layoutSubviews;
- (void)setActivityItem:(id)item;
- (void)setOriginationDirection:(int64_t)direction;
- (void)setPreferredTailAttachmentPointXCoordinate:(double)coordinate;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CKPinnedConversationTypingBubble

- (CKPinnedConversationTypingBubble)initWithActivityItem:(id)item
{
  v49[2] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v48.receiver = self;
  v48.super_class = CKPinnedConversationTypingBubble;
  v6 = [(CKPinnedConversationTypingBubble *)&v48 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_typingBubbleActivityItem, item);
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
    [(CKPinnedConversationTypingBubble *)v7 _updateUserInterfaceStyles];
    layer = [(CKPinnedConversationTypingBubble *)v7 layer];
    [layer addSublayer:v7->_broadShadowLayer];

    layer2 = [(CKPinnedConversationTypingBubble *)v7 layer];
    [layer2 addSublayer:v7->_tightShadowLayer];

    layer3 = [(CKPinnedConversationTypingBubble *)v7 layer];
    [layer3 addSublayer:v7->_backdropLayer];

    v19 = objc_alloc_init(MEMORY[0x1E6979398]);
    thinkingDotContainer = v7->_thinkingDotContainer;
    v7->_thinkingDotContainer = v19;

    v21 = v7->_thinkingDotContainer;
    [(CKPinnedConversationTypingBubble *)v7 bounds];
    [(CALayer *)v21 setBounds:?];
    layer4 = [(CKPinnedConversationTypingBubble *)v7 layer];
    [layer4 addSublayer:v7->_thinkingDotContainer];

    v23 = objc_alloc_init(MEMORY[0x1E69794A0]);
    thinkingDot = v7->_thinkingDot;
    v7->_thinkingDot = v23;

    v25 = MEMORY[0x1E69DC728];
    [(CKPinnedConversationTypingBubble *)v7 thinkingDotDiameter];
    v27 = v26;
    [(CKPinnedConversationTypingBubble *)v7 thinkingDotDiameter];
    v29 = [v25 bezierPathWithOvalInRect:{0.0, 0.0, v27, v28}];
    -[CAShapeLayer setPath:](v7->_thinkingDot, "setPath:", [v29 CGPath]);
    [(CKPinnedConversationTypingBubble *)v7 _updateThinkingDotColor];
    v30 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
    v49[0] = &unk_1F04E86C8;
    v31 = MEMORY[0x1E696AD98];
    [(CKPinnedConversationTypingBubble *)v7 thinkingDotOpacity];
    v32 = [v31 numberWithDouble:?];
    v49[1] = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
    [v30 setValues:v33];

    [v30 setKeyTimes:&unk_1F04E67C8];
    [v30 setCalculationMode:*MEMORY[0x1E69795A8]];
    [v30 setDuration:0.5];
    LODWORD(v34) = 1061271823;
    LODWORD(v35) = 1014679044;
    LODWORD(v36) = 1058306785;
    LODWORD(v37) = 1.0;
    v38 = [MEMORY[0x1E69793D0] functionWithControlPoints:v34 :v35 :v36 :v37];
    [v30 setTimingFunction:v38];

    LODWORD(v39) = 2139095040;
    [v30 setRepeatCount:v39];
    [v30 setAutoreverses:1];
    [v30 setFillMode:*MEMORY[0x1E69797E0]];
    [v30 setRemovedOnCompletion:0];
    [(CAShapeLayer *)v7->_thinkingDot addAnimation:v30 forKey:@"Opacity"];
    layer5 = [MEMORY[0x1E6979430] layer];
    thinkingDots = v7->_thinkingDots;
    v7->_thinkingDots = layer5;

    [(CAReplicatorLayer *)v7->_thinkingDots setInstanceCount:3];
    v42 = v7->_thinkingDots;
    [(CKPinnedConversationTypingBubble *)v7 thinkingDotDiameter];
    v44 = v43;
    [(CKPinnedConversationTypingBubble *)v7 thinkingDotSpace];
    CATransform3DMakeTranslation(&v47, v44 + v45, 0.0, 0.0);
    [(CAReplicatorLayer *)v42 setInstanceTransform:&v47];
    [(CAReplicatorLayer *)v7->_thinkingDots setInstanceDelay:0.25];
    [(CAReplicatorLayer *)v7->_thinkingDots addSublayer:v7->_thinkingDot];
    [(CALayer *)v7->_thinkingDotContainer addSublayer:v7->_thinkingDots];
    [(CKPinnedConversationTypingBubble *)v7 setAccessibilityIdentifier:@"PinnedConversationTypingBubble"];
  }

  return v7;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = CKPinnedConversationTypingBubble;
  [(CKPinnedConversationTypingBubble *)&v24 layoutSubviews];
  memset(&v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  v20 = 0;
  [(CKPinnedConversationTypingBubble *)self calculateBezierPathWithOutputsForPath:&v20 largeBubbleFrame:&v23 mediumBubbleFrame:v22 smallBubbleFrame:v21];
  v3 = v20;
  cGPath = [v3 CGPath];
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(CKPinnedConversationActivityItemViewBackdropLayer *)self->_backdropLayer setFrame:?];
  [(CAShapeLayer *)self->_backdropMaskShapeLayer setFrame:v6, v8, v10, v12];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self->_broadShadowLayer setFrame:v6, v8, v10, v12];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self->_tightShadowLayer setFrame:v6, v8, v10, v12];
  [(CAShapeLayer *)self->_backdropMaskShapeLayer setPath:cGPath];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self->_broadShadowLayer setShadowPath:cGPath];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self->_tightShadowLayer setShadowPath:cGPath];
  [(CKPinnedConversationTypingBubble *)self thinkingDotContainerSize];
  v14 = v13;
  v16 = v15;
  v17 = CGRectGetMinX(v23) + (v23.size.width - v13) * 0.5;
  v18 = CGRectGetMinY(v23) + (v23.size.height - v16) * 0.5;
  thinkingDotContainer = [(CKPinnedConversationTypingBubble *)self thinkingDotContainer];

  [thinkingDotContainer setFrame:{v17, v18, v14, v16}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  [(CKPinnedConversationTypingBubble *)self calculateBezierPathWithOutputsForPath:&v10 largeBubbleFrame:v13 mediumBubbleFrame:v12 smallBubbleFrame:v11];
  v3 = v10;
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)largeBubbleSize
{
  v2 = 40.0;
  v3 = 26.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)mediumBubbleSize
{
  v2 = 9.0;
  v3 = 9.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)smallBubbleSize
{
  v2 = 5.0;
  v3 = 5.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGPoint)mediumBubbleOffset
{
  v2 = 1.0;
  v3 = 1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)smallBubbleOffset
{
  v2 = 1.0;
  v3 = 1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)_updateThinkingDotColor
{
  thinkingDotColor = [(CKPinnedConversationTypingBubble *)self thinkingDotColor];
  v3 = thinkingDotColor;
  -[CAShapeLayer setFillColor:](self->_thinkingDot, "setFillColor:", [thinkingDotColor CGColor]);
}

- (CGSize)thinkingDotContainerSize
{
  [(CKPinnedConversationTypingBubble *)self thinkingDotDiameter];
  v4 = v3;
  [(CKPinnedConversationTypingBubble *)self thinkingDotSpace];
  v6 = v5 + v5 + v4 * 3.0;
  [(CKPinnedConversationTypingBubble *)self thinkingDotDiameter];
  v8 = v7;
  v9 = v6;
  result.height = v8;
  result.width = v9;
  return result;
}

- (unint64_t)tailCornerAnchor
{
  originationDirection = self->_originationDirection;
  if (originationDirection == 1)
  {
    return 1;
  }

  else
  {
    return 4 * (originationDirection == 0);
  }
}

- (void)setPreferredTailAttachmentPointXCoordinate:(double)coordinate
{
  if (self->_preferredTailAttachmentPointXCoordinate != coordinate)
  {
    self->_preferredTailAttachmentPointXCoordinate = coordinate;
    [(CKPinnedConversationTypingBubble *)self setNeedsLayout];
  }
}

- (CGPoint)tailAttachmentPoint
{
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  memset(&v10, 0, sizeof(v10));
  v9 = 0;
  [(CKPinnedConversationTypingBubble *)self calculateBezierPathWithOutputsForPath:&v9 largeBubbleFrame:v12 mediumBubbleFrame:v11 smallBubbleFrame:&v10];
  tailCornerAnchor = [(CKPinnedConversationTypingBubble *)self tailCornerAnchor];
  v4 = 0.0;
  v5 = tailCornerAnchor + 1;
  if (tailCornerAnchor + 1 > 9)
  {
    MidX = 0.0;
    goto LABEL_7;
  }

  if (((1 << v5) & 0x221) != 0)
  {
    MidX = CGRectGetMidX(v10);
    MaxY = CGRectGetMaxY(v10);
LABEL_6:
    v4 = MaxY;
    goto LABEL_7;
  }

  MidX = 0.0;
  if (((1 << v5) & 0xC) != 0)
  {
    MidX = CGRectGetMidX(v10);
    MaxY = CGRectGetMinY(v10);
    goto LABEL_6;
  }

LABEL_7:
  v8 = MidX;
  result.y = v4;
  result.x = v8;
  return result;
}

- (void)setOriginationDirection:(int64_t)direction
{
  if (self->_originationDirection != direction)
  {
    self->_originationDirection = direction;
    [(CKPinnedConversationTypingBubble *)self setNeedsLayout];
  }
}

- (void)calculateBezierPathWithOutputsForPath:(id *)path largeBubbleFrame:(CGRect *)frame mediumBubbleFrame:(CGRect *)bubbleFrame smallBubbleFrame:(CGRect *)smallBubbleFrame
{
  [(CKPinnedConversationTypingBubble *)self largeBubbleSize];
  v12 = v11;
  rect_24 = v13;
  [(CKPinnedConversationTypingBubble *)self mediumBubbleSize];
  v15 = v14;
  v17 = v16;
  [(CKPinnedConversationTypingBubble *)self smallBubbleSize];
  v19 = v18;
  v21 = v20;
  [(CKPinnedConversationTypingBubble *)self mediumBubbleOffset];
  rect_16 = v22;
  v62 = v23;
  [(CKPinnedConversationTypingBubble *)self smallBubbleOffset];
  v25 = v24;
  v63 = v26;
  [(CKPinnedConversationTypingBubble *)self largeBubbleCornerRadius];
  v66 = v27;
  tailCornerAnchor = [(CKPinnedConversationTypingBubble *)self tailCornerAnchor];
  v29 = *MEMORY[0x1E695F058];
  v30 = *(MEMORY[0x1E695F058] + 8);
  v31 = *MEMORY[0x1E695F058];
  if (tailCornerAnchor > 3)
  {
    if (tailCornerAnchor != 4)
    {
      v61 = v21;
      v57 = v19;
      if (tailCornerAnchor == 8)
      {
        v40 = *MEMORY[0x1E695F058];
        v59 = *MEMORY[0x1E695F058];
        v41 = *(MEMORY[0x1E695F058] + 8);
        v42 = v12;
        v34 = rect_24;
        v43 = rect_24;
        v44 = rect_16 + CGRectGetMaxX(*&v31) - v15;
        v77.origin.x = v44;
        v77.origin.y = v30;
        v77.size.width = v15;
        v77.size.height = v17;
        x = CGRectGetMinX(v77) - v25;
        v78.origin.x = v40;
        v78.origin.y = v30;
        v78.size.width = v12;
        v78.size.height = rect_24;
        v36 = v62 + CGRectGetMaxY(v78) - v17;
        v79.origin.x = v44;
        v79.origin.y = v36;
        v79.size.width = v15;
        v79.size.height = v17;
        MaxY = CGRectGetMaxY(v79);
        v38 = v30;
        v30 = v63 + MaxY;
        rect_8 = v44;
        rect_16 = v40;
        rect = v44;
        v19 = v57;
        v29 = v59;
        v21 = v61;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    rect_8 = *MEMORY[0x1E695F058];
    v60 = *MEMORY[0x1E695F058];
    v50 = *(MEMORY[0x1E695F058] + 8);
    v51 = v15;
    v52 = v17;
    x = CGRectGetMaxX(*&v31) - v25;
    v82.origin.x = rect_16;
    v34 = rect_24;
    v82.origin.y = v30;
    v82.size.width = v12;
    v82.size.height = rect_24;
    v36 = v62 + CGRectGetMaxY(v82) - v17;
    v83.origin.x = v60;
    rect = v60;
    v83.origin.y = v36;
    v83.size.width = v15;
    v83.size.height = v17;
    v53 = CGRectGetMaxY(v83);
    v38 = v30;
    v30 = v63 + v53;
    v29 = rect_16;
  }

  else
  {
    if (tailCornerAnchor != 1)
    {
      v61 = v21;
      v57 = v19;
      if (tailCornerAnchor == 2)
      {
        rect_8a = *MEMORY[0x1E695F058];
        v58 = *MEMORY[0x1E695F058];
        v32 = *(MEMORY[0x1E695F058] + 8);
        v33 = v12;
        v34 = rect_24;
        v35 = rect_24;
        v74.origin.x = rect_16 + CGRectGetMaxX(*&v31) - v15;
        rect = v74.origin.x;
        v74.origin.y = v30;
        v74.size.width = v15;
        v74.size.height = v17;
        v75.origin.x = CGRectGetMinX(v74) - v25;
        x = v75.origin.x;
        v75.origin.y = v30;
        v75.size.width = v19;
        v75.size.height = v21;
        v36 = v63 + CGRectGetMaxY(v75);
        v76.origin.x = rect;
        v76.origin.y = v36;
        v76.size.width = v15;
        v76.size.height = v17;
        MinY = CGRectGetMinY(v76);
        v29 = v58;
        v38 = v62 + MinY;
        v39 = rect_8a;
        rect_8 = rect;
        rect_16 = v39;
        goto LABEL_11;
      }

LABEL_8:
      rect = *MEMORY[0x1E695F058];
      rect_8 = *MEMORY[0x1E695F058];
      v36 = *(MEMORY[0x1E695F058] + 8);
      rect_16 = *MEMORY[0x1E695F058];
      v38 = v36;
      x = *MEMORY[0x1E695F058];
      v19 = v57;
      v21 = v61;
      v34 = rect_24;
      goto LABEL_11;
    }

    rect_8 = *MEMORY[0x1E695F058];
    v46 = *MEMORY[0x1E695F058];
    v47 = *(MEMORY[0x1E695F058] + 8);
    v48 = v15;
    v49 = v17;
    v80.origin.x = CGRectGetMaxX(*&v31) - v25;
    x = v80.origin.x;
    v80.origin.y = v30;
    v80.size.width = v19;
    v80.size.height = v21;
    v36 = v63 + CGRectGetMaxY(v80);
    rect = v46;
    v81.origin.x = v46;
    v81.origin.y = v36;
    v81.size.width = v15;
    v81.size.height = v17;
    v38 = v62 + CGRectGetMinY(v81);
    v29 = rect_16;
    v34 = rect_24;
  }

LABEL_11:
  v64 = v38;
  rect_24a = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v29 cornerRadius:{v38, v12, v34, v66}];
  v54 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{rect, v36, v15, v17}];
  v55 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:?];
  [rect_24a appendPath:v54];
  [rect_24a appendPath:v55];
  if (path)
  {
    v56 = rect_24a;
    *path = rect_24a;
  }

  if (frame)
  {
    frame->origin.x = rect_16;
    frame->origin.y = v64;
    frame->size.width = v12;
    frame->size.height = v34;
  }

  if (bubbleFrame)
  {
    bubbleFrame->origin.x = rect_8;
    bubbleFrame->origin.y = v36;
    bubbleFrame->size.width = v15;
    bubbleFrame->size.height = v17;
  }

  if (smallBubbleFrame)
  {
    smallBubbleFrame->origin.x = x;
    smallBubbleFrame->origin.y = v30;
    smallBubbleFrame->size.width = v19;
    smallBubbleFrame->size.height = v21;
  }
}

- (void)setActivityItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_typingBubbleActivityItem, item);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CKPinnedConversationTypingBubble;
  [(CKPinnedConversationTypingBubble *)&v4 traitCollectionDidChange:change];
  [(CKPinnedConversationTypingBubble *)self _updateThinkingDotColor];
  [(CKPinnedConversationTypingBubble *)self _updateUserInterfaceStyles];
}

- (void)_updateUserInterfaceStyles
{
  traitCollection = [(CKPinnedConversationTypingBubble *)self traitCollection];
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