@interface MFPGraphics
+ (float)unitsPerInch:(int)a3;
- (BOOL)areThereOpenContainers;
- (CGAffineTransform)pageTransformWithScale:(SEL)a3 unit:(float)a4;
- (CGRect)canvas;
- (MFPGraphics)initWithCanvas:(CGRect)a3;
- (float)pixelsPerUnit:(int)a3 direction:(int)a4;
- (id)fontNameForUppercaseFontName:(id)a3;
- (void)beginContainerNoParamsWithId:(unsigned int)a3;
- (void)beginContainerWithId:(unsigned int)a3 boundsInParent:(CGRect)a4 bounds:(CGRect)a5 boundsUnit:(int)a6;
- (void)beginContainerWithId:(unsigned int)a3 containerTransform:(CGAffineTransform *)a4;
- (void)restoreGraphicsStateOrEndContainerWithId:(unsigned int)a3;
- (void)saveGraphicsStateWithId:(unsigned int)a3;
@end

@implementation MFPGraphics

- (MFPGraphics)initWithCanvas:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v23.receiver = self;
  v23.super_class = MFPGraphics;
  v7 = [(MFPGraphics *)&v23 init];
  v8 = v7;
  if (v7)
  {
    v7->mCanvas.origin.x = x;
    v7->mCanvas.origin.y = y;
    v7->mCanvas.size.width = width;
    v7->mCanvas.size.height = height;
    v9 = [[MFPGraphicsState alloc] initWithDefaults];
    mCurrentState = v8->mCurrentState;
    v8->mCurrentState = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mStateStack = v8->mStateStack;
    v8->mStateStack = v11;

    v13 = objc_alloc_init(MFPObjectTable);
    mObjectTable = v8->mObjectTable;
    v8->mObjectTable = v13;

    v15 = TCFontFamilyNames();
    v16 = [v15 count];
    v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v16];
    mAvailableFonts = v8->mAvailableFonts;
    v8->mAvailableFonts = v17;

    if (v16)
    {
      for (i = 0; i != v16; ++i)
      {
        v20 = [v15 objectAtIndex:i];
        v21 = [v20 uppercaseString];
        [(NSMutableDictionary *)v8->mAvailableFonts setObject:v20 forKey:v21];
      }
    }
  }

  return v8;
}

- (CGRect)canvas
{
  x = self->mCanvas.origin.x;
  y = self->mCanvas.origin.y;
  width = self->mCanvas.size.width;
  height = self->mCanvas.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (float)unitsPerInch:(int)a3
{
  result = 0.0;
  if ((a3 - 3) <= 3)
  {
    return flt_25D6FDA70[a3 - 3];
  }

  return result;
}

- (float)pixelsPerUnit:(int)a3 direction:(int)a4
{
  v4 = 1.0;
  if (a3 >= 3)
  {
    [MFPGraphics unitsPerInch:?];
    if (!a4)
    {
      v8 = 40;
      return *(&self->super.isa + v8) / v7;
    }

    v4 = 0.0;
    if (a4 == 1)
    {
      v8 = 44;
      return *(&self->super.isa + v8) / v7;
    }
  }

  return v4;
}

- (CGAffineTransform)pageTransformWithScale:(SEL)a3 unit:(float)a4
{
  v7 = MEMORY[0x277CBF2C0];
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v8;
  *&retstr->tx = *(v7 + 32);
  if (a5 >= 2)
  {
    v9 = *&a5;
    v10 = self;
    [CGAffineTransform pixelsPerUnit:"pixelsPerUnit:direction:" direction:?];
    v12 = v11 * a4;
    [(CGAffineTransform *)v10 pixelsPerUnit:v9 direction:1];

    return CGAffineTransformMakeScale(retstr, v12, (v13 * a4));
  }

  return self;
}

- (void)saveGraphicsStateWithId:(unsigned int)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v5 = [[MFPGraphicsState alloc] initWithGraphicsState:self->mCurrentState];
  [(NSMutableArray *)self->mStateStack addObject:?];
}

- (void)beginContainerWithId:(unsigned int)a3 containerTransform:(CGAffineTransform *)a4
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v7 = [MFPGraphicsContainer alloc];
  mCurrentState = self->mCurrentState;
  v9 = *&a4->c;
  v13[0] = *&a4->a;
  v13[1] = v9;
  v13[2] = *&a4->tx;
  v10 = [(MFPGraphicsContainer *)v7 initWithParentGraphicsState:mCurrentState containerTransform:v13];
  [(NSMutableArray *)self->mStateStack addObject:v10];
  v11 = [[MFPGraphicsState alloc] initWithDefaults];
  v12 = self->mCurrentState;
  self->mCurrentState = v11;
}

- (void)beginContainerNoParamsWithId:(unsigned int)a3
{
  v3 = *&a3;
  memset(&v7, 0, sizeof(v7));
  mCurrentState = self->mCurrentState;
  if (mCurrentState)
  {
    [(MFPGraphicsState *)mCurrentState pageTransform];
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
  }

  CGAffineTransformInvert(&v7, &v6);
  v6 = v7;
  [(MFPGraphics *)self beginContainerWithId:v3 containerTransform:&v6];
}

- (void)beginContainerWithId:(unsigned int)a3 boundsInParent:(CGRect)a4 bounds:(CGRect)a5 boundsUnit:(int)a6
{
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = *&a3;
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  v22 = *MEMORY[0x277CBF2C0];
  v23 = v10;
  v24 = *(MEMORY[0x277CBF2C0] + 32);
  if (a6 >= 2)
  {
    v11 = *&a6;
    height = a5.size.height;
    width = a5.size.width;
    v14 = a5.origin.y;
    v15 = a5.origin.x;
    v16 = a4.size.width;
    v20 = a4.size.height;
    [(MFPGraphics *)self pixelsPerUnit:*&a6 direction:0];
    v18 = v17;
    [(MFPGraphics *)self pixelsPerUnit:v11 direction:1];
    mapSrcRectOntoDstRect(&v22, v15 * v18, v14 * v19, width * v18, height * v19, x, y, v16, v20);
  }

  v21[0] = v22;
  v21[1] = v23;
  v21[2] = v24;
  [(MFPGraphics *)self beginContainerWithId:v8 containerTransform:v21];
}

- (void)restoreGraphicsStateOrEndContainerWithId:(unsigned int)a3
{
  if ([(NSMutableArray *)self->mStateStack count]> a3)
  {
    v5 = a3;
    do
    {
      v6 = [(NSMutableArray *)self->mStateStack lastObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = [v6 parentGraphicsState];
      }

      v8 = v7;
      objc_storeStrong(&self->mCurrentState, v7);
      [(NSMutableArray *)self->mStateStack removeLastObject];
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextRestoreGState(CurrentContext);
    }

    while ([(NSMutableArray *)self->mStateStack count]> v5);
  }
}

- (BOOL)areThereOpenContainers
{
  if ([(NSMutableArray *)self->mStateStack count])
  {
    v3 = 0;
    do
    {
      v4 = [(NSMutableArray *)self->mStateStack objectAtIndex:v3];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      ++v3;
    }

    while (v3 < [(NSMutableArray *)self->mStateStack count]);
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)fontNameForUppercaseFontName:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mAvailableFonts objectForKey:a3];

  return v3;
}

@end