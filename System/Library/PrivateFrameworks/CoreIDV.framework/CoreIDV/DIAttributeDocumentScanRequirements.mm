@interface DIAttributeDocumentScanRequirements
- (DIAttributeDocumentScanRequirements)initWithCoder:(id)coder;
- (DIAttributeDocumentScanRequirements)initWithDocumentScanRequirements:(id)requirements;
- (NSString)countryCode;
- (NSString)type;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setCountryCode:(id)code;
- (void)setType:(id)type;
@end

@implementation DIAttributeDocumentScanRequirements

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = DIAttributeDocumentScanRequirements;
  coderCopy = coder;
  [(DIAttributeImageCaptureRequirements *)&v5 encodeWithCoder:coderCopy];
  os_unfair_lock_lock(&self->super._lock);
  [coderCopy encodeObject:self->_countryCode forKey:{@"countryCode", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_type forKey:@"type"];

  os_unfair_lock_unlock(&self->super._lock);
}

- (DIAttributeDocumentScanRequirements)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DIAttributeDocumentScanRequirements;
  v5 = [(DIAttributeImageCaptureRequirements *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v8;
  }

  return v5;
}

- (DIAttributeDocumentScanRequirements)initWithDocumentScanRequirements:(id)requirements
{
  requirementsCopy = requirements;
  v11.receiver = self;
  v11.super_class = DIAttributeDocumentScanRequirements;
  v5 = [(DIAttributeImageCaptureRequirements *)&v11 initWithImageCaptureRequirements:requirementsCopy];
  if (v5)
  {
    countryCode = [requirementsCopy countryCode];
    countryCode = v5->_countryCode;
    v5->_countryCode = countryCode;

    type = [requirementsCopy type];
    type = v5->_type;
    v5->_type = type;
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DIAttributeDocumentScanRequirements allocWithZone:zone];

  return [(DIAttributeDocumentScanRequirements *)v4 initWithDocumentScanRequirements:self];
}

- (NSString)countryCode
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = self->_countryCode;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setCountryCode:(id)code
{
  codeCopy = code;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_countryCode != codeCopy)
  {
    v4 = [(NSString *)codeCopy copyWithZone:0];
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

- (void)setType:(id)type
{
  typeCopy = type;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_type != typeCopy)
  {
    v4 = [(NSString *)typeCopy copyWithZone:0];
    type = self->_type;
    self->_type = v4;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

@end