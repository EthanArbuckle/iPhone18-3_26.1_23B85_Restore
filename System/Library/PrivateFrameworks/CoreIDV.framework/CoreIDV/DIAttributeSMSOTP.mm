@interface DIAttributeSMSOTP
- (DIAttributeSMSOTP)init;
- (DIAttributeSMSOTP)initWithCoder:(id)coder;
- (id)defaultValue;
- (id)description;
- (id)getCurrentValue;
- (id)submissionString;
- (unint64_t)validityInSeconds;
- (void)encodeWithCoder:(id)coder;
- (void)setCurrentValue:(id)value;
- (void)setDefaultValue:(id)value;
- (void)setValidityInSeconds:(unint64_t)seconds;
@end

@implementation DIAttributeSMSOTP

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = DIAttributeSMSOTP;
  coderCopy = coder;
  [(DIAttributeText *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt:LODWORD(self->_validityInSeconds) forKey:{@"validityInSeconds", v5.receiver, v5.super_class}];
}

- (DIAttributeSMSOTP)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = DIAttributeSMSOTP;
  v5 = [(DIAttributeText *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_validityInSeconds = [coderCopy decodeIntegerForKey:@"validityInSeconds"];
  }

  return v5;
}

- (DIAttributeSMSOTP)init
{
  v5.receiver = self;
  v5.super_class = DIAttributeSMSOTP;
  v2 = [(DIAttributeText *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DIAttribute *)v2 setAttributeType:8];
  }

  return v3;
}

- (id)submissionString
{
  v6.receiver = self;
  v6.super_class = DIAttributeSMSOTP;
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
  v3.super_class = DIAttributeSMSOTP;
  [(DIAttributeText *)&v3 setCurrentValue:value];
}

- (void)setDefaultValue:(id)value
{
  v3.receiver = self;
  v3.super_class = DIAttributeSMSOTP;
  [(DIAttributeText *)&v3 setDefaultValue:value];
}

- (void)setValidityInSeconds:(unint64_t)seconds
{
  os_unfair_lock_lock(&self->super.super._lock);
  self->_validityInSeconds = seconds;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (id)getCurrentValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeSMSOTP;
  getCurrentValue = [(DIAttributeText *)&v4 getCurrentValue];

  return getCurrentValue;
}

- (id)defaultValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeSMSOTP;
  defaultValue = [(DIAttributeText *)&v4 defaultValue];

  return defaultValue;
}

- (unint64_t)validityInSeconds
{
  os_unfair_lock_lock(&self->super.super._lock);
  validityInSeconds = self->_validityInSeconds;
  os_unfair_lock_unlock(&self->super.super._lock);
  return validityInSeconds;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v6.receiver = self;
  v6.super_class = DIAttributeSMSOTP;
  v4 = [(DIAttributeText *)&v6 description];
  [v3 appendFormat:@"%@", v4];

  os_unfair_lock_lock(&self->super.super._lock);
  [v3 appendFormat:@"validityInSeconds: '%lu'; ", self->_validityInSeconds];
  os_unfair_lock_unlock(&self->super.super._lock);
  [v3 appendFormat:@">"];

  return v3;
}

@end