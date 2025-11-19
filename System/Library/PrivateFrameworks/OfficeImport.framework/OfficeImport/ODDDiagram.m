@interface ODDDiagram
- (ODDDiagram)init;
- (id)description;
@end

@implementation ODDDiagram

- (ODDDiagram)init
{
  v2 = [(OADDrawable *)self initWithPropertiesClass:objc_opt_class()];
  if (v2)
  {
    v3 = objc_alloc_init(ODDColorTransform);
    mColorTransform = v2->mColorTransform;
    v2->mColorTransform = v3;

    v5 = objc_alloc_init(ODDStyleDefinition);
    mStyleDefinition = v2->mStyleDefinition;
    v2->mStyleDefinition = v5;
  }

  return v2;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = ODDDiagram;
  v2 = [(OADDrawable *)&v4 description];

  return v2;
}

@end