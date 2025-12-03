@interface LNIntentEnablement
+ (id)disabledWithReason:(id)reason;
+ (id)enabled;
- (BOOL)isEqual:(id)equal;
- (LNIntentEnablement)initWithCoder:(id)coder;
- (LNIntentEnablement)initWithValue:(int64_t)value disabledReason:(id)reason;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNIntentEnablement

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        value = [(LNIntentEnablement *)self value];
        if (value != [(LNIntentEnablement *)v6 value])
        {
          v13 = 0;
LABEL_16:

          goto LABEL_17;
        }

        disabledReason = [(LNIntentEnablement *)self disabledReason];
        disabledReason2 = [(LNIntentEnablement *)v6 disabledReason];
        v10 = disabledReason;
        v11 = disabledReason2;
        v12 = v11;
        if (v10 == v11)
        {
          v13 = 1;
        }

        else
        {
          v13 = 0;
          if (v10 && v11)
          {
            v13 = [(LNIntentEnablement *)v10 isEqual:v11];
          }
        }
      }

      else
      {
        v13 = 0;
        v10 = v6;
        v6 = 0;
      }
    }

    else
    {
      v10 = 0;
      v13 = 0;
    }

    goto LABEL_16;
  }

  v13 = 1;
LABEL_17:

  return v13;
}

- (unint64_t)hash
{
  value = [(LNIntentEnablement *)self value];
  disabledReason = [(LNIntentEnablement *)self disabledReason];
  v5 = [disabledReason hash];

  return v5 ^ value;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  value = [(LNIntentEnablement *)self value];
  disabledReason = [(LNIntentEnablement *)self disabledReason];
  v8 = [v3 stringWithFormat:@"<%@: %p, value: %ld, disabledReason: %@>", v5, self, value, disabledReason];

  return v8;
}

- (LNIntentEnablement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"value"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disabledReason"];

  v7 = [(LNIntentEnablement *)self initWithValue:v5 disabledReason:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[LNIntentEnablement value](self forKey:{"value"), @"value"}];
  disabledReason = [(LNIntentEnablement *)self disabledReason];
  [coderCopy encodeObject:disabledReason forKey:@"disabledReason"];
}

- (LNIntentEnablement)initWithValue:(int64_t)value disabledReason:(id)reason
{
  reasonCopy = reason;
  v12.receiver = self;
  v12.super_class = LNIntentEnablement;
  v8 = [(LNIntentEnablement *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_value = value;
    objc_storeStrong(&v8->_disabledReason, reason);
    v10 = v9;
  }

  return v9;
}

+ (id)enabled
{
  v2 = [[LNIntentEnablement alloc] initWithValue:1 disabledReason:0];

  return v2;
}

+ (id)disabledWithReason:(id)reason
{
  reasonCopy = reason;
  v4 = [[LNIntentEnablement alloc] initWithValue:0 disabledReason:reasonCopy];

  return v4;
}

@end