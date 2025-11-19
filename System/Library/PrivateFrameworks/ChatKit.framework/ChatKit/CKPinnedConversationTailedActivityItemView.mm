@interface CKPinnedConversationTailedActivityItemView
- (CGPoint)originationPoint;
- (CGPoint)tailAttachmentPoint;
- (CGPoint)tailAttachmentPointWithOutputForMinimumContinousAnchorX:(double *)a3 maximumContinuousAnchorX:(double *)a4;
- (CGRect)pillRect;
- (CGSize)parentAvatarViewSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKPinnedConversationActivityItemViewDelegate)activityItemViewDelegate;
- (CKPinnedConversationTailedActivityItemView)initWithActivityItem:(id)a3 contentView:(id)a4 needsContentViewStroke:(BOOL)a5;
- (UIEdgeInsets)contentViewPadding;
- (double)balloonTailHeight;
- (double)contentViewHorizontalInsetForPillCornerRadius;
- (id)_pathForTailedBalloonSegmentWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 anchorPoint:(CGPoint)a5 originationHorizontalDirection:(int64_t)a6 originationDirection:(int64_t)a7;
- (void)_updateUserInterfaceStyles;
- (void)layoutSubviews;
- (void)setOriginationDirection:(int64_t)a3;
- (void)setOriginationPoint:(CGPoint)a3;
- (void)setPreferredTailAttachmentPointXCoordinate:(double)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CKPinnedConversationTailedActivityItemView

- (CKPinnedConversationTailedActivityItemView)initWithActivityItem:(id)a3 contentView:(id)a4 needsContentViewStroke:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v32.receiver = self;
  v32.super_class = CKPinnedConversationTailedActivityItemView;
  v11 = [(CKPinnedConversationTailedActivityItemView *)&v32 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_activityItem, a3);
    objc_storeStrong(&v12->_contentView, a4);
    v13 = [[CKPinnedConversationActivityItemViewShadowLayer alloc] initWithShadowType:0];
    broadShadowLayer = v12->_broadShadowLayer;
    v12->_broadShadowLayer = v13;

    v15 = [[CKPinnedConversationActivityItemViewShadowLayer alloc] initWithShadowType:1];
    tightShadowLayer = v12->_tightShadowLayer;
    v12->_tightShadowLayer = v15;

    v17 = objc_alloc_init(CKPinnedConversationActivityItemViewBackdropLayer);
    backdropLayer = v12->_backdropLayer;
    v12->_backdropLayer = v17;

    v19 = objc_alloc_init(MEMORY[0x1E69794A0]);
    backdropMaskShapeLayer = v12->_backdropMaskShapeLayer;
    v12->_backdropMaskShapeLayer = v19;

    [(CKPinnedConversationActivityItemViewBackdropLayer *)v12->_backdropLayer setMask:v12->_backdropMaskShapeLayer];
    [(CKPinnedConversationTailedActivityItemView *)v12 _updateUserInterfaceStyles];
    v21 = [(CKPinnedConversationTailedActivityItemView *)v12 layer];
    [v21 addSublayer:v12->_broadShadowLayer];

    v22 = [(CKPinnedConversationTailedActivityItemView *)v12 layer];
    [v22 addSublayer:v12->_tightShadowLayer];

    v23 = v12->_backdropLayer;
    v24 = [(UIView *)v12->_contentView layer];
    [(CKPinnedConversationActivityItemViewBackdropLayer *)v23 addSublayer:v24];

    if (v5)
    {
      v25 = objc_alloc_init(MEMORY[0x1E69794A0]);
      contentViewStrokeLayer = v12->_contentViewStrokeLayer;
      v12->_contentViewStrokeLayer = v25;

      [(CAShapeLayer *)v12->_contentViewStrokeLayer setLineWidth:1.0];
      v27 = [MEMORY[0x1E69DC888] colorWithWhite:0.341176471 alpha:1.0];
      -[CAShapeLayer setStrokeColor:](v12->_contentViewStrokeLayer, "setStrokeColor:", [v27 CGColor]);

      v28 = [MEMORY[0x1E69DC888] clearColor];
      -[CAShapeLayer setFillColor:](v12->_contentViewStrokeLayer, "setFillColor:", [v28 CGColor]);

      v29 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
      [(CAShapeLayer *)v12->_contentViewStrokeLayer setCompositingFilter:v29];

      [(CKPinnedConversationActivityItemViewBackdropLayer *)v12->_backdropLayer addSublayer:v12->_contentViewStrokeLayer];
    }

    v30 = [(CKPinnedConversationTailedActivityItemView *)v12 layer];
    [v30 addSublayer:v12->_backdropLayer];
  }

  return v12;
}

- (CGPoint)tailAttachmentPointWithOutputForMinimumContinousAnchorX:(double *)a3 maximumContinuousAnchorX:(double *)a4
{
  [(CKPinnedConversationTailedActivityItemView *)self bounds];
  v41.origin.x = v7;
  v41.origin.y = v8;
  v41.size.width = v9;
  v41.size.height = v10;
  [(CKPinnedConversationTailedActivityItemView *)self pillRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  originationDirection = self->_originationDirection;
  [(CKPinnedConversationTailedActivityItemView *)self balloonTailWidth];
  v21 = v20;
  [(CKPinnedConversationTailedActivityItemView *)self pillCornerRadius];
  v23 = v22;
  [(CKPinnedConversationTailedActivityItemView *)self preferredTailAttachmentPointXCoordinate];
  v25 = v24;
  v26 = 0.354320161;
  if (self->_originationHorizontalDirection)
  {
    v27 = 0.354320161;
  }

  else
  {
    v27 = 0.645679839;
  }

  v40 = v27;
  if (self->_originationHorizontalDirection)
  {
    v26 = 0.645679839;
  }

  v38 = v26;
  v43.origin.x = v12;
  v43.origin.y = v14;
  v43.size.width = v16;
  v43.size.height = v18;
  MinX = CGRectGetMinX(v43);
  v44.origin.x = v12;
  v44.origin.y = v14;
  v44.size.width = v16;
  v44.size.height = v18;
  v37 = CGRectGetMinX(v44);
  v45.origin.x = v12;
  v45.origin.y = v14;
  v45.size.width = v16;
  v45.size.height = v18;
  MaxX = CGRectGetMaxX(v45);
  v46.origin.x = v12;
  v46.origin.y = v14;
  v46.size.width = v16;
  v46.size.height = v18;
  v29 = CGRectGetMaxX(v46);
  if (originationDirection == 1)
  {
    MinY = CGRectGetMinY(v41);
  }

  else
  {
    MinY = CGRectGetMaxY(v41);
  }

  v31 = MinY;
  v32 = v23 * 1.528665;
  v33 = v21 * v38;
  if (a3)
  {
    *a3 = v32 + v37 + v33;
  }

  v34 = v21 * v40;
  if (a4)
  {
    *a4 = v29 - v32 - v34;
  }

  v35 = v23 + MinX + v33;
  v36 = MaxX - v23 - v34;
  if (v36 >= v25)
  {
    v36 = v25;
  }

  if (v35 < v36)
  {
    v35 = v36;
  }

  result.y = v31;
  result.x = v35;
  return result;
}

- (CGPoint)tailAttachmentPoint
{
  [(CKPinnedConversationTailedActivityItemView *)self tailAttachmentPointWithOutputForMinimumContinousAnchorX:0 maximumContinuousAnchorX:0];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)pillRect
{
  [(CKPinnedConversationTailedActivityItemView *)self balloonTailHeight];
  v4 = v3;
  [(CKPinnedConversationTailedActivityItemView *)self bounds];
  v9 = 0.0;
  if (self->_originationDirection == 1)
  {
    v9 = v4;
  }

  v10 = v6 + v9;
  v11 = v8 - v4;
  result.size.height = v11;
  result.size.width = v7;
  result.origin.y = v10;
  result.origin.x = v5;
  return result;
}

- (void)layoutSubviews
{
  v97.receiver = self;
  v97.super_class = CKPinnedConversationTailedActivityItemView;
  [(CKPinnedConversationTailedActivityItemView *)&v97 layoutSubviews];
  [(CKPinnedConversationTailedActivityItemView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CKPinnedConversationActivityItemViewShadowLayer *)self->_broadShadowLayer setFrame:?];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self->_tightShadowLayer setFrame:v4, v6, v8, v10];
  [(CAShapeLayer *)self->_backdropMaskShapeLayer setFrame:v4, v6, v8, v10];
  [(CKPinnedConversationActivityItemViewBackdropLayer *)self->_backdropLayer setFrame:v4, v6, v8, v10];
  [(CAShapeLayer *)self->_contentViewStrokeLayer setFrame:v4, v6, v8, v10];
  [(CKPinnedConversationTailedActivityItemView *)self contentViewPadding];
  v89 = v11;
  v82 = v12;
  v84 = v13;
  v80 = v14;
  [(CKPinnedConversationTailedActivityItemView *)self balloonTailHeight];
  v16 = v15;
  [(CKPinnedConversationTailedActivityItemView *)self pillCornerRadius];
  v93 = v17;
  v18 = v17 * 1.528665;
  originationDirection = self->_originationDirection;
  v20 = 0.0;
  if (originationDirection == 1)
  {
    v21 = v16;
  }

  else
  {
    v21 = 0.0;
  }

  v78 = v21;
  v22 = v6 + v21;
  v23 = v10 - v16;
  v95 = 0.0;
  v96 = 0.0;
  [(CKPinnedConversationTailedActivityItemView *)self tailAttachmentPointWithOutputForMinimumContinousAnchorX:&v96 maximumContinuousAnchorX:&v95];
  v86 = v25;
  originationHorizontalDirection = self->_originationHorizontalDirection;
  v26 = v18 + v18 < v8;
  v27 = originationDirection == 1;
  v28 = originationDirection != 1;
  if (v18 + v18 >= v8)
  {
    v28 = 0;
    v27 = 0;
  }

  if (v24 < v96)
  {
    v29 = v28;
  }

  else
  {
    v29 = v18 + v18 < v8;
  }

  if (v24 < v96)
  {
    v30 = v27;
  }

  else
  {
    v30 = v18 + v18 < v8;
  }

  v31 = originationDirection != 1;
  v32 = originationDirection == 1;
  v92 = v18 + v18;
  if (v18 + v18 >= v8)
  {
    v32 = 0;
    v31 = 0;
  }

  v87 = v24;
  if (v24 > v95)
  {
    v33 = v32;
  }

  else
  {
    v33 = v18 + v18 < v8;
  }

  if (v24 > v95)
  {
    v26 = v31;
  }

  v91 = v26;
  v34 = [(CKPinnedConversationTailedActivityItemView *)self contentViewContentMode];
  if (v34 == 1)
  {
    [(CKPinnedConversationTailedActivityItemView *)self bounds];
    v20 = v40;
  }

  else
  {
    v35 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    if (!v34)
    {
      [(CKPinnedConversationTailedActivityItemView *)self contentViewHorizontalInsetForPillCornerRadius];
      v39 = v38;
      v37 = v82 + v4 + v38;
      v20 = v6 + v89 + v78;
      v35 = v8 - v82 - v80 + v39 * -2.0;
      v36 = v23 - v89 - v84;
    }
  }

  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __60__CKPinnedConversationTailedActivityItemView_layoutSubviews__block_invoke;
  v94[3] = &unk_1E72EC7B0;
  v94[4] = self;
  *&v94[5] = v37;
  *&v94[6] = v20;
  *&v94[7] = v35;
  *&v94[8] = v36;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v94];
  if (v29)
  {
    v41 = v18;
  }

  else
  {
    v41 = v93;
  }

  v42 = v4 + v41;
  v98.origin.x = v4;
  v98.origin.y = v22;
  v98.size.width = v8;
  v98.size.height = v23;
  MaxX = CGRectGetMaxX(v98);
  if (v91)
  {
    v44 = v18;
  }

  else
  {
    v44 = v93;
  }

  v45 = MaxX - v44;
  v90 = v30;
  if (!v30)
  {
    v18 = v93;
  }

  v99.origin.x = v4;
  v99.origin.y = v22;
  v99.size.width = v8;
  v99.size.height = v23;
  MaxY = CGRectGetMaxY(v99);
  v46 = objc_alloc_init(MEMORY[0x1E69DC728]);
  v85 = v42;
  [v46 moveToPoint:{v42, v22}];
  if (originationDirection == 1)
  {
    [v46 currentPoint];
    if (originationHorizontalDirection)
    {
      v49 = v48;
    }

    else
    {
      v49 = v22;
    }

    if (originationHorizontalDirection)
    {
      v50 = v47;
    }

    else
    {
      v50 = v45;
    }

    if (originationHorizontalDirection)
    {
      v51 = v45;
    }

    else
    {
      v51 = v47;
    }

    if (originationHorizontalDirection)
    {
      v52 = v22;
    }

    else
    {
      v52 = v48;
    }

    v53 = [(CKPinnedConversationTailedActivityItemView *)self _pathForTailedBalloonSegmentWithStartPoint:self->_originationHorizontalDirection endPoint:self->_originationDirection anchorPoint:v50 originationHorizontalDirection:v49 originationDirection:v51, v52, v87, v86];
    v54 = v53;
    if (originationHorizontalDirection)
    {
      v55 = v53;
    }

    else
    {
      v55 = [v53 bezierPathByReversingPath];
    }

    v56 = v55;
    [v46 appendPath:v55];

    v33 = v33;
  }

  else
  {
    [v46 addLineToPoint:{v45, v22}];
  }

  v76 = v4 + v18;
  v57 = v92 < v23;
  v100.origin.x = v4;
  v100.origin.y = v22;
  v100.size.width = v8;
  v100.size.height = v23;
  v58 = CGRectGetMaxX(v100);
  v101.origin.x = v4;
  v101.origin.y = v22;
  v101.size.width = v8;
  v101.size.height = v23;
  MinY = CGRectGetMinY(v101);
  v102.origin.x = v4;
  v102.origin.y = v22;
  v102.size.width = v8;
  v102.size.height = v23;
  v60 = CGRectGetMaxX(v102);
  v103.origin.x = v4;
  v103.origin.y = v22;
  v103.size.width = v8;
  v103.size.height = v23;
  v61 = CGRectGetMaxY(v103);
  v104.origin.x = v4;
  v104.origin.y = v22;
  v104.size.width = v8;
  v104.size.height = v23;
  MinX = CGRectGetMinX(v104);
  v105.origin.x = v4;
  v105.origin.y = v22;
  v105.size.width = v8;
  v105.size.height = v23;
  v77 = CGRectGetMaxY(v105);
  v106.origin.x = v4;
  v106.origin.y = v22;
  v106.size.width = v8;
  v106.size.height = v23;
  v79 = CGRectGetMinX(v106);
  v107.origin.x = v4;
  v107.origin.y = v22;
  v107.size.width = v8;
  v107.size.height = v23;
  v62 = CGRectGetMinY(v107);
  [v46 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v91 clockwise:v57 leadInIsContinuous:v58 leadOutIsContinuous:{MinY, v93, v93}];
  [v46 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v57 clockwise:v33 leadInIsContinuous:v60 leadOutIsContinuous:{v61, v93, v93}];
  if (originationDirection == 1)
  {
    [v46 addLineToPoint:{v76, MaxY}];
    v63 = v92;
  }

  else
  {
    [v46 currentPoint];
    v66 = MaxY;
    if (originationHorizontalDirection)
    {
      v67 = MaxY;
    }

    else
    {
      v67 = v65;
    }

    v68 = v76;
    if (originationHorizontalDirection)
    {
      v69 = v76;
    }

    else
    {
      v69 = v64;
    }

    if (originationHorizontalDirection)
    {
      v68 = v64;
      v66 = v65;
    }

    v70 = [(CKPinnedConversationTailedActivityItemView *)self _pathForTailedBalloonSegmentWithStartPoint:self->_originationHorizontalDirection endPoint:self->_originationDirection anchorPoint:v69 originationHorizontalDirection:v67 originationDirection:v68, v66, v87, v86];
    v71 = v70;
    if (originationHorizontalDirection)
    {
      v72 = [v70 bezierPathByReversingPath];
    }

    else
    {
      v72 = v70;
    }

    v73 = v72;
    v63 = v92;
    [v46 appendPath:v72];
  }

  v74 = v63 < v23;
  [v46 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v90 clockwise:v74 leadInIsContinuous:MinX leadOutIsContinuous:{v77, v93, v93}];
  [v46 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v74 clockwise:v29 leadInIsContinuous:v79 leadOutIsContinuous:{v62, v93, v93}];
  [v46 addLineToPoint:{v85, v22}];
  v75 = [v46 CGPath];
  [(CAShapeLayer *)self->_backdropMaskShapeLayer setPath:v75];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self->_broadShadowLayer setShadowPath:v75];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self->_tightShadowLayer setShadowPath:v75];
  [(CAShapeLayer *)self->_contentViewStrokeLayer setPath:v75];
}

void __60__CKPinnedConversationTailedActivityItemView_layoutSubviews__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contentView];
  [v2 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (id)_pathForTailedBalloonSegmentWithStartPoint:(CGPoint)a3 endPoint:(CGPoint)a4 anchorPoint:(CGPoint)a5 originationHorizontalDirection:(int64_t)a6 originationDirection:(int64_t)a7
{
  y = a5.y;
  x = a5.x;
  v11 = a3.y;
  v12 = a3.x;
  v14 = objc_alloc_init(MEMORY[0x1E69DC728]);
  [v14 moveToPoint:{v12, v11}];
  [(CKPinnedConversationTailedActivityItemView *)self balloonTailWidth];
  v16 = vabdd_f64(y, v11) + -1.0;
  v17 = -(v15 * 0.661754856);
  if (a7 == 1)
  {
    v18 = -(v16 * 0.811138015);
  }

  else
  {
    v18 = v16 * 0.811138015;
  }

  v19 = -(v16 * 0.182405165);
  if (a7 == 1)
  {
    v19 = v16 * 0.182405165;
  }

  v37 = v19;
  if (!a6)
  {
    v17 = v15 * 0.661754856;
  }

  v20 = -(v15 * 0.162759545);
  if (a6)
  {
    v20 = v15 * 0.162759545;
    v21 = v15 * 0.419959812;
  }

  else
  {
    v21 = -(v15 * 0.419959812);
  }

  v22 = -(v15 * 0.158070998);
  if (a6)
  {
    v22 = v15 * 0.158070998;
  }

  v36 = v22;
  if (a6)
  {
    v23 = v15;
  }

  else
  {
    v23 = -v15;
  }

  v24 = x;
  v25 = v20 + x + v17;
  v38 = x + v17;
  v39 = v23;
  v26 = v16 * 0.136400323;
  if (a7 == 1)
  {
    v26 = -(v16 * 0.136400323);
  }

  v27 = v11 + v26;
  v28 = v16 * 0.0121065375;
  if (a7 == 1)
  {
    v28 = -(v16 * 0.0121065375);
  }

  v35 = v28;
  [v14 addLineToPoint:?];
  v29 = v21 + v25;
  v30 = v18 + v27;
  v31 = (v27 - v30) / (v25 - v29);
  [v14 addQuadCurveToPoint:v25 controlPoint:{v27, v29 + (v11 - v30) / v31, v11}];
  [v14 addLineToPoint:{v29, v30}];
  [v14 addCurveToPoint:v36 + v29 controlPoint1:v37 + v30 controlPoint2:{v24, v30 + v31 * (v24 - v29), v36 + v29, v35 + v30}];
  [v14 currentPoint];
  [v14 currentPoint];
  [v14 currentPoint];
  v33 = v32;
  [v14 addLineToPoint:?];
  [v14 addQuadCurveToPoint:v39 + v38 controlPoint:{v11, v33, v11}];
  [v14 addLineToPoint:{a4.x, a4.y}];

  return v14;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(CKPinnedConversationTailedActivityItemView *)self contentViewPadding];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v34 = v12;
  [(CKPinnedConversationTailedActivityItemView *)self balloonTailHeight];
  v14 = v13;
  [(CKPinnedConversationTailedActivityItemView *)self balloonTailWidth];
  [(CKPinnedConversationTailedActivityItemView *)self pillCornerRadius];
  v15 = [(CKPinnedConversationTailedActivityItemView *)self contentViewContentMode];
  if (v15 == 1)
  {
    v28 = [(CKPinnedConversationTailedActivityItemView *)self contentView];
    [v28 systemLayoutSizeFittingSize:{width, height}];
    v21 = v29;
    v20 = v30;
  }

  else
  {
    v16 = v14;
    v17 = height;
    v33 = width;
    v18 = v9;
    v19 = v7;
    v20 = 0.0;
    v21 = 0.0;
    if (!v15)
    {
      v22 = v16;
      [(CKPinnedConversationTailedActivityItemView *)self contentViewHorizontalInsetForPillCornerRadius];
      v24 = v33 - v18 - v34 - v23 * 2.0;
      v25 = [(CKPinnedConversationTailedActivityItemView *)self contentView];
      [v25 systemLayoutSizeFittingSize:{v24, v17 - v22 - v19 - v11}];

      UICeilToViewScale();
      v20 = v26;
      UICeilToViewScale();
      v21 = v27;
    }
  }

  v31 = v21;
  v32 = v20;
  result.height = v32;
  result.width = v31;
  return result;
}

- (UIEdgeInsets)contentViewPadding
{
  v2 = 5.0;
  v3 = 0.0;
  v4 = 5.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (double)balloonTailHeight
{
  [(CKPinnedConversationTailedActivityItemView *)self pillCornerRadius];

  UIRoundToViewScale();
  return result;
}

- (double)contentViewHorizontalInsetForPillCornerRadius
{
  [(CKPinnedConversationTailedActivityItemView *)self pillCornerRadius];

  UIRoundToViewScale();
  return result;
}

- (void)setOriginationDirection:(int64_t)a3
{
  if (self->_originationDirection != a3)
  {
    self->_originationDirection = a3;
    [(CKPinnedConversationTailedActivityItemView *)self setNeedsLayout];
  }
}

- (void)setOriginationPoint:(CGPoint)a3
{
  if (a3.x != self->_originationPoint.x || a3.y != self->_originationPoint.y)
  {
    self->_originationPoint = a3;
    [(CKPinnedConversationTailedActivityItemView *)self setNeedsLayout];
  }
}

- (void)setPreferredTailAttachmentPointXCoordinate:(double)a3
{
  if (self->_preferredTailAttachmentPointXCoordinate != a3)
  {
    self->_preferredTailAttachmentPointXCoordinate = a3;
    [(CKPinnedConversationTailedActivityItemView *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKPinnedConversationTailedActivityItemView;
  [(CKPinnedConversationTailedActivityItemView *)&v4 traitCollectionDidChange:a3];
  [(CKPinnedConversationTailedActivityItemView *)self _updateUserInterfaceStyles];
}

- (void)_updateUserInterfaceStyles
{
  v3 = [(CKPinnedConversationTailedActivityItemView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  [(CKPinnedConversationActivityItemViewBackdropLayer *)self->_backdropLayer setUserInterfaceStyle:v4];
  [(CKPinnedConversationActivityItemViewShadowLayer *)self->_broadShadowLayer setUserInterfaceStyle:v4];
  tightShadowLayer = self->_tightShadowLayer;

  [(CKPinnedConversationActivityItemViewShadowLayer *)tightShadowLayer setUserInterfaceStyle:v4];
}

- (CGPoint)originationPoint
{
  x = self->_originationPoint.x;
  y = self->_originationPoint.y;
  result.y = y;
  result.x = x;
  return result;
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

@end