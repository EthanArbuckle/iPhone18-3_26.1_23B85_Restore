@interface DIAttributeFooter
- (DIAttributeFooter)init;
- (DIAttributeFooter)initWithCoder:(id)coder;
- (id)defaultValue;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setDefaultValue:(id)value;
@end

@implementation DIAttributeFooter

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = DIAttributeFooter;
  [(DIAttributeLabel *)&v3 encodeWithCoder:coder];
}

- (DIAttributeFooter)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = DIAttributeFooter;
  return [(DIAttributeLabel *)&v4 initWithCoder:coder];
}

- (DIAttributeFooter)init
{
  v5.receiver = self;
  v5.super_class = DIAttributeFooter;
  v2 = [(DIAttributeLabel *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DIAttribute *)v2 setAttributeType:7];
  }

  return v3;
}

- (void)setDefaultValue:(id)value
{
  v3.receiver = self;
  v3.super_class = DIAttributeFooter;
  [(DIAttributeLabel *)&v3 setDefaultValue:value];
}

- (id)defaultValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeFooter;
  defaultValue = [(DIAttributeLabel *)&v4 defaultValue];

  return defaultValue;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  defaultValue = [(DIAttributeFooter *)self defaultValue];
  [v3 appendFormat:@"defaultValue: '%@'; ", defaultValue];

  [v3 appendFormat:@">"];

  return v3;
}

@end