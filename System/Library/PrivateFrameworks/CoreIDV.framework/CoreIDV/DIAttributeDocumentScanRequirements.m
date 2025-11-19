@interface DIAttributeDocumentScanRequirements
- (DIAttributeDocumentScanRequirements)initWithCoder:(id)a3;
- (DIAttributeDocumentScanRequirements)initWithDocumentScanRequirements:(id)a3;
- (NSString)countryCode;
- (NSString)type;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setCountryCode:(id)a3;
- (void)setType:(id)a3;
@end

@implementation DIAttributeDocumentScanRequirements

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = DIAttributeDocumentScanRequirements;
  v4 = a3;
  [(DIAttributeImageCaptureRequirements *)&v5 encodeWithCoder:v4];
  os_unfair_lock_lock(&self->super._lock);
  [v4 encodeObject:self->_countryCode forKey:{@"countryCode", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_type forKey:@"type"];

  os_unfair_lock_unlock(&self->super._lock);
}

- (DIAttributeDocumentScanRequirements)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DIAttributeDocumentScanRequirements;
  v5 = [(DIAttributeImageCaptureRequirements *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v8;
  }

  return v5;
}

- (DIAttributeDocumentScanRequirements)initWithDocumentScanRequirements:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DIAttributeDocumentScanRequirements;
  v5 = [(DIAttributeImageCaptureRequirements *)&v11 initWithImageCaptureRequirements:v4];
  if (v5)
  {
    v6 = [v4 countryCode];
    countryCode = v5->_countryCode;
    v5->_countryCode = v6;

    v8 = [v4 type];
    type = v5->_type;
    v5->_type = v8;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v6.receiver = self;
  v6.super_class = DIAttributeDocumentScanRequirements;
  v4 = [(DIAttributeImageCaptureRequirements *)&v6 description];
  [v3 appendFormat:@"%@", v4];

  os_unfair_lock_lock(&self->super._lock);
  [v3 appendFormat:@"countryCode: '%@'; ", self->_countryCode];
  [v3 appendFormat:@"type: '%@'; ", self->_type];
  os_unfair_lock_unlock(&self->super._lock);
  [v3 appendFormat:@">"];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DIAttributeDocumentScanRequirements allocWithZone:a3];

  return [(DIAttributeDocumentScanRequirements *)v4 initWithDocumentScanRequirements:self];
}

- (NSString)countryCode
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = self->_countryCode;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setCountryCode:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_countryCode != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    countryCode = self->_countryCode;
    self->_countryCode = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSString)type
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = self->_type;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setType:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_type != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    type = self->_type;
    self->_type = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

@end