@interface EDColorReference
+ (EDColorReference)colorReferenceWithColor:(id)a3 resources:(id)a4;
+ (EDColorReference)colorReferenceWithColorIndex:(unint64_t)a3 resources:(id)a4;
+ (EDColorReference)colorReferenceWithResources:(id)a3;
+ (EDColorReference)colorReferenceWithSystemColorID:(int)a3 resources:(id)a4;
+ (EDColorReference)colorReferenceWithThemeIndex:(unint64_t)a3 tint:(double)a4 resources:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToColorReference:(id)a3;
- (EDColorReference)initWithColor:(id)a3 resources:(id)a4;
- (EDColorReference)initWithResources:(id)a3;
- (id)color;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation EDColorReference

- (id)color
{
  if (self->mSystemColorID)
  {
    v2 = [OITSUColor colorWithSystemColorID:?];
  }

  else
  {
    mThemeIndex = self->mThemeIndex;
    WeakRetained = objc_loadWeakRetained(&self->mResources);
    v6 = WeakRetained;
    if (mThemeIndex == -1)
    {
      v11 = [WeakRetained colors];
      v2 = [v11 objectAtIndex:self->mColorIndex];
    }

    else
    {
      v7 = [WeakRetained themes];
      v8 = [v7 objectAtIndex:self->mThemeIndex];

      mTint = self->mTint;
      if (mTint >= 0.0)
      {
        if (mTint <= 0.0)
        {
          v10 = v8;
        }

        else
        {
          v10 = [v8 colorWithTintValue:1.0 - mTint];
        }
      }

      else
      {
        v10 = [v8 colorWithShadeValue:mTint + 1.0];
      }

      v2 = v10;
    }
  }

  return v2;
}

- (EDColorReference)initWithResources:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EDColorReference;
  v5 = [(EDColorReference *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, v4);
    v6->mSystemColorID = 0;
    v6->mColorIndex = -1;
    v6->mThemeIndex = -1;
    v6->mTint = 0.0;
  }

  return v6;
}

- (EDColorReference)initWithColor:(id)a3 resources:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDColorReference *)self initWithResources:v7];
  if (v8)
  {
    v9 = [v7 colors];
    v8->mColorIndex = [v9 addOrEquivalentColorExcludingDefaults:v6];
  }

  return v8;
}

+ (EDColorReference)colorReferenceWithResources:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:v3];

  return v4;
}

+ (EDColorReference)colorReferenceWithColor:(id)a3 resources:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(objc_opt_class()) initWithColor:v5 resources:v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v6 = [v4 initWithResources:WeakRetained];

  if (v6)
  {
    *(v6 + 16) = self->mSystemColorID;
    *(v6 + 24) = self->mColorIndex;
    *(v6 + 32) = self->mThemeIndex;
    *(v6 + 40) = self->mTint;
    v7 = v6;
  }

  return v6;
}

- (BOOL)isEqualToColorReference:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24) == *&self->mColorIndex && *(v4 + 4) == self->mSystemColorID;

  return v5;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDColorReference *)self isEqualToColorReference:v5];
  }

  return v6;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDColorReference;
  v2 = [(EDColorReference *)&v4 description];

  return v2;
}

+ (EDColorReference)colorReferenceWithSystemColorID:(int)a3 resources:(id)a4
{
  v5 = [a1 colorReferenceWithResources:a4];
  v5[4] = a3;

  return v5;
}

+ (EDColorReference)colorReferenceWithColorIndex:(unint64_t)a3 resources:(id)a4
{
  v6 = a4;
  if ([EDColorsCollection isSystemColorId:a3])
  {
    v7 = [EDColorReference colorReferenceWithSystemColorID:[EDColorsCollection systemColorIdFromIndex:a3] resources:v6];
  }

  else
  {
    v7 = [a1 colorReferenceWithResources:v6];
    v7[3] = a3;
  }

  return v7;
}

+ (EDColorReference)colorReferenceWithThemeIndex:(unint64_t)a3 tint:(double)a4 resources:(id)a5
{
  v7 = [a1 colorReferenceWithResources:a5];
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;

  return v7;
}

@end