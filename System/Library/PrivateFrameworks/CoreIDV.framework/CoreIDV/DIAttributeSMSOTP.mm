@interface DIAttributeSMSOTP
- (DIAttributeSMSOTP)init;
- (DIAttributeSMSOTP)initWithCoder:(id)a3;
- (id)defaultValue;
- (id)description;
- (id)getCurrentValue;
- (id)submissionString;
- (unint64_t)validityInSeconds;
- (void)encodeWithCoder:(id)a3;
- (void)setCurrentValue:(id)a3;
- (void)setDefaultValue:(id)a3;
- (void)setValidityInSeconds:(unint64_t)a3;
@end

@implementation DIAttributeSMSOTP

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = DIAttributeSMSOTP;
  v4 = a3;
  [(DIAttributeText *)&v5 encodeWithCoder:v4];
  [v4 encodeInt:LODWORD(self->_validityInSeconds) forKey:{@"validityInSeconds", v5.receiver, v5.super_class}];
}

- (DIAttributeSMSOTP)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DIAttributeSMSOTP;
  v5 = [(DIAttributeText *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_validityInSeconds = [v4 decodeIntegerForKey:@"validityInSeconds"];
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
  v3.super_class = DIAttributeSMSOTP;
  [(DIAttributeText *)&v3 setCurrentValue:a3];
}

- (void)setDefaultValue:(id)a3
{
  v3.receiver = self;
  v3.super_class = DIAttributeSMSOTP;
  [(DIAttributeText *)&v3 setDefaultValue:a3];
}

- (void)setValidityInSeconds:(unint64_t)a3
{
  os_unfair_lock_lock(&self->super.super._lock);
  self->_validityInSeconds = a3;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (id)getCurrentValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeSMSOTP;
  v2 = [(DIAttributeText *)&v4 getCurrentValue];

  return v2;
}

- (id)defaultValue
{
  v4.receiver = self;
  v4.super_class = DIAttributeSMSOTP;
  v2 = [(DIAttributeText *)&v4 defaultValue];

  return v2;
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