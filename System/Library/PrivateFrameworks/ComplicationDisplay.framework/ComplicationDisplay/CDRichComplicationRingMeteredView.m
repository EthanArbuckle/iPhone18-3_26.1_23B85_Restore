@interface CDRichComplicationRingMeteredView
- (id)customizeMeterLayerBlock;
@end

@implementation CDRichComplicationRingMeteredView

- (id)customizeMeterLayerBlock
{
  v3 = [MEMORY[0x277CBBAE8] currentDevice];
  v4 = [objc_opt_class() isXL];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  ___LayoutConstants_block_invoke_0(v3, &v15);
  v12 = v15;
  v13 = v16;
  v14 = v17;
  if (v4)
  {
    v12 = v18;
    v13 = v19;
    v14 = v20;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  v9 = v12;
  v10 = v13;
  aBlock[2] = __61__CDRichComplicationRingMeteredView_customizeMeterLayerBlock__block_invoke;
  aBlock[3] = &unk_278DF3428;
  v11 = v14;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = _Block_copy(v5);

  return v6;
}

void __61__CDRichComplicationRingMeteredView_customizeMeterLayerBlock__block_invoke(uint64_t a1, void *a2, double a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 56);
  if (a5)
  {
    v6 = v6 + *(a1 + 64);
  }

  v7 = *(a1 + 80) + a3;
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = v8 * -0.5;
  v11 = v6 * 0.5;
  v12 = v9 * -0.5;
  v13 = v6 * -0.5;
  v14 = v9 * 0.5;
  v15 = v8 * 0.5;
  v16 = a2;
  Mutable = CGPathCreateMutable();
  memset(&m, 0, sizeof(m));
  *&v7 = v7;
  [*(a1 + 32) rotationAngleAtProgress:COERCE_DOUBLE(LODWORD(v7))];
  v18 = *(MEMORY[0x277CBF2C0] + 16);
  *&v21.a = *MEMORY[0x277CBF2C0];
  *&v21.c = v18;
  *&v21.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformRotate(&m, &v21, v19);
  CGPathMoveToPoint(Mutable, &m, 0.0, v11);
  CGPathAddArcToPoint(Mutable, &m, v10, v11, v12, v13, *(a1 + 72));
  CGPathAddArcToPoint(Mutable, &m, v12, v13, v14, v13, *(a1 + 72));
  CGPathAddArcToPoint(Mutable, &m, v14, v13, v15, v11, *(a1 + 72));
  CGPathAddArcToPoint(Mutable, &m, v15, v11, v10, v11, *(a1 + 72));
  CGPathCloseSubpath(Mutable);
  [v16 setPath:Mutable];
  CGPathRelease(Mutable);
  LODWORD(v20) = LODWORD(v7);
  [*(a1 + 32) pointAtProgress:v20];
  [v16 setPosition:?];
}

@end