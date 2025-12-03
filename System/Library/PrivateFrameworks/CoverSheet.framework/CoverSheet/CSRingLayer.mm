@interface CSRingLayer
+ (CGPath)newPathForDiameter:(double)diameter lineWidth:(double)width;
+ (CSRingLayer)ringLayerWithBlendMode:(id)mode diameter:(double)diameter lineWidth:(double)width brightnessAmount:(double)amount saturationAmount:(double)saturationAmount;
+ (id)ringWithDiameter:(double)diameter lineWidth:(double)width;
@end

@implementation CSRingLayer

+ (CSRingLayer)ringLayerWithBlendMode:(id)mode diameter:(double)diameter lineWidth:(double)width brightnessAmount:(double)amount saturationAmount:(double)saturationAmount
{
  v19[2] = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v13 = [self ringWithDiameter:diameter lineWidth:width];
  [v13 setOpacity:0.0];
  [v13 setStrokeEnd:1.0];
  [v13 setLineCap:*MEMORY[0x277CDA780]];
  v14 = [MEMORY[0x277CD9EA0] filterWithType:modeCopy];

  [v13 setCompositingFilter:v14];
  v15 = [MEMORY[0x277CD9EA0] brightnessFilterWithAmount:amount];
  v16 = [MEMORY[0x277CD9EA0] saturationFilterWithAmount:saturationAmount];
  v19[0] = v15;
  v19[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [v13 setFilters:v17];

  return v13;
}

+ (id)ringWithDiameter:(double)diameter lineWidth:(double)width
{
  layer = [self layer];
  v8 = layer;
  if (layer)
  {
    [layer setFillColor:0];
    [v8 setLineWidth:width];
    [v8 setBounds:{0.0, 0.0, diameter, diameter}];
    v9 = [self newPathForDiameter:diameter lineWidth:width];
    [v8 setPath:v9];
    CGPathRelease(v9);
  }

  return v8;
}

+ (CGPath)newPathForDiameter:(double)diameter lineWidth:(double)width
{
  v5 = (diameter - width) * 0.5;
  Mutable = CGPathCreateMutable();
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = diameter;
  v10.size.height = diameter;
  MidX = CGRectGetMidX(v10);
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = diameter;
  v11.size.height = diameter;
  MidY = CGRectGetMidY(v11);
  CGPathAddArc(Mutable, 0, MidX, MidY, v5, -1.57079633, 4.71238898, 0);
  return Mutable;
}

@end