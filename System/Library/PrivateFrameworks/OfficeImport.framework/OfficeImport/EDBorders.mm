@interface EDBorders
+ (id)bordersWithLeft:(id)left right:(id)right top:(id)top bottom:(id)bottom diagonal:(id)diagonal resources:(id)resources;
+ (id)bordersWithLeft:(id)left right:(id)right top:(id)top bottom:(id)bottom diagonal:(id)diagonal vertical:(id)vertical horizontal:(id)horizontal resources:(id)self0;
+ (id)bordersWithResources:(id)resources;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToBorders:(id)borders;
- (EDBorders)initWithResources:(id)resources;
- (id)bottomBorder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)diagonalBorder;
- (id)horizontalBorder;
- (id)leftBorder;
- (id)rightBorder;
- (id)topBorder;
- (id)verticalBorder;
- (void)setBottomBorder:(id)border;
- (void)setDiagonalBorder:(id)border;
- (void)setHorizontalBorder:(id)border;
- (void)setLeftBorder:(id)border;
- (void)setRightBorder:(id)border;
- (void)setTopBorder:(id)border;
- (void)setVerticalBorder:(id)border;
@end

@implementation EDBorders

- (id)topBorder
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  border = [WeakRetained border];
  v5 = [border objectAtIndex:self->mTopBorderIndex];

  return v5;
}

- (id)leftBorder
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  border = [WeakRetained border];
  v5 = [border objectAtIndex:self->mLeftBorderIndex];

  return v5;
}

- (id)bottomBorder
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  border = [WeakRetained border];
  v5 = [border objectAtIndex:self->mBottomBorderIndex];

  return v5;
}

- (id)rightBorder
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  border = [WeakRetained border];
  v5 = [border objectAtIndex:self->mRightBorderIndex];

  return v5;
}

- (id)verticalBorder
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  border = [WeakRetained border];
  v5 = [border objectAtIndex:self->mVerticalBorderIndex];

  return v5;
}

- (id)diagonalBorder
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  border = [WeakRetained border];
  v5 = [border objectAtIndex:self->mDiagonalBorderIndex];

  return v5;
}

- (id)horizontalBorder
{
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  border = [WeakRetained border];
  v5 = [border objectAtIndex:self->mHorizontalBorderIndex];

  return v5;
}

- (EDBorders)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = EDBorders;
  v5 = [(EDBorders *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, resourcesCopy);
    *&v7 = -1;
    *(&v7 + 1) = -1;
    *&v6->mLeftBorderIndex = v7;
    *&v6->mTopBorderIndex = v7;
    *&v6->mDiagonalBorderIndex = v7;
    v6->mHorizontalBorderIndex = -1;
  }

  return v6;
}

+ (id)bordersWithResources:(id)resources
{
  resourcesCopy = resources;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:resourcesCopy];

  return v4;
}

+ (id)bordersWithLeft:(id)left right:(id)right top:(id)top bottom:(id)bottom diagonal:(id)diagonal resources:(id)resources
{
  leftCopy = left;
  rightCopy = right;
  topCopy = top;
  bottomCopy = bottom;
  diagonalCopy = diagonal;
  v19 = [self bordersWithResources:resources];
  [v19 setLeftBorder:leftCopy];
  [v19 setRightBorder:rightCopy];
  [v19 setTopBorder:topCopy];
  [v19 setBottomBorder:bottomCopy];
  [v19 setDiagonalBorder:diagonalCopy];

  return v19;
}

+ (id)bordersWithLeft:(id)left right:(id)right top:(id)top bottom:(id)bottom diagonal:(id)diagonal vertical:(id)vertical horizontal:(id)horizontal resources:(id)self0
{
  verticalCopy = vertical;
  horizontalCopy = horizontal;
  v18 = [self bordersWithLeft:left right:right top:top bottom:bottom diagonal:diagonal resources:resources];
  [v18 setVerticalBorder:verticalCopy];
  [v18 setHorizontalBorder:horizontalCopy];

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqualToBorders:(id)borders
{
  bordersCopy = borders;
  v5 = *&self->mLeftBorderIndex == bordersCopy[1] && self->mTopBorderIndex == *(bordersCopy + 4) && self->mBottomBorderIndex == *(bordersCopy + 5) && self->mDiagonalBorderIndex == *(bordersCopy + 6) && self->mVerticalBorderIndex == *(bordersCopy + 7) && self->mHorizontalBorderIndex == *(bordersCopy + 8);

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDBorders *)self isEqualToBorders:v5];
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

- (void)setLeftBorder:(id)border
{
  borderCopy = border;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  border = [WeakRetained border];
  self->mLeftBorderIndex = [border addOrEquivalentObject:borderCopy];
}

- (void)setRightBorder:(id)border
{
  borderCopy = border;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  border = [WeakRetained border];
  self->mRightBorderIndex = [border addOrEquivalentObject:borderCopy];
}

- (void)setTopBorder:(id)border
{
  borderCopy = border;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  border = [WeakRetained border];
  self->mTopBorderIndex = [border addOrEquivalentObject:borderCopy];
}

- (void)setBottomBorder:(id)border
{
  borderCopy = border;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  border = [WeakRetained border];
  self->mBottomBorderIndex = [border addOrEquivalentObject:borderCopy];
}

- (void)setDiagonalBorder:(id)border
{
  borderCopy = border;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  border = [WeakRetained border];
  self->mDiagonalBorderIndex = [border addOrEquivalentObject:borderCopy];
}

- (void)setVerticalBorder:(id)border
{
  borderCopy = border;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  border = [WeakRetained border];
  self->mVerticalBorderIndex = [border addOrEquivalentObject:borderCopy];
}

- (void)setHorizontalBorder:(id)border
{
  borderCopy = border;
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  border = [WeakRetained border];
  self->mHorizontalBorderIndex = [border addOrEquivalentObject:borderCopy];
}

@end