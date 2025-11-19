@interface PKSharingDestination
- (BOOL)isEqual:(id)a3;
- (PKSharingDestination)initWithCoder:(id)a3;
- (PKSharingDestination)initWithDestinationIdentifier:(id)a3;
- (id)_name;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)idsDestination;
- (unint64_t)hash;
@end

@implementation PKSharingDestination

- (PKSharingDestination)initWithDestinationIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKSharingDestination;
  v6 = [(PKSharingDestination *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_destinationIdentifier, a3);
  }

  return v7;
}

- (id)idsDestination
{
  destinationIdentifier = self->_destinationIdentifier;
  v3 = [(PKSharingDestination *)self _name];
  v4 = [PKIDSDestination destinationWithDeviceIdentifier:destinationIdentifier name:v3];

  return v4;
}

- (PKSharingDestination)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKSharingDestination;
  v5 = [(PKSharingDestination *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destinationIdentifier"];
    destinationIdentifier = v5->_destinationIdentifier;
    v5->_destinationIdentifier = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_destinationIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_destinationIdentifier];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 1);
    v9 = self->_destinationIdentifier;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = 0;
      if (v9 && v10)
      {
        v12 = [(NSString *)v9 isEqualToString:v10];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"destinationIdentifier: '%@'; ", self->_destinationIdentifier];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)_name
{
  destinationIdentifier = self->_destinationIdentifier;
  if (destinationIdentifier)
  {
    v4 = [destinationIdentifier hasPrefix:@"mailto:"];
    v5 = self->_destinationIdentifier;
    if (v4)
    {
      v6 = @"mailto:";
LABEL_6:
      v7 = [(NSString *)v5 rangeOfString:v6];
      destinationIdentifier = [(NSString *)self->_destinationIdentifier stringByReplacingOccurrencesOfString:v6 withString:&stru_1F227FD28 options:0 range:v7, v8];
      goto LABEL_8;
    }

    if ([(NSString *)v5 hasPrefix:@"tel:"])
    {
      v5 = self->_destinationIdentifier;
      v6 = @"tel:";
      goto LABEL_6;
    }

    destinationIdentifier = 0;
  }

LABEL_8:

  return destinationIdentifier;
}

@end