@interface NTKFullscreenSubdialComplicationFactory
- (BOOL)_convertCircularSlot:(id)a3 toPosition:(int64_t *)a4;
- (CGPoint)_circularComplicationCenterForSlot:(id)a3 inFaceBounds:(CGRect)a4;
- (CGPoint)circularComplicationDistanceFromCenter;
- (NTKFaceView)faceView;
- (id)initForDevice:(id)a3;
- (id)keylineViewForComplicationSlot:(id)a3;
- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6;
- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4;
- (void)configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5;
- (void)loadLayoutRules;
- (void)loadLayoutRulesForFaceView:(id)a3;
- (void)setAlpha:(double)a3 faceView:(id)a4;
@end

@implementation NTKFullscreenSubdialComplicationFactory

- (id)initForDevice:(id)a3
{
  v9.receiver = self;
  v9.super_class = NTKFullscreenSubdialComplicationFactory;
  v3 = [(NTKFaceViewComplicationFactory *)&v9 initForDevice:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3 + 10;
    v6 = [v3 device];
    *v5 = ___LayoutConstants_block_invoke_34(v6, v6);
    *(v4 + 11) = v7;
  }

  return v4;
}

- (id)keylineViewForComplicationSlot:(id)a3
{
  v4 = [a3 isEqualToString:@"subdial-top"];
  v5 = [(NTKFaceViewComplicationFactory *)self device];
  v6 = [NTKRichComplicationCircularBaseView keylineViewForDevice:v5 wide:v4 expanded:1];

  return v6;
}

- (void)loadLayoutRulesForFaceView:(id)a3
{
  v4 = a3;
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(NTKFaceViewComplicationFactory *)self device];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__NTKFullscreenSubdialComplicationFactory_loadLayoutRulesForFaceView___block_invoke;
  v16[3] = &unk_278782AA0;
  v17 = v4;
  v18 = self;
  v20 = v6;
  v21 = v8;
  v22 = v10;
  v23 = v12;
  v19 = v13;
  v14 = v13;
  v15 = v4;
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

- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5 faceView:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = +[NTKRichComplicationCircularBaseView viewWithLegacyComplicationType:](NTKRichComplicationCircularBaseView, "viewWithLegacyComplicationType:", [a3 complicationType]);
  [v8 _configureComplicationView:v10 forSlot:v9];

  return v10;
}

- (void)configureComplicationView:(id)a3 forSlot:(id)a4 faceView:(id)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v10 = 0;
    if ([(NTKFullscreenSubdialComplicationFactory *)self _convertCircularSlot:v8 toPosition:&v10])
    {
      [v9 setPosition:v10];
    }

    [(NTKFaceViewComplicationFactory *)self alpha];
    [v9 setAlpha:?];
  }
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
    v8[2] = __61__NTKFullscreenSubdialComplicationFactory_setAlpha_faceView___block_invoke;
    v8[3] = &unk_27877F148;
    v8[4] = self;
    v9 = v6;
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

- (void)configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NTKFullscreenSubdialComplicationFactory *)self faceView];
  [(NTKFullscreenSubdialComplicationFactory *)self configureComplicationView:v7 forSlot:v6 faceView:v8];
}

- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4
{
  v6 = a4;
  v7 = [(NTKFullscreenSubdialComplicationFactory *)self faceView];
  v8 = [(NTKFaceViewComplicationFactory *)self legacyLayoutOverrideforComplicationType:a3 slot:v6 faceView:v7];

  return v8;
}

- (void)loadLayoutRules
{
  v3 = [(NTKFullscreenSubdialComplicationFactory *)self faceView];
  [(NTKFullscreenSubdialComplicationFactory *)self loadLayoutRulesForFaceView:v3];
}

- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(NTKFullscreenSubdialComplicationFactory *)self faceView];
  v11 = [(NTKFullscreenSubdialComplicationFactory *)self newLegacyViewForComplication:v9 family:a4 slot:v8 faceView:v10];

  return v11;
}

- (CGPoint)_circularComplicationCenterForSlot:(id)a3 inFaceBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = MEMORY[0x2318D8E70](x, y, width, height);
  v12 = v11;
  if ([v9 isEqualToString:@"subdial-top"])
  {
    v12 = v12 - self->_circularComplicationDistanceFromCenter.y;
  }

  else if ([v9 isEqualToString:@"subdial-left"])
  {
    v10 = v10 - self->_circularComplicationDistanceFromCenter.x;
  }

  else if ([v9 isEqualToString:@"subdial-right"])
  {
    v10 = v10 + self->_circularComplicationDistanceFromCenter.x;
  }

  else if ([v9 isEqualToString:@"subdial-bottom"])
  {
    v12 = v12 + self->_circularComplicationDistanceFromCenter.y;
  }

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (BOOL)_convertCircularSlot:(id)a3 toPosition:(int64_t *)a4
{
  v5 = a3;
  if ([v5 isEqualToString:@"subdial-left"])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:@"subdial-right"])
  {
    v6 = 1;
  }

  else if ([v5 isEqualToString:@"subdial-bottom"])
  {
    v6 = 2;
  }

  else
  {
    if (![v5 isEqualToString:@"subdial-top"])
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