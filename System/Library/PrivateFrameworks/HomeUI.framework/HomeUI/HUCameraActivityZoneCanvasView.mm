@interface HUCameraActivityZoneCanvasView
- (BOOL)canCreateActivityZone;
- (BOOL)currentZonesIntersectPoint:(CGPoint)a3;
- (BOOL)currentZonesIntersectSegmentFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4;
- (BOOL)isCreatingActivityZone;
- (BOOL)isValidPointInView:(CGPoint)a3;
- (CGPoint)_hmPointToCGPoint:(id)a3;
- (CGPoint)_normalizedPointForPoint:(CGPoint)a3;
- (HUCameraActivityZoneCanvasDelegate)delegate;
- (HUCameraActivityZoneCanvasView)initWithFrame:(CGRect)a3;
- (id)_hmPointForTapPoint:(CGPoint)a3;
- (id)activityZoneContainingPoint:(CGPoint)a3;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (id)selectedActivityZoneAtPoint:(CGPoint)a3;
- (void)_addTouchpointAtPoint:(CGPoint)a3 inContext:(CGContext *)a4 withRed:(double)a5 green:(double)a6 blue:(double)a7;
- (void)_displayMenuForActivityZone:(id)a3;
- (void)_drawPolygonWithMaskPath:(id)a3;
- (void)_drawTouchPoints;
- (void)_editActivityZone:(id)a3;
- (void)_finishEditingCurrentActivityZone;
- (void)_handleBeginForGesture:(id)a3;
- (void)_handleChangeForGesture:(id)a3;
- (void)_handleEndForGesture:(id)a3;
- (void)_prepCurrentActivityZoneForDeselection;
- (void)_resetCanvasAndCurrentZone;
- (void)clearActivityZone;
- (void)createActivityZone;
- (void)didPan:(id)a3;
- (void)didTap:(id)a3;
- (void)drawRect:(CGRect)a3;
- (void)loadActivityZones:(id)a3;
- (void)preventAttemptToMovePoint;
- (void)setDisplaysInclusionZones:(BOOL)a3;
- (void)updateAfterVideoBoundsChange;
@end

@implementation HUCameraActivityZoneCanvasView

- (HUCameraActivityZoneCanvasView)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = HUCameraActivityZoneCanvasView;
  v3 = [(HUCameraActivityZoneCanvasView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    activityZones = v3->_activityZones;
    v3->_activityZones = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    currentActivityZone = v3->_currentActivityZone;
    v3->_currentActivityZone = v6;

    [(HUCameraActivityZoneCanvasView *)v3 setClipsToBounds:0];
    v8 = [MEMORY[0x277D75348] clearColor];
    [(HUCameraActivityZoneCanvasView *)v3 setBackgroundColor:v8];

    v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:sel_didTap_];
    [v9 setNumberOfTapsRequired:1];
    [(HUCameraActivityZoneCanvasView *)v3 addGestureRecognizer:v9];
    v10 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v3 action:sel_didPan_];
    [v10 setMaximumNumberOfTouches:1];
    [(HUCameraActivityZoneCanvasView *)v3 addGestureRecognizer:v10];
    [(HUCameraActivityZoneCanvasView *)v3 bounds];
    v19 = CGRectInset(v18, -20.0, -20.0);
    v11 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v19.origin.x, v19.origin.y, v19.size.width, v19.size.height}];
    canvasView = v3->_canvasView;
    v3->_canvasView = v11;

    [(UIImageView *)v3->_canvasView setAutoresizingMask:18];
    v13 = [MEMORY[0x277D75348] clearColor];
    [(UIImageView *)v3->_canvasView setBackgroundColor:v13];

    [(HUCameraActivityZoneCanvasView *)v3 center];
    [(UIImageView *)v3->_canvasView setCenter:?];
    [(UIImageView *)v3->_canvasView setUserInteractionEnabled:0];
    [(HUCameraActivityZoneCanvasView *)v3 addSubview:v3->_canvasView];
    v14 = [objc_alloc(MEMORY[0x277D754C8]) initWithDelegate:v3];
    editMenuInteraction = v3->_editMenuInteraction;
    v3->_editMenuInteraction = v14;

    [(HUCameraActivityZoneCanvasView *)v3 addInteraction:v3->_editMenuInteraction];
    [(HUCameraActivityZoneCanvasView *)v3 setAccessibilityIdentifier:@"activityZoneCanvasView"];
  }

  return v3;
}

- (void)updateAfterVideoBoundsChange
{
  [(HUCameraActivityZoneCanvasView *)self _drawTouchPoints];

  [(HUCameraActivityZoneCanvasView *)self setNeedsDisplay];
}

- (void)_drawPolygonWithMaskPath:(id)a3
{
  v4 = a3;
  v5 = [(HUCameraActivityZoneCanvasView *)self activityZones];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HUCameraActivityZoneCanvasView__drawPolygonWithMaskPath___block_invoke;
  v7[3] = &unk_277DC4A30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __59__HUCameraActivityZoneCanvasView__drawPolygonWithMaskPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D75208] bezierPath];
  [v4 setLineWidth:4.0];
  [v4 setLineJoinStyle:1];
  [v4 setLineCapStyle:1];
  v5 = [v3 count];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HUCameraActivityZoneCanvasView__drawPolygonWithMaskPath___block_invoke_2;
  v10[3] = &unk_277DC4A08;
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v4;
  v14 = v5;
  v12 = v3;
  v13 = v6;
  v7 = v3;
  v8 = v4;
  [v7 enumerateObjectsUsingBlock:v10];
  v9 = [MEMORY[0x277D75348] systemOrangeColor];
  [v9 setStroke];

  [v8 stroke];
}

void __59__HUCameraActivityZoneCanvasView__drawPolygonWithMaskPath___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _hmPointToCGPoint:a2];
  v6 = v5;
  v8 = v7;
  if (a3)
  {
    if (*(a1 + 64) - 1 == a3)
    {
      if ([*(a1 + 32) isEditingActivityZone])
      {
        [*(a1 + 40) addLineToPoint:{v6, v8}];
      }

      v13 = [*(a1 + 48) objectAtIndex:0];
      [*(a1 + 32) _hmPointToCGPoint:?];
      [*(a1 + 40) addLineToPoint:?];
      if (*(a1 + 56))
      {
        v9 = [*(a1 + 32) displaysInclusionZones];
        v10 = *(a1 + 56);
        if (v9)
        {
          [v10 closePath];
          [*(a1 + 56) appendPath:*(a1 + 40)];
LABEL_17:

          return;
        }

        if (v10)
        {
          goto LABEL_17;
        }
      }

      if (([*(a1 + 32) displaysInclusionZones] & 1) == 0)
      {
        [*(a1 + 40) fill];
      }

      goto LABEL_17;
    }

    v12 = *(a1 + 40);

    [v12 addLineToPoint:?];
  }

  else
  {
    v11 = *(a1 + 40);

    [v11 moveToPoint:?];
  }
}

- (void)drawRect:(CGRect)a3
{
  v4 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.6];
  [v4 setFill];

  v5 = MEMORY[0x277D75208];
  [(HUCameraActivityZoneCanvasView *)self bounds];
  v8 = [v5 bezierPathWithRect:?];
  [v8 setUsesEvenOddFillRule:1];
  [(HUCameraActivityZoneCanvasView *)self _drawPolygonWithMaskPath:v8];
  if ([(HUCameraActivityZoneCanvasView *)self displaysInclusionZones])
  {
    v6 = [(HUCameraActivityZoneCanvasView *)self activityZones];
    v7 = [v6 count];

    if (v7)
    {
      [v8 fill];
    }
  }

  [(HUCameraActivityZoneCanvasView *)self _drawPolygonWithMaskPath:0];
}

- (void)_drawTouchPoints
{
  v28 = 0.0;
  v29 = 0.0;
  v27 = 0.0;
  v3 = [MEMORY[0x277D75348] systemYellowColor];
  [v3 getRed:&v29 green:&v28 blue:&v27 alpha:0];

  v25 = 0.0;
  v26 = 0.0;
  blue = 0.0;
  v4 = [MEMORY[0x277D75348] systemOrangeColor];
  [v4 getRed:&v26 green:&v25 blue:&blue alpha:0];

  v5 = [(HUCameraActivityZoneCanvasView *)self canvasView];
  [v5 bounds];
  v30.width = v6;
  v30.height = v7;
  UIGraphicsBeginImageContextWithOptions(v30, 0, 0.0);

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetRGBFillColor(CurrentContext, v29, v28, v27, 0.5);
  CGContextSetLineWidth(CurrentContext, 4.0);
  v9 = [MEMORY[0x277D75208] bezierPath];
  [v9 setLineJoinStyle:1];
  [v9 setLineCapStyle:1];
  v10 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __50__HUCameraActivityZoneCanvasView__drawTouchPoints__block_invoke;
  v17 = &unk_277DC4A58;
  v18 = v9;
  v19 = self;
  v20 = CurrentContext;
  v21 = v29;
  v22 = v28;
  v23 = v27;
  v11 = v9;
  [v10 enumerateObjectsUsingBlock:&v14];

  CGContextSetRGBStrokeColor(CurrentContext, v26, v25, blue, 1.0);
  [v11 stroke];
  v12 = UIGraphicsGetImageFromCurrentImageContext();
  v13 = [(HUCameraActivityZoneCanvasView *)self canvasView];
  [v13 setImage:v12];

  UIGraphicsEndImageContext();
}

uint64_t __50__HUCameraActivityZoneCanvasView__drawTouchPoints__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 setLineWidth:4.0];
  [*(a1 + 40) _hmPointToCGPoint:v6];
  v8 = v7;
  v10 = v9;

  v11 = v8 + 20.0;
  v12 = v10 + 20.0;
  v13 = *(a1 + 32);
  if (a3)
  {
    [v13 addLineToPoint:{v11, v12}];
  }

  else
  {
    [v13 moveToPoint:{v11, v12}];
  }

  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v18 = *(a1 + 72);

  return [v14 _addTouchpointAtPoint:v15 inContext:v11 withRed:v12 green:v16 blue:{v17, v18}];
}

- (void)loadActivityZones:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Load activity zones:%@", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HUCameraActivityZoneCanvasView_loadActivityZones___block_invoke;
  v6[3] = &unk_277DC4A80;
  v6[4] = self;
  [v4 enumerateObjectsUsingBlock:v6];
  [(HUCameraActivityZoneCanvasView *)self setNeedsDisplay];
}

void __52__HUCameraActivityZoneCanvasView_loadActivityZones___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a2;
  v7 = objc_alloc_init(v3);
  v5 = [v4 points];

  [v7 addObjectsFromArray:v5];
  v6 = [*(a1 + 32) activityZones];
  [v6 addObject:v7];
}

- (BOOL)canCreateActivityZone
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__33;
  v12[4] = __Block_byref_object_dispose__33;
  v13 = [MEMORY[0x277D75208] bezierPath];
  v3 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HUCameraActivityZoneCanvasView_canCreateActivityZone__block_invoke;
  v11[3] = &unk_277DB92F0;
  v11[4] = self;
  v11[5] = v12;
  [v3 enumerateObjectsUsingBlock:v11];

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [(HUCameraActivityZoneCanvasView *)self activityZones];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__HUCameraActivityZoneCanvasView_canCreateActivityZone__block_invoke_2;
  v6[3] = &unk_277DC4AD0;
  v6[4] = self;
  v6[5] = v12;
  v6[6] = &v7;
  [v4 enumerateObjectsUsingBlock:v6];

  LOBYTE(self) = *(v8 + 24) == 0;
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(v12, 8);

  return self;
}

uint64_t __55__HUCameraActivityZoneCanvasView_canCreateActivityZone__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _hmPointToCGPoint:a2];
  v5 = *(*(*(a1 + 40) + 8) + 40);
  if (a3)
  {

    return [v5 addLineToPoint:?];
  }

  else
  {

    return [v5 moveToPoint:?];
  }
}

uint64_t __55__HUCameraActivityZoneCanvasView_canCreateActivityZone__block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__HUCameraActivityZoneCanvasView_canCreateActivityZone__block_invoke_3;
  v3[3] = &unk_277DC4AA8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  return [a2 enumerateObjectsUsingBlock:v3];
}

uint64_t __55__HUCameraActivityZoneCanvasView_canCreateActivityZone__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  [*(a1 + 32) _hmPointToCGPoint:a2];
  result = [*(*(*(a1 + 40) + 8) + 40) containsPoint:?];
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)createActivityZone
{
  v3 = [(HUCameraActivityZoneCanvasView *)self canCreateActivityZone];
  v4 = HFLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *v14 = 0;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Create activity zone.", v14, 2u);
    }

    v6 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
    v7 = [v6 firstObject];

    v8 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
    v9 = [v7 copy];
    [v8 addObject:v9];

    v10 = [(HUCameraActivityZoneCanvasView *)self activityZones];
    v11 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
    v12 = [v11 mutableCopy];
    [v10 addObject:v12];

    [(HUCameraActivityZoneCanvasView *)self _resetCanvasAndCurrentZone];
    [(HUCameraActivityZoneCanvasView *)self setNeedsDisplay];
    v13 = [(HUCameraActivityZoneCanvasView *)self delegate];
    [v13 didUpdateActivityZoneCanvas:self];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Unable to create activity zone.", buf, 2u);
    }

    v7 = [(HUCameraActivityZoneCanvasView *)self delegate];
    [v7 didAttemptToCreateOverlappingZoneForCanvas:self];
  }
}

- (id)_hmPointForTapPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__33;
  v14 = __Block_byref_object_dispose__33;
  v15 = 0;
  v6 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__HUCameraActivityZoneCanvasView__hmPointForTapPoint___block_invoke;
  v9[3] = &unk_277DC4AF8;
  *&v9[6] = x;
  *&v9[7] = y;
  v9[4] = self;
  v9[5] = &v10;
  [v6 enumerateObjectsUsingBlock:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __54__HUCameraActivityZoneCanvasView__hmPointForTapPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  [*(a1 + 32) _hmPointToCGPoint:?];
  *&v7 = v7 - *(a1 + 48);
  *&v8 = v8 - *(a1 + 56);
  if (hypotf(*&v7, *&v8) <= 34.0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    UIGraphicsEndImageContext();
    *a4 = 1;
  }
}

- (void)_resetCanvasAndCurrentZone
{
  [(HUCameraActivityZoneCanvasView *)self setEditingActivityZone:0];
  [(HUCameraActivityZoneCanvasView *)self setCurrentActivityZone:0];
  v3 = [(HUCameraActivityZoneCanvasView *)self canvasView];
  [v3 setImage:0];
}

- (void)_prepCurrentActivityZoneForDeselection
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
  v4 = [v3 firstObject];
  if (!v4)
  {
LABEL_5:

    goto LABEL_6;
  }

  v5 = v4;
  v6 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
  v7 = [v6 firstObject];
  v8 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
  v9 = [v8 lastObject];
  v10 = [v7 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
    v12 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
    v13 = [v12 firstObject];
    [v11 addObject:v13];

    v3 = HFLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Finished editing. Re-added the last HMPoint to the zone:%@", &v17, 0xCu);
    }

    goto LABEL_5;
  }

LABEL_6:
  v15 = [(HUCameraActivityZoneCanvasView *)self delegate];
  v16 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
  [v15 didUpdateActivityZone:v16];
}

- (void)_finishEditingCurrentActivityZone
{
  [(HUCameraActivityZoneCanvasView *)self _prepCurrentActivityZoneForDeselection];
  [(HUCameraActivityZoneCanvasView *)self _resetCanvasAndCurrentZone];
  v3 = [MEMORY[0x277D75718] sharedMenuController];
  [v3 hideMenu];
}

- (void)_editActivityZone:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
  v6 = [v5 isEqual:v4];

  if (v6)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_DEFAULT, "Stop editing the activity zone:%@", &v14, 0xCu);
    }

    [(HUCameraActivityZoneCanvasView *)self _finishEditingCurrentActivityZone];
  }

  else
  {
    v8 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];

    if (v8)
    {
      [(HUCameraActivityZoneCanvasView *)self _prepCurrentActivityZoneForDeselection];
    }

    [(HUCameraActivityZoneCanvasView *)self setEditingActivityZone:1];
    v9 = [v4 firstObject];
    v10 = [v4 lastObject];
    v11 = [v9 isEqual:v10];

    if (v11)
    {
      v12 = HFLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v4;
        _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "Removing the copied last object for the activity zone:%@", &v14, 0xCu);
      }

      [v4 removeLastObject];
    }

    v13 = HFLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_20CEB6000, v13, OS_LOG_TYPE_DEFAULT, "Edit activity zone:%@", &v14, 0xCu);
    }

    [(HUCameraActivityZoneCanvasView *)self setCurrentActivityZone:v4];
    [(HUCameraActivityZoneCanvasView *)self _drawTouchPoints];
    [(HUCameraActivityZoneCanvasView *)self _displayMenuForActivityZone:v4];
  }
}

- (void)_displayMenuForActivityZone:(id)a3
{
  v4 = [a3 firstObject];
  v10 = v4;
  if (v4)
  {
    [(HUCameraActivityZoneCanvasView *)self _hmPointToCGPoint:v4];
    v7 = v6 + -17.0;
  }

  else
  {
    v7 = 0.0;
    v5 = 0.0;
  }

  v8 = [MEMORY[0x277D754C0] configurationWithIdentifier:0 sourcePoint:{v5, v7}];
  v9 = [(HUCameraActivityZoneCanvasView *)self editMenuInteraction];
  [v9 presentEditMenuWithConfiguration:v8];
}

- (void)clearActivityZone
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_20CEB6000, v3, OS_LOG_TYPE_DEFAULT, "Clear activity zone:%@", &v10, 0xCu);
  }

  [(HUCameraActivityZoneCanvasView *)self setEditingActivityZone:0];
  v5 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
  [v5 removeAllObjects];

  v6 = [(HUCameraActivityZoneCanvasView *)self activityZones];
  v7 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
  [v6 removeObject:v7];

  v8 = [(HUCameraActivityZoneCanvasView *)self canvasView];
  [v8 setImage:0];

  [(HUCameraActivityZoneCanvasView *)self setNeedsDisplay];
  v9 = [(HUCameraActivityZoneCanvasView *)self delegate];
  [v9 didUpdateActivityZoneCanvas:self];
}

- (id)activityZoneContainingPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__33;
  v14 = __Block_byref_object_dispose__33;
  v15 = 0;
  v6 = [(HUCameraActivityZoneCanvasView *)self activityZones];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__HUCameraActivityZoneCanvasView_activityZoneContainingPoint___block_invoke;
  v9[3] = &unk_277DC4B48;
  *&v9[6] = x;
  *&v9[7] = y;
  v9[4] = self;
  v9[5] = &v10;
  [v6 enumerateObjectsUsingBlock:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void __62__HUCameraActivityZoneCanvasView_activityZoneContainingPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [MEMORY[0x277D75208] bezierPath];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __62__HUCameraActivityZoneCanvasView_activityZoneContainingPoint___block_invoke_2;
  v13 = &unk_277DC4B20;
  v14 = *(a1 + 32);
  v9 = v8;
  v15 = v9;
  [v7 enumerateObjectsUsingBlock:&v10];
  if ([v9 containsPoint:{*(a1 + 48), *(a1 + 56), v10, v11, v12, v13, v14}])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

uint64_t __62__HUCameraActivityZoneCanvasView_activityZoneContainingPoint___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _hmPointToCGPoint:a2];
  v5 = *(a1 + 40);
  if (a3)
  {

    return [v5 addLineToPoint:?];
  }

  else
  {

    return [v5 moveToPoint:?];
  }
}

- (id)selectedActivityZoneAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (-[HUCameraActivityZoneCanvasView isEditingActivityZone](self, "isEditingActivityZone") || (-[HUCameraActivityZoneCanvasView currentActivityZone](self, "currentActivityZone"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, !v7))
  {
    v8 = [(HUCameraActivityZoneCanvasView *)self activityZoneContainingPoint:x, y];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setDisplaysInclusionZones:(BOOL)a3
{
  if (self->_displaysInclusionZones != a3)
  {
    self->_displaysInclusionZones = a3;
    [(HUCameraActivityZoneCanvasView *)self setNeedsDisplay];
  }
}

- (BOOL)isCreatingActivityZone
{
  if ([(HUCameraActivityZoneCanvasView *)self isEditingActivityZone])
  {
    return 0;
  }

  v4 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
  v3 = [v4 count] > 2;

  return v3;
}

- (BOOL)isValidPointInView:(CGPoint)a3
{
  v3 = [(HUCameraActivityZoneCanvasView *)self activityZoneContainingPoint:a3.x, a3.y];
  v4 = v3 == 0;

  return v4;
}

- (BOOL)currentZonesIntersectSegmentFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v29 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = [(HUCameraActivityZoneCanvasView *)self activityZones];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__HUCameraActivityZoneCanvasView_currentZonesIntersectSegmentFromPoint_toPoint___block_invoke;
  v14[3] = &unk_277DC4B98;
  *&v14[6] = v7;
  *&v14[7] = v6;
  *&v14[8] = x;
  *&v14[9] = y;
  v14[4] = self;
  v14[5] = &v15;
  [v9 enumerateObjectsUsingBlock:v14];

  v10 = HFLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(v16 + 24);
    *buf = 67110144;
    v20 = v11;
    v21 = 2048;
    v22 = v7;
    v23 = 2048;
    v24 = v6;
    v25 = 2048;
    v26 = x;
    v27 = 2048;
    v28 = y;
    _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Intersection:%{BOOL}d for Line segment = %.2f,%.2f to %.2f,%.2f", buf, 0x30u);
  }

  v12 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v12;
}

void __80__HUCameraActivityZoneCanvasView_currentZonesIntersectSegmentFromPoint_toPoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) currentActivityZone];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = HFLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v6, OS_LOG_TYPE_DEFAULT, "Skipping check against current activity zone.", buf, 2u);
    }
  }

  else
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x3010000000;
    v16 = 0;
    v17 = 0;
    v15 = &unk_20D68B106;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v7 = *(a1 + 64);
    v10 = *(a1 + 48);
    v11 = v7;
    v9[2] = __80__HUCameraActivityZoneCanvasView_currentZonesIntersectSegmentFromPoint_toPoint___block_invoke_2;
    v9[3] = &unk_277DC4B70;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v9[5] = buf;
    v9[6] = v8;
    [v3 enumerateObjectsUsingBlock:v9];
    _Block_object_dispose(buf, 8);
  }
}

uint64_t __80__HUCameraActivityZoneCanvasView_currentZonesIntersectSegmentFromPoint_toPoint___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) _hmPointToCGPoint:a2];
  v10 = *(*(a1 + 40) + 8);
  if (a3)
  {
    v11 = *(v10 + 32);
    v12 = *(v10 + 40);
    v13 = v11 - v8;
    v14 = v12 - v9;
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v17 = v15 - *(a1 + 72);
    v18 = v16 - *(a1 + 80);
    v19 = (v11 - v8) * v18 - v17 * (v12 - v9);
    if (v19 > 0.00000011920929)
    {
      v20 = v16 - v12;
      v21 = v15 - v11;
      v22 = (v20 * v17 - v21 * v18) / v19;
      if (v22 > 0.0 && v22 < 1.0)
      {
        v24 = (v14 * -v21 + v20 * v13) / v19;
        if (v24 > 0.0 && v24 < 1.0)
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          *a4 = 1;
          v10 = *(*(a1 + 40) + 8);
        }
      }
    }
  }

  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  return result;
}

- (BOOL)currentZonesIntersectPoint:(CGPoint)a3
{
  v4 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
  v5 = [v4 lastObject];

  if (v5)
  {
    [(HUCameraActivityZoneCanvasView *)self _hmPointToCGPoint:v5];
    v6 = [HUCameraActivityZoneCanvasView currentZonesIntersectSegmentFromPoint:"currentZonesIntersectSegmentFromPoint:toPoint:" toPoint:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)preventAttemptToMovePoint
{
  v3 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
  v4 = [(HUCameraActivityZoneCanvasView *)self currentTouchPointIndex];
  v5 = [(HUCameraActivityZoneCanvasView *)self startingTouchPoint];
  [v3 replaceObjectAtIndex:v4 withObject:v5];

  [(HUCameraActivityZoneCanvasView *)self _drawTouchPoints];
  [(HUCameraActivityZoneCanvasView *)self setNeedsDisplay];
  [(HUCameraActivityZoneCanvasView *)self setCurrentTouchPointIndex:-1];
  [(HUCameraActivityZoneCanvasView *)self setStartingTouchPoint:0];
  v6 = [(HUCameraActivityZoneCanvasView *)self delegate];
  [v6 didAttemptToMovePointToOverlapZoneForCanvas:self];
}

- (void)didTap:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 state] == 3)
  {
    [v4 locationInView:self];
    v6 = v5;
    v8 = v7;
    if ([(HUCameraActivityZoneCanvasView *)self isEditingActivityZone])
    {
      v9 = [(HUCameraActivityZoneCanvasView *)self selectedActivityZoneAtPoint:v6, v8];
      if (!v9)
      {
        [(HUCameraActivityZoneCanvasView *)self _finishEditingCurrentActivityZone];
        [(HUCameraActivityZoneCanvasView *)self setNeedsDisplay];
LABEL_22:

        goto LABEL_23;
      }

      [(HUCameraActivityZoneCanvasView *)self _editActivityZone:v9];
      [(HUCameraActivityZoneCanvasView *)self setNeedsDisplay];
      goto LABEL_20;
    }

    v9 = [(HUCameraActivityZoneCanvasView *)self _hmPointForTapPoint:v6, v8];
    if (!v9)
    {
      v24 = [(HUCameraActivityZoneCanvasView *)self selectedActivityZoneAtPoint:v6, v8];
      if (v24)
      {
        v25 = v24;
        [(HUCameraActivityZoneCanvasView *)self _editActivityZone:v24];
        [(HUCameraActivityZoneCanvasView *)self setNeedsDisplay];
      }

      else
      {
        if ([(HUCameraActivityZoneCanvasView *)self currentZonesIntersectPoint:v6, v8]|| ![(HUCameraActivityZoneCanvasView *)self isValidPointInView:v6, v8])
        {
          v43 = HFLogForCategory();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *v44 = 134218240;
            *&v44[4] = v6;
            *&v44[12] = 2048;
            *&v44[14] = v8;
            _os_log_impl(&dword_20CEB6000, v43, OS_LOG_TYPE_DEFAULT, "Invalid location. Not creating touchpoint at:%.2f,%.2f.", v44, 0x16u);
          }

          v36 = [(HUCameraActivityZoneCanvasView *)self delegate];
          [v36 didAttemptToAddOverlappingLineForCanvas:self];
        }

        else
        {
          [(HUCameraActivityZoneCanvasView *)self _normalizedPointForPoint:v6, v8];
          v36 = [objc_alloc(MEMORY[0x277CD1D10]) initWithPoint:{v34, v35}];
          v37 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];

          if (!v37)
          {
            v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [(HUCameraActivityZoneCanvasView *)self setCurrentActivityZone:v38];
          }

          v39 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
          [v39 addObject:v36];

          [(HUCameraActivityZoneCanvasView *)self _drawTouchPoints];
          v40 = HFLogForCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *v44 = 138412290;
            *&v44[4] = v36;
            _os_log_impl(&dword_20CEB6000, v40, OS_LOG_TYPE_DEFAULT, "Add touch point:%@", v44, 0xCu);
          }

          v41 = [(HUCameraActivityZoneCanvasView *)self delegate];
          v42 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
          [v41 didUpdateActivityZone:v42];
        }

        v25 = 0;
      }

      goto LABEL_21;
    }

    v10 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
    v11 = [v10 firstObject];
    v12 = [v9 isEqual:v11];

    v13 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
    v14 = v13;
    if (v12)
    {
      v15 = [v13 count];

      if (v15 == 1)
      {
        v16 = HFLogForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v44 = 0;
          _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "Delete the first touchpoint.", v44, 2u);
        }

        v17 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
        [v17 removeObjectAtIndex:0];

        [(HUCameraActivityZoneCanvasView *)self _drawTouchPoints];
        v18 = HFLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [(HUCameraActivityZoneCanvasView *)self activityZones];
          v20 = [v19 count];
          *v44 = 134217984;
          *&v44[4] = v20;
          _os_log_impl(&dword_20CEB6000, v18, OS_LOG_TYPE_DEFAULT, "Remove the activity. Zone count:%lu", v44, 0xCu);
        }

        v21 = [(HUCameraActivityZoneCanvasView *)self delegate];
        v22 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
        [v21 didUpdateActivityZone:v22];

        v23 = [(HUCameraActivityZoneCanvasView *)self delegate];
        [v23 didUpdateActivityZoneCanvas:self];
        goto LABEL_19;
      }

      v32 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
      v33 = [v32 count];

      if (v33 > 2)
      {
        [(HUCameraActivityZoneCanvasView *)self createActivityZone];
        goto LABEL_20;
      }

      v23 = HFLogForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v44 = 0;
        v28 = "Ignore taps on the target since there are less than 3 points";
        v29 = v23;
        v30 = 2;
        goto LABEL_18;
      }
    }

    else
    {
      v26 = [v13 indexOfObject:v9];

      v27 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
      [v27 removeObjectAtIndex:v26];

      [(HUCameraActivityZoneCanvasView *)self _drawTouchPoints];
      v23 = HFLogForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v44 = 138412290;
        *&v44[4] = v9;
        v28 = "Deleted touchpoint:%@.";
        v29 = v23;
        v30 = 12;
LABEL_18:
        _os_log_impl(&dword_20CEB6000, v29, OS_LOG_TYPE_DEFAULT, v28, v44, v30);
      }
    }

LABEL_19:

LABEL_20:
    v25 = [(HUCameraActivityZoneCanvasView *)self delegate];
    v31 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
    [v25 didUpdateActivityZone:v31];

LABEL_21:
    goto LABEL_22;
  }

LABEL_23:
}

- (void)didPan:(id)a3
{
  v7 = a3;
  v4 = [v7 state];
  if (v4 == 3)
  {
    [(HUCameraActivityZoneCanvasView *)self _handleEndForGesture:v7];
    goto LABEL_8;
  }

  if (v4 == 2)
  {
    [(HUCameraActivityZoneCanvasView *)self _handleChangeForGesture:v7];
    goto LABEL_8;
  }

  v5 = v4 == 1;
  v6 = v7;
  if (v5)
  {
    [(HUCameraActivityZoneCanvasView *)self _handleBeginForGesture:v7];
LABEL_8:
    v6 = v7;
  }
}

- (void)_handleBeginForGesture:(id)a3
{
  [a3 locationInView:self];
  v5 = v4;
  v7 = v6;
  [(HUCameraActivityZoneCanvasView *)self setCurrentTouchPointIndex:-1];
  v8 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HUCameraActivityZoneCanvasView__handleBeginForGesture___block_invoke;
  v9[3] = &unk_277DC4BC0;
  v9[4] = self;
  v9[5] = v5;
  v9[6] = v7;
  [v8 enumerateObjectsUsingBlock:v9];
}

void __57__HUCameraActivityZoneCanvasView__handleBeginForGesture___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a2;
  [*(a1 + 32) _hmPointToCGPoint:v7];
  *&v8 = v8 - *(a1 + 40);
  *&v9 = v9 - *(a1 + 48);
  if (hypotf(*&v8, *&v9) <= 34.0)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = 134218496;
      v14 = v11;
      v15 = 2048;
      v16 = v12;
      v17 = 2048;
      v18 = a3;
      _os_log_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_DEFAULT, "Begin dragging at point:%.0f, %.0f for index %lu", &v13, 0x20u);
    }

    [*(a1 + 32) setCurrentTouchPointIndex:a3];
    [*(a1 + 32) setStartingTouchPoint:v7];
    *a4 = 1;
  }
}

- (void)_handleChangeForGesture:(id)a3
{
  v16 = a3;
  if (([(HUCameraActivityZoneCanvasView *)self currentTouchPointIndex]& 0x8000000000000000) == 0)
  {
    [v16 locationInView:self];
    v5 = v4;
    v7 = fmax(v6, 0.0);
    [(HUCameraActivityZoneCanvasView *)self bounds];
    if (v7 >= v8)
    {
      v7 = v8;
    }

    v9 = fmax(v5, 0.0);
    [(HUCameraActivityZoneCanvasView *)self bounds];
    if (v9 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    [(HUCameraActivityZoneCanvasView *)self _normalizedPointForPoint:v7, v11];
    v14 = [objc_alloc(MEMORY[0x277CD1D10]) initWithPoint:{v12, v13}];
    v15 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
    [v15 replaceObjectAtIndex:-[HUCameraActivityZoneCanvasView currentTouchPointIndex](self withObject:{"currentTouchPointIndex"), v14}];

    [(HUCameraActivityZoneCanvasView *)self _drawTouchPoints];
    [(HUCameraActivityZoneCanvasView *)self setNeedsDisplay];
  }
}

- (void)_handleEndForGesture:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 138412290;
    v34 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "Finished pan:%@", &v33, 0xCu);
  }

  if (([(HUCameraActivityZoneCanvasView *)self currentTouchPointIndex]& 0x8000000000000000) == 0)
  {
    [v4 locationInView:self];
    v7 = v6;
    v9 = v8;
    v10 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
    v11 = [v10 objectAtIndex:{-[HUCameraActivityZoneCanvasView currentTouchPointIndex](self, "currentTouchPointIndex")}];

    v12 = [(HUCameraActivityZoneCanvasView *)self currentTouchPointIndex];
    v13 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
    v14 = [v13 count] - 1;

    if (v12 < v14)
    {
      v15 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
      v16 = [v15 objectAtIndex:{-[HUCameraActivityZoneCanvasView currentTouchPointIndex](self, "currentTouchPointIndex") + 1}];

      [(HUCameraActivityZoneCanvasView *)self _hmPointToCGPoint:v11];
      v18 = v17;
      v20 = v19;
      [(HUCameraActivityZoneCanvasView *)self _hmPointToCGPoint:v16];
      if ([(HUCameraActivityZoneCanvasView *)self currentZonesIntersectSegmentFromPoint:v18 toPoint:v20, v21, v22])
      {
        v23 = HFLogForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v33 = 134218240;
          v34 = v7;
          v35 = 2048;
          v36 = v9;
          v24 = "Overlapped activity zones are not allowed for next point:%.2f,%.2f.";
LABEL_16:
          _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, v24, &v33, 0x16u);
          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    if ([(HUCameraActivityZoneCanvasView *)self currentTouchPointIndex]>= 1)
    {
      v26 = [(HUCameraActivityZoneCanvasView *)self currentActivityZone];
      v16 = [v26 objectAtIndex:{-[HUCameraActivityZoneCanvasView currentTouchPointIndex](self, "currentTouchPointIndex") - 1}];

      [(HUCameraActivityZoneCanvasView *)self _hmPointToCGPoint:v11];
      v28 = v27;
      v30 = v29;
      [(HUCameraActivityZoneCanvasView *)self _hmPointToCGPoint:v16];
      if ([(HUCameraActivityZoneCanvasView *)self currentZonesIntersectSegmentFromPoint:v28 toPoint:v30, v31, v32])
      {
        v23 = HFLogForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v33 = 134218240;
          v34 = v7;
          v35 = 2048;
          v36 = v9;
          v24 = "Overlapped activity zones are not allowed for previous point:%.2f,%.2f.";
          goto LABEL_16;
        }

LABEL_17:

        [(HUCameraActivityZoneCanvasView *)self preventAttemptToMovePoint];
LABEL_20:

        goto LABEL_21;
      }
    }

    v16 = [(HUCameraActivityZoneCanvasView *)self delegate];
    [v16 didUpdateActivityZoneCanvas:self];
    goto LABEL_20;
  }

  v25 = HFLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v33) = 0;
    _os_log_error_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_ERROR, "Invalid touchPointIndex. Bailing.", &v33, 2u);
  }

  v11 = [(HUCameraActivityZoneCanvasView *)self delegate];
  [v11 didUpdateActivityZoneCanvas:self];
LABEL_21:
}

- (CGPoint)_normalizedPointForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(HUCameraActivityZoneCanvasView *)self bounds];
  v7 = x / fmax(v6, 1.0);
  [(HUCameraActivityZoneCanvasView *)self bounds];
  v9 = y / fmax(v8, 1.0);
  v10 = v7;
  result.y = v9;
  result.x = v10;
  return result;
}

- (CGPoint)_hmPointToCGPoint:(id)a3
{
  [a3 point];
  v5 = v4;
  v7 = v6;
  [(HUCameraActivityZoneCanvasView *)self bounds];
  v9 = v5 * v8;
  [(HUCameraActivityZoneCanvasView *)self bounds];
  v11 = v7 * v10;
  v12 = v9;
  result.y = v11;
  result.x = v12;
  return result;
}

- (void)_addTouchpointAtPoint:(CGPoint)a3 inContext:(CGContext *)a4 withRed:(double)a5 green:(double)a6 blue:(double)a7
{
  y = a3.y;
  x = a3.x;
  v13 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{a3.x + -3.0, a3.y + -3.0, 6.0, 6.0}];
  v17 = 0.0;
  v18 = 0.0;
  blue = 0.0;
  v14 = [MEMORY[0x277D75348] systemOrangeColor];
  [v14 getRed:&v18 green:&v17 blue:&blue alpha:0];

  CGContextSetRGBFillColor(a4, v18, v17, blue, 1.0);
  [v13 fill];
  v15 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{x + -17.0, y + -17.0, 34.0, 34.0}];
  CGContextSetRGBFillColor(a4, a5, a6, a7, 0.5);
  CGContextSetRGBStrokeColor(a4, a5, a6, a7, 1.0);
  [v15 fill];
  [v15 stroke];
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D750C8];
  v7 = _HULocalizedStringWithDefaultValue(@"HUClearTitle", @"HUClearTitle", 1);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__HUCameraActivityZoneCanvasView_editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke;
  v13[3] = &unk_277DB8C50;
  v13[4] = self;
  v8 = [v6 actionWithTitle:v7 image:0 identifier:0 handler:v13];

  v9 = MEMORY[0x277D75710];
  v14[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v11 = [v9 menuWithChildren:v10];

  [v11 setAccessibilityIdentifier:@"clearActivityZone"];

  return v11;
}

- (HUCameraActivityZoneCanvasDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end