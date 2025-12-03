@interface DIAttributeCustom
- (DIAttributeCustom)init;
- (DIAttributeCustom)initWithCoder:(id)coder;
- (id)defaultValue;
- (id)getCurrentValue;
- (id)submissionString;
- (void)encodeWithCoder:(id)coder;
- (void)setCurrentValue:(id)value;
- (void)setDefaultValue:(id)value;
- (void)setIdentifier:(id)identifier;
@end

@implementation DIAttributeCustom

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = DIAttributeCustom;
  [(DIAttributeText *)&v3 encodeWithCoder:coder];
}

- (DIAttributeCustom)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = DIAttributeCustom;
  return [(DIAttributeText *)&v4 initWithCoder:coder];
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
  submissionString = [(DIAttributeText *)&v6 submissionString];
  v3 = submissionString;
  if (submissionString && ([submissionString isEqualToString:&stru_282E746B8] & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (void)setCurrentValue:(id)value
{
  v3.receiver = self;
  v3.super_class = DIAttributeCustom;
  [(DIAttributeText *)&v3 setCurrentValue:value];
}

- (void)setDefaultValue:(id)value
{
  v3.receiver = self;
  v3.super_class = DIAttributeCustom;
  [(DIAttributeText *)&v3 setDefaultValue:value];
}

- (void)setIdentifier:(id)identifier
{
  v3.receiver = self;
  v3.super_class = DIAttributeCustom;
  [(DIAttribute *)&v3 setIdentifier:identifier];
}

- (id)getCurrentValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeCustom;
  getCurrentValue = [(DIAttributeText *)&v4 getCurrentValue];

  return getCurrentValue;
}

- (id)defaultValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeCustom;
  defaultValue = [(DIAttributeText *)&v4 defaultValue];

  return defaultValue;
}

@end