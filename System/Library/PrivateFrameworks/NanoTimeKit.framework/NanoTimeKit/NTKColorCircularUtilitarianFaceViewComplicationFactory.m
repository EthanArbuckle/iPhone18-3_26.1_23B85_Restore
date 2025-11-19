@interface NTKColorCircularUtilitarianFaceViewComplicationFactory
- (CGRect)keylineFrameForCornerComplicationSlot:(id)a3 selected:(BOOL)a4;
- (NTKColorCircularUtilitarianFaceViewComplicationFactory)initWithFaceView:(id)a3 device:(id)a4 graphicCornerComplications:(BOOL)a5;
- (NTKColorCircularUtilitarianFaceViewComplicationFactoryDelegate)delegate;
- (NTKFaceView)faceView;
- (double)_edgeGapForState:(int64_t)a3;
- (double)_keylinePaddingForState:(int64_t)a3;
- (double)_lisaGapForState:(int64_t)a3;
- (id)_colorComplicationSlots;
- (id)_complicationSlots;
- (id)_slotForUtilitySlot:(int64_t)a3;
- (id)_utilityComplicationSlots;
- (id)createComplicationContentSpecificAttributesAnimationWithAttributes:(unint64_t)a3 faceView:(id)a4 forSlots:(id)a5;
- (id)curvedMaskForSlot:(id)a3;
- (id)initForDevice:(id)a3;
- (id)keylineViewForComplicationSlot:(id)a3;
- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6;
- (int64_t)_utilitySlotForSlot:(id)a3;
- (int64_t)keylineStyleForComplicationSlot:(id)a3;
- (unint64_t)textLayoutStyleForSlot:(int64_t)a3;
- (void)applyComplicationContentSpecificAttributesAnimated:(BOOL)a3 faceView:(id)a4;
- (void)configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5;
- (void)curvedCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8;
- (void)loadLayoutRules;
- (void)loadLayoutRulesForFaceView:(id)a3;
@end

@implementation NTKColorCircularUtilitarianFaceViewComplicationFactory

- (NTKColorCircularUtilitarianFaceViewComplicationFactory)initWithFaceView:(id)a3 device:(id)a4 graphicCornerComplications:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self initForDevice:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(v10 + 14, v8);
    v11->_graphicCornerComplications = a5;
    v12 = [[NTKWhistlerAnalogFaceViewComplicationFactory alloc] initWithFaceView:v8 dialDiameter:v9 device:50.0];
    cornerComplicationFactory = v11->_cornerComplicationFactory;
    v11->_cornerComplicationFactory = v12;

    [(NTKWhistlerAnalogFaceViewComplicationFactory *)v11->_cornerComplicationFactory setUsesNarrowTopSlots:1];
  }

  return v11;
}

- (id)initForDevice:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = NTKColorCircularUtilitarianFaceViewComplicationFactory;
  v5 = [(NTKFaceViewComplicationFactory *)&v16 initForDevice:v4];
  if (v5)
  {
    v6 = [[NTKUtilityComplicationFactory alloc] initForDevice:v4];
    v7 = *(v5 + 9);
    *(v5 + 9) = v6;

    [*(v5 + 9) setDelegate:v5];
    [*(v5 + 9) setForegroundAlpha:1.0];
    [*(v5 + 9) setForegroundImageAlpha:1.0];
    [*(v5 + 9) setBottomCenterLayout:3];
    [v5 setContentSpecificAnimationDuration:0.45];
    v8 = [MEMORY[0x277D75348] whiteColor];
    [v5 setForegroundColor:v8];

    v9 = NTKActivityBackgroundPlatterColor();
    [v5 setPlatterColor:v9];

    v10 = [MEMORY[0x277D75348] whiteColor];
    v11 = *(v5 + 11);
    *(v5 + 11) = v10;

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

- (void)loadLayoutRulesForFaceView:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self _utilityComplicationSlots];
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = [v4 complicationLayoutforSlot:v18];
        [(NTKUtilityComplicationFactory *)self->_complicationFactory configureComplicationLayout:v19 forSlot:[(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self _utilitySlotForSlot:v18] withBounds:v6, v8, v10, v12];
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
    v21 = v4;
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

- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_faceView);
  v11 = [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self newLegacyViewForComplication:v9 family:a4 slot:v8 faceView:WeakRetained];

  return v11;
}

- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if ([v11 isEqual:@"bottom-center"])
  {
    v13 = [(NTKUtilityComplicationFactory *)self->_complicationFactory newViewForComplication:v10 family:a4 forSlot:[(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self _utilitySlotForSlot:v11]];
    [v12 _configureComplicationView:v13 forSlot:v11];
  }

  else if (self->_graphicCornerComplications)
  {
    v13 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_cornerComplicationFactory newLegacyViewForComplication:v10 family:a4 slot:v11 faceView:v12];
  }

  else
  {
    v13 = +[NTKCircularComplicationView viewForComplicationType:](NTKCircularComplicationView, "viewForComplicationType:", [v10 complicationType]);
    v14 = [(NTKFaceViewComplicationFactory *)self foregroundColor];
    [v13 setForegroundColor:v14];

    v15 = [(NTKFaceViewComplicationFactory *)self platterColor];
    [v13 setPlatterColor:v15];
  }

  return v13;
}

- (void)configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_faceView);
  [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self configureComplicationView:v7 forSlot:v6 faceView:WeakRetained];
}

- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NTKFaceViewComplicationFactory *)self foregroundColor];
  v11 = [(NTKFaceViewComplicationFactory *)self platterColor];
  objc_storeStrong(&self->_previousForegroundColor, v10);
  objc_storeStrong(&self->_previousPlatterColor, v11);
  if (([v8 isEqualToString:@"top-left"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"top-right"))
  {
    if (self->_graphicCornerComplications)
    {
      [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_cornerComplicationFactory configureComplicationView:v18 forSlot:v8 faceView:v9];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v18;
      [v9 setComplicationColor:v10];
      [v9 setInterpolatedComplicationColor:v10];
      [v12 transitionToMonochromeWithFraction:1.0];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v18;
      [v13 setForegroundColor:v10];
      [v13 setPlatterColor:v11];
      [v13 setUseRoundedFontDesign:1];
      v14 = [MEMORY[0x277D75348] clearColor];
      [v13 setBackgroundColor:v14];
    }
  }

  if ([v8 isEqual:@"bottom-center"])
  {
    v15 = v18;
    v16 = [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self delegate];
    v17 = [v16 textLayoutStyleForSlot:v8] == 0;

    [v15 setShouldUseBackgroundPlatter:v17];
    -[NTKUtilityComplicationFactory foregroundAlphaForEditing:](self->_complicationFactory, "foregroundAlphaForEditing:", [v9 editing]);
    [v15 setForegroundAlpha:?];
    [v15 setForegroundColor:v10];
    -[NTKUtilityComplicationFactory foregroundImageAlphaForEditing:](self->_complicationFactory, "foregroundImageAlphaForEditing:", [v9 editing]);
    [v15 setForegroundImageAlpha:?];
    [v15 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", -[NTKColorCircularUtilitarianFaceViewComplicationFactory _utilitySlotForSlot:](self, "_utilitySlotForSlot:", v8))}];
    if (self->_graphicCornerComplications)
    {
      [v15 setUseRoundedFontDesign:1];
      [v15 setFontWeight:*MEMORY[0x277D74410]];
    }
  }
}

- (CGRect)keylineFrameForCornerComplicationSlot:(id)a3 selected:(BOOL)a4
{
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_cornerComplicationFactory keylineFrameForCornerComplicationSlot:a3 selected:a4];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)keylineViewForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_graphicCornerComplications && (([v4 isEqualToString:@"top-left"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"top-right")))
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

- (int64_t)_utilitySlotForSlot:(id)a3
{
  if ([a3 isEqualToString:@"bottom-center"])
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

- (id)_slotForUtilitySlot:(int64_t)a3
{
  if (a3 == 10)
  {
    v4 = @"bottom-center";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)keylineStyleForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceViewComplicationFactory *)self device];
  if ([v5 deviceCategory] != 1)
  {
    if ([v4 isEqualToString:@"top-left"])
    {
    }

    else
    {
      v7 = [v4 isEqualToString:@"top-right"];

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

- (void)applyComplicationContentSpecificAttributesAnimated:(BOOL)a3 faceView:(id)a4
{
  v4 = a3;
  v10 = a4;
  if (v4)
  {
    v6 = [(NTKFaceViewComplicationFactory *)self foregroundColorProviderBlock];

    v7 = [(NTKFaceViewComplicationFactory *)self platterColorProviderBlock];

    v8 = 8;
    if (v6)
    {
      v8 = 9;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6 != 0;
    }
  }

  else
  {
    v9 = 0xFFFFFFFFLL;
  }

  [(NTKFaceViewComplicationFactory *)self applyComplicationContentSpecificAttributesAnimated:v4 attributes:v9 faceView:v10];
}

- (id)createComplicationContentSpecificAttributesAnimationWithAttributes:(unint64_t)a3 faceView:(id)a4 forSlots:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if ((v6 & 9) != 0)
  {
    v10 = (v6 >> 3) & 1;
    v11 = v6 & 1;
    v12 = [(NTKFaceViewComplicationFactory *)self foregroundColor];
    v13 = [(NTKFaceViewComplicationFactory *)self platterColor];
    v14 = objc_opt_new();
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __143__NTKColorCircularUtilitarianFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke;
    v25[3] = &unk_27877E6C0;
    v26 = v9;
    v27 = self;
    v28 = v12;
    v29 = v13;
    v30 = v8;
    v32 = v11;
    v33 = v10;
    v15 = v14;
    v31 = v15;
    v16 = v13;
    v17 = v12;
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

- (unint64_t)textLayoutStyleForSlot:(int64_t)a3
{
  v5 = [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self delegate];
  v6 = [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self _slotForUtilitySlot:a3];
  v7 = [v5 textLayoutStyleForSlot:v6];

  return v7;
}

- (void)curvedCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8
{
  v14 = [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self _utilitySlotForSlot:a8];
  v15 = [(NTKFaceViewComplicationFactory *)self device];
  [NTKUtilityComplicationFactory curvedCircleRadius:a3 centerAngle:a4 maxAngularWidth:a5 circleCenter:a6 interior:a7 forSlot:v14 forDevice:v15];
}

- (id)curvedMaskForSlot:(id)a3
{
  complicationFactory = self->_complicationFactory;
  v4 = [(NTKColorCircularUtilitarianFaceViewComplicationFactory *)self _utilitySlotForSlot:a3];

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