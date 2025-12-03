@interface PKFlightSubscription
- (BOOL)isEqual:(id)equal;
- (PKFlightSubscription)initWithCoder:(id)coder;
- (PKFlightSubscription)initWithFlightIdentifier:(id)identifier channelIdentifier:(id)channelIdentifier isActive:(BOOL)active;
- (id)asDictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFlightSubscription

- (PKFlightSubscription)initWithFlightIdentifier:(id)identifier channelIdentifier:(id)channelIdentifier isActive:(BOOL)active
{
  identifierCopy = identifier;
  channelIdentifierCopy = channelIdentifier;
  v14.receiver = self;
  v14.super_class = PKFlightSubscription;
  v11 = [(PKFlightSubscription *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_flightIdentifier, identifier);
    objc_storeStrong(&v12->_channelIdentifier, channelIdentifier);
    v12->_isActive = active;
  }

  return v12;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_flightIdentifier forKeyedSubscript:@"flightIdentifier"];
  [v3 setObject:self->_channelIdentifier forKeyedSubscript:@"channelIdentifier"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isActive];
  [v3 setObject:v4 forKeyedSubscript:@"isActive"];

  v5 = [v3 copy];

  return v5;
}

- (PKFlightSubscription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKFlightSubscription;
  v5 = [(PKFlightSubscription *)&v11 init];
  if (v5)
  {
    v5->_isActive = [coderCopy decodeBoolForKey:@"isActive"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flightIdentifier"];
    flightIdentifier = v5->_flightIdentifier;
    v5->_flightIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"channelIdentifier"];
    channelIdentifier = v5->_channelIdentifier;
    v5->_channelIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  isActive = self->_isActive;
  coderCopy = coder;
  v6 = [v4 numberWithBool:isActive];
  [coderCopy encodeObject:v6 forKey:@"isActive"];

  [coderCopy encodeObject:self->_flightIdentifier forKey:@"flightIdentifier"];
  [coderCopy encodeObject:self->_channelIdentifier forKey:@"channelIdentifier"];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  if (self->_isActive)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"active: '%@'; ", v4];
  [v3 appendFormat:@"flightIdentifier: '%@'; ", self->_flightIdentifier];
  [v3 appendFormat:@"channelIdentifier: '%@'; ", self->_channelIdentifier];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = v6;
        if (self->_isActive != v6->_isActive)
        {
          LOBYTE(v12) = 0;
LABEL_20:

          goto LABEL_21;
        }

        flightIdentifier = v6->_flightIdentifier;
        v9 = self->_flightIdentifier;
        v10 = flightIdentifier;
        v11 = v10;
        if (v9 == v10)
        {
        }

        else
        {
          LOBYTE(v12) = 0;
          if (!v9 || !v10)
          {
LABEL_19:

            goto LABEL_20;
          }

          v12 = [(NSString *)v9 isEqualToString:v10];

          if (!v12)
          {
            goto LABEL_20;
          }
        }

        channelIdentifier = self->_channelIdentifier;
        v14 = v7->_channelIdentifier;
        v9 = channelIdentifier;
        v15 = v14;
        v11 = v15;
        if (v9 == v15)
        {
          LOBYTE(v12) = 1;
        }

        else
        {
          LOBYTE(v12) = 0;
          if (v9 && v15)
          {
            LOBYTE(v12) = [(NSString *)v9 isEqualToString:v15];
          }
        }

        goto LABEL_19;
      }
    }

    LOBYTE(v12) = 0;
  }

LABEL_21:

  return v12;
}

- (unint64_t)hash
{
  [(NSString *)self->_channelIdentifier hash];
  v3 = SipHash();
  return self->_isActive - v3 + 32 * v3;
}

@end