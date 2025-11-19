@interface DIAttributeCustom
- (DIAttributeCustom)init;
- (DIAttributeCustom)initWithCoder:(id)a3;
- (id)defaultValue;
- (id)getCurrentValue;
- (id)submissionString;
- (void)encodeWithCoder:(id)a3;
- (void)setCurrentValue:(id)a3;
- (void)setDefaultValue:(id)a3;
- (void)setIdentifier:(id)a3;
@end

@implementation DIAttributeCustom

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = DIAttributeCustom;
  [(DIAttributeText *)&v3 encodeWithCoder:a3];
}

- (DIAttributeCustom)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = DIAttributeCustom;
  return [(DIAttributeText *)&v4 initWithCoder:a3];
}

- (DIAttributeCustom)init
{
  v5.receiver = self;
  v5.super_class = DIAttributeCustom;
  v2 = [(DIAttributeText *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DIAttribute *)v2 setAttributeType:10];
  }

  return v3;
}

- (id)submissionString
{
  v6.receiver = self;
  v6.super_class = DIAttributeCustom;
  v2 = [(DIAttributeText *)&v6 submissionString];
  v3 = v2;
  if (v2 && ([v2 isEqualToString:&stru_282E746B8] & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (void)setCurrentValue:(id)a3
{
  v3.receiver = self;
  v3.super_class = DIAttributeCustom;
  [(DIAttributeText *)&v3 setCurrentValue:a3];
}

- (void)setDefaultValue:(id)a3
{
  v3.receiver = self;
  v3.super_class = DIAttributeCustom;
  [(DIAttributeText *)&v3 setDefaultValue:a3];
}

- (void)setIdentifier:(id)a3
{
  v3.receiver = self;
  v3.super_class = DIAttributeCustom;
  [(DIAttribute *)&v3 setIdentifier:a3];
}

- (id)getCurrentValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeCustom;
  v2 = [(DIAttributeText *)&v4 getCurrentValue];

  return v2;
}

- (id)defaultValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeCustom;
  v2 = [(DIAttributeText *)&v4 defaultValue];

  return v2;
}

@end