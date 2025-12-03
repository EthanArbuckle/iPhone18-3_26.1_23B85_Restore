@interface PKFlightShareInvitation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFlightShareInvitation:(id)invitation;
- (PKFlightShareInvitation)initWithCoder:(id)coder;
- (PKFlightShareInvitation)initWithFlight:(id)flight passUniqueIdentifier:(id)identifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFlightShareInvitation

- (PKFlightShareInvitation)initWithFlight:(id)flight passUniqueIdentifier:(id)identifier
{
  flightCopy = flight;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = PKFlightShareInvitation;
  v9 = [(PKFlightShareInvitation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_flight, flight);
    objc_storeStrong(&v10->_passUniqueIdentifier, identifier);
  }

  return v10;
}

- (PKFlightShareInvitation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKFlightShareInvitation;
  v5 = [(PKFlightShareInvitation *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flight"];
    flight = v5->_flight;
    v5->_flight = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passUniqueIdentifier"];
    passUniqueIdentifier = v5->_passUniqueIdentifier;
    v5->_passUniqueIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeholderImageData"];
    placeholderImageData = v5->_placeholderImageData;
    v5->_placeholderImageData = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  flight = self->_flight;
  coderCopy = coder;
  [coderCopy encodeObject:flight forKey:@"flight"];
  [coderCopy encodeObject:self->_passUniqueIdentifier forKey:@"passUniqueIdentifier"];
  [coderCopy encodeObject:self->_placeholderImageData forKey:@"placeholderImageData"];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_flight)
  {
    [array addObject:?];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKFlightShareInvitation *)self isEqualToFlightShareInvitation:v5];
  }

  return v6;
}

- (BOOL)isEqualToFlightShareInvitation:(id)invitation
{
  invitationCopy = invitation;
  if (!invitationCopy)
  {
    goto LABEL_17;
  }

  flight = self->_flight;
  v6 = invitationCopy[2];
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
  v9 = invitationCopy[1];
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
  v11 = invitationCopy[3];
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