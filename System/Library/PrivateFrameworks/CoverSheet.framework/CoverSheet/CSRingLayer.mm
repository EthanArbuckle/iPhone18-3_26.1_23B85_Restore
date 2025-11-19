@interface CSRingLayer
+ (CGPath)newPathForDiameter:(double)a3 lineWidth:(double)a4;
+ (CSRingLayer)ringLayerWithBlendMode:(id)a3 diameter:(double)a4 lineWidth:(double)a5 brightnessAmount:(double)a6 saturationAmount:(double)a7;
+ (id)ringWithDiameter:(double)a3 lineWidth:(double)a4;
@end

@implementation CSRingLayer

+ (CSRingLayer)ringLayerWithBlendMode:(id)a3 diameter:(double)a4 lineWidth:(double)a5 brightnessAmount:(double)a6 saturationAmount:(double)a7
{
  v19[2] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = [a1 ringWithDiameter:a4 lineWidth:a5];
  [v13 setOpacity:0.0];
  [v13 setStrokeEnd:1.0];
  [v13 setLineCap:*MEMORY[0x277CDA780]];
  v14 = [MEMORY[0x277CD9EA0] filterWithType:v12];

  [v13 setCompositingFilter:v14];
  v15 = [MEMORY[0x277CD9EA0] brightnessFilterWithAmount:a6];
  v16 = [MEMORY[0x277CD9EA0] saturationFilterWithAmount:a7];
  v19[0] = v15;
  v19[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [v13 setFilters:v17];

  return v13;
}

+ (id)ringWithDiameter:(double)a3 lineWidth:(double)a4
{
  v7 = [a1 layer];
  v8 = v7;
  if (v7)
  {
    [v7 setFillColor:0];
    [v8 setLineWidth:a4];
    [v8 setBounds:{0.0, 0.0, a3, a3}];
    v9 = [a1 newPathForDiameter:a3 lineWidth:a4];
    [v8 setPath:v9];
    CGPathRelease(v9);
  }

  return v8;
}

+ (CGPath)newPathForDiameter:(double)a3 lineWidth:(double)a4
{
  v5 = (a3 - a4) * 0.5;
  Mutable = CGPathCreateMutable();
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = a3;
  v10.size.height = a3;
  MidX = CGRectGetMidX(v10);
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = a3;
  v11.size.height = a3;
  MidY = CGRectGetMidY(v11);
  CGPathAddArc(Mutable, 0, MidX, MidY, v5, -1.57079633, 4.71238898, 0);
  return Mutable;
}

@end