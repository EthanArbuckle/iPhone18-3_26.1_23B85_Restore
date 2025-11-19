@interface MFDeviceContext
+ (id)deviceContextWithDriver:(id)a3;
- (CGPoint)getBrushOrg;
- (CGPoint)getPenPosition;
- (MFDeviceContext)initWithDriver:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MFDeviceContext

- (CGPoint)getPenPosition
{
  x = self->m_penPos.x;
  y = self->m_penPos.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)getBrushOrg
{
  x = self->m_brushOrg.x;
  y = self->m_brushOrg.y;
  result.y = y;
  result.x = x;
  return result;
}

+ (id)deviceContextWithDriver:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDriver:v4];

  return v5;
}

- (MFDeviceContext)initWithDriver:(id)a3
{
  v5 = a3;
  v29.receiver = self;
  v29.super_class = MFDeviceContext;
  v6 = [(MFDeviceContext *)&v29 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->m_driver, a3);
    *&v7->m_arcDirection = 0x100000001;
    v7->m_rop2 = 13;
    v7->m_textUpdateCP = 0;
    v7->m_textDirection = 0;
    v7->m_miterLimit = 10.0;
    *&v7->m_textHorizontalAlign = 0;
    v8 = [[MFTransform alloc] initWithDriver:v5];
    m_transform = v7->m_transform;
    v7->m_transform = v8;

    v10 = [OITSUColor colorWithCalibratedRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    m_bkColour = v7->m_bkColour;
    v7->m_bkColour = v10;

    v12 = [OITSUColor colorWithCalibratedRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    m_textColour = v7->m_textColour;
    v7->m_textColour = v12;

    v14 = [v5 createFont:14];
    m_font = v7->m_font;
    v7->m_font = v14;

    v16 = [OITSUColor colorWithCalibratedRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v17 = [v5 createPen:0 in_width:1 in_colour:v16 in_userStyleArray:0];
    m_pen = v7->m_pen;
    v7->m_pen = v17;

    v19 = [OITSUColor colorWithCalibratedRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v20 = [v5 createSolidBrush:v19];
    m_brush = v7->m_brush;
    v7->m_brush = v20;

    v22 = [v5 createPath];
    m_path = v7->m_path;
    v7->m_path = v22;

    v24 = objc_opt_new();
    m_clippingPaths = v7->m_clippingPaths;
    v7->m_clippingPaths = v24;

    v7->m_clippingIsRestarted = 0;
    v26 = objc_alloc_init(MFPalette);
    m_selectedPalette = v7->m_selectedPalette;
    v7->m_selectedPalette = v26;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[MFDeviceContext allocWithZone:?], "initWithDriver:", self->m_driver];
  [(MFDeviceContext *)self getPenPosition];
  [(MFDeviceContext *)v4 setPenPosition:?];
  [(MFDeviceContext *)v4 setTextUpdateCP:[(MFDeviceContext *)self getTextUpdateCP]];
  [(MFDeviceContext *)self getMiterLimit];
  [(MFDeviceContext *)v4 setMiterLimit:?];
  [(MFDeviceContext *)v4 setTextHorizontalAlign:[(MFDeviceContext *)self getTextHorizontalAlign]];
  [(MFDeviceContext *)v4 setTextVerticalAlign:[(MFDeviceContext *)self getTextVerticalAlign]];
  [(MFDeviceContext *)v4 setTextDirection:[(MFDeviceContext *)self getTextDirection]];
  v5 = [(MFDeviceContext *)self getTextColour];
  [(MFDeviceContext *)v4 setTextColour:v5];

  [(MFDeviceContext *)v4 setTextJustification:[(MFDeviceContext *)self getTextBreakExtra] in_breakCount:[(MFDeviceContext *)self getTextBreakCount]];
  [(MFDeviceContext *)v4 setTextCharExtra:[(MFDeviceContext *)self getTextCharExtra]];
  v6 = [(MFDeviceContext *)self getBkColour];
  [(MFDeviceContext *)v4 setBkColour:v6];

  [(MFDeviceContext *)v4 setBkMode:[(MFDeviceContext *)self getBkMode]];
  [(MFDeviceContext *)self getBrushOrg];
  [(MFDeviceContext *)v4 setBrushOrg:?];
  v7 = [(MFDeviceContext *)self getFont];
  [(MFDeviceContext *)v4 setFont:v7];

  [(MFDeviceContext *)v4 setArcDirection:[(MFDeviceContext *)self getArcDirection]];
  [(MFDeviceContext *)v4 setPolyFillMode:[(MFDeviceContext *)self getPolyFillMode]];
  [(MFDeviceContext *)v4 setStretchBltMode:[(MFDeviceContext *)self getStretchBltMode]];
  v8 = [(MFDeviceContext *)self getCurrentTransform];
  v9 = [v8 copy];
  [(MFDeviceContext *)v4 setCurrentTransform:v9];

  v10 = [(MFDeviceContext *)self getSelectedPalette];
  [(MFDeviceContext *)v4 setSelectedPalette:v10];

  v11 = [(MFDeviceContext *)self getPen];
  [(MFDeviceContext *)v4 setPen:v11];

  v12 = [(MFDeviceContext *)self getBrush];
  [(MFDeviceContext *)v4 setBrush:v12];

  [(MFDeviceContext *)v4 setRop2:[(MFDeviceContext *)self getRop2]];
  v13 = [(MFPath *)self->m_path copy];
  [(MFDeviceContext *)v4 setPath:v13];

  return v4;
}

@end