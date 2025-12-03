@interface PKTapToRadarRequest
- (PKTapToRadarRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTapToRadarRequest

- (PKTapToRadarRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKTapToRadarRequest;
  v5 = [(PKTapToRadarRequest *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relatedRadar"];
    relatedRadar = v5->_relatedRadar;
    v5->_relatedRadar = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alertHeader"];
    alertHeader = v5->_alertHeader;
    v5->_alertHeader = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alertMessage"];
    alertMessage = v5->_alertMessage;
    v5->_alertMessage = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  reason = self->_reason;
  coderCopy = coder;
  [coderCopy encodeObject:reason forKey:@"reason"];
  [coderCopy encodeObject:self->_relatedRadar forKey:@"relatedRadar"];
  [coderCopy encodeObject:self->_alertHeader forKey:@"alertHeader"];
  [coderCopy encodeObject:self->_alertMessage forKey:@"alertMessage"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"reason: '%@'; ", self->_reason];
  [v3 appendFormat:@"relatedRadar: '%@'; ", self->_relatedRadar];
  [v3 appendFormat:@">"];

  return v3;
}

@end