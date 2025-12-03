@interface MFPGraphics
+ (float)unitsPerInch:(int)inch;
- (BOOL)areThereOpenContainers;
- (CGAffineTransform)pageTransformWithScale:(SEL)scale unit:(float)unit;
- (CGRect)canvas;
- (MFPGraphics)initWithCanvas:(CGRect)canvas;
- (float)pixelsPerUnit:(int)unit direction:(int)direction;
- (id)fontNameForUppercaseFontName:(id)name;
- (void)beginContainerNoParamsWithId:(unsigned int)id;
- (void)beginContainerWithId:(unsigned int)id boundsInParent:(CGRect)parent bounds:(CGRect)bounds boundsUnit:(int)unit;
- (void)beginContainerWithId:(unsigned int)id containerTransform:(CGAffineTransform *)transform;
- (void)restoreGraphicsStateOrEndContainerWithId:(unsigned int)id;
- (void)saveGraphicsStateWithId:(unsigned int)id;
@end

@implementation MFPGraphics

- (MFPGraphics)initWithCanvas:(CGRect)canvas
{
  height = canvas.size.height;
  width = canvas.size.width;
  y = canvas.origin.y;
  x = canvas.origin.x;
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
    initWithDefaults = [[MFPGraphicsState alloc] initWithDefaults];
    mCurrentState = v8->mCurrentState;
    v8->mCurrentState = initWithDefaults;

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
        uppercaseString = [v20 uppercaseString];
        [(NSMutableDictionary *)v8->mAvailableFonts setObject:v20 forKey:uppercaseString];
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

+ (float)unitsPerInch:(int)inch
{
  result = 0.0;
  if ((inch - 3) <= 3)
  {
    return flt_25D6FDA70[inch - 3];
  }

  return result;
}

- (float)pixelsPerUnit:(int)unit direction:(int)direction
{
  v4 = 1.0;
  if (unit >= 3)
  {
    [MFPGraphics unitsPerInch:?];
    if (!direction)
    {
      v8 = 40;
      return *(&self->super.isa + v8) / v7;
    }

    v4 = 0.0;
    if (direction == 1)
    {
      v8 = 44;
      return *(&self->super.isa + v8) / v7;
    }
  }

  return v4;
}

- (CGAffineTransform)pageTransformWithScale:(SEL)scale unit:(float)unit
{
  v7 = MEMORY[0x277CBF2C0];
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v8;
  *&retstr->tx = *(v7 + 32);
  if (a5 >= 2)
  {
    v9 = *&a5;
    selfCopy = self;
    [CGAffineTransform pixelsPerUnit:"pixelsPerUnit:direction:" direction:?];
    v12 = v11 * unit;
    [(CGAffineTransform *)selfCopy pixelsPerUnit:v9 direction:1];

    return CGAffineTransformMakeScale(retstr, v12, (v13 * unit));
  }

  return self;
}

- (void)saveGraphicsStateWithId:(unsigned int)id
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v5 = [[MFPGraphicsState alloc] initWithGraphicsState:self->mCurrentState];
  [(NSMutableArray *)self->mStateStack addObject:?];
}

- (void)beginContainerWithId:(unsigned int)id containerTransform:(CGAffineTransform *)transform
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v7 = [MFPGraphicsContainer alloc];
  mCurrentState = self->mCurrentState;
  v9 = *&transform->c;
  v13[0] = *&transform->a;
  v13[1] = v9;
  v13[2] = *&transform->tx;
  v10 = [(MFPGraphicsContainer *)v7 initWithParentGraphicsState:mCurrentState containerTransform:v13];
  [(NSMutableArray *)self->mStateStack addObject:v10];
  initWithDefaults = [[MFPGraphicsState alloc] initWithDefaults];
  v12 = self->mCurrentState;
  self->mCurrentState = initWithDefaults;
}

- (void)beginContainerNoParamsWithId:(unsigned int)id
{
  v3 = *&id;
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

- (void)beginContainerWithId:(unsigned int)id boundsInParent:(CGRect)parent bounds:(CGRect)bounds boundsUnit:(int)unit
{
  y = parent.origin.y;
  x = parent.origin.x;
  v8 = *&id;
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  v22 = *MEMORY[0x277CBF2C0];
  v23 = v10;
  v24 = *(MEMORY[0x277CBF2C0] + 32);
  if (unit >= 2)
  {
    v11 = *&unit;
    height = bounds.size.height;
    width = bounds.size.width;
    v14 = bounds.origin.y;
    v15 = bounds.origin.x;
    v16 = parent.size.width;
    v20 = parent.size.height;
    [(MFPGraphics *)self pixelsPerUnit:*&unit direction:0];
    v18 = v17;
    [(MFPGraphics *)self pixelsPerUnit:v11 direction:1];
    mapSrcRectOntoDstRect(&v22, v15 * v18, v14 * v19, width * v18, height * v19, x, y, v16, v20);
  }

  v21[0] = v22;
  v21[1] = v23;
  v21[2] = v24;
  [(MFPGraphics *)self beginContainerWithId:v8 containerTransform:v21];
}

- (void)restoreGraphicsStateOrEndContainerWithId:(unsigned int)id
{
  if ([(NSMutableArray *)self->mStateStack count]> id)
  {
    idCopy = id;
    do
    {
      lastObject = [(NSMutableArray *)self->mStateStack lastObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        parentGraphicsState = lastObject;
      }

      else
      {
        parentGraphicsState = [lastObject parentGraphicsState];
      }

      v8 = parentGraphicsState;
      objc_storeStrong(&self->mCurrentState, parentGraphicsState);
      [(NSMutableArray *)self->mStateStack removeLastObject];
      CurrentContext = UIGraphicsGetCurrentContext();
      CGContextRestoreGState(CurrentContext);
    }

    while ([(NSMutableArray *)self->mStateStack count]> idCopy);
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

- (id)fontNameForUppercaseFontName:(id)name
{
  v3 = [(NSMutableDictionary *)self->mAvailableFonts objectForKey:name];

  return v3;
}

@end