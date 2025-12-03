@interface LNActionSideEffect
+ (id)noneSideEffect;
+ (id)sideEffectWithChangeEffect:(int64_t)effect;
+ (id)unknownSideEffect;
- (BOOL)isEqual:(id)equal;
- (LNActionSideEffect)initWithCoder:(id)coder;
- (LNActionSideEffect)initWithSideEffect:(int64_t)effect changeEffect:(int64_t)changeEffect;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNActionSideEffect

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
    goto LABEL_10;
  }

  v6 = equalCopy;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = 0;
    goto LABEL_7;
  }

  effect = [(LNActionSideEffect *)self effect];
  if (effect != [(LNActionSideEffect *)v6 effect])
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  changeEffect = [(LNActionSideEffect *)self changeEffect];
  v9 = changeEffect == [(LNActionSideEffect *)v6 changeEffect];
LABEL_8:

LABEL_10:
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  effect = [(LNActionSideEffect *)self effect];
  v7 = @"Unknown";
  if (!effect)
  {
    v7 = @"None";
  }

  if (effect == 1)
  {
    v7 = @"Change";
  }

  v8 = v7;
  v9 = LNChangeEffectAsString([(LNActionSideEffect *)self changeEffect]);
  v10 = [v3 stringWithFormat:@"<%@: %p, change: %@, effects: %@>", v5, self, v8, v9];

  return v10;
}

- (LNActionSideEffect)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"effect"];
  v6 = [coderCopy decodeIntegerForKey:@"changeEffect"];

  return [(LNActionSideEffect *)self initWithSideEffect:v5 changeEffect:v6];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[LNActionSideEffect effect](self forKey:{"effect"), @"effect"}];
  [coderCopy encodeInteger:-[LNActionSideEffect changeEffect](self forKey:{"changeEffect"), @"changeEffect"}];
}

- (LNActionSideEffect)initWithSideEffect:(int64_t)effect changeEffect:(int64_t)changeEffect
{
  v10.receiver = self;
  v10.super_class = LNActionSideEffect;
  v6 = [(LNActionSideEffect *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_effect = effect;
    v6->_changeEffect = changeEffect;
    v8 = v6;
  }

  return v7;
}

+ (id)sideEffectWithChangeEffect:(int64_t)effect
{
  v3 = [objc_alloc(objc_opt_class()) initWithSideEffect:1 changeEffect:effect];

  return v3;
}

+ (id)noneSideEffect
{
  v2 = [objc_alloc(objc_opt_class()) initWithSideEffect:0 changeEffect:0];

  return v2;
}

+ (id)unknownSideEffect
{
  v2 = [objc_alloc(objc_opt_class()) initWithSideEffect:-1 changeEffect:-1];

  return v2;
}

@end