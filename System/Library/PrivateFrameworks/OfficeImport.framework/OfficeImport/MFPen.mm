@interface MFPen
+ (MFPen)penWithStyle:(int)style width:(int)width colour:(id)colour styleArray:(double *)array;
+ (id)pen;
- (MFPen)initWithStyle:(int)style width:(int)width colour:(id)colour styleArray:(double *)array;
@end

@implementation MFPen

+ (id)pen
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (MFPen)penWithStyle:(int)style width:(int)width colour:(id)colour styleArray:(double *)array
{
  v7 = *&width;
  v8 = *&style;
  colourCopy = colour;
  v11 = [[self alloc] initWithStyle:v8 width:v7 colour:colourCopy styleArray:array];

  return v11;
}

- (MFPen)initWithStyle:(int)style width:(int)width colour:(id)colour styleArray:(double *)array
{
  colourCopy = colour;
  v14.receiver = self;
  v14.super_class = MFPen;
  v11 = [(MFPen *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->m_penStyle = style;
    v11->m_penWidth = width;
    objc_storeStrong(&v11->m_colour, colour);
    v12->m_userStyleArray = 0;
  }

  return v12;
}

@end