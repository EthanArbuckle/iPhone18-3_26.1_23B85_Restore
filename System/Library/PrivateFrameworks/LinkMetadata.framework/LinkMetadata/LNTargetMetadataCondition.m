@interface LNTargetMetadataCondition
+ (LNTargetMetadataCondition)foregroundCondition;
- (BOOL)isEqual:(id)a3;
- (LNTargetMetadataCondition)initWithCoder:(id)a3;
- (LNTargetMetadataCondition)initWithIdentifier:(int64_t)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNTargetMetadataCondition

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNTargetMetadataCondition *)self identifier];
      v8 = v7 == [(LNTargetMetadataCondition *)v6 identifier];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(LNTargetMetadataCondition *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p, identifier: %@>", v5, self, @"Foreground"];

  return v6;
}

- (LNTargetMetadataCondition)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"identifier"];

  return [(LNTargetMetadataCondition *)self initWithIdentifier:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[LNTargetMetadataCondition identifier](self forKey:{"identifier"), @"identifier"}];
}

- (LNTargetMetadataCondition)initWithIdentifier:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = LNTargetMetadataCondition;
  v4 = [(LNTargetMetadataCondition *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_identifier = a3;
    v6 = v4;
  }

  return v5;
}

+ (LNTargetMetadataCondition)foregroundCondition
{
  v2 = [[LNTargetMetadataCondition alloc] initWithIdentifier:0];

  return v2;
}

@end