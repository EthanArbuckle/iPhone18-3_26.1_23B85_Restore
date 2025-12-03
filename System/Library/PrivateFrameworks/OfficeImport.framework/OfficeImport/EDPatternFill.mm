@interface EDPatternFill
+ (id)patternFillWithType:(int)type foreColor:(id)color backColor:(id)backColor resources:(id)resources;
+ (id)patternFillWithType:(int)type foreColor:(id)color resources:(id)resources;
+ (id)patternFillWithType:(int)type foreColorReference:(id)reference backColorReference:(id)colorReference resources:(id)resources;
+ (id)patternFillWithType:(int)type resources:(id)resources;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPatternFill:(id)fill;
- (EDPatternFill)initWithResources:(id)resources;
- (EDPatternFill)initWithType:(int)type foreColor:(id)color backColor:(id)backColor resources:(id)resources;
- (EDPatternFill)initWithType:(int)type foreColorReference:(id)reference backColorReference:(id)colorReference resources:(id)resources;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)setBackColor:(id)color;
- (void)setBackColorReference:(id)reference;
- (void)setForeColor:(id)color;
- (void)setForeColorReference:(id)reference;
@end

@implementation EDPatternFill

- (void)setForeColor:(id)color
{
  colorCopy = color;
  v4 = [EDColorReference alloc];
  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  v6 = [(EDColorReference *)v4 initWithColor:colorCopy resources:WeakRetained];
  mForeColorReference = self->mForeColorReference;
  self->mForeColorReference = v6;
}

- (void)setBackColor:(id)color
{
  colorCopy = color;
  v4 = [EDColorReference alloc];
  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  v6 = [(EDColorReference *)v4 initWithColor:colorCopy resources:WeakRetained];
  mBackColorReference = self->mBackColorReference;
  self->mBackColorReference = v6;
}

- (void)setBackColorReference:(id)reference
{
  referenceCopy = reference;
  if (self->mBackColorReference != referenceCopy)
  {
    v6 = referenceCopy;
    objc_storeStrong(&self->mBackColorReference, reference);
    referenceCopy = v6;
  }
}

- (void)setForeColorReference:(id)reference
{
  referenceCopy = reference;
  if (self->mForeColorReference != referenceCopy)
  {
    v6 = referenceCopy;
    objc_storeStrong(&self->mForeColorReference, reference);
    referenceCopy = v6;
  }
}

- (EDPatternFill)initWithResources:(id)resources
{
  v4.receiver = self;
  v4.super_class = EDPatternFill;
  result = [(EDFill *)&v4 initWithResources:resources];
  if (result)
  {
    result->mType = 0;
  }

  return result;
}

- (EDPatternFill)initWithType:(int)type foreColor:(id)color backColor:(id)backColor resources:(id)resources
{
  colorCopy = color;
  backColorCopy = backColor;
  resourcesCopy = resources;
  v24.receiver = self;
  v24.super_class = EDPatternFill;
  v13 = [(EDFill *)&v24 initWithResources:resourcesCopy];
  v14 = v13;
  if (v13)
  {
    v13->mType = type;
    v15 = [EDColorReference alloc];
    WeakRetained = objc_loadWeakRetained(&v14->super.mResources);
    v17 = [(EDColorReference *)v15 initWithColor:backColorCopy resources:WeakRetained];
    mBackColorReference = v14->mBackColorReference;
    v14->mBackColorReference = v17;

    v19 = [EDColorReference alloc];
    v20 = objc_loadWeakRetained(&v14->super.mResources);
    v21 = [(EDColorReference *)v19 initWithColor:colorCopy resources:v20];
    mForeColorReference = v14->mForeColorReference;
    v14->mForeColorReference = v21;
  }

  return v14;
}

+ (id)patternFillWithType:(int)type resources:(id)resources
{
  v5 = [self fillWithResources:resources];
  v5[4] = type;

  return v5;
}

+ (id)patternFillWithType:(int)type foreColor:(id)color resources:(id)resources
{
  v6 = *&type;
  colorCopy = color;
  v9 = [self patternFillWithType:v6 resources:resources];
  [v9 setForeColor:colorCopy];

  return v9;
}

+ (id)patternFillWithType:(int)type foreColor:(id)color backColor:(id)backColor resources:(id)resources
{
  v8 = *&type;
  backColorCopy = backColor;
  v11 = [self patternFillWithType:v8 foreColor:color resources:resources];
  [v11 setBackColor:backColorCopy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = EDPatternFill;
  v4 = [(EDFill *)&v10 copyWithZone:zone];
  v5 = [(EDColorReference *)self->mBackColorReference copy];
  v6 = v4[3];
  v4[3] = v5;

  v7 = [(EDColorReference *)self->mForeColorReference copy];
  v8 = v4[4];
  v4[4] = v7;

  return v4;
}

- (BOOL)isEqualToPatternFill:(id)fill
{
  fillCopy = fill;
  mForeColorReference = self->mForeColorReference;
  v7 = (mForeColorReference == fillCopy[4] || [(EDColorReference *)mForeColorReference isEqual:?]) && ((mBackColorReference = self->mBackColorReference, mBackColorReference == fillCopy[3]) || [(EDColorReference *)mBackColorReference isEqual:?]) && self->mType == *(fillCopy + 4);

  return v7;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDPatternFill *)self isEqualToPatternFill:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = self->mType << 16;
  v4 = ([(EDColorReference *)self->mBackColorReference hash]<< 8) + v3;
  return v4 + [(EDColorReference *)self->mForeColorReference hash];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDPatternFill;
  v2 = [(EDFill *)&v4 description];

  return v2;
}

- (EDPatternFill)initWithType:(int)type foreColorReference:(id)reference backColorReference:(id)colorReference resources:(id)resources
{
  referenceCopy = reference;
  colorReferenceCopy = colorReference;
  resourcesCopy = resources;
  v13 = [(EDPatternFill *)self initWithResources:resourcesCopy];
  v14 = v13;
  if (v13)
  {
    v13->mType = type;
    [(EDPatternFill *)v13 setBackColorReference:colorReferenceCopy];
    [(EDPatternFill *)v14 setForeColorReference:referenceCopy];
  }

  return v14;
}

+ (id)patternFillWithType:(int)type foreColorReference:(id)reference backColorReference:(id)colorReference resources:(id)resources
{
  v8 = *&type;
  referenceCopy = reference;
  colorReferenceCopy = colorReference;
  resourcesCopy = resources;
  v13 = [[self alloc] initWithType:v8 foreColorReference:referenceCopy backColorReference:colorReferenceCopy resources:resourcesCopy];

  return v13;
}

@end