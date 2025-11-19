@interface PKFlightShareInvitation
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFlightShareInvitation:(id)a3;
- (PKFlightShareInvitation)initWithCoder:(id)a3;
- (PKFlightShareInvitation)initWithFlight:(id)a3 passUniqueIdentifier:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFlightShareInvitation

- (PKFlightShareInvitation)initWithFlight:(id)a3 passUniqueIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKFlightShareInvitation;
  v9 = [(PKFlightShareInvitation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_flight, a3);
    objc_storeStrong(&v10->_passUniqueIdentifier, a4);
  }

  return v10;
}

- (PKFlightShareInvitation)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKFlightShareInvitation;
  v5 = [(PKFlightShareInvitation *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flight"];
    flight = v5->_flight;
    v5->_flight = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeholderImageData"];
    placeholderImageData = v5->_placeholderImageData;
    v5->_placeholderImageData = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  flight = self->_flight;
  v5 = a3;
  [v5 encodeObject:flight forKey:@"flight"];
  [v5 encodeObject:self->_passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  [v5 encodeObject:self->_placeholderImageData forKey:@"placeholderImageData"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_flight)
  {
    [v3 addObject:?];
  }

  if (self->_passUniqueIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_placeholderImageData)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKFlightShareInvitation *)self isEqualToFlightShareInvitation:v5];
  }

  return v6;
}

- (BOOL)isEqualToFlightShareInvitation:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_17;
  }

  flight = self->_flight;
  v6 = v4[2];
  if (flight)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (flight != v6)
    {
      goto LABEL_17;
    }
  }

  else if (![(PKFlight *)flight isEqual:?])
  {
    goto LABEL_17;
  }

  passUniqueIdentifier = self->_passUniqueIdentifier;
  v9 = v4[1];
  if (!passUniqueIdentifier || !v9)
  {
    if (passUniqueIdentifier == v9)
    {
      goto LABEL_13;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  if (([(NSString *)passUniqueIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  placeholderImageData = self->_placeholderImageData;
  v11 = v4[3];
  if (placeholderImageData && v11)
  {
    v12 = [(NSData *)placeholderImageData isEqual:?];
  }

  else
  {
    v12 = placeholderImageData == v11;
  }

LABEL_18:

  return v12;
}

@end