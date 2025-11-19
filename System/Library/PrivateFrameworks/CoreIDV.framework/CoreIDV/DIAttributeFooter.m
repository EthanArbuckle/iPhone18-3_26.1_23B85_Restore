@interface DIAttributeFooter
- (DIAttributeFooter)init;
- (DIAttributeFooter)initWithCoder:(id)a3;
- (id)defaultValue;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setDefaultValue:(id)a3;
@end

@implementation DIAttributeFooter

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = DIAttributeFooter;
  [(DIAttributeLabel *)&v3 encodeWithCoder:a3];
}

- (DIAttributeFooter)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = DIAttributeFooter;
  return [(DIAttributeLabel *)&v4 initWithCoder:a3];
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

- (void)setDefaultValue:(id)a3
{
  v3.receiver = self;
  v3.super_class = DIAttributeFooter;
  [(DIAttributeLabel *)&v3 setDefaultValue:a3];
}

- (id)defaultValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeFooter;
  v2 = [(DIAttributeLabel *)&v4 defaultValue];

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(DIAttributeFooter *)self defaultValue];
  [v3 appendFormat:@"defaultValue: '%@'; ", v4];

  [v3 appendFormat:@">"];

  return v3;
}

@end