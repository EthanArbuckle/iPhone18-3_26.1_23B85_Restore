@interface NTKComplicationPlaceholderView
- (CLKMonochromeFilterProvider)filterProvider;
- (double)_circleDiameter;
- (id)_createCircularLayer;
- (id)_createCircularLayersWithDiameter:(double)a3;
- (id)_createDownloadMaskLayer;
- (id)_createDownloadProgressMaskWithDiameter:(double)a3 progress:(double)a4 contained:(BOOL)a5;
- (id)_createRectangularLayer;
- (id)initFullColorImageViewWithDevice:(id)a3;
- (void)_updateLayers;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)layoutSubviews;
@end

@implementation NTKComplicationPlaceholderView

- (id)initFullColorImageViewWithDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKComplicationPlaceholderView;
  v6 = [(NTKComplicationPlaceholderView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
  }

  return v7;
}

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 metadata];
  v7 = [v6 objectForKeyedSubscript:@"NTKComplicationPlaceholderAppIdentifierKey"];

  v8 = [v5 metadata];

  v9 = [v8 objectForKeyedSubscript:@"NTKComplicationPlaceholderComplicationVariantKey"];

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
  v3 = [MEMORY[0x277CD9ED0] layer];
  [(NTKComplicationPlaceholderView *)self bounds];
  [(CALayer *)v3 setFrame:?];
  v4 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.65];
  -[CALayer setBackgroundColor:](v3, "setBackgroundColor:", [v4 CGColor]);

  v5 = [(NTKComplicationVariant *)self->_complicationVariant metrics];
  [v5 cornerRadius];
  [(CALayer *)v3 setCornerRadius:?];

  v6 = [(NTKComplicationVariant *)self->_complicationVariant metrics];
  v7 = [v6 opaque];

  if (v7)
  {
    v8 = [MEMORY[0x277D75348] whiteColor];
    [(NTKComplicationPlaceholderView *)self setBackgroundColor:v8];
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
  [(CALayer *)v3 addSublayer:v9];

  strokesLayer = self->_strokesLayer;
  self->_strokesLayer = v3;
  v11 = v3;

  v12 = [(NTKComplicationVariant *)self->_complicationVariant metrics];
  [v12 cornerRadius];
  v14 = v13;
  v15 = [(NTKComplicationPlaceholderView *)self layer];
  [v15 setCornerRadius:v14];

  v16 = [(NTKComplicationPlaceholderView *)self layer];
  [v16 addSublayer:self->_strokesLayer];
}

- (id)_createCircularLayer
{
  v3 = [(NTKComplicationVariant *)self->_complicationVariant metrics];
  [v3 size];
  v5 = [(NTKComplicationPlaceholderView *)self _createCircularLayersWithDiameter:v4];

  return v5;
}

- (id)_createRectangularLayer
{
  v3 = [(NTKComplicationVariant *)self->_complicationVariant metrics];
  [v3 cornerRadius];
  v5 = v4;

  v6 = [(NTKComplicationVariant *)self->_complicationVariant metrics];
  [v6 size];
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
  v23 = [MEMORY[0x277CD9F90] layer];
  [v23 setPath:Mutable];
  v24 = [MEMORY[0x277D75348] colorWithWhite:0.407843137 alpha:1.0];
  [v23 setStrokeColor:{objc_msgSend(v24, "CGColor")}];

  [v23 setLineWidth:1.0];
  [v23 setFillColor:0];
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
  [v23 addSublayer:v25];

  return v23;
}

- (id)_createCircularLayersWithDiameter:(double)a3
{
  v4 = a3 * 0.5;
  v5 = a3 * 1.41421356 * 0.5;
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
  CGPathAddLineToPoint(v8, 0, a3, v4);
  CGPathMoveToPoint(v8, 0, v4, 0.0);
  CGPathAddLineToPoint(v8, 0, v4, a3);
  v9 = CGPathCreateMutable();
  CGPathAddArc(v9, 0, v4, v4, v4 * 0.3, 0.0, 6.28318531, 1);
  CGPathAddArc(v9, 0, v4, v4, v5 * 0.5, 0.0, 6.28318531, 1);
  v10 = [MEMORY[0x277CD9F90] layer];
  [v10 setPath:Mutable];
  v11 = [MEMORY[0x277D75348] colorWithWhite:0.447058824 alpha:1.0];
  [v10 setStrokeColor:{objc_msgSend(v11, "CGColor")}];

  [v10 setLineWidth:1.0];
  [v10 setFillColor:0];
  v12 = [MEMORY[0x277CD9F90] layer];
  [v12 setPath:v8];
  v13 = [MEMORY[0x277D75348] colorWithWhite:0.407843137 alpha:1.0];
  [v12 setStrokeColor:{objc_msgSend(v13, "CGColor")}];

  [v12 setLineWidth:1.0];
  [v12 setFillColor:0];
  v14 = [MEMORY[0x277CD9F90] layer];
  [v14 setPath:v9];
  v15 = [MEMORY[0x277D75348] colorWithWhite:0.298039216 alpha:1.0];
  [v14 setStrokeColor:{objc_msgSend(v15, "CGColor")}];

  [v14 setLineWidth:1.0];
  [v14 setFillColor:0];
  CGPathRelease(Mutable);
  CGPathRelease(v8);
  CGPathRelease(v9);
  v16 = [MEMORY[0x277CD9ED0] layer];
  [v16 addSublayer:v10];
  [v16 addSublayer:v12];
  [v16 addSublayer:v14];

  return v16;
}

- (id)_createDownloadMaskLayer
{
  v3 = [(NTKComplicationVariant *)self->_complicationVariant family]== 11;
  [(NTKComplicationPlaceholderView *)self _circleDiameter];

  return [NTKComplicationPlaceholderView _createDownloadProgressMaskWithDiameter:"_createDownloadProgressMaskWithDiameter:progress:contained:" progress:v3 contained:?];
}

- (double)_circleDiameter
{
  v3 = [(NTKComplicationVariant *)self->_complicationVariant metrics];
  [v3 size];
  v5 = v4;

  if ([(NTKComplicationVariant *)self->_complicationVariant family]!= 11)
  {
    return v5;
  }

  CLKRoundForDevice();
  return v5 + v6 * -2.0;
}

- (id)_createDownloadProgressMaskWithDiameter:(double)a3 progress:(double)a4 contained:(BOOL)a5
{
  v5 = a5;
  v8 = [(NTKComplicationVariant *)self->_complicationVariant metrics];
  [v8 size];
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
  if (v5)
  {
    CGPathAddArc(Mutable, 0, MidX, MidY, a3 * 0.5, 0.0, 6.28318531, 1);
    CGPathCloseSubpath(Mutable);
  }

  CGPathMoveToPoint(Mutable, 0, MidX, MidY);
  CGPathAddArc(Mutable, 0, MidX, MidY, a3 * 1.41421356 * 0.5 * 0.5, -1.57079633, a4 * 6.28318531 + -1.57079633, 1);
  CGPathCloseSubpath(Mutable);
  v16 = [MEMORY[0x277CD9F90] layer];
  [v16 setPath:Mutable];
  v17 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
  [v16 setFillColor:{objc_msgSend(v17, "CGColor")}];

  [v16 setLineWidth:1.0];
  [v16 setFillRule:*MEMORY[0x277CDA248]];
  v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
  [v16 setBackgroundColor:{objc_msgSend(v18, "CGColor")}];

  return v16;
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->filterProvider);

  return WeakRetained;
}

@end