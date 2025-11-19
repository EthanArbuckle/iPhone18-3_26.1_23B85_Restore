@interface PDBuild
- (BOOL)isEqual:(id)a3;
- (PDBuild)init;
- (id)description;
- (unint64_t)hash;
@end

@implementation PDBuild

- (PDBuild)init
{
  v3.receiver = self;
  v3.super_class = PDBuild;
  result = [(PDBuild *)&v3 init];
  if (result)
  {
    result->mIsAnimateBackground = 1;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = TSUDynamicCast(v5, v4);
  v7 = v6;
  if (v6 && (mIsAnimateBackground = self->mIsAnimateBackground, mIsAnimateBackground == [v6 isAnimateBackground]))
  {
    mDrawable = self->mDrawable;
    v10 = [v7 drawable];
    v11 = mDrawable == v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(OADDrawable *)self->mDrawable hash];
  v5.receiver = self;
  v5.super_class = PDBuild;
  return [(PDBuild *)&v5 hash]^ v3;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = PDBuild;
  v2 = [(PDBuild *)&v4 description];

  return v2;
}

@end