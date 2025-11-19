@interface ICDocCamOverlayView
- (CATransform3D)calculateRotationTransformForPoint:(SEL)a3 toPoint:(CGPoint)a4;
- (CGPath)newGridPathFromRect:(id)a3;
- (CGPath)newPathFromRect:(id)a3;
- (CGRect)frameForContentInView;
- (CGRect)previewBounds;
- (ICDocCamImageQuad)documentQuad;
- (ICDocCamOverlayView)initWithCoder:(id)a3;
- (ICDocCamOverlayView)initWithFrame:(CGRect)a3;
- (NSArray)debugRects;
- (NSString)displayString;
- (id)calculateCurrentRectangleFromDocumentQuad:(id)a3;
- (id)extrudedRectFromRect:(id)a3;
- (id)tintColorWithAlpha:(double)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)clearRectangles;
- (void)setDebugRects:(id)a3;
- (void)setDisplayString:(id)a3;
- (void)setDocumentQuad:(id)a3;
- (void)setupGridLayers;
- (void)setupRectangleLayer;
- (void)setupShapeLayersIfNeeded;
- (void)startGridAnimationFromRect:(id)a3;
- (void)stopGridAnimation;
- (void)updateGridLayerFromRect:(id)a3;
- (void)updateRectangleLayerFromRect:(id)a3;
- (void)updateShapeLayers;
@end

@implementation ICDocCamOverlayView

- (ICDocCamOverlayView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = ICDocCamOverlayView;
  v3 = [(ICDocCamOverlayView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = dispatch_semaphore_create(1);
    sem = v3->sem;
    v3->sem = v4;

    v3->_showGridAnimation = 1;
  }

  return v3;
}

- (ICDocCamOverlayView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = ICDocCamOverlayView;
  v3 = [(ICDocCamOverlayView *)&v7 initWithCoder:a3];
  if (v3)
  {
    v4 = dispatch_semaphore_create(1);
    sem = v3->sem;
    v3->sem = v4;

    v3->_showGridAnimation = 1;
  }

  return v3;
}

- (NSString)displayString
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_displayString;
  objc_sync_exit(v2);

  return v3;
}

- (void)setDisplayString:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  objc_storeStrong(&v6->_displayString, a3);
  objc_sync_exit(v6);

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__ICDocCamOverlayView_setDisplayString___block_invoke;
  v8[3] = &unk_278F92DE8;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __40__ICDocCamOverlayView_setDisplayString___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  v3 = [*(a1 + 40) displayStringLabel];
  v4 = v3;
  if (v2)
  {

    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277D756B8]);
      [*(a1 + 40) setDisplayStringLabel:v5];

      v6 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];
      v7 = [*(a1 + 40) displayStringLabel];
      [v7 setTextColor:v6];

      v8 = [*(a1 + 40) displayStringLabel];
      [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

      v9 = *(a1 + 40);
      v10 = [v9 displayStringLabel];
      [v9 addSubview:v10];

      v11 = [*(a1 + 40) displayStringLabel];
      v12 = [v11 topAnchor];
      v13 = [*(a1 + 40) topAnchor];
      v14 = [v12 constraintEqualToAnchor:v13 constant:40.0];
      [v14 setActive:1];

      v15 = [*(a1 + 40) displayStringLabel];
      v16 = [v15 leadingAnchor];
      v17 = [*(a1 + 40) leadingAnchor];
      v18 = [v16 constraintEqualToAnchor:v17 constant:30.0];
      [v18 setActive:1];
    }

    v19 = *(a1 + 32);
    v21 = [*(a1 + 40) displayStringLabel];
    [v21 setText:v19];
  }

  else
  {
    [v3 removeFromSuperview];

    v20 = *(a1 + 40);

    [v20 setDisplayStringLabel:0];
  }
}

- (void)setDebugRects:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  objc_storeStrong(&v6->_debugRects, a3);
  objc_sync_exit(v6);

  if (v5)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__ICDocCamOverlayView_setDebugRects___block_invoke;
    block[3] = &unk_278F92C70;
    block[4] = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (NSArray)debugRects
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_debugRects;
  objc_sync_exit(v2);

  return v3;
}

- (void)setDocumentQuad:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  objc_storeStrong(&v6->_documentQuad, a3);
  objc_sync_exit(v6);

  if (v5)
  {
    [(ICDocCamOverlayView *)v6 setNumberOfMissedFrames:0];
    v7 = v9;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v8 = __39__ICDocCamOverlayView_setDocumentQuad___block_invoke_2;
LABEL_5:
    v7[2] = v8;
    v7[3] = &unk_278F92C70;
    v7[4] = v6;
    dispatch_async(MEMORY[0x277D85CD0], v7);
    goto LABEL_6;
  }

  [(ICDocCamOverlayView *)v6 setNumberOfMissedFrames:[(ICDocCamOverlayView *)v6 numberOfMissedFrames]+ 1];
  if ([(ICDocCamOverlayView *)v6 numberOfMissedFrames]>= 3)
  {
    v7 = block;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v8 = __39__ICDocCamOverlayView_setDocumentQuad___block_invoke;
    goto LABEL_5;
  }

LABEL_6:
}

uint64_t __39__ICDocCamOverlayView_setDocumentQuad___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateShapeLayers];
  v2 = *(a1 + 32);

  return [v2 setNeedsDisplay];
}

uint64_t __39__ICDocCamOverlayView_setDocumentQuad___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) updateShapeLayers];
  v2 = *(a1 + 32);

  return [v2 setNeedsDisplay];
}

- (ICDocCamImageQuad)documentQuad
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_documentQuad;
  objc_sync_exit(v2);

  return v3;
}

- (void)clearRectangles
{
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = self;
    objc_sync_enter(v3);
    documentQuad = v3->_documentQuad;
    v3->_documentQuad = 0;

    v3->_numberOfMissedFrames = 0;
    debugRects = v3->_debugRects;
    v3->_debugRects = 0;

    objc_sync_exit(v3);
    [(ICDocCamOverlayView *)v3 setRectangleIsActive:0];
    [(ICDocCamOverlayView *)v3 stopGridAnimation];
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v6 = [(ICDocCamOverlayView *)v3 rectangleShapeLayer];
    [v6 setPath:0];

    v7 = [(ICDocCamOverlayView *)v3 rectangleShapeLayer];
    [v7 setStrokeColor:0];

    [MEMORY[0x277CD9FF0] commit];
    [(ICDocCamOverlayView *)v3 updateShapeLayers];

    [(ICDocCamOverlayView *)v3 setNeedsDisplay];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__ICDocCamOverlayView_clearRectangles__block_invoke;
    block[3] = &unk_278F92C70;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)updateShapeLayers
{
  [(ICDocCamOverlayView *)self setupShapeLayersIfNeeded];
  v3 = [(ICDocCamOverlayView *)self documentQuad];
  if (v3)
  {
    v4 = [(ICDocCamOverlayView *)self documentQuad];
    v9 = [(ICDocCamOverlayView *)self calculateCurrentRectangleFromDocumentQuad:v4];
  }

  else
  {
    v9 = 0;
  }

  [(ICDocCamOverlayView *)self updateRectangleLayerFromRect:v9];
  if ([(ICDocCamOverlayView *)self showGridAnimation])
  {
    v5 = [(ICDocCamOverlayView *)self gridAnimation];

    if (v5)
    {
      [(ICDocCamOverlayView *)self updateGridLayerFromRect:v9];
    }

    else if ([(ICDocCamOverlayView *)self rectangleIsActive])
    {
      v6 = [(ICDocCamOverlayView *)self dateToStartGridAnimation];
      v7 = [MEMORY[0x277CBEAA8] date];
      v8 = [v6 compare:v7];

      if (v8 == -1)
      {
        [(ICDocCamOverlayView *)self startGridAnimationFromRect:v9];
      }
    }
  }
}

- (CGRect)frameForContentInView
{
  [(ICDocCamOverlayView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(ICDocCamOverlayView *)self previewBounds];
  v12 = v11;
  v14 = v13;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  v15 = CGRectGetWidth(v29) / v12;
  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v8;
  v30.size.height = v10;
  v16 = CGRectGetHeight(v30) / v14;
  v17 = fminf(v15, v16);
  v18 = v12 * v17;
  v19 = v14 * v17;
  v31.origin.x = v4;
  v31.origin.y = v6;
  v31.size.width = v8;
  v31.size.height = v10;
  v20 = (CGRectGetWidth(v31) - v18) * 0.5;
  v21 = roundf(v20);
  v32.origin.x = v4;
  v32.origin.y = v6;
  v32.size.width = v8;
  v32.size.height = v10;
  v22 = (CGRectGetHeight(v32) - v19) * 0.5;
  v23 = roundf(v22);
  v24 = v18;
  v25 = roundf(v24);
  v26 = v19;
  v27 = roundf(v26);
  v28 = v21;
  result.size.height = v27;
  result.size.width = v25;
  result.origin.y = v23;
  result.origin.x = v28;
  return result;
}

- (id)calculateCurrentRectangleFromDocumentQuad:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(ICDocCamImageQuad);
  [(ICDocCamOverlayView *)self previewBounds];
  v38 = v6;
  v39 = v7;
  v36 = v9;
  v37 = v8;
  [v4 bottomLeft];
  v40 = v10;
  v41 = v11;
  [v4 bottomRight];
  v42 = v12;
  v43 = v13;
  [v4 topRight];
  v44 = v14;
  v45 = v15;
  [v4 topLeft];
  v16 = 0;
  v46 = v17;
  v47 = v18;
  v19 = vdupq_lane_s64(v38, 0);
  v20 = vdupq_lane_s64(v39, 0);
  __asm { FMOV            V2.2D, #1.0 }

  do
  {
    v26 = (&v40 + v16);
    v50 = vld2q_f64(v26);
    v27 = vmulq_n_f64(v50.val[0], v37);
    v50.val[0] = vmulq_n_f64(vsubq_f64(_Q2, v50.val[1]), v36);
    v50.val[1] = vaddq_f64(v19, v27);
    v28 = vaddq_f64(v20, v50.val[0]);
    vst2q_f64(v26, *(&v50 + 16));
    v16 += 32;
  }

  while (v16 != 64);
  v29 = v42;
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v33 = v46;
  v34 = v47;
  [(ICDocCamImageQuad *)v5 setBottomLeft:v40, v41];
  [(ICDocCamImageQuad *)v5 setBottomRight:v29, v30];
  [(ICDocCamImageQuad *)v5 setTopRight:v31, v32];
  [(ICDocCamImageQuad *)v5 setTopLeft:v33, v34];

  return v5;
}

- (CGPath)newPathFromRect:(id)a3
{
  v3 = a3;
  Mutable = CGPathCreateMutable();
  [v3 bottomLeft];
  v6 = v5;
  [v3 bottomLeft];
  CGPathMoveToPoint(Mutable, 0, v6, v7);
  [v3 topLeft];
  v9 = v8;
  [v3 topLeft];
  CGPathAddLineToPoint(Mutable, 0, v9, v10);
  [v3 topRight];
  v12 = v11;
  [v3 topRight];
  CGPathAddLineToPoint(Mutable, 0, v12, v13);
  [v3 bottomRight];
  v15 = v14;
  [v3 bottomRight];
  CGPathAddLineToPoint(Mutable, 0, v15, v16);
  [v3 bottomLeft];
  v18 = v17;
  [v3 bottomLeft];
  v20 = v19;

  CGPathAddLineToPoint(Mutable, 0, v18, v20);
  return Mutable;
}

- (CGPath)newGridPathFromRect:(id)a3
{
  v3 = a3;
  Mutable = CGPathCreateMutable();
  [v3 bottomLeft];
  v6 = v5;
  [v3 bottomLeft];
  CGPathMoveToPoint(Mutable, 0, v6, v7);
  [v3 topLeft];
  v9 = v8;
  [v3 topLeft];
  CGPathAddLineToPoint(Mutable, 0, v9, v10);
  [v3 topRight];
  v12 = v11;
  [v3 topRight];
  CGPathAddLineToPoint(Mutable, 0, v12, v13);
  [v3 bottomRight];
  v15 = v14;
  [v3 bottomRight];
  CGPathAddLineToPoint(Mutable, 0, v15, v16);
  [v3 bottomLeft];
  v18 = v17;
  [v3 bottomLeft];
  CGPathAddLineToPoint(Mutable, 0, v18, v19);
  [v3 bottomLeft];
  v21 = v20;
  v23 = v22;
  [v3 topLeft];
  v25 = v24;
  v27 = v26;
  [v3 bottomLeft];
  v29 = DCTSDSubtractPoints(v25, v27, v28);
  v31 = DCTSDMultiplyPointScalar(v29, v30, 0.33);
  v32 = DCTSDAddPoints(v21, v23, v31);
  v142 = v33;
  v144 = v32;
  [v3 bottomLeft];
  v35 = v34;
  v37 = v36;
  [v3 topLeft];
  v39 = v38;
  v41 = v40;
  [v3 bottomLeft];
  v43 = DCTSDSubtractPoints(v39, v41, v42);
  v45 = DCTSDMultiplyPointScalar(v43, v44, 0.66);
  v46 = DCTSDAddPoints(v35, v37, v45);
  v138 = v47;
  v140 = v46;
  [v3 bottomRight];
  v49 = v48;
  v51 = v50;
  [v3 topRight];
  v53 = v52;
  v55 = v54;
  [v3 bottomRight];
  v57 = DCTSDSubtractPoints(v53, v55, v56);
  v59 = DCTSDMultiplyPointScalar(v57, v58, 0.33);
  v60 = DCTSDAddPoints(v49, v51, v59);
  v62 = v61;
  [v3 bottomRight];
  v64 = v63;
  v66 = v65;
  [v3 topRight];
  v68 = v67;
  v70 = v69;
  [v3 bottomRight];
  v72 = DCTSDSubtractPoints(v68, v70, v71);
  v74 = DCTSDMultiplyPointScalar(v72, v73, 0.66);
  v75 = DCTSDAddPoints(v64, v66, v74);
  v77 = v76;
  CGPathMoveToPoint(Mutable, 0, v144, v142);
  CGPathAddLineToPoint(Mutable, 0, v60, v62);
  CGPathMoveToPoint(Mutable, 0, v140, v138);
  CGPathAddLineToPoint(Mutable, 0, v75, v77);
  [v3 topLeft];
  v79 = v78;
  v81 = v80;
  [v3 topRight];
  v83 = v82;
  v85 = v84;
  [v3 topLeft];
  v87 = DCTSDSubtractPoints(v83, v85, v86);
  v89 = DCTSDMultiplyPointScalar(v87, v88, 0.33);
  v90 = DCTSDAddPoints(v79, v81, v89);
  v143 = v91;
  v145 = v90;
  [v3 topLeft];
  v93 = v92;
  v95 = v94;
  [v3 topRight];
  v97 = v96;
  v99 = v98;
  [v3 topLeft];
  v101 = DCTSDSubtractPoints(v97, v99, v100);
  v103 = DCTSDMultiplyPointScalar(v101, v102, 0.66);
  v104 = DCTSDAddPoints(v93, v95, v103);
  v139 = v105;
  v141 = v104;
  [v3 bottomLeft];
  v107 = v106;
  v109 = v108;
  [v3 bottomRight];
  v111 = v110;
  v113 = v112;
  [v3 bottomLeft];
  v115 = DCTSDSubtractPoints(v111, v113, v114);
  v117 = DCTSDMultiplyPointScalar(v115, v116, 0.33);
  v118 = DCTSDAddPoints(v107, v109, v117);
  v120 = v119;
  [v3 bottomLeft];
  v122 = v121;
  v124 = v123;
  [v3 bottomRight];
  v126 = v125;
  v128 = v127;
  [v3 bottomLeft];
  v130 = v129;

  v131 = DCTSDSubtractPoints(v126, v128, v130);
  v133 = DCTSDMultiplyPointScalar(v131, v132, 0.66);
  v134 = DCTSDAddPoints(v122, v124, v133);
  v136 = v135;
  CGPathMoveToPoint(Mutable, 0, v145, v143);
  CGPathAddLineToPoint(Mutable, 0, v118, v120);
  CGPathMoveToPoint(Mutable, 0, v141, v139);
  CGPathAddLineToPoint(Mutable, 0, v134, v136);
  return Mutable;
}

- (id)extrudedRectFromRect:(id)a3
{
  v3 = a3;
  [v3 topLeft];
  v5 = v4;
  v7 = v6;
  [v3 bottomLeft];
  v9 = DCTSDSubtractPoints(v5, v7, v8);
  v11 = v10;
  [v3 bottomRight];
  v13 = v12;
  v15 = v14;
  [v3 bottomLeft];
  v17 = DCTSDSubtractPoints(v13, v15, v16);
  v18 = DCTSDAddPoints(v9, v11, v17);
  v20 = DCTSDNormalizePoint(v18, v19);
  v101 = v21;
  v102 = v20;
  [v3 bottomLeft];
  v23 = v22;
  v25 = v24;
  [v3 bottomRight];
  v27 = DCTSDSubtractPoints(v23, v25, v26);
  v29 = v28;
  [v3 topRight];
  v31 = v30;
  v33 = v32;
  [v3 bottomRight];
  v35 = DCTSDSubtractPoints(v31, v33, v34);
  v36 = DCTSDAddPoints(v27, v29, v35);
  v100 = DCTSDNormalizePoint(v36, v37);
  v39 = v38;
  [v3 topLeft];
  v41 = v40;
  v43 = v42;
  [v3 topRight];
  v45 = DCTSDSubtractPoints(v41, v43, v44);
  v47 = v46;
  [v3 bottomRight];
  v49 = v48;
  v51 = v50;
  [v3 topRight];
  v53 = DCTSDSubtractPoints(v49, v51, v52);
  v54 = DCTSDAddPoints(v45, v47, v53);
  v56 = DCTSDNormalizePoint(v54, v55);
  v58 = v57;
  [v3 topRight];
  v60 = v59;
  v62 = v61;
  [v3 topLeft];
  v64 = DCTSDSubtractPoints(v60, v62, v63);
  v66 = v65;
  [v3 bottomLeft];
  v68 = v67;
  v70 = v69;
  [v3 topLeft];
  v72 = DCTSDSubtractPoints(v68, v70, v71);
  v73 = DCTSDAddPoints(v64, v66, v72);
  v75 = DCTSDNormalizePoint(v73, v74);
  v77 = v76;
  v78 = objc_alloc_init(ICDocCamImageQuad);
  [v3 bottomLeft];
  v80 = v79;
  v82 = v81;
  v83 = DCTSDMultiplyPointScalar(v102, v101, 50.0);
  [(ICDocCamImageQuad *)v78 setBottomLeft:DCTSDSubtractPoints(v80, v82, v83)];
  [v3 bottomRight];
  v85 = v84;
  v87 = v86;
  v88 = DCTSDMultiplyPointScalar(v100, v39, 50.0);
  [(ICDocCamImageQuad *)v78 setBottomRight:DCTSDSubtractPoints(v85, v87, v88)];
  [v3 topRight];
  v90 = v89;
  v92 = v91;
  v93 = DCTSDMultiplyPointScalar(v56, v58, 50.0);
  [(ICDocCamImageQuad *)v78 setTopRight:DCTSDSubtractPoints(v90, v92, v93)];
  [v3 topLeft];
  v95 = v94;
  v97 = v96;

  v98 = DCTSDMultiplyPointScalar(v75, v77, 50.0);
  [(ICDocCamImageQuad *)v78 setTopLeft:DCTSDSubtractPoints(v95, v97, v98)];

  return v78;
}

- (id)tintColorWithAlpha:(double)a3
{
  v4 = [(ICDocCamOverlayView *)self tintColor];
  v5 = [v4 colorWithAlphaComponent:a3];

  return v5;
}

- (void)updateRectangleLayerFromRect:(id)a3
{
  v42[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(ICDocCamOverlayView *)self rectangleIsActive])
  {
    v5 = 0.1;
  }

  else
  {
    v5 = 0.2;
  }

  v6 = [(ICDocCamOverlayView *)self rectangleShapeLayer];
  v7 = [v6 presentationLayer];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [(ICDocCamOverlayView *)self rectangleShapeLayer];
  }

  v10 = v9;

  if (v4)
  {
    v11 = [(ICDocCamOverlayView *)self newPathFromRect:v4];
    if ([(ICDocCamOverlayView *)self rectangleIsActive])
    {
      if (v10)
      {
        v12 = CGPathRetain([v10 path]);
        goto LABEL_16;
      }

      v21 = [(ICDocCamOverlayView *)self rectangleShapeLayer];
      v22 = CGPathRetain([v21 path]);
    }

    else
    {
      v21 = [(ICDocCamOverlayView *)self extrudedRectFromRect:v4];
      v22 = [(ICDocCamOverlayView *)self newPathFromRect:v21];
    }

    v12 = v22;

LABEL_16:
    v23 = MEMORY[0x277CDA230];
    if (v12)
    {
      v24 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"path"];
      [v24 setDuration:v5];
      [v24 setFromValue:v12];
      [v24 setToValue:v11];
      [v24 setFillMode:*v23];
      v25 = [(ICDocCamOverlayView *)self rectangleShapeLayer];
      [v25 setPath:v11];

      v26 = [(ICDocCamOverlayView *)self rectangleShapeLayer];
      [v26 addAnimation:v24 forKey:@"path"];

      CGPathRelease(v12);
    }

    CGPathRelease(v11);
    if (![(ICDocCamOverlayView *)self rectangleIsActive])
    {
      [(ICDocCamOverlayView *)self setRectangleIsActive:1];
      v18 = [(ICDocCamOverlayView *)self tintColorWithAlpha:0.3];
      v27 = [(ICDocCamOverlayView *)self tintColorWithAlpha:1.0];
      v28 = [v18 CGColor];
      v29 = [(ICDocCamOverlayView *)self rectangleShapeLayer];
      [v29 setFillColor:v28];

      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      v30 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeColor"];
      v31 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeColor"];
      [v30 setDuration:0.2];
      v32 = *MEMORY[0x277CDA7B8];
      [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
      v34 = v33 = v23;
      [v30 setTimingFunction:v34];

      [v30 setFillMode:*v33];
      [v30 setFromValue:{objc_msgSend(v10, "strokeColor")}];
      [v30 setToValue:{objc_msgSend(v27, "CGColor")}];
      [v31 setBeginTime:0.4];
      [v31 setDuration:0.7];
      v35 = [MEMORY[0x277CD9EF8] functionWithName:v32];
      [v31 setTimingFunction:v35];

      [v31 setFillMode:*MEMORY[0x277CDA238]];
      [v31 setFromValue:{objc_msgSend(v27, "CGColor")}];
      [v31 setToValue:{objc_msgSend(v18, "CGColor")}];
      v36 = [MEMORY[0x277CD9E00] animation];
      [v36 setDuration:1.1];
      v42[0] = v30;
      v42[1] = v31;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
      [v36 setAnimations:v37];

      v38 = [v18 CGColor];
      v39 = [(ICDocCamOverlayView *)self rectangleShapeLayer];
      [v39 setStrokeColor:v38];

      v40 = [(ICDocCamOverlayView *)self rectangleShapeLayer];
      [v40 addAnimation:v36 forKey:@"strokeColor"];

      [MEMORY[0x277CD9FF0] commit];
      [(ICDocCamOverlayView *)self stopGridAnimation];
      v41 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.4];
      [(ICDocCamOverlayView *)self setDateToStartGridAnimation:v41];

      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if ([(ICDocCamOverlayView *)self rectangleIsActive])
  {
    [(ICDocCamOverlayView *)self stopGridAnimation];
    [(ICDocCamOverlayView *)self setRectangleIsActive:0];
    v13 = [MEMORY[0x277D75348] clearColor];
    v14 = [v13 CGColor];
    v15 = [(ICDocCamOverlayView *)self rectangleShapeLayer];
    [v15 setFillColor:v14];

    v16 = [(ICDocCamOverlayView *)self rectangleShapeLayer];
    [v16 removeAnimationForKey:@"strokeColor"];

    v17 = [(ICDocCamOverlayView *)self rectangleShapeLayer];
    [v17 removeAnimationForKey:@"path"];

    v18 = [MEMORY[0x277D75348] clearColor];
    v19 = [v18 CGColor];
    v20 = [(ICDocCamOverlayView *)self rectangleShapeLayer];
    [v20 setStrokeColor:v19];

LABEL_20:
  }

LABEL_21:
}

- (void)updateGridLayerFromRect:(id)a3
{
  v16 = a3;
  if (![(ICDocCamOverlayView *)self rectangleIsActive])
  {
    [(ICDocCamOverlayView *)self stopGridAnimation];
    goto LABEL_10;
  }

  v4 = [(ICDocCamOverlayView *)self rectangleGridLayer];
  v5 = [v4 presentationLayer];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(ICDocCamOverlayView *)self rectangleGridLayer];
  }

  v8 = v7;

  v9 = [v8 path];
  if (!v9)
  {
    v15 = [(ICDocCamOverlayView *)self rectangleGridLayer];
    v10 = CGPathRetain([v15 path]);

    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10 = CGPathRetain(v9);
  if (v10)
  {
LABEL_8:
    v11 = [(ICDocCamOverlayView *)self newGridPathFromRect:v16];
    v12 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"path"];
    [v12 setDuration:0.1];
    [v12 setFromValue:v10];
    [v12 setToValue:v11];
    [v12 setFillMode:*MEMORY[0x277CDA230]];
    v13 = [(ICDocCamOverlayView *)self rectangleGridLayer];
    [v13 setPath:v11];

    v14 = [(ICDocCamOverlayView *)self rectangleGridLayer];
    [v14 addAnimation:v12 forKey:@"path"];

    CGPathRelease(v11);
    CGPathRelease(v10);
  }

LABEL_9:

LABEL_10:
}

- (void)startGridAnimationFromRect:(id)a3
{
  v4 = [(ICDocCamOverlayView *)self newGridPathFromRect:a3];
  v5 = [(ICDocCamOverlayView *)self rectangleGridLayer];
  [v5 setPath:v4];

  CGPathRelease(v4);
  v6 = [(ICDocCamOverlayView *)self tintColorWithAlpha:1.0];
  v7 = [v6 CGColor];
  v8 = [(ICDocCamOverlayView *)self rectangleGridLayer];
  [v8 setStrokeColor:v7];

  v9 = [MEMORY[0x277CD9EB0] layer];
  [(ICDocCamOverlayView *)self bounds];
  v12 = v10;
  v13 = v11;
  v14 = sqrt(v11 * v11 + v10 * v10);
  if (v10 >= v11)
  {
    v15 = v10;
  }

  else
  {
    v15 = v11;
  }

  [v9 setFrame:{0.0, 0.0, v15 * v14, v15 * 0.25}];
  CGAffineTransformMakeRotation(&v30, -0.785398163);
  v29 = v30;
  [v9 setAffineTransform:&v29];
  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:30];
  for (i = 0; i != 30; ++i)
  {
    v18 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:sin(i * 3.14159265 / 29.0)];
    [v16 addObject:{objc_msgSend(v18, "CGColor")}];
  }

  [v9 setColors:v16];
  v19 = [(ICDocCamOverlayView *)self rectangleGridLayer];
  [v19 setMask:v9];

  [(ICDocCamOverlayView *)self setGradientMaskLayer:v9];
  v20 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"position"];
  [v20 setDelegate:self];
  [v20 setDuration:2.7];
  LODWORD(v21) = 1051361018;
  LODWORD(v22) = 1045220557;
  LODWORD(v23) = 1.0;
  v24 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v21 :0.0 :v22 :v23];
  [v20 setTimingFunction:v24];

  v25 = [MEMORY[0x277CCAE60] valueWithCGPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  [v20 setFromValue:v25];

  v26 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v12, v13}];
  [v20 setToValue:v26];

  [v20 setFillMode:*MEMORY[0x277CDA230]];
  v27 = [(ICDocCamOverlayView *)self gradientMaskLayer];
  [v27 addAnimation:v20 forKey:@"position"];

  [(ICDocCamOverlayView *)self setGridAnimation:v20];
  v28 = [(ICDocCamOverlayView *)self gridAnimation];
  [v28 setDelegate:self];
}

- (void)stopGridAnimation
{
  [(ICDocCamOverlayView *)self setDateToStartGridAnimation:0];
  v3 = [(ICDocCamOverlayView *)self gridAnimation];
  [v3 setDelegate:0];

  v4 = [MEMORY[0x277D75348] clearColor];
  v5 = [v4 CGColor];
  v6 = [(ICDocCamOverlayView *)self rectangleGridLayer];
  [v6 setStrokeColor:v5];

  v7 = [(ICDocCamOverlayView *)self gradientMaskLayer];
  [v7 removeAnimationForKey:@"position"];

  [(ICDocCamOverlayView *)self setGridAnimation:0];

  [(ICDocCamOverlayView *)self setGradientMaskLayer:0];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v5 = a3;
  v6 = [(ICDocCamOverlayView *)self gridAnimation];

  if (v6 == v5)
  {

    [(ICDocCamOverlayView *)self stopGridAnimation];
  }
}

- (void)setupShapeLayersIfNeeded
{
  [(ICDocCamOverlayView *)self setupRectangleLayer];

  [(ICDocCamOverlayView *)self setupGridLayers];
}

- (void)setupRectangleLayer
{
  v3 = [(ICDocCamOverlayView *)self rectangleShapeLayer];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD9F90]);
    [(ICDocCamOverlayView *)self setRectangleShapeLayer:v4];

    v5 = [MEMORY[0x277D75348] clearColor];
    v6 = [v5 CGColor];
    v7 = [(ICDocCamOverlayView *)self rectangleShapeLayer];
    [v7 setStrokeColor:v6];

    v8 = [MEMORY[0x277D75348] clearColor];
    v9 = [v8 CGColor];
    v10 = [(ICDocCamOverlayView *)self rectangleShapeLayer];
    [v10 setFillColor:v9];

    v11 = [MEMORY[0x277D759A0] mainScreen];
    [v11 scale];
    v13 = v12 * 0.5;
    v14 = [(ICDocCamOverlayView *)self rectangleShapeLayer];
    [v14 setLineWidth:v13];

    v16 = [(ICDocCamOverlayView *)self layer];
    v15 = [(ICDocCamOverlayView *)self rectangleShapeLayer];
    [v16 addSublayer:v15];
  }
}

- (void)setupGridLayers
{
  v3 = [(ICDocCamOverlayView *)self rectangleGridLayer];

  if (!v3)
  {
    v9 = objc_alloc_init(MEMORY[0x277CD9F90]);
    v4 = [MEMORY[0x277D75348] clearColor];
    [v9 setStrokeColor:{objc_msgSend(v4, "CGColor")}];

    v5 = [MEMORY[0x277D75348] clearColor];
    [v9 setFillColor:{objc_msgSend(v5, "CGColor")}];

    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 scale];
    [v9 setLineWidth:v7 * 0.5];

    v8 = [(ICDocCamOverlayView *)self layer];
    [v8 addSublayer:v9];

    [(ICDocCamOverlayView *)self setRectangleGridLayer:v9];
  }
}

- (CATransform3D)calculateRotationTransformForPoint:(SEL)a3 toPoint:(CGPoint)a4
{
  v6 = DCTSDNiceAngleFromDelta(a5.x - a4.x, a5.y - a4.y);

  return CATransform3DMakeRotation(retstr, v6, 0.0, 0.0, 1.0);
}

- (CGRect)previewBounds
{
  objc_copyStruct(v6, &self->_previewBounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end