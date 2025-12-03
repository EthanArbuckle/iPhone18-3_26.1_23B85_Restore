@interface _DASActivityRateLimitConfiguration
+ (id)rateLimitConfigurationWithName:(id)name andLimits:(id)limits;
- (BOOL)isEqual:(id)equal;
- (_DASActivityRateLimitConfiguration)initWithCoder:(id)coder;
- (_DASActivityRateLimitConfiguration)initWithName:(id)name andLimits:(id)limits;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DASActivityRateLimitConfiguration

- (_DASActivityRateLimitConfiguration)initWithName:(id)name andLimits:(id)limits
{
  nameCopy = name;
  limitsCopy = limits;
  v12.receiver = self;
  v12.super_class = _DASActivityRateLimitConfiguration;
  v9 = [(_DASActivityRateLimitConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_rateLimits, limits);
  }

  return v10;
}

+ (id)rateLimitConfigurationWithName:(id)name andLimits:(id)limits
{
  limitsCopy = limits;
  nameCopy = name;
  v7 = [objc_alloc(objc_opt_class()) initWithName:nameCopy andLimits:limitsCopy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      name = self->_name;
      name = [(_DASActivityRateLimitConfiguration *)v5 name];
      if ([(NSString *)name isEqualToString:name])
      {
        rateLimits = self->_rateLimits;
        rateLimits = [(_DASActivityRateLimitConfiguration *)v5 rateLimits];
        v10 = [(NSArray *)rateLimits isEqualToArray:rateLimits];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  name = [(_DASActivityRateLimitConfiguration *)self name];
  rateLimits = [(_DASActivityRateLimitConfiguration *)self rateLimits];
  v7 = [v4 initWithName:name andLimits:rateLimits];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_rateLimits forKey:@"rateLimits"];
}

- (_DASActivityRateLimitConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = _DASActivityRateLimitConfiguration;
  v5 = [(_DASActivityRateLimitConfiguration *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"rateLimits"];
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