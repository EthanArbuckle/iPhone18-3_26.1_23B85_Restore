@interface NTKComplicationPlaceholderView
- (CLKMonochromeFilterProvider)filterProvider;
- (double)_circleDiameter;
- (id)_createCircularLayer;
- (id)_createCircularLayersWithDiameter:(double)diameter;
- (id)_createDownloadMaskLayer;
- (id)_createDownloadProgressMaskWithDiameter:(double)diameter progress:(double)progress contained:(BOOL)contained;
- (id)_createRectangularLayer;
- (id)initFullColorImageViewWithDevice:(id)device;
- (void)_updateLayers;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
@end

@implementation NTKComplicationPlaceholderView

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = NTKComplicationPlaceholderView;
  v6 = [(NTKComplicationPlaceholderView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  metadata = [providerCopy metadata];
  v7 = [metadata objectForKeyedSubscript:@"NTKComplicationPlaceholderAppIdentifierKey"];

  metadata2 = [providerCopy metadata];

  v9 = [metadata2 objectForKeyedSubscript:@"NTKComplicationPlaceholderComplicationVariantKey"];

  complicationAppIdentifier = self->_complicationAppIdentifier;
  self->_complicationAppIdentifier = v7;
  v11 = v7;

  complicationVariant = self->_complicationVariant;
  self->_complicationVariant = v9;

  [(NTKComplicationPlaceholderView *)self _updateLayers];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = NTKComplicationPlaceholderView;
  [(NTKComplicationPlaceholderView *)&v10 layoutSubviews];
  [(CALayer *)self->_strokesLayer bounds];
  v4 = v3;
  v6 = v5;
  [(NTKComplicationPlaceholderView *)self bounds];
  if (v4 != v8 || v6 != v7)
  {
    [(NTKComplicationPlaceholderView *)self _updateLayers];
  }
}

- (void)_updateLayers
{
  [(CALayer *)self->_strokesLayer removeFromSuperlayer];
  layer = [MEMORY[0x277CD9ED0] layer];
  [(NTKComplicationPlaceholderView *)self bounds];
  [(CALayer *)layer setFrame:?];
  v4 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.65];
  -[CALayer setBackgroundColor:](layer, "setBackgroundColor:", [v4 CGColor]);

  metrics = [(NTKComplicationVariant *)self->_complicationVariant metrics];
  [metrics cornerRadius];
  [(CALayer *)layer setCornerRadius:?];

  metrics2 = [(NTKComplicationVariant *)self->_complicationVariant metrics];
  opaque = [metrics2 opaque];

  if (opaque)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(NTKComplicationPlaceholderView *)self setBackgroundColor:whiteColor];
  }

  if ([(NTKComplicationVariant *)self->_complicationVariant family]== 11)
  {
    [(NTKComplicationPlaceholderView *)self _createRectangularLayer];
  }

  else
  {
    [(NTKComplicationPlaceholderView *)self _createCircularLayer];
  }
  v9 = ;
  [(CALayer *)layer addSublayer:v9];

  strokesLayer = self->_strokesLayer;
  self->_strokesLayer = layer;
  v11 = layer;

  metrics3 = [(NTKComplicationVariant *)self->_complicationVariant metrics];
  [metrics3 cornerRadius];
  v14 = v13;
  layer2 = [(NTKComplicationPlaceholderView *)self layer];
  [layer2 setCornerRadius:v14];

  layer3 = [(NTKComplicationPlaceholderView *)self layer];
  [layer3 addSublayer:self->_strokesLayer];
}

- (id)_createCircularLayer
{
  metrics = [(NTKComplicationVariant *)self->_complicationVariant metrics];
  [metrics size];
  v5 = [(NTKComplicationPlaceholderView *)self _createCircularLayersWithDiameter:v4];

  return v5;
}

- (id)_createRectangularLayer
{
  metrics = [(NTKComplicationVariant *)self->_complicationVariant metrics];
  [metrics cornerRadius];
  v5 = v4;

  metrics2 = [(NTKComplicationVariant *)self->_complicationVariant metrics];
  [metrics2 size];
  v8 = v7;
  v10 = v9;

  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.width = v8;
  v29.size.height = v10;
  v30 = CGRectInset(v29, 0.5, 0.5);
  v11 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v30.origin.x cornerRadius:{v30.origin.y, v30.size.width, v30.size.height, v5 + -0.5}];
  CLKRoundForDevice();
  v13 = v12;
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = v8;
  v31.size.height = v10;
  v32 = CGRectInset(v31, v13, v13);
  height = v32.size.height;
  v15 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v32.origin.x cornerRadius:{v32.origin.y, v32.size.width}];
  Mutable = CGPathCreateMutable();
  CGPathAddPath(Mutable, 0, [v11 CGPath]);
  CGPathAddPath(Mutable, 0, [v15 CGPath]);
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = v8;
  v33.size.height = v10;
  MidY = CGRectGetMidY(v33);
  CGPathMoveToPoint(Mutable, 0, 0.0, MidY);
  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  v34.size.width = v8;
  v34.size.height = v10;
  MaxX = CGRectGetMaxX(v34);
  v35.origin.x = 0.0;
  v35.origin.y = 0.0;
  v35.size.width = v8;
  v35.size.height = v10;
  v19 = CGRectGetMidY(v35);
  CGPathAddLineToPoint(Mutable, 0, MaxX, v19);
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = v8;
  v36.size.height = v10;
  MidX = CGRectGetMidX(v36);
  CGPathMoveToPoint(Mutable, 0, MidX, 0.0);
  v37.origin.x = 0.0;
  v37.origin.y = 0.0;
  v37.size.width = v8;
  v37.size.height = v10;
  v21 = CGRectGetMidX(v37);
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = v8;
  v38.size.height = v10;
  MaxY = CGRectGetMaxY(v38);
  CGPathAddLineToPoint(Mutable, 0, v21, MaxY);
  layer = [MEMORY[0x277CD9F90] layer];
  [layer setPath:Mutable];
  v24 = [MEMORY[0x277D75348] colorWithWhite:0.407843137 alpha:1.0];
  [layer setStrokeColor:{objc_msgSend(v24, "CGColor")}];

  [layer setLineWidth:1.0];
  [layer setFillColor:0];
  CGPathRelease(Mutable);
  v25 = [(NTKComplicationPlaceholderView *)self _createCircularLayersWithDiameter:height];
  v39.origin.x = 0.0;
  v39.origin.y = 0.0;
  v39.size.width = v8;
  v39.size.height = v10;
  v26 = CGRectGetMidX(v39) - height * 0.5;
  v40.origin.x = 0.0;
  v40.origin.y = 0.0;
  v40.size.width = v8;
  v40.size.height = v10;
  [v25 setFrame:{v26, CGRectGetMidY(v40) - height * 0.5, height, height}];
  [layer addSublayer:v25];

  return layer;
}

- (id)_createCircularLayersWithDiameter:(double)diameter
{
  v4 = diameter * 0.5;
  v5 = diameter * 1.41421356 * 0.5;
  Mutable = CGPathCreateMutable();
  v7 = v5 * 0.5;
  CGPathMoveToPoint(Mutable, 0, v4 - v7, v4 - v7);
  CGPathAddLineToPoint(Mutable, 0, v4 + v7, v4 - v7);
  CGPathAddLineToPoint(Mutable, 0, v4 + v7, v4 + v7);
  CGPathAddLineToPoint(Mutable, 0, v4 - v7, v4 + v7);
  CGPathCloseSubpath(Mutable);
  CGPathMoveToPoint(Mutable, 0, v4 - v7, v4 - v7);
  CGPathAddLineToPoint(Mutable, 0, v4 + v7, v4 + v7);
  CGPathMoveToPoint(Mutable, 0, v4 + v7, v4 - v7);
  CGPathAddLineToPoint(Mutable, 0, v4 - v7, v4 + v7);
  v8 = CGPathCreateMutable();
  CGPathAddArc(v8, 0, v4, v4, v4, 0.0, 6.28318531, 1);
  CGPathMoveToPoint(v8, 0, 0.0, v4);
  CGPathAddLineToPoint(v8, 0, diameter, v4);
  CGPathMoveToPoint(v8, 0, v4, 0.0);
  CGPathAddLineToPoint(v8, 0, v4, diameter);
  v9 = CGPathCreateMutable();
  CGPathAddArc(v9, 0, v4, v4, v4 * 0.3, 0.0, 6.28318531, 1);
  CGPathAddArc(v9, 0, v4, v4, v5 * 0.5, 0.0, 6.28318531, 1);
  layer = [MEMORY[0x277CD9F90] layer];
  [layer setPath:Mutable];
  v11 = [MEMORY[0x277D75348] colorWithWhite:0.447058824 alpha:1.0];
  [layer setStrokeColor:{objc_msgSend(v11, "CGColor")}];

  [layer setLineWidth:1.0];
  [layer setFillColor:0];
  layer2 = [MEMORY[0x277CD9F90] layer];
  [layer2 setPath:v8];
  v13 = [MEMORY[0x277D75348] colorWithWhite:0.407843137 alpha:1.0];
  [layer2 setStrokeColor:{objc_msgSend(v13, "CGColor")}];

  [layer2 setLineWidth:1.0];
  [layer2 setFillColor:0];
  layer3 = [MEMORY[0x277CD9F90] layer];
  [layer3 setPath:v9];
  v15 = [MEMORY[0x277D75348] colorWithWhite:0.298039216 alpha:1.0];
  [layer3 setStrokeColor:{objc_msgSend(v15, "CGColor")}];

  [layer3 setLineWidth:1.0];
  [layer3 setFillColor:0];
  CGPathRelease(Mutable);
  CGPathRelease(v8);
  CGPathRelease(v9);
  layer4 = [MEMORY[0x277CD9ED0] layer];
  [layer4 addSublayer:layer];
  [layer4 addSublayer:layer2];
  [layer4 addSublayer:layer3];

  return layer4;
}

- (id)_createDownloadMaskLayer
{
  v3 = [(NTKComplicationVariant *)self->_complicationVariant family]== 11;
  [(NTKComplicationPlaceholderView *)self _circleDiameter];

  return [NTKComplicationPlaceholderView _createDownloadProgressMaskWithDiameter:"_createDownloadProgressMaskWithDiameter:progress:contained:" progress:v3 contained:?];
}

- (double)_circleDiameter
{
  metrics = [(NTKComplicationVariant *)self->_complicationVariant metrics];
  [metrics size];
  v5 = v4;

  if ([(NTKComplicationVariant *)self->_complicationVariant family]!= 11)
  {
    return v5;
  }

  CLKRoundForDevice();
  return v5 + v6 * -2.0;
}

- (id)_createDownloadProgressMaskWithDiameter:(double)diameter progress:(double)progress contained:(BOOL)contained
{
  containedCopy = contained;
  metrics = [(NTKComplicationVariant *)self->_complicationVariant metrics];
  [metrics size];
  v10 = v9;
  v12 = v11;

  Mutable = CGPathCreateMutable();
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v10;
  v21.size.height = v12;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = v10;
  v22.size.height = v12;
  MidY = CGRectGetMidY(v22);
  if (containedCopy)
  {
    CGPathAddArc(Mutable, 0, MidX, MidY, diameter * 0.5, 0.0, 6.28318531, 1);
    CGPathCloseSubpath(Mutable);
  }

  CGPathMoveToPoint(Mutable, 0, MidX, MidY);
  CGPathAddArc(Mutable, 0, MidX, MidY, diameter * 1.41421356 * 0.5 * 0.5, -1.57079633, progress * 6.28318531 + -1.57079633, 1);
  CGPathCloseSubpath(Mutable);
  layer = [MEMORY[0x277CD9F90] layer];
  [layer setPath:Mutable];
  v17 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
  [layer setFillColor:{objc_msgSend(v17, "CGColor")}];

  [layer setLineWidth:1.0];
  [layer setFillRule:*MEMORY[0x277CDA248]];
  v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
  [layer setBackgroundColor:{objc_msgSend(v18, "CGColor")}];

  return layer;
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->filterProvider);

  return WeakRetained;
}

@end