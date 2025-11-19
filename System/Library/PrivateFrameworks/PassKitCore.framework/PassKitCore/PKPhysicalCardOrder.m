@interface PKPhysicalCardOrder
- (PKPhysicalCardOrder)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPhysicalCardOrder

- (PKPhysicalCardOrder)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPhysicalCardOrder;
  v5 = [(PKPhysicalCardOrder *)&v11 init];
  if (v5)
  {
    v5->_reason = [v4 decodeIntegerForKey:@"reason"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    nameOnCard = v5->_nameOnCard;
    v5->_nameOnCard = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"artworkIdentifier"];
    artworkIdentifier = v5->_artworkIdentifier;
    v5->_artworkIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  reason = self->_reason;
  v5 = a3;
  [v5 encodeInteger:reason forKey:@"reason"];
  [v5 encodeObject:self->_nameOnCard forKey:@"name"];
  [v5 encodeObject:self->_artworkIdentifier forKey:@"artworkIdentifier"];
}

@end