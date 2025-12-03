@interface JFXTextEffectTransforms
+ (id)transformsWithEffect:(id)effect;
+ (id)transformsWithTransform:(id)transform;
- (JFXTextEffectTransforms)initWithEffect:(id)effect;
- (JFXTextEffectTransforms)initWithTransform:(id)transform;
- (void)applyToEffect:(id)effect;
@end

@implementation JFXTextEffectTransforms

+ (id)transformsWithTransform:(id)transform
{
  transformCopy = transform;
  v5 = [[self alloc] initWithTransform:transformCopy];

  return v5;
}

+ (id)transformsWithEffect:(id)effect
{
  effectCopy = effect;
  v5 = [[self alloc] initWithEffect:effectCopy];

  return v5;
}

- (JFXTextEffectTransforms)initWithTransform:(id)transform
{
  transformCopy = transform;
  v9.receiver = self;
  v9.super_class = JFXTextEffectTransforms;
  v5 = [(JFXTextEffectTransforms *)&v9 init];
  if (v5)
  {
    v6 = [transformCopy copy];
    transform = v5->_transform;
    v5->_transform = v6;
  }

  return v5;
}

- (JFXTextEffectTransforms)initWithEffect:(id)effect
{
  topLevelTransformObject = [effect topLevelTransformObject];
  v5 = [(JFXTextEffectTransforms *)self initWithTransform:topLevelTransformObject];

  return v5;
}

- (void)applyToEffect:(id)effect
{
  effectCopy = effect;
  transform = [(JFXTextEffectTransforms *)self transform];
  [effectCopy setTopLevelTransformObject:transform];
}

@end