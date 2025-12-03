@interface RTEnumerationOptions
+ (BOOL)supportsSecureCoding;
- (BOOL)isEqual:(id)equal;
- (Class)enumeratedType;
- (RTEnumerationOptions)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)batchSize;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
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

- (void)encodeWithCoder:(id)coder
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (RTEnumerationOptions)initWithCoder:(id)coder
{
  objc_opt_class();
  NSRequestConcreteImplementation();

  return 0;
}

@end