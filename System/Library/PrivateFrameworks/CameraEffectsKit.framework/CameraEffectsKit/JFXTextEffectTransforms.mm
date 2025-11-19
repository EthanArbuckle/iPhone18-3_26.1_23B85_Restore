@interface JFXTextEffectTransforms
+ (id)transformsWithEffect:(id)a3;
+ (id)transformsWithTransform:(id)a3;
- (JFXTextEffectTransforms)initWithEffect:(id)a3;
- (JFXTextEffectTransforms)initWithTransform:(id)a3;
- (void)applyToEffect:(id)a3;
@end

@implementation JFXTextEffectTransforms

+ (id)transformsWithTransform:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithTransform:v4];

  return v5;
}

+ (id)transformsWithEffect:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithEffect:v4];

  return v5;
}

- (JFXTextEffectTransforms)initWithTransform:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = JFXTextEffectTransforms;
  v5 = [(JFXTextEffectTransforms *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    transform = v5->_transform;
    v5->_transform = v6;
  }

  return v5;
}

- (JFXTextEffectTransforms)initWithEffect:(id)a3
{
  v4 = [a3 topLevelTransformObject];
  v5 = [(JFXTextEffectTransforms *)self initWithTransform:v4];

  return v5;
}

- (void)applyToEffect:(id)a3
{
  v4 = a3;
  v5 = [(JFXTextEffectTransforms *)self transform];
  [v4 setTopLevelTransformObject:v5];
}

@end