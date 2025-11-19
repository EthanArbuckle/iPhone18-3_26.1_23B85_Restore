@interface NTKDigitalModularFaceViewComplicationFactory
- (id)digitalTimeLayoutRuleForEditMode:(int64_t)a3;
- (id)initForDevice:(id)a3;
- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6;
- (void)_loadLayoutRulesForState:(int64_t)a3 withTopGap:(double)a4 largeModuleHeight:(double)a5 faceView:(id)a6;
- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5;
- (void)loadLayoutRulesForFaceView:(id)a3;
@end

@implementation NTKDigitalModularFaceViewComplicationFactory

- (id)initForDevice:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKDigitalModularFaceViewComplicationFactory;
  v3 = [(NTKFaceViewComplicationFactory *)&v6 initForDevice:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] whiteColor];
    [v3 setForegroundColor:v4];
  }

  return v3;
}

- (id)digitalTimeLayoutRuleForEditMode:(int64_t)a3
{
  v3 = &OBJC_IVAR___NTKDigitalModularFaceViewComplicationFactory__timeLayoutRuleEditing;
  if (!a3)
  {
    v3 = &OBJC_IVAR___NTKDigitalModularFaceViewComplicationFactory__timeLayoutRuleNormal;
  }

  return *(&self->super.super.isa + *v3);
}

- (void)loadLayoutRulesForFaceView:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceViewComplicationFactory *)self device];
  v6 = NTKDigitalModularFaceViewTopGap(v5);
  v7 = [(NTKFaceViewComplicationFactory *)self device];
  [(NTKDigitalModularFaceViewComplicationFactory *)self _loadLayoutRulesForState:0 withTopGap:v4 largeModuleHeight:v6 faceView:NTKDigitalModularFaceViewLargeModuleHeight(v7)];

  v10 = [(NTKFaceViewComplicationFactory *)self device];
  v8 = NTKDigitalModularFaceViewTopGapEditing(v10);
  v9 = [(NTKFaceViewComplicationFactory *)self device];
  [(NTKDigitalModularFaceViewComplicationFactory *)self _loadLayoutRulesForState:1 withTopGap:v4 largeModuleHeight:v8 faceView:NTKDigitalModularFaceViewLargeModuleHeightEditing(v9)];
}

- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = a3;
  v11 = [v9 isEqual:@"center"];
  v12 = [v10 complicationType];

  if (v11)
  {
    [NTKComplicationModuleView largeModuleViewForComplicationType:v12];
  }

  else
  {
    [NTKComplicationModuleView smallModuleViewForComplicationType:v12];
  }
  v13 = ;
  [v8 _configureComplicationView:v13 forSlot:v9];

  return v13;
}

- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5
{
  v13 = a3;
  v6 = [(NTKFaceViewComplicationFactory *)self device];
  [v13 setContentHeight:NTKDigitalModularFaceViewSmallModuleHeight(v6)];

  v7 = [(NTKFaceViewComplicationFactory *)self foregroundColor];
  [v13 setForegroundColor:v7];

  v8 = [(NTKFaceViewComplicationFactory *)self foregroundColor];
  v9 = [MEMORY[0x277D75348] whiteColor];
  if ([v8 isEqual:v9])
  {
    NTKSecondaryForegroundGrayColor();
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v10 = ;
  [v13 setSecondaryForegroundColor:v10];

  v11 = [(NTKFaceViewComplicationFactory *)self foregroundColor];
  v12 = NTKColorByPremultiplyingAlpha(v11, 0.2);
  [v13 setHighlightBackgroundColor:v12];

  [v13 _enumerateForegroundColoringViewsWithBlock:&__block_literal_global_55];
}

void __91__NTKDigitalModularFaceViewComplicationFactory_configureComplicationView_forSlot_faceView___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 setMulticolorAlpha:0.0];
  }
}

- (void)_loadLayoutRulesForState:(int64_t)a3 withTopGap:(double)a4 largeModuleHeight:(double)a5 faceView:(id)a6
{
  v9 = *MEMORY[0x277D768C8];
  v10 = *(MEMORY[0x277D768C8] + 8);
  v11 = *(MEMORY[0x277D768C8] + 16);
  v12 = *(MEMORY[0x277D768C8] + 24);
  v13 = a6;
  v14 = [(NTKFaceViewComplicationFactory *)self device];
  v15 = NTKDigitalModularFaceViewSideModuleWidth(v14);

  v16 = [(NTKFaceViewComplicationFactory *)self device];
  v17 = NTKDigitalModularFaceViewSmallModuleHeight(v16);

  v18 = [(NTKFaceViewComplicationFactory *)self device];
  v30 = [NTKComplicationLayoutRule layoutRuleForDevice:v18 withReferenceFrame:3 horizontalLayout:3 verticalLayout:0.0 keylinePadding:a4, v15, v17, v9, v10, v11, v12];

  v19 = [v13 complicationLayoutforSlot:@"top-left"];

  [v19 setDefaultLayoutRule:v30 forState:a3];
  v20 = [(NTKFaceViewComplicationFactory *)self device];
  v21 = NTKDigitalModularFaceViewModuleGap(v20);

  v32.origin.x = 0.0;
  v32.origin.y = a4;
  v32.size.width = v15;
  v32.size.height = v17;
  v22 = v21 + CGRectGetMaxX(v32);
  v23 = [(NTKFaceViewComplicationFactory *)self device];
  v24 = v15 + v21 + NTKDigitalModularFaceViewCenterModuleWidth(v23);

  v25 = [(NTKFaceViewComplicationFactory *)self device];
  v26 = [NTKLayoutRule layoutRuleForDevice:v25 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v22, a4, v24, v17];

  v27 = &OBJC_IVAR___NTKDigitalModularFaceViewComplicationFactory__timeLayoutRuleEditing;
  if (!a3)
  {
    v27 = &OBJC_IVAR___NTKDigitalModularFaceViewComplicationFactory__timeLayoutRuleNormal;
  }

  v28 = *v27;
  v29 = *(&self->super.super.isa + v28);
  *(&self->super.super.isa + v28) = v26;
}

@end