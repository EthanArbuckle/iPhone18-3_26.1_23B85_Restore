@interface NTKWhistlerAnalogFaceViewComplicationFactory
- (BOOL)_convertCircularSlot:(id)a3 toPosition:(int64_t *)a4;
- (BOOL)_convertCornerSlot:(id)a3 toPosition:(int64_t *)a4;
- (BOOL)_isCenterComplicationForSlot:(id)a3;
- (BOOL)_isCornerComplicationForSlot:(id)a3;
- (CGPoint)circularComplicationCenterForSlot:(id)a3 inFaceBounds:(CGRect)a4;
- (CGRect)keylineFrameForCornerComplicationSlot:(id)a3 selected:(BOOL)a4;
- (NTKFaceView)faceView;
- (NTKWhistlerAnalogFaceViewComplicationFactory)initWithFaceView:(id)a3 dialDiameter:(double)a4 device:(id)a5;
- (double)_edgeGapForState:(int64_t)a3;
- (double)_keylinePaddingForState:(int64_t)a3;
- (double)_lisaGapForState:(int64_t)a3;
- (id)_cornerKeylineViewForSlot:(id)a3;
- (id)initForDevice:(id)a3;
- (id)keylineViewForComplicationSlot:(id)a3;
- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6;
- (int64_t)complicationPickerStyleForSlot:(id)a3;
- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4;
- (void)configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5;
- (void)loadLayoutRules;
- (void)loadLayoutRulesForFaceView:(id)a3;
- (void)loadLayoutRulesForFaceView:(id)a3 dialDiameter:(double)a4;
- (void)setAlpha:(double)a3 faceView:(id)a4;
@end

@implementation NTKWhistlerAnalogFaceViewComplicationFactory

- (NTKWhistlerAnalogFaceViewComplicationFactory)initWithFaceView:(id)a3 dialDiameter:(double)a4 device:(id)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = NTKWhistlerAnalogFaceViewComplicationFactory;
  v9 = [(NTKFaceViewComplicationFactory *)&v13 initForDevice:a5];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(v9 + 10, v8);
    v10->_dialDiameter = a4;
    v11 = [MEMORY[0x277D75348] whiteColor];
    [(NTKFaceViewComplicationFactory *)v10 setForegroundColor:v11];
  }

  return v10;
}

- (id)initForDevice:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKWhistlerAnalogFaceViewComplicationFactory;
  v3 = [(NTKFaceViewComplicationFactory *)&v6 initForDevice:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] whiteColor];
    [v3 setForegroundColor:v4];
  }

  return v3;
}

- (void)configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self faceView];
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self configureComplicationView:v7 forSlot:v6 faceView:v8];
}

- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4
{
  v6 = a4;
  v7 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self faceView];
  v8 = [(NTKFaceViewComplicationFactory *)self legacyLayoutOverrideforComplicationType:a3 slot:v6 faceView:v7];

  return v8;
}

- (void)loadLayoutRules
{
  v3 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self faceView];
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self dialDiameter];
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self loadLayoutRulesForFaceView:v3 dialDiameter:?];
}

- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self faceView];
  v11 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self newLegacyViewForComplication:v9 family:a4 slot:v8 faceView:v10];

  return v11;
}

- (CGPoint)circularComplicationCenterForSlot:(id)a3 inFaceBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  v7 = a3;
  v8 = [(NTKFaceViewComplicationFactory *)self device];
  v9 = ___LayoutConstants_block_invoke_6(v8, v8);

  v10 = width * 0.5;
  v11 = height * 0.5;
  if ([v7 isEqualToString:@"slot1"])
  {
    v10 = v10 - v9;
  }

  else if ([v7 isEqualToString:@"slot2"])
  {
    v10 = v10 + v9;
  }

  else if ([v7 isEqualToString:@"slot3"])
  {
    v11 = v11 + v9;
  }

  else if ([v7 isEqualToString:@"bezel"])
  {
    v11 = v11 - v9;
  }

  v12 = v10;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)keylineViewForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([(NTKWhistlerAnalogFaceViewComplicationFactory *)self _isCornerComplicationForSlot:v4])
  {
    v5 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self _cornerKeylineViewForSlot:v4];
    goto LABEL_9;
  }

  if ([v4 isEqualToString:@"bezel"])
  {
    v6 = NTKRichComplicationBezelView;
LABEL_7:
    v7 = [(NTKFaceViewComplicationFactory *)self device];
    v5 = [(__objc2_class *)v6 keylineViewForDevice:v7];

    goto LABEL_9;
  }

  if ([(NTKWhistlerAnalogFaceViewComplicationFactory *)self _isCenterComplicationForSlot:v4])
  {
    v6 = NTKRichComplicationCircularBaseView;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (int64_t)complicationPickerStyleForSlot:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:@"bezel"] & 1) != 0 || -[NTKWhistlerAnalogFaceViewComplicationFactory _isCornerComplicationForSlot:](self, "_isCornerComplicationForSlot:", v4))
  {
    v5 = 3;
  }

  else if ([(NTKWhistlerAnalogFaceViewComplicationFactory *)self _isCenterComplicationForSlot:v4])
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)loadLayoutRulesForFaceView:(id)a3
{
  v4 = a3;
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self dialDiameter];
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self loadLayoutRulesForFaceView:v4 dialDiameter:?];
}

- (void)loadLayoutRulesForFaceView:(id)a3 dialDiameter:(double)a4
{
  v6 = a3;
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(NTKFaceViewComplicationFactory *)self device];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__NTKWhistlerAnalogFaceViewComplicationFactory_loadLayoutRulesForFaceView_dialDiameter___block_invoke;
  v18[3] = &unk_27877F120;
  v22 = v8;
  v23 = v10;
  v24 = v12;
  v25 = v14;
  v19 = v6;
  v20 = v15;
  v21 = self;
  v26 = a4;
  v16 = v15;
  v17 = v6;
  NTKEnumerateComplicationStates(v18);
}

void __88__NTKWhistlerAnalogFaceViewComplicationFactory_loadLayoutRulesForFaceView_dialDiameter___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) complicationLayoutforSlot:@"top-left"];
  v5 = +[NTKRichComplicationCornerUtilities layoutRuleForState:position:faceBounds:forDevice:narrowTopSlots:](NTKRichComplicationCornerUtilities, "layoutRuleForState:position:faceBounds:forDevice:narrowTopSlots:", a2, 0, *(a1 + 40), [*(a1 + 48) usesNarrowTopSlots], *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  [v4 setDefaultLayoutRule:v5 forState:a2];
  v6 = [*(a1 + 32) complicationLayoutforSlot:@"top-right"];

  v7 = +[NTKRichComplicationCornerUtilities layoutRuleForState:position:faceBounds:forDevice:narrowTopSlots:](NTKRichComplicationCornerUtilities, "layoutRuleForState:position:faceBounds:forDevice:narrowTopSlots:", a2, 1, *(a1 + 40), [*(a1 + 48) usesNarrowTopSlots], *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));

  [v6 setDefaultLayoutRule:v7 forState:a2];
  v8 = [*(a1 + 32) complicationLayoutforSlot:@"bottom-left"];

  v9 = +[NTKRichComplicationCornerUtilities layoutRuleForState:position:faceBounds:forDevice:narrowTopSlots:](NTKRichComplicationCornerUtilities, "layoutRuleForState:position:faceBounds:forDevice:narrowTopSlots:", a2, 2, *(a1 + 40), [*(a1 + 48) usesNarrowTopSlots], *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));

  [v8 setDefaultLayoutRule:v9 forState:a2];
  v10 = [*(a1 + 32) complicationLayoutforSlot:@"bottom-right"];

  v11 = +[NTKRichComplicationCornerUtilities layoutRuleForState:position:faceBounds:forDevice:narrowTopSlots:](NTKRichComplicationCornerUtilities, "layoutRuleForState:position:faceBounds:forDevice:narrowTopSlots:", a2, 3, *(a1 + 40), [*(a1 + 48) usesNarrowTopSlots], *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));

  [v10 setDefaultLayoutRule:v11 forState:a2];
  v12 = [*(a1 + 32) complicationLayoutforSlot:@"slot1"];

  [*(a1 + 48) circularComplicationCenterForSlot:@"slot1" inFaceBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v14 = v13;
  v16 = v15;
  v17 = [*(a1 + 48) device];
  v18 = [NTKRichComplicationCircularBaseView layoutRuleForState:a2 viewCenterInFaceBounds:0 position:v17 forDevice:v14, v16];

  [v12 setDefaultLayoutRule:v18 forState:a2];
  v19 = [*(a1 + 32) complicationLayoutforSlot:@"slot2"];

  [*(a1 + 48) circularComplicationCenterForSlot:@"slot2" inFaceBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v21 = v20;
  v23 = v22;
  v24 = [*(a1 + 48) device];
  v25 = [NTKRichComplicationCircularBaseView layoutRuleForState:a2 viewCenterInFaceBounds:1 position:v24 forDevice:v21, v23];

  [v19 setDefaultLayoutRule:v25 forState:a2];
  v26 = [*(a1 + 32) complicationLayoutforSlot:@"slot3"];

  [*(a1 + 48) circularComplicationCenterForSlot:@"slot3" inFaceBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v28 = v27;
  v30 = v29;
  v31 = [*(a1 + 48) device];
  v32 = [NTKRichComplicationCircularBaseView layoutRuleForState:a2 viewCenterInFaceBounds:2 position:v31 forDevice:v28, v30];

  [v26 setDefaultLayoutRule:v32 forState:a2];
  v33 = [*(a1 + 32) complicationLayoutforSlot:@"bezel"];

  v34 = [NTKRichComplicationBezelView layoutRuleForState:a2 faceBounds:*(a1 + 40) dialDiameter:*(a1 + 56) forDevice:*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)];

  [v33 setDefaultLayoutRule:v34 forState:a2];
}

- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([(NTKWhistlerAnalogFaceViewComplicationFactory *)self _isCenterComplicationForSlot:v11])
  {
    v13 = NTKRichComplicationCircularBaseView;
  }

  else if ([(NTKWhistlerAnalogFaceViewComplicationFactory *)self _isCornerComplicationForSlot:v11])
  {
    if (a4 == 4)
    {
      v14 = +[NTKCircularComplicationView viewForComplicationType:](NTKCircularComplicationView, "viewForComplicationType:", [v10 complicationType]);
      goto LABEL_4;
    }

    v13 = NTKRichComplicationCornerUtilities;
  }

  else
  {
    if (![v11 isEqualToString:@"bezel"])
    {
      v15 = 0;
      goto LABEL_5;
    }

    v13 = NTKRichComplicationBezelView;
  }

  v14 = -[__objc2_class viewWithLegacyComplicationType:](v13, "viewWithLegacyComplicationType:", [v10 complicationType]);
LABEL_4:
  v15 = v14;
LABEL_5:
  [v12 _configureComplicationView:v15 forSlot:v11];

  return v15;
}

- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 conformsToProtocol:&unk_28A8170A0])
  {
    v9 = v7;
    v28 = 0;
    if ([(NTKWhistlerAnalogFaceViewComplicationFactory *)self _convertCornerSlot:v8 toPosition:&v28])
    {
      [v9 setCornerComplicationPosition:v28];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v9 = v7;
    v28 = 0;
    if ([(NTKWhistlerAnalogFaceViewComplicationFactory *)self _convertCircularSlot:v8 toPosition:&v28])
    {
      [v9 setPosition:v28];
    }
  }

  [(NTKFaceViewComplicationFactory *)self alpha];
  [v9 setAlpha:?];

LABEL_8:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [MEMORY[0x277CBEAF8] currentLocale];
    v11 = [v10 objectForKey:*MEMORY[0x277CBE6C8]];
    v12 = [v11 isEqualToString:@"ar"];

    v13 = v7;
    [(NTKWhistlerAnalogFaceViewComplicationFactory *)self dialDiameter];
    v15 = v14 * 0.5;
    [v13 setTextLayoutStyle:1];
    [v13 setInterior:0];
    v16 = [(NTKFaceViewComplicationFactory *)self device];
    if (v12)
    {
      v17 = NTKWhistlerBezelCircularViewDefaultTrackingArabic();
    }

    else
    {
      v17 = NTKWhistlerBezelCircularViewDefaultTracking();
    }

    [v13 setTracking:v17];

    [v13 setCurveCenter:{v15, v15}];
    [v13 setCurveRadius:0.0];
    v18 = [(NTKFaceViewComplicationFactory *)self device];
    [v13 setCurveCenterAngle:NTKWhistlerBezelCircularViewDefaultCenterAngle()];

    v19 = [(NTKFaceViewComplicationFactory *)self device];
    [v13 setMaxAngularWidth:NTKWhistlerBezelCircularViewDefaultMaxAngularWidth()];

    v20 = [(NTKFaceViewComplicationFactory *)self device];
    NTKWhistlerBezelCircularViewDefaultMaxAngularWidth();

    v21 = [(NTKFaceViewComplicationFactory *)self device];
    [v13 setFontSize:NTKWhistlerBezelCircularViewFontSize(v21)];

    v22 = [MEMORY[0x277D75348] whiteColor];
    [v13 setTextColor:v22];

    [v13 setImagePlacement:0];
    [v13 curveCenter];
    v24 = v23;
    [v13 curveCenter];
    v26 = v25;
    v27 = [(NTKFaceViewComplicationFactory *)self device];
    [v13 setCircularCenterPoint:{v24, v26 - NTKWhistlerSubdialComplicationDistanceFromCenter(v27)}];

    [v13 setContentHeight:v15];
    [v13 setContentVerticalAlignment:1];
  }
}

- (BOOL)_isCenterComplicationForSlot:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"slot1"] & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"slot2"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqual:@"slot3"];
  }

  return v4;
}

- (BOOL)_isCornerComplicationForSlot:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"top-left"] & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"top-right") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"bottom-left"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqual:@"bottom-right"];
  }

  return v4;
}

- (id)_cornerKeylineViewForSlot:(id)a3
{
  v8 = 0;
  v4 = 0;
  if ([(NTKWhistlerAnalogFaceViewComplicationFactory *)self _convertCornerSlot:a3 toPosition:&v8])
  {
    v5 = v8;
    v6 = [(NTKFaceViewComplicationFactory *)self device];
    v4 = [NTKRichComplicationCornerUtilities keylineViewForPosition:v5 forDevice:v6 narrowTopSlots:[(NTKWhistlerAnalogFaceViewComplicationFactory *)self usesNarrowTopSlots]];
  }

  return v4;
}

- (CGRect)keylineFrameForCornerComplicationSlot:(id)a3 selected:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v63 = 0;
  if ([(NTKWhistlerAnalogFaceViewComplicationFactory *)self _convertCornerSlot:v6 toPosition:&v63])
  {
    v7 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self faceView];
    v8 = v7;
    if (v7)
    {
      if (v4)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = v63;
      [v7 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = [(NTKFaceViewComplicationFactory *)self device];
      v20 = [NTKRichComplicationCornerUtilities layoutRuleForState:v9 position:v10 faceBounds:v19 forDevice:[(NTKWhistlerAnalogFaceViewComplicationFactory *)self usesNarrowTopSlots] narrowTopSlots:v12, v14, v16, v18];

      [v20 referenceFrame];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [v20 keylinePadding];
      v32 = v22 - v31;
      v34 = v24 - v33;
      v35 = v26 - (-v30 - v31);
      v36 = v28 - (-v29 - v33);
      v37 = [v8 _complicationContainerViewForSlot:v6];
      [v8 convertRect:v37 fromCoordinateSpace:{v32, v34, v35, v36}];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      v46 = [MEMORY[0x277CBBAE8] currentDevice];
      [v46 screenBounds];
      v48 = v47;

      [v8 faceViewFrameForEditMode:1 option:0 slot:v6];
      v50 = v49;
      v52 = v51;
      CGAffineTransformMakeScale(&v62, v53 / v48, v53 / v48);
      v64.origin.x = v39;
      v64.origin.y = v41;
      v64.size.width = v43;
      v64.size.height = v45;
      v65 = CGRectApplyAffineTransform(v64, &v62);
      v66 = CGRectOffset(v65, v50, v52);
      x = v66.origin.x;
      y = v66.origin.y;
      width = v66.size.width;
      height = v66.size.height;
    }

    else
    {
      x = *MEMORY[0x277CBF3A0];
      y = *(MEMORY[0x277CBF3A0] + 8);
      width = *(MEMORY[0x277CBF3A0] + 16);
      height = *(MEMORY[0x277CBF3A0] + 24);
    }
  }

  else
  {
    x = *MEMORY[0x277CBF3A0];
    y = *(MEMORY[0x277CBF3A0] + 8);
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
  }

  v58 = x;
  v59 = y;
  v60 = width;
  v61 = height;
  result.size.height = v61;
  result.size.width = v60;
  result.origin.y = v59;
  result.origin.x = v58;
  return result;
}

- (BOOL)_convertCornerSlot:(id)a3 toPosition:(int64_t *)a4
{
  v5 = a3;
  if ([v5 isEqualToString:@"top-left"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"top-right"])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"bottom-left"])
  {
    v6 = 2;
  }

  else
  {
    if (![v5 isEqualToString:@"bottom-right"])
    {
      v7 = 0;
      goto LABEL_10;
    }

    v6 = 3;
  }

  *a4 = v6;
  v7 = 1;
LABEL_10:

  return v7;
}

- (BOOL)_convertCircularSlot:(id)a3 toPosition:(int64_t *)a4
{
  v5 = a3;
  if ([v5 isEqualToString:@"slot1"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"slot2"])
  {
    v6 = 1;
  }

  else
  {
    if (![v5 isEqualToString:@"slot3"])
    {
      v7 = 0;
      goto LABEL_8;
    }

    v6 = 2;
  }

  *a4 = v6;
  v7 = 1;
LABEL_8:

  return v7;
}

- (void)setAlpha:(double)a3 faceView:(id)a4
{
  v6 = a4;
  [(NTKFaceViewComplicationFactory *)self alpha];
  if (v7 != a3)
  {
    [(NTKFaceViewComplicationFactory *)self setAlpha:a3];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__NTKWhistlerAnalogFaceViewComplicationFactory_setAlpha_faceView___block_invoke;
    v8[3] = &unk_27877F148;
    v8[4] = self;
    v9 = v6;
    [v9 enumerateComplicationDisplayWrappersWithBlock:v8];
  }
}

void __66__NTKWhistlerAnalogFaceViewComplicationFactory_setAlpha_faceView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 display];
  [v5 configureComplicationView:v7 forSlot:v6 faceView:*(a1 + 40)];
}

- (double)_keylinePaddingForState:(int64_t)a3
{
  v3 = 0.0;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v5 = NTKKeylineWidth();
    v6 = [(NTKFaceViewComplicationFactory *)self device];
    v3 = v5 + NTKColorFaceViewDeselectedKeylineInnerPadding(v6);
  }

  return v3;
}

- (double)_edgeGapForState:(int64_t)a3
{
  if ((a3 - 2) >= 2)
  {
    if (a3 == 1)
    {
      v3 = [(NTKFaceViewComplicationFactory *)self device];
      v4 = NTKColorFaceViewEdgeGapEditing(v3);
    }

    else
    {
      v3 = [(NTKFaceViewComplicationFactory *)self device];
      v4 = NTKColorFaceViewEdgeGapNormal(v3);
    }
  }

  else
  {
    v3 = [(NTKFaceViewComplicationFactory *)self device];
    v4 = NTKColorFaceViewEdgeGapDeselected(v3);
  }

  v5 = v4;

  return v5;
}

- (double)_lisaGapForState:(int64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0.0;
  }

  v3 = [(NTKFaceViewComplicationFactory *)self device];
  v4 = NTKColorFaceViewLisaKeylineGap(v3);

  return v4;
}

- (NTKFaceView)faceView
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);

  return WeakRetained;
}

@end