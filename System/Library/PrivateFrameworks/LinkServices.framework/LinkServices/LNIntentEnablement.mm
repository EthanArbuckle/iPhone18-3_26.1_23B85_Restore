@interface LNIntentEnablement
+ (id)disabledWithReason:(id)a3;
+ (id)enabled;
- (BOOL)isEqual:(id)a3;
- (LNIntentEnablement)initWithCoder:(id)a3;
- (LNIntentEnablement)initWithValue:(int64_t)a3 disabledReason:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNIntentEnablement

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(LNIntentEnablement *)self value];
        if (v7 != [(LNIntentEnablement *)v6 value])
        {
          v13 = 0;
LABEL_16:

          goto LABEL_17;
        }

        v8 = [(LNIntentEnablement *)self disabledReason];
        v9 = [(LNIntentEnablement *)v6 disabledReason];
        v10 = v8;
        v11 = v9;
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
  v3 = [(LNIntentEnablement *)self value];
  v4 = [(LNIntentEnablement *)self disabledReason];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNIntentEnablement *)self value];
  v7 = [(LNIntentEnablement *)self disabledReason];
  v8 = [v3 stringWithFormat:@"<%@: %p, value: %ld, disabledReason: %@>", v5, self, v6, v7];

  return v8;
}

- (LNIntentEnablement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"value"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"disabledReason"];

  v7 = [(LNIntentEnablement *)self initWithValue:v5 disabledReason:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[LNIntentEnablement value](self forKey:{"value"), @"value"}];
  v5 = [(LNIntentEnablement *)self disabledReason];
  [v4 encodeObject:v5 forKey:@"disabledReason"];
}

- (LNIntentEnablement)initWithValue:(int64_t)a3 disabledReason:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = LNIntentEnablement;
  v8 = [(LNIntentEnablement *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_value = a3;
    objc_storeStrong(&v8->_disabledReason, a4);
    v10 = v9;
  }

  return v9;
}

+ (id)enabled
{
  v2 = [[LNIntentEnablement alloc] initWithValue:1 disabledReason:0];

  return v2;
}

+ (id)disabledWithReason:(id)a3
{
  v3 = a3;
  v4 = [[LNIntentEnablement alloc] initWithValue:0 disabledReason:v3];

  return v4;
}

@end