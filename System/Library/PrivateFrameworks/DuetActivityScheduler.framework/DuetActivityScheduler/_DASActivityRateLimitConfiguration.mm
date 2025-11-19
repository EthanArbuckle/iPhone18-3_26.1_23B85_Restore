@interface _DASActivityRateLimitConfiguration
+ (id)rateLimitConfigurationWithName:(id)a3 andLimits:(id)a4;
- (BOOL)isEqual:(id)a3;
- (_DASActivityRateLimitConfiguration)initWithCoder:(id)a3;
- (_DASActivityRateLimitConfiguration)initWithName:(id)a3 andLimits:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DASActivityRateLimitConfiguration

- (_DASActivityRateLimitConfiguration)initWithName:(id)a3 andLimits:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _DASActivityRateLimitConfiguration;
  v9 = [(_DASActivityRateLimitConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_rateLimits, a4);
  }

  return v10;
}

+ (id)rateLimitConfigurationWithName:(id)a3 andLimits:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithName:v6 andLimits:v5];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      name = self->_name;
      v7 = [(_DASActivityRateLimitConfiguration *)v5 name];
      if ([(NSString *)name isEqualToString:v7])
      {
        rateLimits = self->_rateLimits;
        v9 = [(_DASActivityRateLimitConfiguration *)v5 rateLimits];
        v10 = [(NSArray *)rateLimits isEqualToArray:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(_DASActivityRateLimitConfiguration *)self name];
  v6 = [(_DASActivityRateLimitConfiguration *)self rateLimits];
  v7 = [v4 initWithName:v5 andLimits:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_rateLimits forKey:@"rateLimits"];
}

- (_DASActivityRateLimitConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _DASActivityRateLimitConfiguration;
  v5 = [(_DASActivityRateLimitConfiguration *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"rateLimits"];
    v11 = v10;
    v12 = 0;
    if (v6 && v10)
    {
      objc_storeStrong(&v5->_name, v6);
      objc_storeStrong(&v5->_rateLimits, v11);
      v12 = v5;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end