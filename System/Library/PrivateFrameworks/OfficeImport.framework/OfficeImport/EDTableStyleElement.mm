@interface EDTableStyleElement
+ (id)tableStyleElementWithResources:(id)resources;
- (EDTableStyleElement)initWithResources:(id)resources;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setDifferentialStyle:(id)style;
- (void)setDifferentialStyleWithIndex:(unint64_t)index;
@end

@implementation EDTableStyleElement

- (EDTableStyleElement)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v9.receiver = self;
  v9.super_class = EDTableStyleElement;
  v5 = [(EDTableStyleElement *)&v9 init];
  if (v5)
  {
    differentialStyles = [resourcesCopy differentialStyles];
    mDifferentialStyles = v5->mDifferentialStyles;
    v5->mDifferentialStyles = differentialStyles;

    *&v5->mType = 0xFFFFFFFF00000000;
  }

  return v5;
}

+ (id)tableStyleElementWithResources:(id)resources
{
  resourcesCopy = resources;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:resourcesCopy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)setDifferentialStyle:(id)style
{
  styleCopy = style;
  mDifferentialStyle = self->mDifferentialStyle;
  p_mDifferentialStyle = &self->mDifferentialStyle;
  if (mDifferentialStyle != styleCopy)
  {
    v8 = styleCopy;
    objc_storeStrong(p_mDifferentialStyle, style);
    styleCopy = v8;
  }
}

- (void)setDifferentialStyleWithIndex:(unint64_t)index
{
  v4 = [(EDCollection *)self->mDifferentialStyles objectAtIndex:index];
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