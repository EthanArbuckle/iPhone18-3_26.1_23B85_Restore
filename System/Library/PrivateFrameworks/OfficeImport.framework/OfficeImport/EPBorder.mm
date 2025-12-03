@interface EPBorder
+ (id)borderWithBorder:(id)border precedence:(unint64_t)precedence resources:(id)resources;
- (BOOL)isEqualToBorder:(id)border;
- (EPBorder)initWithBorder:(id)border precedence:(unint64_t)precedence resources:(id)resources;
@end

@implementation EPBorder

- (EPBorder)initWithBorder:(id)border precedence:(unint64_t)precedence resources:(id)resources
{
  borderCopy = border;
  resourcesCopy = resources;
  v14.receiver = self;
  v14.super_class = EPBorder;
  v10 = [(EDBorder *)&v14 initWithResources:resourcesCopy];
  if (v10)
  {
    v10->super.mType = [borderCopy type];
    colorReference = [borderCopy colorReference];
    mColorReference = v10->super.mColorReference;
    v10->super.mColorReference = colorReference;

    v10->super.mDiagonalType = [borderCopy diagonalType];
    v10->mPrecedence = precedence;
  }

  return v10;
}

+ (id)borderWithBorder:(id)border precedence:(unint64_t)precedence resources:(id)resources
{
  borderCopy = border;
  resourcesCopy = resources;
  v10 = [[self alloc] initWithBorder:borderCopy precedence:precedence resources:resourcesCopy];

  return v10;
}

- (BOOL)isEqualToBorder:(id)border
{
  borderCopy = border;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && self->mPrecedence != borderCopy[5])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = EPBorder;
    v5 = [(EDBorder *)&v7 isEqualToBorder:borderCopy];
  }

  return v5;
}

@end