@interface EDRun
+ (id)runWithCharIndex:(unint64_t)a3 font:(id)a4 effects:(id)a5 resources:(id)a6;
+ (id)runWithCharIndex:(unint64_t)a3 font:(id)a4 resources:(id)a5;
+ (id)runWithCharIndex:(unint64_t)a3 fontIndex:(unint64_t)a4 effects:(id)a5 resources:(id)a6;
+ (id)runWithCharIndex:(unint64_t)a3 fontIndex:(unint64_t)a4 resources:(id)a5;
+ (id)runWithResources:(id)a3;
- (BOOL)isEqual:(id)a3;
- (EDRun)initWithCharIndex:(unint64_t)a3 font:(id)a4 effects:(id)a5 resources:(id)a6;
- (EDRun)initWithCharIndex:(unint64_t)a3 font:(id)a4 resources:(id)a5;
- (EDRun)initWithCharIndex:(unint64_t)a3 fontIndex:(unint64_t)a4 effects:(id)a5 resources:(id)a6;
- (EDRun)initWithCharIndex:(unint64_t)a3 fontIndex:(unint64_t)a4 resources:(id)a5;
- (EDRun)initWithResources:(id)a3;
- (NSString)description;
- (id)font;
- (void)setFont:(id)a3;
@end

@implementation EDRun

- (id)font
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained fonts];

  v5 = [v4 objectAtIndex:self->mFontIndex];

  return v5;
}

- (EDRun)initWithResources:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EDRun;
  v5 = [(EDRun *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, v4);
    v6->mCharIndex = 0;
    v6->mFontIndex = 0;
    mEffects = v6->mEffects;
    v6->mEffects = 0;
  }

  return v6;
}

- (EDRun)initWithCharIndex:(unint64_t)a3 font:(id)a4 resources:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(EDRun *)self initWithResources:v9];
  v11 = v10;
  if (v10)
  {
    v10->mCharIndex = a3;
    [(EDRun *)v10 setFont:v8];
  }

  return v11;
}

- (EDRun)initWithCharIndex:(unint64_t)a3 font:(id)a4 effects:(id)a5 resources:(id)a6
{
  v11 = a5;
  v12 = [(EDRun *)self initWithCharIndex:a3 font:a4 resources:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->mEffects, a5);
  }

  return v13;
}

+ (id)runWithResources:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:v3];

  return v4;
}

+ (id)runWithCharIndex:(unint64_t)a3 font:(id)a4 resources:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [objc_alloc(objc_opt_class()) initWithCharIndex:a3 font:v7 resources:v8];

  return v9;
}

+ (id)runWithCharIndex:(unint64_t)a3 font:(id)a4 effects:(id)a5 resources:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [objc_alloc(objc_opt_class()) initWithCharIndex:a3 font:v9 effects:v10 resources:v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && TCObjectEqual(self->mEffects, v5[4]) && [(EDRun *)self isEqualToRun:v5];
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

- (EDRun)initWithCharIndex:(unint64_t)a3 fontIndex:(unint64_t)a4 resources:(id)a5
{
  result = [(EDRun *)self initWithResources:a5];
  if (result)
  {
    result->mCharIndex = a3;
    result->mFontIndex = a4;
  }

  return result;
}

+ (id)runWithCharIndex:(unint64_t)a3 fontIndex:(unint64_t)a4 resources:(id)a5
{
  v7 = a5;
  v8 = [objc_alloc(objc_opt_class()) initWithCharIndex:a3 fontIndex:a4 resources:v7];

  return v8;
}

- (EDRun)initWithCharIndex:(unint64_t)a3 fontIndex:(unint64_t)a4 effects:(id)a5 resources:(id)a6
{
  v11 = a5;
  v12 = [(EDRun *)self initWithCharIndex:a3 fontIndex:a4 resources:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->mEffects, a5);
  }

  return v13;
}

+ (id)runWithCharIndex:(unint64_t)a3 fontIndex:(unint64_t)a4 effects:(id)a5 resources:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [objc_alloc(objc_opt_class()) initWithCharIndex:a3 fontIndex:a4 effects:v9 resources:v10];

  return v11;
}

- (void)setFont:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained fonts];

  self->mFontIndex = [v5 addOrEquivalentObject:v6];
}

@end