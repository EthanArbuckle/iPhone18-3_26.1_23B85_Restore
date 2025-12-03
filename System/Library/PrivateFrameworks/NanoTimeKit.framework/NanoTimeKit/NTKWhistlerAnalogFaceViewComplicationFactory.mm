@interface NTKWhistlerAnalogFaceViewComplicationFactory
- (BOOL)_convertCircularSlot:(id)slot toPosition:(int64_t *)position;
- (BOOL)_convertCornerSlot:(id)slot toPosition:(int64_t *)position;
- (BOOL)_isCenterComplicationForSlot:(id)slot;
- (BOOL)_isCornerComplicationForSlot:(id)slot;
- (CGPoint)circularComplicationCenterForSlot:(id)slot inFaceBounds:(CGRect)bounds;
- (CGRect)keylineFrameForCornerComplicationSlot:(id)slot selected:(BOOL)selected;
- (NTKFaceView)faceView;
- (NTKWhistlerAnalogFaceViewComplicationFactory)initWithFaceView:(id)view dialDiameter:(double)diameter device:(id)device;
- (double)_edgeGapForState:(int64_t)state;
- (double)_keylinePaddingForState:(int64_t)state;
- (double)_lisaGapForState:(int64_t)state;
- (id)_cornerKeylineViewForSlot:(id)slot;
- (id)initForDevice:(id)device;
- (id)keylineViewForComplicationSlot:(id)slot;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view;
- (int64_t)complicationPickerStyleForSlot:(id)slot;
- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot;
- (void)configureComplicationView:(id)view forSlot:(id)slot;
- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView;
- (void)loadLayoutRules;
- (void)loadLayoutRulesForFaceView:(id)view;
- (void)loadLayoutRulesForFaceView:(id)view dialDiameter:(double)diameter;
- (void)setAlpha:(double)alpha faceView:(id)view;
@end

@implementation NTKWhistlerAnalogFaceViewComplicationFactory

- (NTKWhistlerAnalogFaceViewComplicationFactory)initWithFaceView:(id)view dialDiameter:(double)diameter device:(id)device
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = NTKWhistlerAnalogFaceViewComplicationFactory;
  v9 = [(NTKFaceViewComplicationFactory *)&v13 initForDevice:device];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(v9 + 10, viewCopy);
    v10->_dialDiameter = diameter;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(NTKFaceViewComplicationFactory *)v10 setForegroundColor:whiteColor];
  }

  return v10;
}

- (id)initForDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = NTKWhistlerAnalogFaceViewComplicationFactory;
  v3 = [(NTKFaceViewComplicationFactory *)&v6 initForDevice:device];
  if (v3)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v3 setForegroundColor:whiteColor];
  }

  return v3;
}

- (void)configureComplicationView:(id)view forSlot:(id)slot
{
  slotCopy = slot;
  viewCopy = view;
  faceView = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self faceView];
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self configureComplicationView:viewCopy forSlot:slotCopy faceView:faceView];
}

- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot
{
  slotCopy = slot;
  faceView = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self faceView];
  v8 = [(NTKFaceViewComplicationFactory *)self legacyLayoutOverrideforComplicationType:type slot:slotCopy faceView:faceView];

  return v8;
}

- (void)loadLayoutRules
{
  faceView = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self faceView];
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self dialDiameter];
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self loadLayoutRulesForFaceView:faceView dialDiameter:?];
}

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  slotCopy = slot;
  complicationCopy = complication;
  faceView = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self faceView];
  v11 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self newLegacyViewForComplication:complicationCopy family:family slot:slotCopy faceView:faceView];

  return v11;
}

- (CGPoint)circularComplicationCenterForSlot:(id)slot inFaceBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  slotCopy = slot;
  device = [(NTKFaceViewComplicationFactory *)self device];
  v9 = ___LayoutConstants_block_invoke_6(device, device);

  v10 = width * 0.5;
  v11 = height * 0.5;
  if ([slotCopy isEqualToString:@"slot1"])
  {
    v10 = v10 - v9;
  }

  else if ([slotCopy isEqualToString:@"slot2"])
  {
    v10 = v10 + v9;
  }

  else if ([slotCopy isEqualToString:@"slot3"])
  {
    v11 = v11 + v9;
  }

  else if ([slotCopy isEqualToString:@"bezel"])
  {
    v11 = v11 - v9;
  }

  v12 = v10;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (id)keylineViewForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([(NTKWhistlerAnalogFaceViewComplicationFactory *)self _isCornerComplicationForSlot:slotCopy])
  {
    v5 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self _cornerKeylineViewForSlot:slotCopy];
    goto LABEL_9;
  }

  if ([slotCopy isEqualToString:@"bezel"])
  {
    v6 = NTKRichComplicationBezelView;
LABEL_7:
    device = [(NTKFaceViewComplicationFactory *)self device];
    v5 = [(__objc2_class *)v6 keylineViewForDevice:device];

    goto LABEL_9;
  }

  if ([(NTKWhistlerAnalogFaceViewComplicationFactory *)self _isCenterComplicationForSlot:slotCopy])
  {
    v6 = NTKRichComplicationCircularBaseView;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (int64_t)complicationPickerStyleForSlot:(id)slot
{
  slotCopy = slot;
  if (([slotCopy isEqualToString:@"bezel"] & 1) != 0 || -[NTKWhistlerAnalogFaceViewComplicationFactory _isCornerComplicationForSlot:](self, "_isCornerComplicationForSlot:", slotCopy))
  {
    v5 = 3;
  }

  else if ([(NTKWhistlerAnalogFaceViewComplicationFactory *)self _isCenterComplicationForSlot:slotCopy])
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)loadLayoutRulesForFaceView:(id)view
{
  viewCopy = view;
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self dialDiameter];
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self loadLayoutRulesForFaceView:viewCopy dialDiameter:?];
}

- (void)loadLayoutRulesForFaceView:(id)view dialDiameter:(double)diameter
{
  viewCopy = view;
  [viewCopy bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  device = [(NTKFaceViewComplicationFactory *)self device];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__NTKWhistlerAnalogFaceViewComplicationFactory_loadLayoutRulesForFaceView_dialDiameter___block_invoke;
  v18[3] = &unk_27877F120;
  v22 = v8;
  v23 = v10;
  v24 = v12;
  v25 = v14;
  v19 = viewCopy;
  v20 = device;
  selfCopy = self;
  diameterCopy = diameter;
  v16 = device;
  v17 = viewCopy;
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

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view
{
  complicationCopy = complication;
  slotCopy = slot;
  viewCopy = view;
  if ([(NTKWhistlerAnalogFaceViewComplicationFactory *)self _isCenterComplicationForSlot:slotCopy])
  {
    v13 = NTKRichComplicationCircularBaseView;
  }

  else if ([(NTKWhistlerAnalogFaceViewComplicationFactory *)self _isCornerComplicationForSlot:slotCopy])
  {
    if (family == 4)
    {
      v14 = +[NTKCircularComplicationView viewForComplicationType:](NTKCircularComplicationView, "viewForComplicationType:", [complicationCopy complicationType]);
      goto LABEL_4;
    }

    v13 = NTKRichComplicationCornerUtilities;
  }

  else
  {
    if (![slotCopy isEqualToString:@"bezel"])
    {
      v15 = 0;
      goto LABEL_5;
    }

    v13 = NTKRichComplicationBezelView;
  }

  v14 = -[__objc2_class viewWithLegacyComplicationType:](v13, "viewWithLegacyComplicationType:", [complicationCopy complicationType]);
LABEL_4:
  v15 = v14;
LABEL_5:
  [viewCopy _configureComplicationView:v15 forSlot:slotCopy];

  return v15;
}

- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView
{
  viewCopy = view;
  slotCopy = slot;
  if ([viewCopy conformsToProtocol:&unk_28A8170A0])
  {
    v9 = viewCopy;
    v28 = 0;
    if ([(NTKWhistlerAnalogFaceViewComplicationFactory *)self _convertCornerSlot:slotCopy toPosition:&v28])
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

    v9 = viewCopy;
    v28 = 0;
    if ([(NTKWhistlerAnalogFaceViewComplicationFactory *)self _convertCircularSlot:slotCopy toPosition:&v28])
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
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v11 = [currentLocale objectForKey:*MEMORY[0x277CBE6C8]];
    v12 = [v11 isEqualToString:@"ar"];

    v13 = viewCopy;
    [(NTKWhistlerAnalogFaceViewComplicationFactory *)self dialDiameter];
    v15 = v14 * 0.5;
    [v13 setTextLayoutStyle:1];
    [v13 setInterior:0];
    device = [(NTKFaceViewComplicationFactory *)self device];
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
    device2 = [(NTKFaceViewComplicationFactory *)self device];
    [v13 setCurveCenterAngle:NTKWhistlerBezelCircularViewDefaultCenterAngle()];

    device3 = [(NTKFaceViewComplicationFactory *)self device];
    [v13 setMaxAngularWidth:NTKWhistlerBezelCircularViewDefaultMaxAngularWidth()];

    device4 = [(NTKFaceViewComplicationFactory *)self device];
    NTKWhistlerBezelCircularViewDefaultMaxAngularWidth();

    device5 = [(NTKFaceViewComplicationFactory *)self device];
    [v13 setFontSize:NTKWhistlerBezelCircularViewFontSize(device5)];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v13 setTextColor:whiteColor];

    [v13 setImagePlacement:0];
    [v13 curveCenter];
    v24 = v23;
    [v13 curveCenter];
    v26 = v25;
    device6 = [(NTKFaceViewComplicationFactory *)self device];
    [v13 setCircularCenterPoint:{v24, v26 - NTKWhistlerSubdialComplicationDistanceFromCenter(device6)}];

    [v13 setContentHeight:v15];
    [v13 setContentVerticalAlignment:1];
  }
}

- (BOOL)_isCenterComplicationForSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqual:@"slot1"] & 1) != 0 || (objc_msgSend(slotCopy, "isEqual:", @"slot2"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [slotCopy isEqual:@"slot3"];
  }

  return v4;
}

- (BOOL)_isCornerComplicationForSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqual:@"top-left"] & 1) != 0 || (objc_msgSend(slotCopy, "isEqual:", @"top-right") & 1) != 0 || (objc_msgSend(slotCopy, "isEqual:", @"bottom-left"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [slotCopy isEqual:@"bottom-right"];
  }

  return v4;
}

- (id)_cornerKeylineViewForSlot:(id)slot
{
  v8 = 0;
  v4 = 0;
  if ([(NTKWhistlerAnalogFaceViewComplicationFactory *)self _convertCornerSlot:slot toPosition:&v8])
  {
    v5 = v8;
    device = [(NTKFaceViewComplicationFactory *)self device];
    v4 = [NTKRichComplicationCornerUtilities keylineViewForPosition:v5 forDevice:device narrowTopSlots:[(NTKWhistlerAnalogFaceViewComplicationFactory *)self usesNarrowTopSlots]];
  }

  return v4;
}

- (CGRect)keylineFrameForCornerComplicationSlot:(id)slot selected:(BOOL)selected
{
  selectedCopy = selected;
  slotCopy = slot;
  v63 = 0;
  if ([(NTKWhistlerAnalogFaceViewComplicationFactory *)self _convertCornerSlot:slotCopy toPosition:&v63])
  {
    faceView = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self faceView];
    v8 = faceView;
    if (faceView)
    {
      if (selectedCopy)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v10 = v63;
      [faceView bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      device = [(NTKFaceViewComplicationFactory *)self device];
      v20 = [NTKRichComplicationCornerUtilities layoutRuleForState:v9 position:v10 faceBounds:device forDevice:[(NTKWhistlerAnalogFaceViewComplicationFactory *)self usesNarrowTopSlots] narrowTopSlots:v12, v14, v16, v18];

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
      v37 = [v8 _complicationContainerViewForSlot:slotCopy];
      [v8 convertRect:v37 fromCoordinateSpace:{v32, v34, v35, v36}];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
      [currentDevice screenBounds];
      v48 = v47;

      [v8 faceViewFrameForEditMode:1 option:0 slot:slotCopy];
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

- (BOOL)_convertCornerSlot:(id)slot toPosition:(int64_t *)position
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:@"top-left"])
  {
    v6 = 0;
  }

  else if ([slotCopy isEqualToString:@"top-right"])
  {
    v6 = 1;
  }

  else if ([slotCopy isEqualToString:@"bottom-left"])
  {
    v6 = 2;
  }

  else
  {
    if (![slotCopy isEqualToString:@"bottom-right"])
    {
      v7 = 0;
      goto LABEL_10;
    }

    v6 = 3;
  }

  *position = v6;
  v7 = 1;
LABEL_10:

  return v7;
}

- (BOOL)_convertCircularSlot:(id)slot toPosition:(int64_t *)position
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:@"slot1"])
  {
    v6 = 0;
  }

  else if ([slotCopy isEqualToString:@"slot2"])
  {
    v6 = 1;
  }

  else
  {
    if (![slotCopy isEqualToString:@"slot3"])
    {
      v7 = 0;
      goto LABEL_8;
    }

    v6 = 2;
  }

  *position = v6;
  v7 = 1;
LABEL_8:

  return v7;
}

- (void)setAlpha:(double)alpha faceView:(id)view
{
  viewCopy = view;
  [(NTKFaceViewComplicationFactory *)self alpha];
  if (v7 != alpha)
  {
    [(NTKFaceViewComplicationFactory *)self setAlpha:alpha];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__NTKWhistlerAnalogFaceViewComplicationFactory_setAlpha_faceView___block_invoke;
    v8[3] = &unk_27877F148;
    v8[4] = self;
    v9 = viewCopy;
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

- (double)_keylinePaddingForState:(int64_t)state
{
  v3 = 0.0;
  if ((state & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v5 = NTKKeylineWidth();
    device = [(NTKFaceViewComplicationFactory *)self device];
    v3 = v5 + NTKColorFaceViewDeselectedKeylineInnerPadding(device);
  }

  return v3;
}

- (double)_edgeGapForState:(int64_t)state
{
  if ((state - 2) >= 2)
  {
    if (state == 1)
    {
      device = [(NTKFaceViewComplicationFactory *)self device];
      v4 = NTKColorFaceViewEdgeGapEditing(device);
    }

    else
    {
      device = [(NTKFaceViewComplicationFactory *)self device];
      v4 = NTKColorFaceViewEdgeGapNormal(device);
    }
  }

  else
  {
    device = [(NTKFaceViewComplicationFactory *)self device];
    v4 = NTKColorFaceViewEdgeGapDeselected(device);
  }

  v5 = v4;

  return v5;
}

- (double)_lisaGapForState:(int64_t)state
{
  if ((state & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0.0;
  }

  device = [(NTKFaceViewComplicationFactory *)self device];
  v4 = NTKColorFaceViewLisaKeylineGap(device);

  return v4;
}

- (NTKFaceView)faceView
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);

  return WeakRetained;
}

@end