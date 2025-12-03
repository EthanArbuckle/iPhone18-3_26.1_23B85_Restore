@interface PKPhysicalCardOrder
- (PKPhysicalCardOrder)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPhysicalCardOrder

- (PKPhysicalCardOrder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPhysicalCardOrder;
  v5 = [(PKPhysicalCardOrder *)&v11 init];
  if (v5)
  {
    v5->_reason = [coderCopy decodeIntegerForKey:@"reason"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    nameOnCard = v5->_nameOnCard;
    v5->_nameOnCard = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"artworkIdentifier"];
    artworkIdentifier = v5->_artworkIdentifier;
    v5->_artworkIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  reason = self->_reason;
  coderCopy = coder;
  [coderCopy encodeInteger:reason forKey:@"reason"];
  [coderCopy encodeObject:self->_nameOnCard forKey:@"name"];
  [coderCopy encodeObject:self->_artworkIdentifier forKey:@"artworkIdentifier"];
}

@end