@interface NTKColorCircularUtilitarianFaceViewComplicationFactory
- (CGRect)keylineFrameForCornerComplicationSlot:(id)slot selected:(BOOL)selected;
- (NTKColorCircularUtilitarianFaceViewComplicationFactory)initWithFaceView:(id)view device:(id)device graphicCornerComplications:(BOOL)complications;
- (NTKColorCircularUtilitarianFaceViewComplicationFactoryDelegate)delegate;
- (NTKFaceView)faceView;
- (double)_edgeGapForState:(int64_t)state;
- (double)_keylinePaddingForState:(int64_t)state;
- (double)_lisaGapForState:(int64_t)state;
- (id)_colorComplicationSlots;
- (id)_complicationSlots;
- (id)_slotForUtilitySlot:(int64_t)slot;
- (id)_utilityComplicationSlots;
- (id)createComplicationContentSpecificAttributesAnimationWithAttributes:(unint64_t)attributes faceView:(id)view forSlots:(id)slots;
- (id)curvedMaskForSlot:(id)slot;
- (id)initForDevice:(id)device;
- (id)keylineViewForComplicationSlot:(id)slot;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view;
- (int64_t)_utilitySlotForSlot:(id)slot;
- (int64_t)keylineStyleForComplicationSlot:(id)slot;
- (unint64_t)textLayoutStyleForSlot:(int64_t)slot;
- (void)applyComplicationContentSpecificAttributesAnimated:(BOOL)animated faceView:(id)view;
- (void)configureComplicationView:(id)view forSlot:(id)slot;
- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView;
- (void)curvedCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot;
- (void)loadLayoutRules;
- (void)loadLayoutRulesForFaceView:(id)view;
@end

@implementation NTKColorCircularUtilitarianFaceViewComplicationFactory

- (NTKColorCircularUtilitarianFaceViewComplicationFactory)initWithFaceView:(id)view device:(id)device graphicCornerComplications:(BOOL)complications
{
  viewCopy = view;
  deviceCopy = device;
  v10 = [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self initForDevice:deviceCopy];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(v10 + 14, viewCopy);
    v11->_graphicCornerComplications = complications;
    v12 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initWithFaceView:viewCopy dialDiameter:deviceCopy device:50.0];
    cornerComplicationFactory = v11->_cornerComplicationFactory;
    v11->_cornerComplicationFactory = v12;

    [(NTKWhistlerAnalogFaceViewComplicationFactory *)v11->_cornerComplicationFactory setUsesNarrowTopSlots:1];
  }

  return v11;
}

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v16.receiver = self;
  v16.super_class = NTKColorCircularUtilitarianFaceViewComplicationFactory;
  v5 = [(NTKFaceViewComplicationFactory *)&v16 initForDevice:deviceCopy];
  if (v5)
  {
    v6 = [[NTKUtilityComplicationFactory alloc] initForDevice:deviceCopy];
    v7 = *(v5 + 9);
    *(v5 + 9) = v6;

    [*(v5 + 9) setDelegate:v5];
    [*(v5 + 9) setForegroundAlpha:1.0];
    [*(v5 + 9) setForegroundImageAlpha:1.0];
    [*(v5 + 9) setBottomCenterLayout:3];
    [v5 setContentSpecificAnimationDuration:0.45];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v5 setForegroundColor:whiteColor];

    v9 = NTKActivityBackgroundPlatterColor();
    [v5 setPlatterColor:v9];

    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    v11 = *(v5 + 11);
    *(v5 + 11) = whiteColor2;

    v12 = NTKActivityBackgroundPlatterColor();
    v13 = *(v5 + 12);
    *(v5 + 12) = v12;

    v14 = *(v5 + 10);
    *(v5 + 10) = 0;

    objc_storeWeak(v5 + 14, 0);
    *(v5 + 104) = 0;
  }

  return v5;
}

- (void)loadLayoutRules
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);
  [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self loadLayoutRulesForFaceView:WeakRetained];
}

- (void)loadLayoutRulesForFaceView:(id)view
{
  v31 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  [viewCopy bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  _utilityComplicationSlots = [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self _utilityComplicationSlots];
  v14 = [_utilityComplicationSlots countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(_utilityComplicationSlots);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = [viewCopy complicationLayoutforSlot:v18];
        [(NTKUtilityComplicationFactory *)self->_complicationFactory configureComplicationLayout:v19 forSlot:[(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self _utilitySlotForSlot:v18] withBounds:v6, v8, v10, v12];
      }

      v15 = [_utilityComplicationSlots countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  if (self->_graphicCornerComplications)
  {
    [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_cornerComplicationFactory loadLayoutRules];
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __85__NTKColorCircularUtilitarianFaceViewComplicationFactory_loadLayoutRulesForFaceView___block_invoke;
    v20[3] = &unk_27877E670;
    v20[4] = self;
    v21 = viewCopy;
    v22 = v6;
    v23 = v8;
    v24 = v10;
    v25 = v12;
    NTKEnumerateComplicationStates(v20);
  }
}

void __85__NTKColorCircularUtilitarianFaceViewComplicationFactory_loadLayoutRulesForFaceView___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _keylinePaddingForState:a2];
  v5 = v4;
  [*(a1 + 32) _edgeGapForState:a2];
  v7 = v5 + v6;
  v8 = [*(a1 + 32) device];
  v9 = NTKCircularSmallComplicationDiameter();
  v10 = [*(a1 + 32) device];
  v11 = NTKCircularSmallComplicationDiameter();

  v12 = [*(a1 + 32) device];
  v13 = [NTKComplicationLayoutRule layoutRuleForDevice:v12 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v7 keylinePadding:v7, v9, v11, v5, v5, v5, v5];

  v14 = [*(a1 + 40) complicationLayoutforSlot:@"top-left"];
  [v14 setDefaultLayoutRule:v13 forState:a2];

  v15 = *(a1 + 64) - v9 - v7;
  [*(a1 + 32) _lisaGapForState:a2];
  v17 = v15 - v16;
  v18 = [*(a1 + 32) device];
  v20 = [NTKComplicationLayoutRule layoutRuleForDevice:v18 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v17 keylinePadding:v7, v9, v11, v5, v5, v5, v5];

  v19 = [*(a1 + 40) complicationLayoutforSlot:@"top-right"];
  [v19 setDefaultLayoutRule:v20 forState:a2];
}

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  slotCopy = slot;
  complicationCopy = complication;
  WeakRetained = objc_loadWeakRetained(&self->_faceView);
  v11 = [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self newLegacyViewForComplication:complicationCopy family:family slot:slotCopy faceView:WeakRetained];

  return v11;
}

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view
{
  complicationCopy = complication;
  slotCopy = slot;
  viewCopy = view;
  if ([slotCopy isEqual:@"bottom-center"])
  {
    v13 = [(NTKUtilityComplicationFactory *)self->_complicationFactory newViewForComplication:complicationCopy family:family forSlot:[(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self _utilitySlotForSlot:slotCopy]];
    [viewCopy _configureComplicationView:v13 forSlot:slotCopy];
  }

  else if (self->_graphicCornerComplications)
  {
    v13 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_cornerComplicationFactory newLegacyViewForComplication:complicationCopy family:family slot:slotCopy faceView:viewCopy];
  }

  else
  {
    v13 = +[NTKCircularComplicationView viewForComplicationType:](NTKCircularComplicationView, "viewForComplicationType:", [complicationCopy complicationType]);
    foregroundColor = [(NTKFaceViewComplicationFactory *)self foregroundColor];
    [v13 setForegroundColor:foregroundColor];

    platterColor = [(NTKFaceViewComplicationFactory *)self platterColor];
    [v13 setPlatterColor:platterColor];
  }

  return v13;
}

- (void)configureComplicationView:(id)view forSlot:(id)slot
{
  slotCopy = slot;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_faceView);
  [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self configureComplicationView:viewCopy forSlot:slotCopy faceView:WeakRetained];
}

- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView
{
  viewCopy = view;
  slotCopy = slot;
  faceViewCopy = faceView;
  foregroundColor = [(NTKFaceViewComplicationFactory *)self foregroundColor];
  platterColor = [(NTKFaceViewComplicationFactory *)self platterColor];
  objc_storeStrong(&self->_previousForegroundColor, foregroundColor);
  objc_storeStrong(&self->_previousPlatterColor, platterColor);
  if (([slotCopy isEqualToString:@"top-left"] & 1) != 0 || objc_msgSend(slotCopy, "isEqualToString:", @"top-right"))
  {
    if (self->_graphicCornerComplications)
    {
      [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_cornerComplicationFactory configureComplicationView:viewCopy forSlot:slotCopy faceView:faceViewCopy];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = viewCopy;
      [faceViewCopy setComplicationColor:foregroundColor];
      [faceViewCopy setInterpolatedComplicationColor:foregroundColor];
      [v12 transitionToMonochromeWithFraction:1.0];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = viewCopy;
      [v13 setForegroundColor:foregroundColor];
      [v13 setPlatterColor:platterColor];
      [v13 setUseRoundedFontDesign:1];
      clearColor = [MEMORY[0x277D75348] clearColor];
      [v13 setBackgroundColor:clearColor];
    }
  }

  if ([slotCopy isEqual:@"bottom-center"])
  {
    v15 = viewCopy;
    delegate = [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self delegate];
    v17 = [delegate textLayoutStyleForSlot:slotCopy] == 0;

    [v15 setShouldUseBackgroundPlatter:v17];
    -[NTKUtilityComplicationFactory foregroundAlphaForEditing:](self->_complicationFactory, "foregroundAlphaForEditing:", [faceViewCopy editing]);
    [v15 setForegroundAlpha:?];
    [v15 setForegroundColor:foregroundColor];
    -[NTKUtilityComplicationFactory foregroundImageAlphaForEditing:](self->_complicationFactory, "foregroundImageAlphaForEditing:", [faceViewCopy editing]);
    [v15 setForegroundImageAlpha:?];
    [v15 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", -[NTKColorCircularUtilitarianFaceViewComplicationFactory _utilitySlotForSlot:](self, "_utilitySlotForSlot:", slotCopy))}];
    if (self->_graphicCornerComplications)
    {
      [v15 setUseRoundedFontDesign:1];
      [v15 setFontWeight:*MEMORY[0x277D74410]];
    }
  }
}

- (CGRect)keylineFrameForCornerComplicationSlot:(id)slot selected:(BOOL)selected
{
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_cornerComplicationFactory keylineFrameForCornerComplicationSlot:slot selected:selected];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)keylineViewForComplicationSlot:(id)slot
{
  slotCopy = slot;
  v5 = slotCopy;
  if (self->_graphicCornerComplications && (([slotCopy isEqualToString:@"top-left"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"top-right")))
  {
    v6 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_cornerComplicationFactory keylineViewForComplicationSlot:v5];
  }

  else
  {
    v6 = [(NTKUtilityComplicationFactory *)self->_complicationFactory keylineViewForSlot:[(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self _utilitySlotForSlot:v5]];
  }

  v7 = v6;

  return v7;
}

- (int64_t)_utilitySlotForSlot:(id)slot
{
  if ([slot isEqualToString:@"bottom-center"])
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

- (id)_slotForUtilitySlot:(int64_t)slot
{
  if (slot == 10)
  {
    v4 = @"bottom-center";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)keylineStyleForComplicationSlot:(id)slot
{
  slotCopy = slot;
  device = [(NTKFaceViewComplicationFactory *)self device];
  if ([device deviceCategory] != 1)
  {
    if ([slotCopy isEqualToString:@"top-left"])
    {
    }

    else
    {
      v7 = [slotCopy isEqualToString:@"top-right"];

      if ((v7 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v6 = 1;
    goto LABEL_8;
  }

LABEL_3:
  v6 = 0;
LABEL_8:

  return v6;
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

- (id)_utilityComplicationSlots
{
  if (_utilityComplicationSlots_onceToken != -1)
  {
    [NTKColorCircularUtilitarianFaceViewComplicationFactory _utilityComplicationSlots];
  }

  v3 = _utilityComplicationSlots_slots;

  return v3;
}

void __83__NTKColorCircularUtilitarianFaceViewComplicationFactory__utilityComplicationSlots__block_invoke()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = @"bottom-center";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:1];
  v1 = _utilityComplicationSlots_slots;
  _utilityComplicationSlots_slots = v0;
}

- (id)_colorComplicationSlots
{
  if (_colorComplicationSlots_onceToken != -1)
  {
    [NTKColorCircularUtilitarianFaceViewComplicationFactory _colorComplicationSlots];
  }

  v3 = _colorComplicationSlots_slots;

  return v3;
}

void __81__NTKColorCircularUtilitarianFaceViewComplicationFactory__colorComplicationSlots__block_invoke()
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = @"top-left";
  v2[1] = @"top-right";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:2];
  v1 = _colorComplicationSlots_slots;
  _colorComplicationSlots_slots = v0;
}

- (id)_complicationSlots
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__NTKColorCircularUtilitarianFaceViewComplicationFactory__complicationSlots__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  if (_complicationSlots_onceToken != -1)
  {
    dispatch_once(&_complicationSlots_onceToken, block);
  }

  return _complicationSlots_slots;
}

void __76__NTKColorCircularUtilitarianFaceViewComplicationFactory__complicationSlots__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _utilityComplicationSlots];
  v2 = [*(a1 + 32) _colorComplicationSlots];
  v3 = [v5 arrayByAddingObjectsFromArray:v2];
  v4 = _complicationSlots_slots;
  _complicationSlots_slots = v3;
}

- (void)applyComplicationContentSpecificAttributesAnimated:(BOOL)animated faceView:(id)view
{
  animatedCopy = animated;
  viewCopy = view;
  if (animatedCopy)
  {
    foregroundColorProviderBlock = [(NTKFaceViewComplicationFactory *)self foregroundColorProviderBlock];

    platterColorProviderBlock = [(NTKFaceViewComplicationFactory *)self platterColorProviderBlock];

    v8 = 8;
    if (foregroundColorProviderBlock)
    {
      v8 = 9;
    }

    if (platterColorProviderBlock)
    {
      v9 = v8;
    }

    else
    {
      v9 = foregroundColorProviderBlock != 0;
    }
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  [(NTKFaceViewComplicationFactory *)self applyComplicationContentSpecificAttributesAnimated:animatedCopy attributes:v9 faceView:viewCopy];
}

- (id)createComplicationContentSpecificAttributesAnimationWithAttributes:(unint64_t)attributes faceView:(id)view forSlots:(id)slots
{
  attributesCopy = attributes;
  viewCopy = view;
  slotsCopy = slots;
  if ((attributesCopy & 9) != 0)
  {
    v10 = (attributesCopy >> 3) & 1;
    v11 = attributesCopy & 1;
    foregroundColor = [(NTKFaceViewComplicationFactory *)self foregroundColor];
    platterColor = [(NTKFaceViewComplicationFactory *)self platterColor];
    v14 = objc_opt_new();
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __143__NTKColorCircularUtilitarianFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke;
    v25[3] = &unk_27877E6C0;
    v26 = slotsCopy;
    selfCopy = self;
    v28 = foregroundColor;
    v29 = platterColor;
    v30 = viewCopy;
    v32 = v11;
    v33 = v10;
    v15 = v14;
    v31 = v15;
    v16 = platterColor;
    v17 = foregroundColor;
    [v30 enumerateComplicationDisplayWrappersWithBlock:v25];
    [(NTKFaceViewComplicationFactory *)self contentSpecificAnimationDuration];
    v19 = v18;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __143__NTKColorCircularUtilitarianFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke_3;
    v23[3] = &unk_27877E6E8;
    v24 = v15;
    v20 = v15;
    v21 = [NTKFaceViewComplicationFactory _genericComplicationAnimationWithDuration:v23 applier:v19];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void __143__NTKColorCircularUtilitarianFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (!v7 || [v7 containsObject:v5])
  {
    v8 = *(*(a1 + 40) + 88);
    v9 = *(*(a1 + 40) + 96);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __143__NTKColorCircularUtilitarianFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke_2;
    v20 = &unk_27877E698;
    v21 = v8;
    v22 = *(a1 + 48);
    v23 = v9;
    v10 = *(a1 + 56);
    v11 = *(a1 + 40);
    v24 = v10;
    v25 = v11;
    v26 = *(a1 + 64);
    v27 = v5;
    v28 = *(a1 + 80);
    v12 = v9;
    v13 = v8;
    v14 = _Block_copy(&v17);
    v15 = *(a1 + 72);
    v16 = _Block_copy(v14);
    [v15 addObject:{v16, v17, v18, v19, v20}];
  }
}

void __143__NTKColorCircularUtilitarianFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke_2(uint64_t a1)
{
  obj = NTKInterpolateBetweenColors();
  v2 = NTKInterpolateBetweenColors();
  objc_storeStrong((*(a1 + 64) + 88), obj);
  objc_storeStrong((*(a1 + 64) + 96), v2);
  v3 = [*(a1 + 72) normalComplicationDisplayWrapperForSlot:*(a1 + 80)];
  v4 = [v3 display];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (*(a1 + 88) == 1)
    {
      [v5 setForegroundColor:obj];
    }

    if (*(a1 + 89) == 1)
    {
      [v6 setPlatterColor:v2];
    }
  }

  if ([v4 conformsToProtocol:&unk_28A859958] && *(a1 + 88) == 1)
  {
    [v4 setForegroundColor:obj];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && *(a1 + 88) == 1)
  {
    v7 = *(a1 + 72);
    v8 = v4;
    [v7 setComplicationColor:obj];
    [*(a1 + 72) setInterpolatedComplicationColor:obj];
    [v8 transitionToMonochromeWithFraction:1.0];
  }
}

void __143__NTKColorCircularUtilitarianFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke_3(uint64_t a1, double a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    v7 = a2;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v9 + 1) + 8 * v8++) + 16))(v7);
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (unint64_t)textLayoutStyleForSlot:(int64_t)slot
{
  delegate = [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self delegate];
  v6 = [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self _slotForUtilitySlot:slot];
  v7 = [delegate textLayoutStyleForSlot:v6];

  return v7;
}

- (void)curvedCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot
{
  v14 = [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self _utilitySlotForSlot:slot];
  device = [(NTKFaceViewComplicationFactory *)self device];
  [NTKUtilityComplicationFactory curvedCircleRadius:radius centerAngle:angle maxAngularWidth:width circleCenter:center interior:interior forSlot:v14 forDevice:device];
}

- (id)curvedMaskForSlot:(id)slot
{
  complicationFactory = self->_complicationFactory;
  v4 = [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self _utilitySlotForSlot:slot];

  return [(NTKUtilityComplicationFactory *)complicationFactory curvedMaskForSlot:v4];
}

- (NTKFaceView)faceView
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);

  return WeakRetained;
}

- (NTKColorCircularUtilitarianFaceViewComplicationFactoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end