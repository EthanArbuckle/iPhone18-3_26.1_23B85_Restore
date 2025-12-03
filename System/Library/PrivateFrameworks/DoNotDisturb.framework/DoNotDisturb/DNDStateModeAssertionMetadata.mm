@interface DNDStateModeAssertionMetadata
- (BOOL)isEqual:(id)equal;
- (DNDStateModeAssertionMetadata)initWithClientIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier lifetimeType:(unint64_t)type activeDateInterval:(id)interval userVisibleEndDate:(id)date;
- (DNDStateModeAssertionMetadata)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDStateModeAssertionMetadata

- (DNDStateModeAssertionMetadata)initWithClientIdentifier:(id)identifier modeIdentifier:(id)modeIdentifier lifetimeType:(unint64_t)type activeDateInterval:(id)interval userVisibleEndDate:(id)date
{
  identifierCopy = identifier;
  modeIdentifierCopy = modeIdentifier;
  intervalCopy = interval;
  dateCopy = date;
  v26.receiver = self;
  v26.super_class = DNDStateModeAssertionMetadata;
  v16 = [(DNDStateModeAssertionMetadata *)&v26 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    clientIdentifier = v16->_clientIdentifier;
    v16->_clientIdentifier = v17;

    v19 = [modeIdentifierCopy copy];
    modeIdentifier = v16->_modeIdentifier;
    v16->_modeIdentifier = v19;

    v16->_lifetimeType = type;
    v21 = [intervalCopy copy];
    activeDateInterval = v16->_activeDateInterval;
    v16->_activeDateInterval = v21;

    v23 = [dateCopy copy];
    userVisibleEndDate = v16->_userVisibleEndDate;
    v16->_userVisibleEndDate = v23;
  }

  return v16;
}

- (unint64_t)hash
{
  clientIdentifier = [(DNDStateModeAssertionMetadata *)self clientIdentifier];
  v4 = [clientIdentifier hash];
  modeIdentifier = [(DNDStateModeAssertionMetadata *)self modeIdentifier];
  v6 = [modeIdentifier hash] ^ v4;
  lifetimeType = [(DNDStateModeAssertionMetadata *)self lifetimeType];
  activeDateInterval = [(DNDStateModeAssertionMetadata *)self activeDateInterval];
  v9 = v6 ^ lifetimeType ^ [activeDateInterval hash];
  userVisibleEndDate = [(DNDStateModeAssertionMetadata *)self userVisibleEndDate];
  v11 = [userVisibleEndDate hash];

  return v9 ^ v11;
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
      clientIdentifier = [(DNDStateModeAssertionMetadata *)self clientIdentifier];
      clientIdentifier2 = [(DNDStateModeAssertionMetadata *)v6 clientIdentifier];
      if (clientIdentifier != clientIdentifier2)
      {
        clientIdentifier3 = [(DNDStateModeAssertionMetadata *)self clientIdentifier];
        if (!clientIdentifier3)
        {
          v13 = 0;
          goto LABEL_50;
        }

        v3 = clientIdentifier3;
        clientIdentifier4 = [(DNDStateModeAssertionMetadata *)v6 clientIdentifier];
        if (!clientIdentifier4)
        {
          v13 = 0;
LABEL_49:

          goto LABEL_50;
        }

        clientIdentifier5 = [(DNDStateModeAssertionMetadata *)self clientIdentifier];
        clientIdentifier6 = [(DNDStateModeAssertionMetadata *)v6 clientIdentifier];
        if (![clientIdentifier5 isEqual:clientIdentifier6])
        {
          v13 = 0;
LABEL_48:

          goto LABEL_49;
        }

        v48 = clientIdentifier6;
        v49 = clientIdentifier5;
        v50 = clientIdentifier4;
      }

      modeIdentifier = [(DNDStateModeAssertionMetadata *)self modeIdentifier];
      modeIdentifier2 = [(DNDStateModeAssertionMetadata *)v6 modeIdentifier];
      if (modeIdentifier != modeIdentifier2)
      {
        modeIdentifier3 = [(DNDStateModeAssertionMetadata *)self modeIdentifier];
        if (!modeIdentifier3)
        {
          goto LABEL_37;
        }

        v17 = modeIdentifier3;
        modeIdentifier4 = [(DNDStateModeAssertionMetadata *)v6 modeIdentifier];
        if (!modeIdentifier4)
        {

          goto LABEL_37;
        }

        v46 = v17;
        v47 = modeIdentifier4;
        modeIdentifier5 = [(DNDStateModeAssertionMetadata *)self modeIdentifier];
        modeIdentifier6 = [(DNDStateModeAssertionMetadata *)v6 modeIdentifier];
        if (([modeIdentifier5 isEqual:modeIdentifier6] & 1) == 0)
        {

LABEL_36:
          goto LABEL_37;
        }

        v42 = modeIdentifier6;
        v43 = modeIdentifier5;
      }

      lifetimeType = [(DNDStateModeAssertionMetadata *)self lifetimeType];
      if (lifetimeType != [(DNDStateModeAssertionMetadata *)v6 lifetimeType])
      {
        v13 = 0;
LABEL_44:
        if (modeIdentifier != modeIdentifier2)
        {
        }

LABEL_47:
        clientIdentifier5 = v49;
        clientIdentifier4 = v50;
        clientIdentifier6 = v48;
        if (clientIdentifier != clientIdentifier2)
        {
          goto LABEL_48;
        }

LABEL_50:

        goto LABEL_51;
      }

      activeDateInterval = [(DNDStateModeAssertionMetadata *)self activeDateInterval];
      [(DNDStateModeAssertionMetadata *)v6 activeDateInterval];
      v45 = v44 = activeDateInterval;
      if (activeDateInterval == v45)
      {
LABEL_27:
        userVisibleEndDate = [(DNDStateModeAssertionMetadata *)self userVisibleEndDate];
        userVisibleEndDate2 = [(DNDStateModeAssertionMetadata *)v6 userVisibleEndDate];
        v29 = userVisibleEndDate2;
        if (userVisibleEndDate == userVisibleEndDate2)
        {

          v13 = 1;
        }

        else
        {
          userVisibleEndDate3 = [(DNDStateModeAssertionMetadata *)self userVisibleEndDate];
          if (userVisibleEndDate3)
          {
            v37 = userVisibleEndDate3;
            userVisibleEndDate4 = [(DNDStateModeAssertionMetadata *)v6 userVisibleEndDate];
            if (userVisibleEndDate4)
            {
              v35 = userVisibleEndDate4;
              userVisibleEndDate5 = [(DNDStateModeAssertionMetadata *)self userVisibleEndDate];
              [(DNDStateModeAssertionMetadata *)v6 userVisibleEndDate];
              v32 = v36 = v29;
              v13 = [userVisibleEndDate5 isEqual:v32];

              v29 = v36;
              userVisibleEndDate4 = v35;
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

        if (v44 != v45)
        {
        }

        goto LABEL_44;
      }

      activeDateInterval2 = [(DNDStateModeAssertionMetadata *)self activeDateInterval];
      if (activeDateInterval2)
      {
        v41 = activeDateInterval2;
        activeDateInterval3 = [(DNDStateModeAssertionMetadata *)v6 activeDateInterval];
        if (activeDateInterval3)
        {
          v40 = activeDateInterval3;
          activeDateInterval4 = [(DNDStateModeAssertionMetadata *)self activeDateInterval];
          activeDateInterval5 = [(DNDStateModeAssertionMetadata *)v6 activeDateInterval];
          if ([activeDateInterval4 isEqual:activeDateInterval5])
          {
            v38 = activeDateInterval5;
            v39 = activeDateInterval4;
            goto LABEL_27;
          }

          activeDateInterval3 = v40;
        }
      }

      if (modeIdentifier != modeIdentifier2)
      {

        goto LABEL_36;
      }

LABEL_37:

      v13 = 0;
      goto LABEL_47;
    }

    v13 = 0;
  }

LABEL_51:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  clientIdentifier = [(DNDStateModeAssertionMetadata *)self clientIdentifier];
  modeIdentifier = [(DNDStateModeAssertionMetadata *)self modeIdentifier];
  v7 = DNDStringFromModeAssertionLifetimeType([(DNDStateModeAssertionMetadata *)self lifetimeType]);
  activeDateInterval = [(DNDStateModeAssertionMetadata *)self activeDateInterval];
  userVisibleEndDate = [(DNDStateModeAssertionMetadata *)self userVisibleEndDate];
  v10 = [v3 stringWithFormat:@"<%@: %p clientIdentifier: '%@'; modeIdentifier: '%@'; lifetimeType: %@; activeDateInterval: %@; userVisibleEndDate: %@>", v4, self, clientIdentifier, modeIdentifier, v7, activeDateInterval, userVisibleEndDate];;

  return v10;
}

- (DNDStateModeAssertionMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modeIdentifier"];
  v7 = [coderCopy decodeIntegerForKey:@"lifetimeType"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activeDateInterval"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userVisibleEndDate"];

  v10 = [(DNDStateModeAssertionMetadata *)self initWithClientIdentifier:v5 modeIdentifier:v6 lifetimeType:v7 activeDateInterval:v8 userVisibleEndDate:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientIdentifier = [(DNDStateModeAssertionMetadata *)self clientIdentifier];
  [coderCopy encodeObject:clientIdentifier forKey:@"clientIdentifier"];

  modeIdentifier = [(DNDStateModeAssertionMetadata *)self modeIdentifier];
  [coderCopy encodeObject:modeIdentifier forKey:@"modeIdentifier"];

  [coderCopy encodeInteger:-[DNDStateModeAssertionMetadata lifetimeType](self forKey:{"lifetimeType"), @"lifetimeType"}];
  activeDateInterval = [(DNDStateModeAssertionMetadata *)self activeDateInterval];
  [coderCopy encodeObject:activeDateInterval forKey:@"activeDateInterval"];

  userVisibleEndDate = [(DNDStateModeAssertionMetadata *)self userVisibleEndDate];
  [coderCopy encodeObject:userVisibleEndDate forKey:@"userVisibleEndDate"];
}

@end