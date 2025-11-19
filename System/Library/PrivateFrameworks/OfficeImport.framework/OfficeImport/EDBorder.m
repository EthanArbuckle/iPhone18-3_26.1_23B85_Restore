@interface EDBorder
+ (id)borderWithType:(int)a3 color:(id)a4 diagonalType:(int)a5 resources:(id)a6;
+ (id)borderWithType:(int)a3 color:(id)a4 resources:(id)a5;
+ (id)borderWithType:(int)a3 colorReference:(id)a4 diagonalType:(int)a5 resources:(id)a6;
+ (id)borderWithType:(int)a3 colorReference:(id)a4 resources:(id)a5;
+ (id)borderWithType:(int)a3 resources:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToBorder:(id)a3;
- (EDBorder)initWithResources:(id)a3;
- (id)description;
@end

@implementation EDBorder

- (EDBorder)initWithResources:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EDBorder;
  v5 = [(EDBorder *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, v4);
    v6->mType = 0;
    v6->mDiagonalType = 0;
  }

  return v6;
}

+ (id)borderWithType:(int)a3 resources:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(objc_opt_class()) initWithResources:v5];
  v6[4] = a3;

  return v6;
}

+ (id)borderWithType:(int)a3 color:(id)a4 resources:(id)a5
{
  v6 = *&a3;
  v8 = a4;
  v9 = a5;
  v10 = [a1 borderWithType:v6 resources:v9];
  v11 = [[EDColorReference alloc] initWithColor:v8 resources:v9];
  v12 = v10[3];
  v10[3] = v11;

  return v10;
}

+ (id)borderWithType:(int)a3 color:(id)a4 diagonalType:(int)a5 resources:(id)a6
{
  v7 = [a1 borderWithType:*&a3 color:a4 resources:a6];
  v7[8] = a5;

  return v7;
}

- (BOOL)isEqualToBorder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->mType == *(v4 + 4) && self->mDiagonalType == *(v4 + 8))
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDBorder *)self isEqualToBorder:v5];
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

+ (id)borderWithType:(int)a3 colorReference:(id)a4 resources:(id)a5
{
  v6 = *&a3;
  v8 = a4;
  v9 = [a1 borderWithType:v6 resources:a5];
  v10 = v9[3];
  v9[3] = v8;

  return v9;
}

+ (id)borderWithType:(int)a3 colorReference:(id)a4 diagonalType:(int)a5 resources:(id)a6
{
  v7 = [a1 borderWithType:*&a3 colorReference:a4 resources:a6];
  v7[8] = a5;

  return v7;
}

@end