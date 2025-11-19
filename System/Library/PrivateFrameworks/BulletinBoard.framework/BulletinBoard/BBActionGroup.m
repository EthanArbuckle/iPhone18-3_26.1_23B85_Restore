@interface BBActionGroup
+ (id)actionGroupWithActions:(id)a3;
- (BBActionGroup)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)awakeAfterUsingCoder:(id)a3;
- (id)replacementObjectForCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BBActionGroup

+ (id)actionGroupWithActions:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setActions:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      v10.receiver = self;
      v10.super_class = BBActionGroup;
      if ([(BBAction *)&v10 isEqual:v5])
      {
        v6 = [(BBActionGroup *)self actions];
        v7 = [(BBActionGroup *)v5 actions];
        v8 = BSEqualObjects();
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = BBActionGroup;
  v3 = [(BBAction *)&v7 hash];
  v4 = [(BBActionGroup *)self actions];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BBActionGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BBActionGroup;
  v5 = [(BBAction *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = BBAllowedClasses();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"actions"];
    [(BBActionGroup *)v5 setActions:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BBActionGroup;
  v4 = a3;
  [(BBAction *)&v6 encodeWithCoder:v4];
  v5 = [(BBActionGroup *)self actions:v6.receiver];
  [v4 encodeObject:v5 forKey:@"actions"];
}

- (id)replacementObjectForCoder:(id)a3
{
  v4 = [self bb_objectCache];
  v5 = [v4 cacheObject:self];

  return v5;
}

- (id)awakeAfterUsingCoder:(id)a3
{
  v4 = [self bb_objectCache];
  v5 = [v4 cacheObject:self];

  return v5;
}

@end