@interface LNTargetMetadataCondition
+ (LNTargetMetadataCondition)foregroundCondition;
- (BOOL)isEqual:(id)equal;
- (LNTargetMetadataCondition)initWithCoder:(id)coder;
- (LNTargetMetadataCondition)initWithIdentifier:(int64_t)identifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNTargetMetadataCondition

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      identifier = [(LNTargetMetadataCondition *)self identifier];
      v8 = identifier == [(LNTargetMetadataCondition *)v6 identifier];
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

- (LNTargetMetadataCondition)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"identifier"];

  return [(LNTargetMetadataCondition *)self initWithIdentifier:v4];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[LNTargetMetadataCondition identifier](self forKey:{"identifier"), @"identifier"}];
}

- (LNTargetMetadataCondition)initWithIdentifier:(int64_t)identifier
{
  v8.receiver = self;
  v8.super_class = LNTargetMetadataCondition;
  v4 = [(LNTargetMetadataCondition *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_identifier = identifier;
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