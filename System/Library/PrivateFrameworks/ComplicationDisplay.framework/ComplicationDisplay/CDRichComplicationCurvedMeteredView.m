@interface CDRichComplicationCurvedMeteredView
- (id)customizeMeterLayerBlock;
- (void)_setupShapeLayer:(id)a3;
- (void)_updateGradient;
- (void)colorMetersWithProgress:(double)a3;
- (void)setProgress:(double)a3;
@end

@implementation CDRichComplicationCurvedMeteredView

- (id)customizeMeterLayerBlock
{
  v3 = [MEMORY[0x277CBBAE8] currentDevice];
  v4 = ___LayoutConstants_block_invoke_3(v3, v3);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__CDRichComplicationCurvedMeteredView_customizeMeterLayerBlock__block_invoke;
  aBlock[3] = &unk_278DF34E0;
  aBlock[4] = self;
  *&aBlock[5] = v4;
  aBlock[6] = v5;
  aBlock[7] = v6;
  aBlock[8] = v7;
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(v8);

  return v9;
}

void __63__CDRichComplicationCurvedMeteredView_customizeMeterLayerBlock__block_invoke(uint64_t a1, void *a2, double a3, uint64_t a4, int a5)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  *&v10 = v8;
  [v7 pointAtProgress:v10];
  v13 = v11;
  v14 = v12;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  if (a5)
  {
    v16 = v16 + *(a1 + 56);
  }

  v17 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v11 cornerRadius:{v12, *(a1 + 40), v16, *(a1 + 64)}];
  [v9 setPath:{objc_msgSend(v17, "CGPath")}];
  [v9 setBounds:{v13, v14, v15, v16}];
  [v9 setPosition:{v13, v14}];
  *&v18 = v8;
  [*(a1 + 32) rotationAngleAtProgress:v18];
  v19 = *(MEMORY[0x277CBF2C0] + 16);
  *&v21.a = *MEMORY[0x277CBF2C0];
  *&v21.c = v19;
  *&v21.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformRotate(&v22, &v21, v20);
  v21 = v22;
  [v9 setAffineTransform:&v21];
}

- (void)_setupShapeLayer:(id)a3
{
  v4 = a3;
  v5 = [(CDRichComplicationCurvedMeteredView *)self customizeMeterLayerBlock];
  v6 = CDGenerateMeterLayersOnLayer(v4, v5);

  [(CDRichComplicationCurvedMeteredView *)self setMeterLayers:v6];
  [(CDRichComplicationShapeView *)self progress];

  [(CDRichComplicationCurvedMeteredView *)self colorMetersWithProgress:?];
}

- (void)setProgress:(double)a3
{
  v5.receiver = self;
  v5.super_class = CDRichComplicationCurvedMeteredView;
  [(CDRichComplicationShapeView *)&v5 setProgress:?];
  [(CDRichComplicationCurvedMeteredView *)self colorMetersWithProgress:a3];
}

- (void)_updateGradient
{
  v3.receiver = self;
  v3.super_class = CDRichComplicationCurvedMeteredView;
  [(CDRichComplicationShapeView *)&v3 _updateGradient];
  [(CDRichComplicationShapeView *)self progress];
  [(CDRichComplicationCurvedMeteredView *)self colorMetersWithProgress:?];
}

- (void)colorMetersWithProgress:(double)a3
{
  v5 = [(CDRichComplicationCurvedMeteredView *)self meterLayers];

  if (v5)
  {
    v7 = [(CDRichComplicationCurvedMeteredView *)self meterLayers];
    v6 = [(CDRichComplicationShapeView *)self gradientColors];
    CDColorizeMeterProgress(v7, v6, 0, a3);
  }
}

@end