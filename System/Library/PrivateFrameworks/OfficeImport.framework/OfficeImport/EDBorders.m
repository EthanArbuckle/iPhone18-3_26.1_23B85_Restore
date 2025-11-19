@interface EDBorders
+ (id)bordersWithLeft:(id)a3 right:(id)a4 top:(id)a5 bottom:(id)a6 diagonal:(id)a7 resources:(id)a8;
+ (id)bordersWithLeft:(id)a3 right:(id)a4 top:(id)a5 bottom:(id)a6 diagonal:(id)a7 vertical:(id)a8 horizontal:(id)a9 resources:(id)a10;
+ (id)bordersWithResources:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToBorders:(id)a3;
- (EDBorders)initWithResources:(id)a3;
- (id)bottomBorder;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)diagonalBorder;
- (id)horizontalBorder;
- (id)leftBorder;
- (id)rightBorder;
- (id)topBorder;
- (id)verticalBorder;
- (void)setBottomBorder:(id)a3;
- (void)setDiagonalBorder:(id)a3;
- (void)setHorizontalBorder:(id)a3;
- (void)setLeftBorder:(id)a3;
- (void)setRightBorder:(id)a3;
- (void)setTopBorder:(id)a3;
- (void)setVerticalBorder:(id)a3;
@end

@implementation EDBorders

- (id)topBorder
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained border];
  v5 = [v4 objectAtIndex:self->mTopBorderIndex];

  return v5;
}

- (id)leftBorder
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained border];
  v5 = [v4 objectAtIndex:self->mLeftBorderIndex];

  return v5;
}

- (id)bottomBorder
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained border];
  v5 = [v4 objectAtIndex:self->mBottomBorderIndex];

  return v5;
}

- (id)rightBorder
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained border];
  v5 = [v4 objectAtIndex:self->mRightBorderIndex];

  return v5;
}

- (id)verticalBorder
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained border];
  v5 = [v4 objectAtIndex:self->mVerticalBorderIndex];

  return v5;
}

- (id)diagonalBorder
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained border];
  v5 = [v4 objectAtIndex:self->mDiagonalBorderIndex];

  return v5;
}

- (id)horizontalBorder
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v4 = [WeakRetained border];
  v5 = [v4 objectAtIndex:self->mHorizontalBorderIndex];

  return v5;
}

- (EDBorders)initWithResources:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EDBorders;
  v5 = [(EDBorders *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, v4);
    *&v7 = -1;
    *(&v7 + 1) = -1;
    *&v6->mLeftBorderIndex = v7;
    *&v6->mTopBorderIndex = v7;
    *&v6->mDiagonalBorderIndex = v7;
    v6->mHorizontalBorderIndex = -1;
  }

  return v6;
}

+ (id)bordersWithResources:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:v3];

  return v4;
}

+ (id)bordersWithLeft:(id)a3 right:(id)a4 top:(id)a5 bottom:(id)a6 diagonal:(id)a7 resources:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [a1 bordersWithResources:a8];
  [v19 setLeftBorder:v14];
  [v19 setRightBorder:v15];
  [v19 setTopBorder:v16];
  [v19 setBottomBorder:v17];
  [v19 setDiagonalBorder:v18];

  return v19;
}

+ (id)bordersWithLeft:(id)a3 right:(id)a4 top:(id)a5 bottom:(id)a6 diagonal:(id)a7 vertical:(id)a8 horizontal:(id)a9 resources:(id)a10
{
  v16 = a8;
  v17 = a9;
  v18 = [a1 bordersWithLeft:a3 right:a4 top:a5 bottom:a6 diagonal:a7 resources:a10];
  [v18 setVerticalBorder:v16];
  [v18 setHorizontalBorder:v17];

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v6 = [v4 initWithResources:WeakRetained];

  if (v6)
  {
    v6[2] = self->mLeftBorderIndex;
    v6[3] = self->mRightBorderIndex;
    v6[4] = self->mTopBorderIndex;
    v6[5] = self->mBottomBorderIndex;
    v6[6] = self->mDiagonalBorderIndex;
    v6[7] = self->mVerticalBorderIndex;
    v6[8] = self->mHorizontalBorderIndex;
    v7 = v6;
  }

  return v6;
}

- (BOOL)isEqualToBorders:(id)a3
{
  v4 = a3;
  v5 = *&self->mLeftBorderIndex == v4[1] && self->mTopBorderIndex == *(v4 + 4) && self->mBottomBorderIndex == *(v4 + 5) && self->mDiagonalBorderIndex == *(v4 + 6) && self->mVerticalBorderIndex == *(v4 + 7) && self->mHorizontalBorderIndex == *(v4 + 8);

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDBorders *)self isEqualToBorders:v5];
  }

  return v6;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDBorders;
  v2 = [(EDBorders *)&v4 description];

  return v2;
}

- (void)setLeftBorder:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained border];
  self->mLeftBorderIndex = [v5 addOrEquivalentObject:v6];
}

- (void)setRightBorder:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained border];
  self->mRightBorderIndex = [v5 addOrEquivalentObject:v6];
}

- (void)setTopBorder:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained border];
  self->mTopBorderIndex = [v5 addOrEquivalentObject:v6];
}

- (void)setBottomBorder:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained border];
  self->mBottomBorderIndex = [v5 addOrEquivalentObject:v6];
}

- (void)setDiagonalBorder:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained border];
  self->mDiagonalBorderIndex = [v5 addOrEquivalentObject:v6];
}

- (void)setVerticalBorder:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained border];
  self->mVerticalBorderIndex = [v5 addOrEquivalentObject:v6];
}

- (void)setHorizontalBorder:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v5 = [WeakRetained border];
  self->mHorizontalBorderIndex = [v5 addOrEquivalentObject:v6];
}

@end