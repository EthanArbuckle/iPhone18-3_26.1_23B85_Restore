@interface NTKRichComplicationLineMeteredView
- (CGPoint)_pointAtProgress:(float)progress;
- (void)_setupShapeLayer:(id)layer;
- (void)_updateGradient;
- (void)colorMetersWithProgress:(double)progress;
- (void)setProgress:(double)progress;
@end

@implementation NTKRichComplicationLineMeteredView

- (void)_setupShapeLayer:(id)layer
{
  v3 = MEMORY[0x277CBBAE8];
  layerCopy = layer;
  currentDevice = [v3 currentDevice];
  ___LayoutConstants_block_invoke_9(currentDevice, currentDevice);
  CDGenerateMeterLayersOnLayer();
}

void __55__NTKRichComplicationLineMeteredView__setupShapeLayer___block_invoke(uint64_t a1, void *a2, double a3, uint64_t a4, int a5)
{
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (a5)
  {
    v8 = v8 + *(a1 + 56);
  }

  v9 = MEMORY[0x277D75208];
  v10 = *(a1 + 64);
  v11 = a2;
  v15 = [v9 bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v7, v8, v10}];
  v12 = v15;
  [v11 setPath:{objc_msgSend(v15, "CGPath")}];
  [v11 setBounds:{0.0, 0.0, v7, v8}];
  *&v13 = a3;
  [*(a1 + 32) _pointAtProgress:v13];
  [v11 setPosition:v7 * 0.5 + v14];
}

- (void)setProgress:(double)progress
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationLineMeteredView;
  [(CDRichComplicationShapeView *)&v5 setProgress:?];
  [(NTKRichComplicationLineMeteredView *)self colorMetersWithProgress:progress];
}

- (void)_updateGradient
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationLineMeteredView;
  [(CDRichComplicationShapeView *)&v3 _updateGradient];
  [(CDRichComplicationShapeView *)self progress];
  [(NTKRichComplicationLineMeteredView *)self colorMetersWithProgress:?];
}

- (void)colorMetersWithProgress:(double)progress
{
  meterLayers = [(NTKRichComplicationLineMeteredView *)self meterLayers];

  if (meterLayers)
  {
    [(NTKRichComplicationLineMeteredView *)self meterLayers];
    objc_claimAutoreleasedReturnValue();
    [(CDRichComplicationShapeView *)self gradientColors];
    objc_claimAutoreleasedReturnValue();
    CDColorizeMeterProgress();
  }
}

- (CGPoint)_pointAtProgress:(float)progress
{
  [(NTKRichComplicationLineMeteredView *)self bounds];
  v5 = v4 * progress;
  v7 = v6 * 0.5;
  result.y = v7;
  result.x = v5;
  return result;
}

@end