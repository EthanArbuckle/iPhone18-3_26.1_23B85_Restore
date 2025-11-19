@interface EDDifferentialStyle
+ (id)differentialStyle;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation EDDifferentialStyle

+ (id)differentialStyle
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    v5 = [(EDAlignmentInfo *)self->mAlignmentInfo copy];
    v6 = v4[1];
    v4[1] = v5;

    v7 = [(EDBorders *)self->mBorders copy];
    v8 = v4[2];
    v4[2] = v7;

    v9 = [(EDFill *)self->mFill copy];
    v10 = v4[3];
    v4[3] = v9;

    v11 = [(EDFont *)self->mFont copy];
    v12 = v4[4];
    v4[4] = v11;

    v13 = [(EDProtection *)self->mProtection copy];
    v14 = v4[5];
    v4[5] = v13;

    v15 = [(EDContentFormat *)self->mContentFormat copy];
    v16 = v4[6];
    v4[6] = v15;

    v17 = v4;
  }

  return v4;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDDifferentialStyle;
  v2 = [(EDDifferentialStyle *)&v4 description];

  return v2;
}

@end