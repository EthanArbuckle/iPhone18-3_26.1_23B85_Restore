@interface NTKFullscreenSubdialComplicationFactory
- (BOOL)_convertCircularSlot:(id)slot toPosition:(int64_t *)position;
- (CGPoint)_circularComplicationCenterForSlot:(id)slot inFaceBounds:(CGRect)bounds;
- (CGPoint)circularComplicationDistanceFromCenter;
- (NTKFaceView)faceView;
- (id)initForDevice:(id)device;
- (id)keylineViewForComplicationSlot:(id)slot;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view;
- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot;
- (void)configureComplicationView:(id)view forSlot:(id)slot;
- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView;
- (void)loadLayoutRules;
- (void)loadLayoutRulesForFaceView:(id)view;
- (void)setAlpha:(double)alpha faceView:(id)view;
@end

@implementation NTKFullscreenSubdialComplicationFactory

- (id)initForDevice:(id)device
{
  v9.receiver = self;
  v9.super_class = NTKFullscreenSubdialComplicationFactory;
  v3 = [(NTKFaceViewComplicationFactory *)&v9 initForDevice:device];
  v4 = v3;
  if (v3)
  {
    v5 = v3 + 10;
    device = [v3 device];
    *v5 = ___LayoutConstants_block_invoke_34(device, device);
    *(v4 + 11) = v7;
  }

  return v4;
}

- (id)keylineViewForComplicationSlot:(id)slot
{
  v4 = [slot isEqualToString:@"subdial-top"];
  device = [(NTKFaceViewComplicationFactory *)self device];
  v6 = [NTKRichComplicationCircularBaseView keylineViewForDevice:device wide:v4 expanded:1];

  return v6;
}

- (void)loadLayoutRulesForFaceView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  device = [(NTKFaceViewComplicationFactory *)self device];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__NTKFullscreenSubdialComplicationFactory_loadLayoutRulesForFaceView___block_invoke;
  v16[3] = &unk_278782AA0;
  v17 = viewCopy;
  selfCopy = self;
  v20 = v6;
  v21 = v8;
  v22 = v10;
  v23 = v12;
  v19 = device;
  v14 = device;
  v15 = viewCopy;
  NTKEnumerateComplicationStates(v16);
}

void __70__NTKFullscreenSubdialComplicationFactory_loadLayoutRulesForFaceView___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) complicationLayoutforSlot:@"subdial-left"];
  [*(a1 + 40) _circularComplicationCenterForSlot:@"subdial-left" inFaceBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v5 = [NTKRichComplicationCircularBaseView layoutRuleForState:a2 viewCenterInFaceBounds:0 position:1 editingAdjustment:0 wide:*(a1 + 48) forDevice:?];
  [v4 setDefaultLayoutRule:v5 forState:a2];
  v6 = [*(a1 + 32) complicationLayoutforSlot:@"subdial-right"];

  [*(a1 + 40) _circularComplicationCenterForSlot:@"subdial-right" inFaceBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v7 = [NTKRichComplicationCircularBaseView layoutRuleForState:a2 viewCenterInFaceBounds:1 position:1 editingAdjustment:0 wide:*(a1 + 48) forDevice:?];

  [v6 setDefaultLayoutRule:v7 forState:a2];
  v8 = [*(a1 + 32) complicationLayoutforSlot:@"subdial-bottom"];

  [*(a1 + 40) _circularComplicationCenterForSlot:@"subdial-bottom" inFaceBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v9 = [NTKRichComplicationCircularBaseView layoutRuleForState:a2 viewCenterInFaceBounds:2 position:1 editingAdjustment:0 wide:*(a1 + 48) forDevice:?];

  [v8 setDefaultLayoutRule:v9 forState:a2];
  v10 = [*(a1 + 32) complicationLayoutforSlot:@"subdial-top"];

  [*(a1 + 40) _circularComplicationCenterForSlot:@"subdial-top" inFaceBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v11 = [NTKRichComplicationCircularBaseView layoutRuleForState:a2 viewCenterInFaceBounds:3 position:1 editingAdjustment:1 wide:*(a1 + 48) forDevice:?];

  [v10 setDefaultLayoutRule:v11 forState:a2];
}

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot faceView:(id)view
{
  viewCopy = view;
  slotCopy = slot;
  v10 = +[NTKRichComplicationCircularBaseView viewWithLegacyComplicationType:](NTKRichComplicationCircularBaseView, "viewWithLegacyComplicationType:", [complication complicationType]);
  [viewCopy _configureComplicationView:v10 forSlot:slotCopy];

  return v10;
}

- (void)configureComplicationView:(id)view forSlot:(id)slot faceView:(id)faceView
{
  viewCopy = view;
  slotCopy = slot;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = viewCopy;
    v10 = 0;
    if ([(NTKFullscreenSubdialComplicationFactory *)self _convertCircularSlot:slotCopy toPosition:&v10])
    {
      [v9 setPosition:v10];
    }

    [(NTKFaceViewComplicationFactory *)self alpha];
    [v9 setAlpha:?];
  }
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
    v8[2] = __61__NTKFullscreenSubdialComplicationFactory_setAlpha_faceView___block_invoke;
    v8[3] = &unk_27877F148;
    v8[4] = self;
    v9 = viewCopy;
    [v9 enumerateComplicationDisplayWrappersWithBlock:v8];
  }
}

void __61__NTKFullscreenSubdialComplicationFactory_setAlpha_faceView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 display];
  [v5 configureComplicationView:v7 forSlot:v6 faceView:*(a1 + 40)];
}

- (void)configureComplicationView:(id)view forSlot:(id)slot
{
  slotCopy = slot;
  viewCopy = view;
  faceView = [(NTKFullscreenSubdialComplicationFactory *)self faceView];
  [(NTKFullscreenSubdialComplicationFactory *)self configureComplicationView:viewCopy forSlot:slotCopy faceView:faceView];
}

- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot
{
  slotCopy = slot;
  faceView = [(NTKFullscreenSubdialComplicationFactory *)self faceView];
  v8 = [(NTKFaceViewComplicationFactory *)self legacyLayoutOverrideforComplicationType:type slot:slotCopy faceView:faceView];

  return v8;
}

- (void)loadLayoutRules
{
  faceView = [(NTKFullscreenSubdialComplicationFactory *)self faceView];
  [(NTKFullscreenSubdialComplicationFactory *)self loadLayoutRulesForFaceView:faceView];
}

- (id)newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  slotCopy = slot;
  complicationCopy = complication;
  faceView = [(NTKFullscreenSubdialComplicationFactory *)self faceView];
  v11 = [(NTKFullscreenSubdialComplicationFactory *)self newLegacyViewForComplication:complicationCopy family:family slot:slotCopy faceView:faceView];

  return v11;
}

- (CGPoint)_circularComplicationCenterForSlot:(id)slot inFaceBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  slotCopy = slot;
  v10 = MEMORY[0x2318D8E70](x, y, width, height);
  v12 = v11;
  if ([slotCopy isEqualToString:@"subdial-top"])
  {
    v12 = v12 - self->_circularComplicationDistanceFromCenter.y;
  }

  else if ([slotCopy isEqualToString:@"subdial-left"])
  {
    v10 = v10 - self->_circularComplicationDistanceFromCenter.x;
  }

  else if ([slotCopy isEqualToString:@"subdial-right"])
  {
    v10 = v10 + self->_circularComplicationDistanceFromCenter.x;
  }

  else if ([slotCopy isEqualToString:@"subdial-bottom"])
  {
    v12 = v12 + self->_circularComplicationDistanceFromCenter.y;
  }

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (BOOL)_convertCircularSlot:(id)slot toPosition:(int64_t *)position
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:@"subdial-left"])
  {
    v6 = 0;
  }

  else if ([slotCopy isEqualToString:@"subdial-right"])
  {
    v6 = 1;
  }

  else if ([slotCopy isEqualToString:@"subdial-bottom"])
  {
    v6 = 2;
  }

  else
  {
    if (![slotCopy isEqualToString:@"subdial-top"])
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

- (CGPoint)circularComplicationDistanceFromCenter
{
  x = self->_circularComplicationDistanceFromCenter.x;
  y = self->_circularComplicationDistanceFromCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (NTKFaceView)faceView
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);

  return WeakRetained;
}

@end