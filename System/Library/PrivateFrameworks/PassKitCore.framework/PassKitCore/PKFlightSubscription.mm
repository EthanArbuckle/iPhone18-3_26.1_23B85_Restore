@interface PKFlightSubscription
- (BOOL)isEqual:(id)a3;
- (PKFlightSubscription)initWithCoder:(id)a3;
- (PKFlightSubscription)initWithFlightIdentifier:(id)a3 channelIdentifier:(id)a4 isActive:(BOOL)a5;
- (id)asDictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFlightSubscription

- (PKFlightSubscription)initWithFlightIdentifier:(id)a3 channelIdentifier:(id)a4 isActive:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PKFlightSubscription;
  v11 = [(PKFlightSubscription *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_flightIdentifier, a3);
    objc_storeStrong(&v12->_channelIdentifier, a4);
    v12->_isActive = a5;
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

- (PKFlightSubscription)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKFlightSubscription;
  v5 = [(PKFlightSubscription *)&v11 init];
  if (v5)
  {
    v5->_isActive = [v4 decodeBoolForKey:@"isActive"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flightIdentifier"];
    flightIdentifier = v5->_flightIdentifier;
    v5->_flightIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"channelIdentifier"];
    channelIdentifier = v5->_channelIdentifier;
    v5->_channelIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  isActive = self->_isActive;
  v7 = a3;
  v6 = [v4 numberWithBool:isActive];
  [v7 encodeObject:v6 forKey:@"isActive"];

  [v7 encodeObject:self->_flightIdentifier forKey:@"flightIdentifier"];
  [v7 encodeObject:self->_channelIdentifier forKey:@"channelIdentifier"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    if (v4)
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