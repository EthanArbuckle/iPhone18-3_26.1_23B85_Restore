@interface NTKDialView
- (BOOL)shouldHideMarkerAtIndex:(int64_t)a3;
- (CGPoint)centerPointForAngle:(double)a3 radius:(int64_t)a4;
- (CGPoint)positionForMarkerAtIndex:(unint64_t)a3;
- (NTKDialView)initWithNumberOfMarkers:(unint64_t)a3 markersFactory:(id)a4 angleProvider:(id)a5;
- (double)angleForIndex:(double)a3;
- (double)searchForClosestMarkerAngleAtAngle:(double)a3;
- (double)totalDiameter;
- (id)markerAtIndex:(unint64_t)a3;
- (unint64_t)searchForClosestIndexAtAngle:(double)a3;
- (void)_layoutCurvedLabel:(id)a3 rotationAngle:(double)a4;
- (void)enumerateMarkers:(id)a3;
- (void)layoutMarkers;
- (void)layoutSubviews;
- (void)reloadMarkers;
- (void)replaceMarker:(id)a3 atIndex:(int64_t)a4;
- (void)setAngleOffset:(double)a3;
- (void)setContentInset:(double)a3;
- (void)setDiameter:(double)a3;
- (void)setDisableLayout:(BOOL)a3;
- (void)setHidingMaskEndAngle:(id)a3;
- (void)setHidingMaskStartAngle:(id)a3;
- (void)setMarkerRotationProvider:(id)a3;
- (void)updateMarkersVisibility;
@end

@implementation NTKDialView

- (NTKDialView)initWithNumberOfMarkers:(unint64_t)a3 markersFactory:(id)a4 angleProvider:(id)a5
{
  v8 = a4;
  v9 = a5;
  v24.receiver = self;
  v24.super_class = NTKDialView;
  v10 = [(NTKDialView *)&v24 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v10)
  {
    v11 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    v12 = [v11 device];
    device = v10->_device;
    v10->_device = v12;

    v14 = _Block_copy(v9);
    angleProvider = v10->_angleProvider;
    v10->_angleProvider = v14;

    v10->_numberOfMarkers = a3;
    v16 = _Block_copy(v8);
    markersFactory = v10->_markersFactory;
    v10->_markersFactory = v16;

    v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
    markers = v10->_markers;
    v10->_markers = v18;

    v20 = objc_alloc_init(MEMORY[0x277D75D18]);
    markerContainerView = v10->_markerContainerView;
    v10->_markerContainerView = v20;

    v22 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v10->_markerContainerView setBackgroundColor:v22];

    [(NTKDialView *)v10 addSubview:v10->_markerContainerView];
    v10->_shouldPixelAlignCenterPoints = 1;
  }

  return v10;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = NTKDialView;
  [(NTKDialView *)&v5 layoutSubviews];
  [(NTKDialView *)self bounds];
  [(UIView *)self->_markerContainerView setFrame:?];
  [(NTKDialView *)self bounds];
  Width = CGRectGetWidth(v6);
  [(NTKDialView *)self bounds];
  Height = CGRectGetHeight(v7);
  if (Width < Height)
  {
    Height = Width;
  }

  [(NTKDialView *)self setDiameter:Height];
  if (self->_needsLayoutMarkers)
  {
    self->_needsLayoutMarkers = 0;
    [(NTKDialView *)self layoutMarkers];
  }
}

- (void)replaceMarker:(id)a3 atIndex:(int64_t)a4
{
  v7 = a3;
  if ([(NSMutableArray *)self->_markers count]> a4)
  {
    v6 = [(NSMutableArray *)self->_markers objectAtIndexedSubscript:a4];
    [v6 removeFromParent];
    [(NSMutableArray *)self->_markers setObject:v7 atIndexedSubscript:a4];
    [v7 addToParentView:self->_markerContainerView];
    [(NTKDialView *)self layoutMarkers];
  }
}

- (void)reloadMarkers
{
  [(NTKDialView *)self enumerateMarkers:&__block_literal_global_25];
  [(NSMutableArray *)self->_markers removeAllObjects];

  [(NTKDialView *)self layoutMarkers];
}

- (void)enumerateMarkers:(id)a3
{
  v4 = a3;
  markers = self->_markers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__NTKDialView_enumerateMarkers___block_invoke;
  v7[3] = &unk_27877F880;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)markers enumerateObjectsUsingBlock:v7];
}

void __32__NTKDialView_enumerateMarkers___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x277CBEB68] null];

  v4 = v5;
  if (v3 != v5)
  {
    (*(*(a1 + 32) + 16))();
    v4 = v5;
  }
}

- (void)setDiameter:(double)a3
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_diameter = a3;
    [(NTKDialView *)self totalDiameter];
    if (v5 > 0.0)
    {

      [(NTKDialView *)self layoutMarkers];
    }
  }
}

- (void)setContentInset:(double)a3
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_contentInset = a3;
    self->_needsLayoutMarkers = 1;

    [(NTKDialView *)self setNeedsLayout];
  }
}

- (double)totalDiameter
{
  [(NTKDialView *)self contentDiameter];
  if (!diameter)
  {
    diameter = self->_diameter;
  }

  return diameter - self->_contentInset;
}

- (void)setAngleOffset:(double)a3
{
  if (self->_angleOffset != a3)
  {
    self->_angleOffset = a3;
    [(NTKDialView *)self totalDiameter];
    if (v4 > 0.0)
    {

      [(NTKDialView *)self layoutMarkers];
    }
  }
}

- (double)searchForClosestMarkerAngleAtAngle:(double)a3
{
  v4 = [(NTKDialView *)self searchForClosestIndexAtAngle:a3];

  [(NTKDialView *)self angleForIndex:v4];
  return result;
}

- (unint64_t)searchForClosestIndexAtAngle:(double)a3
{
  v4 = 360.0 / [(NTKDialView *)self numberOfMarkers];
  if (v4 - a3 % v4 > a3 % v4)
  {
    v5 = a3 / v4;
  }

  else
  {
    v5 = a3 / v4 + 1;
  }

  return (v5 % 24) & ~((v5 % 24) >> 63);
}

- (void)setDisableLayout:(BOOL)a3
{
  self->_disableLayout = a3;
  if (!a3 && self->_needsLayoutMarkers)
  {
    self->_needsLayoutMarkers = 0;
    [(NTKDialView *)self layoutMarkers];
  }
}

- (void)layoutMarkers
{
  if (self->_disableLayout)
  {
    self->_needsLayoutMarkers = 1;
    return;
  }

  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(NTKDialView *)self bounds];
  v5 = v4;
  [(NTKDialView *)self bounds];
  v7 = v6;
  [(NTKDialView *)self contentDiameter];
  v9 = v8;
  if (!v8)
  {
    [(NTKDialView *)self frame];
    Width = CGRectGetWidth(v70);
    [(NTKDialView *)self frame];
    Height = CGRectGetHeight(v71);
    if (Width >= Height)
    {
      v9 = Height;
    }

    else
    {
      v9 = Width;
    }
  }

  contentInset = self->_contentInset;
  v13 = MEMORY[0x2318D8E70]([(NTKDialView *)self bounds]);
  v15 = v14;
  if ([(NTKDialView *)self numberOfMarkers])
  {
    v16 = 0;
    v17 = v5 * 0.5;
    v18 = v7 * 0.5;
    v19 = ((v9 - contentInset) * 0.5);
    v20 = &OBJC_IVAR____NTKPhotosPhotoFaceUpgradeContext__bottomComplication;
    v21 = -180.0;
    v63 = v15;
    while (1)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = [(NTKDialView *)self markerAtIndex:v16];
      if (v23)
      {
        break;
      }

LABEL_36:

      objc_autoreleasePoolPop(v22);
      if (++v16 >= [(NTKDialView *)self numberOfMarkers])
      {
        goto LABEL_37;
      }
    }

    [(NTKDialView *)self angleForIndex:v16];
    v25 = v24 + *(&self->super.super.super.isa + v20[263]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v23;
      v27 = [v26 interior];
      v28 = v25 + v21;
      if (!v27)
      {
        v28 = v25;
      }

      [(NTKDialView *)self _layoutCurvedLabel:v26 rotationAngle:v28];
LABEL_35:

      goto LABEL_36;
    }

    [(NTKDialView *)self centerPointForAngle:v19 radius:v25];
    v64 = v30;
    v65 = v29;
    CGAffineTransformMakeTranslation(&v69, v18, v17);
    v66 = vaddq_f64(*&v69.tx, vmlaq_n_f64(vmulq_n_f64(*&v69.c, v64), *&v69.a, v65));
    v31 = v66.f64[1];
    if ([(NTKDialView *)self shouldPixelAlignCenterPoints])
    {
      v32 = [(NTKDialView *)self device];
      CLKPointRoundForDevice();
      v66.f64[0] = v33;
      v31 = v34;
    }

    [v23 setPosition:{v13, v15}];
    v35 = v66.f64[0] - v13;
    v36 = v31 - v15;
    if ([(NTKDialView *)self shouldPixelAlignCenterPoints])
    {
      v37 = [(NTKDialView *)self device];
      CLKRoundForDevice();
      v35 = v38;

      v39 = [(NTKDialView *)self device];
      CLKRoundForDevice();
      v36 = v40;
    }

    memset(&v69, 0, sizeof(v69));
    CGAffineTransformMakeTranslation(&v69, v35, v36);
    v41 = [(NTKDialView *)self shouldRotateMarkers];
    if (v41)
    {
      v2 = [(NTKDialView *)self markersToRotateIndexSet];
      if (([v2 containsIndex:v16] & 1) == 0)
      {

        goto LABEL_28;
      }

      if ([(NTKDialView *)self shouldRotateMarkers])
      {

LABEL_31:
        v47 = 1;
LABEL_32:
        v68 = v69;
        [v23 _setAffineTransform:&v68];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (!v47 || (isKindOfClass & 1) == 0)
        {
          goto LABEL_36;
        }

        v26 = v23;
        [v26 frame];
        v50 = v49;
        v51 = v13;
        v52 = v21;
        v53 = v18;
        v54 = v17;
        v56 = v55;
        v57 = [(NTKDialView *)self device];
        CLKPointRoundForDevice();
        v59 = v58;
        v61 = v60;

        v62 = v56;
        v17 = v54;
        v18 = v53;
        v21 = v52;
        v13 = v51;
        v15 = v63;
        [v26 setFrame:{v59, v61, v50, v62}];
        goto LABEL_35;
      }
    }

    else if ([(NTKDialView *)self shouldRotateMarkers])
    {
      goto LABEL_31;
    }

    v42 = [(NTKDialView *)self markersToRotateIndexSet];
    v43 = [v42 containsIndex:v16];

    if (v41)
    {

      v20 = &OBJC_IVAR____NTKPhotosPhotoFaceUpgradeContext__bottomComplication;
      if ((v43 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v20 = &OBJC_IVAR____NTKPhotosPhotoFaceUpgradeContext__bottomComplication;
      if (!v43)
      {
        goto LABEL_31;
      }
    }

LABEL_28:
    v44 = [(NTKDialView *)self markerRotationProvider];

    if (v44)
    {
      v45 = [(NTKDialView *)self markerRotationProvider];
      v45[2](v45, v16);
    }

    CLKDegreesToRadians();
    v67 = v69;
    CGAffineTransformRotate(&v68, &v67, v46);
    v47 = 0;
    v69 = v68;
    goto LABEL_32;
  }

LABEL_37:
  [MEMORY[0x277CD9FF0] setDisableActions:0];
}

- (void)_layoutCurvedLabel:(id)a3 rotationAngle:(double)a4
{
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  *&v24.a = *MEMORY[0x277CBF2C0];
  *&v24.c = v5;
  *&v24.tx = *(MEMORY[0x277CBF2C0] + 32);
  v6 = a3;
  [v6 setTransform:&v24];
  [v6 frame];
  [v6 sizeThatFits:{v7, v8}];
  [v6 setFrame:{0.0, 0.0, v9, v10}];
  v11 = MEMORY[0x2318D8E70]([(NTKDialView *)self bounds]);
  v13 = v12;
  v23 = *MEMORY[0x277CBF348];
  [v6 getTextCenter:&v23 startAngle:0 endAngle:0];
  v14 = v23;
  v15 = v11 - *&v23;
  v16 = v13 - *(&v23 + 1);
  [v6 frame];
  v17 = *&v14 - CGRectGetMidX(v25);
  v18 = *(&v23 + 1);
  [v6 frame];
  v19 = v18 - CGRectGetMidY(v26);
  memset(&v24, 0, sizeof(v24));
  CGAffineTransformMakeTranslation(&v24, v15, v16);
  v21 = v24;
  CGAffineTransformTranslate(&v22, &v21, v17, v19);
  v24 = v22;
  CLKDegreesToRadians();
  v21 = v24;
  CGAffineTransformRotate(&v22, &v21, v20);
  v24 = v22;
  v21 = v22;
  CGAffineTransformTranslate(&v22, &v21, -v17, -v19);
  v24 = v22;
  [v6 setTransform:&v22];
}

- (void)setMarkerRotationProvider:(id)a3
{
  v4 = _Block_copy(a3);
  markerRotationProvider = self->_markerRotationProvider;
  self->_markerRotationProvider = v4;

  [(NTKDialView *)self layoutMarkers];
}

- (void)setHidingMaskStartAngle:(id)a3
{
  v7 = a3;
  if (![(NSNumber *)self->_hidingMaskStartAngle isEqualToNumber:?])
  {
    v4 = MEMORY[0x277CCABB0];
    [v7 floatValue];
    NTKNormalizeAngle();
    v5 = [v4 numberWithDouble:?];
    hidingMaskStartAngle = self->_hidingMaskStartAngle;
    self->_hidingMaskStartAngle = v5;

    [(NTKDialView *)self updateMarkersVisibility];
  }
}

- (void)setHidingMaskEndAngle:(id)a3
{
  v7 = a3;
  if (![(NSNumber *)self->_hidingMaskEndAngle isEqualToNumber:?])
  {
    v4 = MEMORY[0x277CCABB0];
    [v7 floatValue];
    NTKNormalizeAngle();
    v5 = [v4 numberWithDouble:?];
    hidingMaskEndAngle = self->_hidingMaskEndAngle;
    self->_hidingMaskEndAngle = v5;

    [(NTKDialView *)self updateMarkersVisibility];
  }
}

- (void)updateMarkersVisibility
{
  if ([(NTKDialView *)self numberOfMarkers])
  {
    v3 = 0;
    do
    {
      v4 = [(NTKDialView *)self markerAtIndex:v3];
      if (v4)
      {
        v5 = [(NTKDialView *)self shouldHideMarkerAtIndex:v3];
        [v4 alpha];
        if (v5 != CLKFloatEqualsFloat())
        {
          [v4 setAlpha:{(-[NTKDialView shouldHideMarkerAtIndex:](self, "shouldHideMarkerAtIndex:", v3) ^ 1)}];
        }
      }

      ++v3;
    }

    while (v3 < [(NTKDialView *)self numberOfMarkers]);
  }
}

- (BOOL)shouldHideMarkerAtIndex:(int64_t)a3
{
  if (!self->_hidingMaskStartAngle && !self->_hidingMaskEndAngle)
  {
    return 0;
  }

  [(NTKDialView *)self angleForIndex:a3];
  v5 = v4;
  [(NSNumber *)self->_hidingMaskStartAngle floatValue];
  v7 = v6;
  [(NSNumber *)self->_hidingMaskEndAngle floatValue];
  if (v7 >= v8)
  {
    return v5 < 0.0 || ([(NSNumber *)self->_hidingMaskStartAngle floatValue], v5 > v11) || ([(NSNumber *)self->_hidingMaskEndAngle floatValue], v5 < v12) || v5 > 360.0;
  }

  [(NSNumber *)self->_hidingMaskStartAngle floatValue];
  if (v5 < v9)
  {
    return 0;
  }

  [(NSNumber *)self->_hidingMaskEndAngle floatValue];
  return v5 <= v13;
}

- (id)markerAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_markers count]<= a3)
  {
    v5 = [(NTKDialView *)self markersFactory];
    v6 = v5[2](v5, a3);

    if (v6)
    {
      v7 = [(NTKDialView *)self markers];
      [v7 addObject:v6];

      [v6 addToParentView:self->_markerContainerView];
    }

    else
    {
      v8 = [MEMORY[0x277CBEB68] null];
      v9 = [(NTKDialView *)self markers];
      [v9 addObject:v8];
    }
  }

  v10 = [(NTKDialView *)self markers];
  v11 = [v10 objectAtIndexedSubscript:a3];

  v12 = [MEMORY[0x277CBEB68] null];

  if (v11 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  return v13;
}

- (double)angleForIndex:(double)a3
{
  v5 = [(NTKDialView *)self angleProvider];

  if (v5 && ([(NTKDialView *)self angleProvider], v6 = objc_claimAutoreleasedReturnValue(), v6[2](v6, a3), v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    [v7 floatValue];
    NTKNormalizeAngle();
    v9 = v8;

    return v9;
  }

  else
  {
    [(NTKDialView *)self numberOfMarkers];

    NTKNormalizeAngle();
  }

  return result;
}

- (CGPoint)positionForMarkerAtIndex:(unint64_t)a3
{
  v5 = [(NTKDialView *)self markers];
  v6 = [v5 count];

  if (v6 > a3 && ([(NTKDialView *)self markerAtIndex:a3], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    [v7 position];
    v13 = v10;
    v14 = v9;
    [v8 _getAffineTransform];

    v11 = vaddq_f64(v17, vmlaq_n_f64(vmulq_n_f64(v16, v13), v15, v14));
  }

  else
  {
    v11 = *MEMORY[0x277CBF348];
  }

  v12 = v11.f64[1];
  result.x = v11.f64[0];
  result.y = v12;
  return result;
}

- (CGPoint)centerPointForAngle:(double)a3 radius:(int64_t)a4
{
  CLKDegreesToRadians();
  memset(&v8, 0, sizeof(v8));
  CGAffineTransformMakeRotation(&v8, v5);
  v6 = vaddq_f64(*&v8.tx, vmlaq_f64(vmulq_n_f64(*&v8.c, -a4), 0, *&v8.a));
  v7 = v6.f64[1];
  result.x = v6.f64[0];
  result.y = v7;
  return result;
}

@end