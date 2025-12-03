@interface EDColorReference
+ (EDColorReference)colorReferenceWithColor:(id)color resources:(id)resources;
+ (EDColorReference)colorReferenceWithColorIndex:(unint64_t)index resources:(id)resources;
+ (EDColorReference)colorReferenceWithResources:(id)resources;
+ (EDColorReference)colorReferenceWithSystemColorID:(int)d resources:(id)resources;
+ (EDColorReference)colorReferenceWithThemeIndex:(unint64_t)index tint:(double)tint resources:(id)resources;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToColorReference:(id)reference;
- (EDColorReference)initWithColor:(id)color resources:(id)resources;
- (EDColorReference)initWithResources:(id)resources;
- (id)color;
- (id)copyWithZone:(_NSZone *)zone;
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
      colors = [WeakRetained colors];
      v2 = [colors objectAtIndex:self->mColorIndex];
    }

    else
    {
      themes = [WeakRetained themes];
      v8 = [themes objectAtIndex:self->mThemeIndex];

      mTint = self->mTint;
      if (mTint >= 0.0)
      {
        if (mTint <= 0.0)
        {
          mTint = v8;
        }

        else
        {
          mTint = [v8 colorWithTintValue:1.0 - mTint];
        }
      }

      else
      {
        mTint = [v8 colorWithShadeValue:mTint + 1.0];
      }

      v2 = mTint;
    }
  }

  return v2;
}

- (EDColorReference)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v8.receiver = self;
  v8.super_class = EDColorReference;
  v5 = [(EDColorReference *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, resourcesCopy);
    v6->mSystemColorID = 0;
    v6->mColorIndex = -1;
    v6->mThemeIndex = -1;
    v6->mTint = 0.0;
  }

  return v6;
}

- (EDColorReference)initWithColor:(id)color resources:(id)resources
{
  colorCopy = color;
  resourcesCopy = resources;
  v8 = [(EDColorReference *)self initWithResources:resourcesCopy];
  if (v8)
  {
    colors = [resourcesCopy colors];
    v8->mColorIndex = [colors addOrEquivalentColorExcludingDefaults:colorCopy];
  }

  return v8;
}

+ (EDColorReference)colorReferenceWithResources:(id)resources
{
  resourcesCopy = resources;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:resourcesCopy];

  return v4;
}

+ (EDColorReference)colorReferenceWithColor:(id)color resources:(id)resources
{
  colorCopy = color;
  resourcesCopy = resources;
  v7 = [objc_alloc(objc_opt_class()) initWithColor:colorCopy resources:resourcesCopy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqualToColorReference:(id)reference
{
  referenceCopy = reference;
  v5 = *(referenceCopy + 24) == *&self->mColorIndex && *(referenceCopy + 4) == self->mSystemColorID;

  return v5;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDColorReference *)self isEqualToColorReference:v5];
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

+ (EDColorReference)colorReferenceWithSystemColorID:(int)d resources:(id)resources
{
  v5 = [self colorReferenceWithResources:resources];
  v5[4] = d;

  return v5;
}

+ (EDColorReference)colorReferenceWithColorIndex:(unint64_t)index resources:(id)resources
{
  resourcesCopy = resources;
  if ([EDColorsCollection isSystemColorId:index])
  {
    v7 = [EDColorReference colorReferenceWithSystemColorID:[EDColorsCollection systemColorIdFromIndex:index] resources:resourcesCopy];
  }

  else
  {
    v7 = [self colorReferenceWithResources:resourcesCopy];
    v7[3] = index;
  }

  return v7;
}

+ (EDColorReference)colorReferenceWithThemeIndex:(unint64_t)index tint:(double)tint resources:(id)resources
{
  v7 = [self colorReferenceWithResources:resources];
  *(v7 + 32) = index;
  *(v7 + 40) = tint;

  return v7;
}

@end