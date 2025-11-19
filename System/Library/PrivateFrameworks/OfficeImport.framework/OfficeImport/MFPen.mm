@interface MFPen
+ (MFPen)penWithStyle:(int)a3 width:(int)a4 colour:(id)a5 styleArray:(double *)a6;
+ (id)pen;
- (MFPen)initWithStyle:(int)a3 width:(int)a4 colour:(id)a5 styleArray:(double *)a6;
@end

@implementation MFPen

+ (id)pen
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (MFPen)penWithStyle:(int)a3 width:(int)a4 colour:(id)a5 styleArray:(double *)a6
{
  v7 = *&a4;
  v8 = *&a3;
  v10 = a5;
  v11 = [[a1 alloc] initWithStyle:v8 width:v7 colour:v10 styleArray:a6];

  return v11;
}

- (MFPen)initWithStyle:(int)a3 width:(int)a4 colour:(id)a5 styleArray:(double *)a6
{
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MFPen;
  v11 = [(MFPen *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->m_penStyle = a3;
    v11->m_penWidth = a4;
    objc_storeStrong(&v11->m_colour, a5);
    v12->m_userStyleArray = 0;
  }

  return v12;
}

@end