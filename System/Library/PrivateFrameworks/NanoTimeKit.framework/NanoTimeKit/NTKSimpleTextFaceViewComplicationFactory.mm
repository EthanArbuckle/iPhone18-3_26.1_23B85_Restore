@interface NTKSimpleTextFaceViewComplicationFactory
- (CGRect)_referenceFrame;
- (NTKFaceView)faceView;
- (NTKSimpleTextFaceViewComplicationFactory)init;
- (id)keylineViewForComplicationSlot:(id)slot;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (void)loadLayoutRules;
@end

@implementation NTKSimpleTextFaceViewComplicationFactory

- (NTKSimpleTextFaceViewComplicationFactory)init
{
  v8.receiver = self;
  v8.super_class = NTKSimpleTextFaceViewComplicationFactory;
  v2 = [(NTKSimpleTextFaceViewComplicationFactory *)&v8 init];
  if (v2)
  {
    v3 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    device = [v3 device];
    device = v2->_device;
    v2->_device = device;

    v2->_verticalCenterOffset = ___LayoutConstants_block_invoke_19(v6, v2->_device);
  }

  return v2;
}

- (void)loadLayoutRules
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __59__NTKSimpleTextFaceViewComplicationFactory_loadLayoutRules__block_invoke;
  v2[3] = &unk_278781388;
  v2[4] = self;
  NTKEnumerateComplicationStates(v2);
}

void __59__NTKSimpleTextFaceViewComplicationFactory_loadLayoutRules__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _referenceFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v20 = [NTKRichComplicationCircularBaseView keylineImageWithFilled:0 wide:1 expanded:1 forDevice:*(*(a1 + 32) + 24)];
  [v20 size];
  v13 = (v12 - v9) * 0.5;
  [v20 size];
  v15 = (v14 - v11) * 0.5;
  v16 = [*(a1 + 32) device];
  v17 = [NTKComplicationLayoutRule layoutRuleForDevice:v16 withReferenceFrame:3 horizontalLayout:3 verticalLayout:0 keylinePadding:v5 clip:v7, v9, v11, v15, v13, v15, v13];

  v18 = [*(a1 + 32) faceView];
  v19 = [v18 complicationLayoutforSlot:@"subdial-top"];
  [v19 setDefaultLayoutRule:v17 forState:a2];
}

- (CGRect)_referenceFrame
{
  NTKWhistlerSubdialComplicationDiameter(self->_device);
  device = [(NTKSimpleTextFaceViewComplicationFactory *)self device];
  [device screenBounds];

  faceView = [(NTKSimpleTextFaceViewComplicationFactory *)self faceView];
  [faceView bounds];
  device2 = [(NTKSimpleTextFaceViewComplicationFactory *)self device];
  CLKRectCenteredXInRectForDevice();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  v5 = [[NTKRichComplicationCircularBaseView alloc] initWithFamily:10];
  [(NTKRichComplicationCircularBaseView *)v5 setHidden:1];
  return v5;
}

- (id)keylineViewForComplicationSlot:(id)slot
{
  slotCopy = slot;
  faceView = [(NTKSimpleTextFaceViewComplicationFactory *)self faceView];
  v6 = [faceView _defaultKeylineViewForComplicationSlot:slotCopy];

  return v6;
}

- (NTKFaceView)faceView
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);

  return WeakRetained;
}

@end