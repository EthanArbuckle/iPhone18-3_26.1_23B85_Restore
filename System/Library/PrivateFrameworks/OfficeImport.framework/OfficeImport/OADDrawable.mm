@interface OADDrawable
- (OADDrawable)initWithPropertiesClass:(Class)class;
- (OADDrawableContainer)parent;
- (id)createOrientedBoundsWithBounds:(CGRect)bounds;
- (id)createWordClientDataWithTextType:(int)type;
- (id)description;
- (id)ensureClientDataOfClass:(Class)class;
- (void)changeParentTextListStylePreservingEffectiveValues:(id)values;
- (void)setParentTextListStyle:(id)style;
@end

@implementation OADDrawable

- (OADDrawableContainer)parent
{
  WeakRetained = objc_loadWeakRetained(&self->mParent);

  return WeakRetained;
}

- (OADDrawable)initWithPropertiesClass:(Class)class
{
  v9.receiver = self;
  v9.super_class = OADDrawable;
  v4 = [(OADDrawable *)&v9 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 12) = -1;
    v6 = objc_alloc_init(class);
    mDrawableProperties = v5->mDrawableProperties;
    v5->mDrawableProperties = v6;
  }

  return v5;
}

- (id)ensureClientDataOfClass:(Class)class
{
  mClientData = self->mClientData;
  if (!mClientData)
  {
    v5 = objc_alloc_init(class);
    v6 = self->mClientData;
    self->mClientData = v5;

    mClientData = self->mClientData;
  }

  return mClientData;
}

- (void)setParentTextListStyle:(id)style
{
  styleCopy = style;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OADDrawable setParentTextListStyle:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADDrawable.mm"];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [OITSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:89 isFatal:0 description:"Abstract method not overridden by %@", v7];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v8 = MEMORY[0x277CBEAD8];
  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"Abstract method not overridden by %@: %s", v11, "-[OADDrawable setParentTextListStyle:]"];
  v13 = [v8 exceptionWithName:*MEMORY[0x277CBE658] reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)changeParentTextListStylePreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OADDrawable changeParentTextListStylePreservingEffectiveValues:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADDrawable.mm"];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [OITSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:93 isFatal:0 description:"Abstract method not overridden by %@", v7];

  +[OITSUAssertionHandler logBacktraceThrottled];
  v8 = MEMORY[0x277CBEAD8];
  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"Abstract method not overridden by %@: %s", v11, "-[OADDrawable changeParentTextListStylePreservingEffectiveValues:]"];
  v13 = [v8 exceptionWithName:*MEMORY[0x277CBE658] reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (id)createOrientedBoundsWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  isMergedWithParent = [(OADProperties *)self->mDrawableProperties isMergedWithParent];
  [(OADProperties *)self->mDrawableProperties setMergedWithParent:0];
  if ([(OADDrawableProperties *)self->mDrawableProperties hasOrientedBounds])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OADDrawable createOrientedBoundsWithBounds:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADDrawable.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:103 isFatal:0 description:"An oriented bounds object already exists"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  [(OADProperties *)self->mDrawableProperties setMergedWithParent:isMergedWithParent];
  height = [[OADOrientedBounds alloc] initWithBounds:x, y, width, height];
  drawableProperties = [(OADDrawable *)self drawableProperties];
  [drawableProperties setOrientedBounds:height];

  return height;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADDrawable;
  v2 = [(OADDrawable *)&v4 description];

  return v2;
}

- (id)createWordClientDataWithTextType:(int)type
{
  v3 = *&type;
  v5 = objc_alloc_init(WDAContent);
  objc_storeStrong(&self->mClientData, v5);
  [(WDAContent *)v5 setTextType:v3];

  return v5;
}

@end