@interface EDTableStyleElement
+ (id)tableStyleElementWithResources:(id)a3;
- (EDTableStyleElement)initWithResources:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setDifferentialStyle:(id)a3;
- (void)setDifferentialStyleWithIndex:(unint64_t)a3;
@end

@implementation EDTableStyleElement

- (EDTableStyleElement)initWithResources:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = EDTableStyleElement;
  v5 = [(EDTableStyleElement *)&v9 init];
  if (v5)
  {
    v6 = [v4 differentialStyles];
    mDifferentialStyles = v5->mDifferentialStyles;
    v5->mDifferentialStyles = v6;

    *&v5->mType = 0xFFFFFFFF00000000;
  }

  return v5;
}

+ (id)tableStyleElementWithResources:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 1, self->mDifferentialStyles);
    v5[2] = *&self->mType;
    v6 = [(EDDifferentialStyle *)self->mDifferentialStyle copy];
    v7 = v5[3];
    v5[3] = v6;

    v8 = v5;
  }

  return v5;
}

- (void)setDifferentialStyle:(id)a3
{
  v5 = a3;
  mDifferentialStyle = self->mDifferentialStyle;
  p_mDifferentialStyle = &self->mDifferentialStyle;
  if (mDifferentialStyle != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mDifferentialStyle, a3);
    v5 = v8;
  }
}

- (void)setDifferentialStyleWithIndex:(unint64_t)a3
{
  v4 = [(EDCollection *)self->mDifferentialStyles objectAtIndex:a3];
  [(EDTableStyleElement *)self setDifferentialStyle:?];
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = EDTableStyleElement;
  v2 = [(EDTableStyleElement *)&v4 description];

  return v2;
}

@end