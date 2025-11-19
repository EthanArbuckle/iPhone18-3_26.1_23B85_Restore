@interface NTKPrideAnalogFaceViewComplicationFactory
- (NTKFaceView)faceView;
- (NTKPrideAnalogFaceViewComplicationFactory)initWithFaceView:(id)a3 device:(id)a4;
- (double)_edgeGapForState:(int64_t)a3;
- (double)_keylinePaddingForState:(int64_t)a3;
- (double)_lisaGapForState:(int64_t)a3;
- (id)_complicationSlots;
- (id)createComplicationContentSpecificAttributesAnimationWithAttributes:(unint64_t)a3 faceView:(id)a4 forSlots:(id)a5;
- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (int64_t)keylineStyleForComplicationSlot:(id)a3;
- (void)applyComplicationContentSpecificAttributesAnimated:(BOOL)a3 faceView:(id)a4;
- (void)configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)loadLayoutRules;
@end

@implementation NTKPrideAnalogFaceViewComplicationFactory

- (NTKPrideAnalogFaceViewComplicationFactory)initWithFaceView:(id)a3 device:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = NTKPrideAnalogFaceViewComplicationFactory;
  v7 = [(NTKFaceViewComplicationFactory *)&v12 initForDevice:a4];
  v8 = v7;
  if (v7)
  {
    [(NTKPrideAnalogFaceViewComplicationFactory *)v7 setFaceView:v6];
    [(NTKFaceViewComplicationFactory *)v8 setContentSpecificAnimationDuration:0.45];
    v9 = [MEMORY[0x277D75348] whiteColor];
    [(NTKFaceViewComplicationFactory *)v8 setForegroundColor:v9];

    v10 = NTKActivityBackgroundPlatterColor();
    [(NTKFaceViewComplicationFactory *)v8 setPlatterColor:v10];
  }

  return v8;
}

- (void)loadLayoutRules
{
  v3 = [(NTKPrideAnalogFaceViewComplicationFactory *)self faceView];
  v4 = v3;
  if (v3)
  {
    [v3 bounds];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__NTKPrideAnalogFaceViewComplicationFactory_loadLayoutRules__block_invoke;
    v10[3] = &unk_27877E670;
    v10[4] = self;
    v12 = v5;
    v13 = v6;
    v14 = v7;
    v15 = v8;
    v11 = v4;
    NTKEnumerateComplicationStates(v10);
  }

  else
  {
    v9 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(NTKPrideAnalogFaceViewComplicationFactory *)v9 loadLayoutRules];
    }
  }
}

void __60__NTKPrideAnalogFaceViewComplicationFactory_loadLayoutRules__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _keylinePaddingForState:a2];
  v5 = v4;
  [*(a1 + 32) _edgeGapForState:a2];
  v7 = v5 + v6;
  v8 = [*(a1 + 32) device];
  v9 = NTKCircularSmallComplicationDiameter();
  v10 = [*(a1 + 32) device];
  v11 = NTKCircularSmallComplicationDiameter();

  v12 = *(a1 + 72) - v11 - v7;
  v13 = *(a1 + 64) - v9 - v7;
  v14 = [*(a1 + 32) device];
  v15 = [NTKComplicationLayoutRule layoutRuleForDevice:v14 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v7 keylinePadding:v7, v9, v11, v5, v5, v5, v5];

  v16 = [*(a1 + 40) complicationLayoutforSlot:@"top-left"];
  [v16 setDefaultLayoutRule:v15 forState:a2];

  [*(a1 + 32) _lisaGapForState:a2];
  v18 = v13 - v17;
  v19 = [*(a1 + 32) device];
  v20 = [NTKComplicationLayoutRule layoutRuleForDevice:v19 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v18 keylinePadding:v7, v9, v11, v5, v5, v5, v5];

  v21 = [*(a1 + 40) complicationLayoutforSlot:@"top-right"];
  [v21 setDefaultLayoutRule:v20 forState:a2];

  v22 = [*(a1 + 32) device];
  v23 = [NTKComplicationLayoutRule layoutRuleForDevice:v22 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v7 keylinePadding:v12, v9, v11, v5, v5, v5, v5];

  v24 = [*(a1 + 40) complicationLayoutforSlot:@"bottom-left"];
  [v24 setDefaultLayoutRule:v23 forState:a2];

  v25 = [*(a1 + 32) device];
  v27 = [NTKComplicationLayoutRule layoutRuleForDevice:v25 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v13 keylinePadding:v12, v9, v11, v5, v5, v5, v5];

  v26 = [*(a1 + 40) complicationLayoutforSlot:@"bottom-right"];
  [v26 setDefaultLayoutRule:v27 forState:a2];
}

- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v6 = +[NTKCircularComplicationView viewForComplicationType:](NTKCircularComplicationView, "viewForComplicationType:", [a3 complicationType]);
  v7 = [(NTKFaceViewComplicationFactory *)self foregroundColor];
  [v6 setForegroundColor:v7];

  v8 = [(NTKFaceViewComplicationFactory *)self platterColor];
  [v6 setPlatterColor:v8];

  return v6;
}

- (void)configureComplicationView:(id)a3 forSlot:(id)a4
{
  v5 = a3;
  v6 = [(NTKFaceViewComplicationFactory *)self foregroundColor];
  [v5 setForegroundColor:v6];

  v7 = [(NTKFaceViewComplicationFactory *)self platterColor];
  [v5 setPlatterColor:v7];

  [v5 setUseRoundedFontDesign:1];
  v8 = [MEMORY[0x277D75348] clearColor];
  [v5 setBackgroundColor:v8];
}

- (int64_t)keylineStyleForComplicationSlot:(id)a3
{
  v3 = [(NTKFaceViewComplicationFactory *)self device];
  v4 = [v3 deviceCategory] != 1;

  return v4;
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

- (id)_complicationSlots
{
  if (_complicationSlots_onceToken_0 != -1)
  {
    [NTKPrideAnalogFaceViewComplicationFactory _complicationSlots];
  }

  v3 = _complicationSlots_slots_0;

  return v3;
}

void __63__NTKPrideAnalogFaceViewComplicationFactory__complicationSlots__block_invoke()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = @"top-left";
  v2[1] = @"top-right";
  v2[2] = @"bottom-left";
  v2[3] = @"bottom-right";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:4];
  v1 = _complicationSlots_slots_0;
  _complicationSlots_slots_0 = v0;
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
  if ((a3 & 9) != 0)
  {
    v6 = (a3 >> 3) & 1;
    v7 = a3 & 1;
    v8 = a4;
    v9 = [(NTKFaceViewComplicationFactory *)self foregroundColor];
    v10 = [(NTKFaceViewComplicationFactory *)self platterColor];
    v11 = objc_opt_new();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __130__NTKPrideAnalogFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke;
    v22[3] = &unk_278785FC8;
    v26 = v7;
    v27 = v6;
    v23 = v9;
    v24 = v10;
    v12 = v11;
    v25 = v12;
    v13 = v10;
    v14 = v9;
    [v8 enumerateComplicationDisplayWrappersWithBlock:v22];

    [(NTKFaceViewComplicationFactory *)self contentSpecificAnimationDuration];
    v16 = v15;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __130__NTKPrideAnalogFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke_3;
    v20[3] = &unk_27877E6E8;
    v21 = v12;
    v17 = v12;
    v18 = [NTKFaceViewComplicationFactory _genericComplicationAnimationWithDuration:v20 applier:v16];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __130__NTKPrideAnalogFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 display];
  v5 = [v4 foregroundColor];
  v6 = [v4 platterColor];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __130__NTKPrideAnalogFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke_2;
  v17 = &unk_278785FA0;
  v23 = *(a1 + 56);
  v18 = v4;
  v19 = v5;
  v7 = *(a1 + 32);
  v24 = *(a1 + 57);
  v20 = v7;
  v21 = v6;
  v22 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  v10 = v4;
  v11 = _Block_copy(&v14);
  v12 = *(a1 + 48);
  v13 = _Block_copy(v11);
  [v12 addObject:{v13, v14, v15, v16, v17}];
}

void __130__NTKPrideAnalogFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 32);
    v3 = NTKInterpolateBetweenColors();
    [v2 setForegroundColor:v3];
  }

  if (*(a1 + 73) == 1)
  {
    v4 = *(a1 + 32);
    v5 = NTKInterpolateBetweenColors();
    [v4 setPlatterColor:v5];
  }
}

void __130__NTKPrideAnalogFaceViewComplicationFactory_createComplicationContentSpecificAttributesAnimationWithAttributes_faceView_forSlots___block_invoke_3(uint64_t a1, double a2)
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

- (NTKFaceView)faceView
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);

  return WeakRetained;
}

@end