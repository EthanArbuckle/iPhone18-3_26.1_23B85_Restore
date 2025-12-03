@interface EDRun
+ (id)runWithCharIndex:(unint64_t)index font:(id)font effects:(id)effects resources:(id)resources;
+ (id)runWithCharIndex:(unint64_t)index font:(id)font resources:(id)resources;
+ (id)runWithCharIndex:(unint64_t)index fontIndex:(unint64_t)fontIndex effects:(id)effects resources:(id)resources;
+ (id)runWithCharIndex:(unint64_t)index fontIndex:(unint64_t)fontIndex resources:(id)resources;
+ (id)runWithResources:(id)resources;
- (BOOL)isEqual:(id)equal;
- (EDRun)initWithCharIndex:(unint64_t)index font:(id)font effects:(id)effects resources:(id)resources;
- (EDRun)initWithCharIndex:(unint64_t)index font:(id)font resources:(id)resources;
- (EDRun)initWithCharIndex:(unint64_t)index fontIndex:(unint64_t)fontIndex effects:(id)effects resources:(id)resources;
- (EDRun)initWithCharIndex:(unint64_t)index fontIndex:(unint64_t)fontIndex resources:(id)resources;
- (EDRun)initWithResources:(id)resources;
- (NSString)description;
- (id)font;
- (void)setFont:(id)font;
@end

@implementation EDRun

- (id)font
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  fonts = [WeakRetained fonts];

  v5 = [fonts objectAtIndex:self->mFontIndex];

  return v5;
}

- (EDRun)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = EDRun;
  v5 = [(EDRun *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, resourcesCopy);
    v6->mCharIndex = 0;
    v6->mFontIndex = 0;
    mEffects = v6->mEffects;
    v6->mEffects = 0;
  }

  return v6;
}

- (EDRun)initWithCharIndex:(unint64_t)index font:(id)font resources:(id)resources
{
  fontCopy = font;
  resourcesCopy = resources;
  v10 = [(EDRun *)self initWithResources:resourcesCopy];
  v11 = v10;
  if (v10)
  {
    v10->mCharIndex = index;
    [(EDRun *)v10 setFont:fontCopy];
  }

  return v11;
}

- (EDRun)initWithCharIndex:(unint64_t)index font:(id)font effects:(id)effects resources:(id)resources
{
  effectsCopy = effects;
  v12 = [(EDRun *)self initWithCharIndex:index font:font resources:resources];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->mEffects, effects);
  }

  return v13;
}

+ (id)runWithResources:(id)resources
{
  resourcesCopy = resources;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:resourcesCopy];

  return v4;
}

+ (id)runWithCharIndex:(unint64_t)index font:(id)font resources:(id)resources
{
  fontCopy = font;
  resourcesCopy = resources;
  v9 = [objc_alloc(objc_opt_class()) initWithCharIndex:index font:fontCopy resources:resourcesCopy];

  return v9;
}

+ (id)runWithCharIndex:(unint64_t)index font:(id)font effects:(id)effects resources:(id)resources
{
  fontCopy = font;
  effectsCopy = effects;
  resourcesCopy = resources;
  v12 = [objc_alloc(objc_opt_class()) initWithCharIndex:index font:fontCopy effects:effectsCopy resources:resourcesCopy];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && TCObjectEqual(self->mEffects, v5[4]) && [(EDRun *)self isEqualToRun:v5];
  }

  return v6;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = EDRun;
  v2 = [(EDRun *)&v4 description];

  return v2;
}

- (EDRun)initWithCharIndex:(unint64_t)index fontIndex:(unint64_t)fontIndex resources:(id)resources
{
  result = [(EDRun *)self initWithResources:resources];
  if (result)
  {
    result->mCharIndex = index;
    result->mFontIndex = fontIndex;
  }

  return result;
}

+ (id)runWithCharIndex:(unint64_t)index fontIndex:(unint64_t)fontIndex resources:(id)resources
{
  resourcesCopy = resources;
  v8 = [objc_alloc(objc_opt_class()) initWithCharIndex:index fontIndex:fontIndex resources:resourcesCopy];

  return v8;
}

- (EDRun)initWithCharIndex:(unint64_t)index fontIndex:(unint64_t)fontIndex effects:(id)effects resources:(id)resources
{
  effectsCopy = effects;
  v12 = [(EDRun *)self initWithCharIndex:index fontIndex:fontIndex resources:resources];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->mEffects, effects);
  }

  return v13;
}

+ (id)runWithCharIndex:(unint64_t)index fontIndex:(unint64_t)fontIndex effects:(id)effects resources:(id)resources
{
  effectsCopy = effects;
  resourcesCopy = resources;
  v11 = [objc_alloc(objc_opt_class()) initWithCharIndex:index fontIndex:fontIndex effects:effectsCopy resources:resourcesCopy];

  return v11;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  fonts = [WeakRetained fonts];

  self->mFontIndex = [fonts addOrEquivalentObject:fontCopy];
}

@end