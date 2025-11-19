@interface EDPatternFill
+ (id)patternFillWithType:(int)a3 foreColor:(id)a4 backColor:(id)a5 resources:(id)a6;
+ (id)patternFillWithType:(int)a3 foreColor:(id)a4 resources:(id)a5;
+ (id)patternFillWithType:(int)a3 foreColorReference:(id)a4 backColorReference:(id)a5 resources:(id)a6;
+ (id)patternFillWithType:(int)a3 resources:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPatternFill:(id)a3;
- (EDPatternFill)initWithResources:(id)a3;
- (EDPatternFill)initWithType:(int)a3 foreColor:(id)a4 backColor:(id)a5 resources:(id)a6;
- (EDPatternFill)initWithType:(int)a3 foreColorReference:(id)a4 backColorReference:(id)a5 resources:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)setBackColor:(id)a3;
- (void)setBackColorReference:(id)a3;
- (void)setForeColor:(id)a3;
- (void)setForeColorReference:(id)a3;
@end

@implementation EDPatternFill

- (void)setForeColor:(id)a3
{
  v8 = a3;
  v4 = [EDColorReference alloc];
  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  v6 = [(EDColorReference *)v4 initWithColor:v8 resources:WeakRetained];
  mForeColorReference = self->mForeColorReference;
  self->mForeColorReference = v6;
}

- (void)setBackColor:(id)a3
{
  v8 = a3;
  v4 = [EDColorReference alloc];
  WeakRetained = objc_loadWeakRetained(&self->super.mResources);
  v6 = [(EDColorReference *)v4 initWithColor:v8 resources:WeakRetained];
  mBackColorReference = self->mBackColorReference;
  self->mBackColorReference = v6;
}

- (void)setBackColorReference:(id)a3
{
  v5 = a3;
  if (self->mBackColorReference != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mBackColorReference, a3);
    v5 = v6;
  }
}

- (void)setForeColorReference:(id)a3
{
  v5 = a3;
  if (self->mForeColorReference != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mForeColorReference, a3);
    v5 = v6;
  }
}

- (EDPatternFill)initWithResources:(id)a3
{
  v4.receiver = self;
  v4.super_class = EDPatternFill;
  result = [(EDFill *)&v4 initWithResources:a3];
  if (result)
  {
    result->mType = 0;
  }

  return result;
}

- (EDPatternFill)initWithType:(int)a3 foreColor:(id)a4 backColor:(id)a5 resources:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v24.receiver = self;
  v24.super_class = EDPatternFill;
  v13 = [(EDFill *)&v24 initWithResources:v12];
  v14 = v13;
  if (v13)
  {
    v13->mType = a3;
    v15 = [EDColorReference alloc];
    WeakRetained = objc_loadWeakRetained(&v14->super.mResources);
    v17 = [(EDColorReference *)v15 initWithColor:v11 resources:WeakRetained];
    mBackColorReference = v14->mBackColorReference;
    v14->mBackColorReference = v17;

    v19 = [EDColorReference alloc];
    v20 = objc_loadWeakRetained(&v14->super.mResources);
    v21 = [(EDColorReference *)v19 initWithColor:v10 resources:v20];
    mForeColorReference = v14->mForeColorReference;
    v14->mForeColorReference = v21;
  }

  return v14;
}

+ (id)patternFillWithType:(int)a3 resources:(id)a4
{
  v5 = [a1 fillWithResources:a4];
  v5[4] = a3;

  return v5;
}

+ (id)patternFillWithType:(int)a3 foreColor:(id)a4 resources:(id)a5
{
  v6 = *&a3;
  v8 = a4;
  v9 = [a1 patternFillWithType:v6 resources:a5];
  [v9 setForeColor:v8];

  return v9;
}

+ (id)patternFillWithType:(int)a3 foreColor:(id)a4 backColor:(id)a5 resources:(id)a6
{
  v8 = *&a3;
  v10 = a5;
  v11 = [a1 patternFillWithType:v8 foreColor:a4 resources:a6];
  [v11 setBackColor:v10];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = EDPatternFill;
  v4 = [(EDFill *)&v10 copyWithZone:a3];
  v5 = [(EDColorReference *)self->mBackColorReference copy];
  v6 = v4[3];
  v4[3] = v5;

  v7 = [(EDColorReference *)self->mForeColorReference copy];
  v8 = v4[4];
  v4[4] = v7;

  return v4;
}

- (BOOL)isEqualToPatternFill:(id)a3
{
  v4 = a3;
  mForeColorReference = self->mForeColorReference;
  v7 = (mForeColorReference == v4[4] || [(EDColorReference *)mForeColorReference isEqual:?]) && ((mBackColorReference = self->mBackColorReference, mBackColorReference == v4[3]) || [(EDColorReference *)mBackColorReference isEqual:?]) && self->mType == *(v4 + 4);

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDPatternFill *)self isEqualToPatternFill:v5];
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

- (EDPatternFill)initWithType:(int)a3 foreColorReference:(id)a4 backColorReference:(id)a5 resources:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(EDPatternFill *)self initWithResources:v12];
  v14 = v13;
  if (v13)
  {
    v13->mType = a3;
    [(EDPatternFill *)v13 setBackColorReference:v11];
    [(EDPatternFill *)v14 setForeColorReference:v10];
  }

  return v14;
}

+ (id)patternFillWithType:(int)a3 foreColorReference:(id)a4 backColorReference:(id)a5 resources:(id)a6
{
  v8 = *&a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [[a1 alloc] initWithType:v8 foreColorReference:v10 backColorReference:v11 resources:v12];

  return v13;
}

@end