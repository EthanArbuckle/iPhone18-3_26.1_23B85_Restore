@interface LNActionSideEffect
+ (id)noneSideEffect;
+ (id)sideEffectWithChangeEffect:(int64_t)a3;
+ (id)unknownSideEffect;
- (BOOL)isEqual:(id)a3;
- (LNActionSideEffect)initWithCoder:(id)a3;
- (LNActionSideEffect)initWithSideEffect:(int64_t)a3 changeEffect:(int64_t)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNActionSideEffect

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
    goto LABEL_10;
  }

  v6 = v4;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = 0;
    goto LABEL_7;
  }

  v7 = [(LNActionSideEffect *)self effect];
  if (v7 != [(LNActionSideEffect *)v6 effect])
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = [(LNActionSideEffect *)self changeEffect];
  v9 = v8 == [(LNActionSideEffect *)v6 changeEffect];
LABEL_8:

LABEL_10:
  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNActionSideEffect *)self effect];
  v7 = @"Unknown";
  if (!v6)
  {
    v7 = @"None";
  }

  if (v6 == 1)
  {
    v7 = @"Change";
  }

  v8 = v7;
  v9 = LNChangeEffectAsString([(LNActionSideEffect *)self changeEffect]);
  v10 = [v3 stringWithFormat:@"<%@: %p, change: %@, effects: %@>", v5, self, v8, v9];

  return v10;
}

- (LNActionSideEffect)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"effect"];
  v6 = [v4 decodeIntegerForKey:@"changeEffect"];

  return [(LNActionSideEffect *)self initWithSideEffect:v5 changeEffect:v6];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[LNActionSideEffect effect](self forKey:{"effect"), @"effect"}];
  [v4 encodeInteger:-[LNActionSideEffect changeEffect](self forKey:{"changeEffect"), @"changeEffect"}];
}

- (LNActionSideEffect)initWithSideEffect:(int64_t)a3 changeEffect:(int64_t)a4
{
  v10.receiver = self;
  v10.super_class = LNActionSideEffect;
  v6 = [(LNActionSideEffect *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_effect = a3;
    v6->_changeEffect = a4;
    v8 = v6;
  }

  return v7;
}

+ (id)sideEffectWithChangeEffect:(int64_t)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithSideEffect:1 changeEffect:a3];

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