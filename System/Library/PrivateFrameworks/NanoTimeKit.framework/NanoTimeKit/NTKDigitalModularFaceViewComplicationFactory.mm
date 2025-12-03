@interface NTKDigitalModularFaceViewComplicationFactory
- (id)digitalTimeLayoutRuleForEditMode:(int64_t)mode;
- (id)initForDevice:(id)device;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view;
- (void)_loadLayoutRulesForState:(int64_t)state withTopGap:(double)gap largeModuleHeight:(double)height faceView:(id)view;
- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView;
- (void)loadLayoutRulesForFaceView:(id)view;
@end

@implementation NTKDigitalModularFaceViewComplicationFactory

- (id)initForDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = NTKDigitalModularFaceViewComplicationFactory;
  v3 = [(NTKFaceViewComplicationFactory *)&v6 initForDevice:device];
  if (v3)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v3 setForegroundColor:whiteColor];
  }

  return v3;
}

- (id)digitalTimeLayoutRuleForEditMode:(int64_t)mode
{
  v3 = &OBJC_IVAR___NTKDigitalModularFaceViewComplicationFactory__timeLayoutRuleEditing;
  if (!mode)
  {
    v3 = &OBJC_IVAR___NTKDigitalModularFaceViewComplicationFactory__timeLayoutRuleNormal;
  }

  return *(&self->super.super.isa + *v3);
}

- (void)loadLayoutRulesForFaceView:(id)view
{
  viewCopy = view;
  device = [(NTKFaceViewComplicationFactory *)self device];
  v6 = NTKDigitalModularFaceViewTopGap(device);
  device2 = [(NTKFaceViewComplicationFactory *)self device];
  [(NTKDigitalModularFaceViewComplicationFactory *)self _loadLayoutRulesForState:0 withTopGap:viewCopy largeModuleHeight:v6 faceView:NTKDigitalModularFaceViewLargeModuleHeight(device2)];

  device3 = [(NTKFaceViewComplicationFactory *)self device];
  v8 = NTKDigitalModularFaceViewTopGapEditing(device3);
  device4 = [(NTKFaceViewComplicationFactory *)self device];
  [(NTKDigitalModularFaceViewComplicationFactory *)self _loadLayoutRulesForState:1 withTopGap:viewCopy largeModuleHeight:v8 faceView:NTKDigitalModularFaceViewLargeModuleHeightEditing(device4)];
}

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view
{
  viewCopy = view;
  slotCopy = slot;
  complicationCopy = complication;
  v11 = [slotCopy isEqual:@"center"];
  complicationType = [complicationCopy complicationType];

  if (v11)
  {
    [NTKComplicationModuleView largeModuleViewForComplicationType:complicationType];
  }

  else
  {
    [NTKComplicationModuleView smallModuleViewForComplicationType:complicationType];
  }
  v13 = ;
  [viewCopy _configureComplicationView:v13 forSlot:slotCopy];

  return v13;
}

- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView
{
  viewCopy = view;
  device = [(NTKFaceViewComplicationFactory *)self device];
  [viewCopy setContentHeight:NTKDigitalModularFaceViewSmallModuleHeight(device)];

  foregroundColor = [(NTKFaceViewComplicationFactory *)self foregroundColor];
  [viewCopy setForegroundColor:foregroundColor];

  foregroundColor2 = [(NTKFaceViewComplicationFactory *)self foregroundColor];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  if ([foregroundColor2 isEqual:whiteColor])
  {
    NTKSecondaryForegroundGrayColor();
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v10 = ;
  [viewCopy setSecondaryForegroundColor:v10];

  foregroundColor3 = [(NTKFaceViewComplicationFactory *)self foregroundColor];
  v12 = NTKColorByPremultiplyingAlpha(foregroundColor3, 0.2);
  [viewCopy setHighlightBackgroundColor:v12];

  [viewCopy _enumerateForegroundColoringViewsWithBlock:&__block_literal_global_55];
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

- (void)_loadLayoutRulesForState:(int64_t)state withTopGap:(double)gap largeModuleHeight:(double)height faceView:(id)view
{
  v9 = *MEMORY[0x277D768C8];
  v10 = *(MEMORY[0x277D768C8] + 8);
  v11 = *(MEMORY[0x277D768C8] + 16);
  v12 = *(MEMORY[0x277D768C8] + 24);
  viewCopy = view;
  device = [(NTKFaceViewComplicationFactory *)self device];
  v15 = NTKDigitalModularFaceViewSideModuleWidth(device);

  device2 = [(NTKFaceViewComplicationFactory *)self device];
  v17 = NTKDigitalModularFaceViewSmallModuleHeight(device2);

  device3 = [(NTKFaceViewComplicationFactory *)self device];
  v30 = [NTKComplicationLayoutRule layoutRuleForDevice:device3 withReferenceFrame:3 horizontalLayout:3 verticalLayout:0.0 keylinePadding:gap, v15, v17, v9, v10, v11, v12];

  v19 = [viewCopy complicationLayoutforSlot:@"top-left"];

  [v19 setDefaultLayoutRule:v30 forState:state];
  device4 = [(NTKFaceViewComplicationFactory *)self device];
  v21 = NTKDigitalModularFaceViewModuleGap(device4);

  v32.origin.x = 0.0;
  v32.origin.y = gap;
  v32.size.width = v15;
  v32.size.height = v17;
  v22 = v21 + CGRectGetMaxX(v32);
  device5 = [(NTKFaceViewComplicationFactory *)self device];
  v24 = v15 + v21 + NTKDigitalModularFaceViewCenterModuleWidth(device5);

  device6 = [(NTKFaceViewComplicationFactory *)self device];
  v26 = [NTKLayoutRule layoutRuleForDevice:device6 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v22, gap, v24, v17];

  v27 = &OBJC_IVAR___NTKDigitalModularFaceViewComplicationFactory__timeLayoutRuleEditing;
  if (!state)
  {
    v27 = &OBJC_IVAR___NTKDigitalModularFaceViewComplicationFactory__timeLayoutRuleNormal;
  }

  v28 = *v27;
  v29 = *(&self->super.super.isa + v28);
  *(&self->super.super.isa + v28) = v26;
}

@end