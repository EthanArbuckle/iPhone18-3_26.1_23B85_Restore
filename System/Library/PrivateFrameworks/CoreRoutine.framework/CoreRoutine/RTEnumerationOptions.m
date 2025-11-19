@interface RTEnumerationOptions
+ (BOOL)supportsSecureCoding;
- (BOOL)isEqual:(id)a3;
- (Class)enumeratedType;
- (RTEnumerationOptions)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)batchSize;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RTEnumerationOptions

- (Class)enumeratedType
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (unint64_t)batchSize
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)description
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (unint64_t)hash
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (BOOL)supportsSecureCoding
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 1;
}

- (void)encodeWithCoder:(id)a3
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (RTEnumerationOptions)initWithCoder:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return 0;
}

@end