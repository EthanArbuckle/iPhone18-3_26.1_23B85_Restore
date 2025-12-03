@interface EDBorder
+ (id)borderWithType:(int)type color:(id)color diagonalType:(int)diagonalType resources:(id)resources;
+ (id)borderWithType:(int)type color:(id)color resources:(id)resources;
+ (id)borderWithType:(int)type colorReference:(id)reference diagonalType:(int)diagonalType resources:(id)resources;
+ (id)borderWithType:(int)type colorReference:(id)reference resources:(id)resources;
+ (id)borderWithType:(int)type resources:(id)resources;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToBorder:(id)border;
- (EDBorder)initWithResources:(id)resources;
- (id)description;
@end

@implementation EDBorder

- (EDBorder)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v8.receiver = self;
  v8.super_class = EDBorder;
  v5 = [(EDBorder *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, resourcesCopy);
    v6->mType = 0;
    v6->mDiagonalType = 0;
  }

  return v6;
}

+ (id)borderWithType:(int)type resources:(id)resources
{
  resourcesCopy = resources;
  v6 = [objc_alloc(objc_opt_class()) initWithResources:resourcesCopy];
  v6[4] = type;

  return v6;
}

+ (id)borderWithType:(int)type color:(id)color resources:(id)resources
{
  v6 = *&type;
  colorCopy = color;
  resourcesCopy = resources;
  v10 = [self borderWithType:v6 resources:resourcesCopy];
  v11 = [[EDColorReference alloc] initWithColor:colorCopy resources:resourcesCopy];
  v12 = v10[3];
  v10[3] = v11;

  return v10;
}

+ (id)borderWithType:(int)type color:(id)color diagonalType:(int)diagonalType resources:(id)resources
{
  v7 = [self borderWithType:*&type color:color resources:resources];
  v7[8] = diagonalType;

  return v7;
}

- (BOOL)isEqualToBorder:(id)border
{
  borderCopy = border;
  v5 = borderCopy;
  if (self->mType == *(borderCopy + 4) && self->mDiagonalType == *(borderCopy + 8))
  {
    mColorReference = self->mColorReference;
    if (mColorReference == v5[3])
    {
      v7 = 1;
    }

    else
    {
      v7 = [(EDColorReference *)mColorReference isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDBorder *)self isEqualToBorder:v5];
  }

  return v6;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDBorder;
  v2 = [(EDBorder *)&v4 description];

  return v2;
}

+ (id)borderWithType:(int)type colorReference:(id)reference resources:(id)resources
{
  v6 = *&type;
  referenceCopy = reference;
  v9 = [self borderWithType:v6 resources:resources];
  v10 = v9[3];
  v9[3] = referenceCopy;

  return v9;
}

+ (id)borderWithType:(int)type colorReference:(id)reference diagonalType:(int)diagonalType resources:(id)resources
{
  v7 = [self borderWithType:*&type colorReference:reference resources:resources];
  v7[8] = diagonalType;

  return v7;
}

@end