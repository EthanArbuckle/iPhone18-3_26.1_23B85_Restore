@interface DNDSUserAvailabilityPublishResult
- (BOOL)isEqual:(id)equal;
- (DNDSUserAvailabilityPublishResult)initWithIdentifier:(id)identifier availability:(id)availability;
- (unint64_t)hash;
@end

@implementation DNDSUserAvailabilityPublishResult

- (DNDSUserAvailabilityPublishResult)initWithIdentifier:(id)identifier availability:(id)availability
{
  identifierCopy = identifier;
  availabilityCopy = availability;
  v12.receiver = self;
  v12.super_class = DNDSUserAvailabilityPublishResult;
  v9 = [(DNDSUserAvailabilityPublishResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_availability, availability);
  }

  return v10;
}

- (unint64_t)hash
{
  identifier = [(DNDSUserAvailabilityPublishResult *)self identifier];
  v4 = [identifier hash];
  availability = [(DNDSUserAvailabilityPublishResult *)self availability];
  v6 = [availability hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      identifier = [(DNDSUserAvailabilityPublishResult *)self identifier];
      identifier2 = [(DNDSUserAvailabilityPublishResult *)v6 identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(DNDSUserAvailabilityPublishResult *)self identifier];
        if (!identifier3)
        {
          v13 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v3 = identifier3;
        identifier4 = [(DNDSUserAvailabilityPublishResult *)v6 identifier];
        if (!identifier4)
        {
          v13 = 0;
LABEL_23:

          goto LABEL_24;
        }

        identifier5 = [(DNDSUserAvailabilityPublishResult *)self identifier];
        identifier6 = [(DNDSUserAvailabilityPublishResult *)v6 identifier];
        if (![identifier5 isEqual:identifier6])
        {
          v13 = 0;
LABEL_22:

          goto LABEL_23;
        }

        v24 = identifier6;
        v25 = identifier5;
        v26 = identifier4;
      }

      availability = [(DNDSUserAvailabilityPublishResult *)self availability];
      availability2 = [(DNDSUserAvailabilityPublishResult *)v6 availability];
      v16 = availability2;
      if (availability == availability2)
      {

        v13 = 1;
      }

      else
      {
        availability3 = [(DNDSUserAvailabilityPublishResult *)self availability];
        if (availability3)
        {
          v18 = availability3;
          availability4 = [(DNDSUserAvailabilityPublishResult *)v6 availability];
          if (availability4)
          {
            availability5 = [(DNDSUserAvailabilityPublishResult *)self availability];
            [(DNDSUserAvailabilityPublishResult *)v6 availability];
            v20 = v23 = v3;
            v13 = [availability5 isEqual:v20];

            v3 = v23;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {

          v13 = 0;
        }
      }

      identifier5 = v25;
      identifier4 = v26;
      identifier6 = v24;
      if (identifier == identifier2)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    v13 = 0;
  }

LABEL_25:

  return v13;
}

@end