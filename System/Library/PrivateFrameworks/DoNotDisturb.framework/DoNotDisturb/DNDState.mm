@interface DNDState
- (BOOL)isEqual:(id)equal;
- (DNDState)initWithCoder:(id)coder;
- (DNDState)initWithSuppressionState:(unint64_t)state activeModeAssertionMetadata:(id)metadata startDate:(id)date userVisibleTransitionDate:(id)transitionDate userVisibleTransitionLifetimeType:(unint64_t)type activeModeConfiguration:(id)configuration;
- (NSArray)activeModeAssertionMetadata;
- (NSArray)activeModeIdentifiers;
- (NSString)activeModeIdentifier;
- (NSUUID)activeModeUUID;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setOverrideModeIdentifier:(id)identifier;
@end

@implementation DNDState

- (NSArray)activeModeAssertionMetadata
{
  v2 = [(NSArray *)self->_activeModeAssertionMetadata copy];

  return v2;
}

- (NSString)activeModeIdentifier
{
  overrideModeIdentifier = self->_overrideModeIdentifier;
  if (overrideModeIdentifier)
  {
    modeIdentifier = overrideModeIdentifier;
  }

  else
  {
    activeModeConfiguration = [(DNDState *)self activeModeConfiguration];
    mode = [activeModeConfiguration mode];
    modeIdentifier = [mode modeIdentifier];
  }

  return modeIdentifier;
}

- (DNDState)initWithSuppressionState:(unint64_t)state activeModeAssertionMetadata:(id)metadata startDate:(id)date userVisibleTransitionDate:(id)transitionDate userVisibleTransitionLifetimeType:(unint64_t)type activeModeConfiguration:(id)configuration
{
  metadataCopy = metadata;
  dateCopy = date;
  transitionDateCopy = transitionDate;
  configurationCopy = configuration;
  v28.receiver = self;
  v28.super_class = DNDState;
  v18 = [(DNDState *)&v28 init];
  v19 = v18;
  if (v18)
  {
    v18->_suppressionState = state;
    v20 = [metadataCopy copy];
    activeModeAssertionMetadata = v19->_activeModeAssertionMetadata;
    v19->_activeModeAssertionMetadata = v20;

    v22 = [dateCopy copy];
    startDate = v19->_startDate;
    v19->_startDate = v22;

    v24 = [transitionDateCopy copy];
    userVisibleTransitionDate = v19->_userVisibleTransitionDate;
    v19->_userVisibleTransitionDate = v24;

    v19->_userVisibleTransitionLifetimeType = type;
    objc_storeStrong(&v19->_activeModeConfiguration, configuration);
    overrideModeIdentifier = v19->_overrideModeIdentifier;
    v19->_overrideModeIdentifier = 0;
  }

  return v19;
}

- (NSArray)activeModeIdentifiers
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  activeModeAssertionMetadata = [(DNDState *)self activeModeAssertionMetadata];
  v5 = [activeModeAssertionMetadata countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(activeModeAssertionMetadata);
        }

        modeIdentifier = [*(*(&v13 + 1) + 8 * i) modeIdentifier];
        [v3 addObject:modeIdentifier];
      }

      v6 = [activeModeAssertionMetadata countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  allObjects = [v3 allObjects];

  v11 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (NSUUID)activeModeUUID
{
  activeModeConfiguration = [(DNDState *)self activeModeConfiguration];
  mode = [activeModeConfiguration mode];
  identifier = [mode identifier];

  return identifier;
}

- (void)setOverrideModeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  overrideModeIdentifier = self->_overrideModeIdentifier;
  p_overrideModeIdentifier = &self->_overrideModeIdentifier;
  v6 = overrideModeIdentifier;
  if (overrideModeIdentifier != identifierCopy)
  {
    v9 = identifierCopy;
    if (!identifierCopy || !v6 || (v6 = [v6 isEqual:identifierCopy], identifierCopy = v9, (v6 & 1) == 0))
    {
      objc_storeStrong(p_overrideModeIdentifier, identifier);
      identifierCopy = v9;
    }
  }

  MEMORY[0x2821F96F8](v6, identifierCopy);
}

- (unint64_t)hash
{
  suppressionState = [(DNDState *)self suppressionState];
  activeModeAssertionMetadata = [(DNDState *)self activeModeAssertionMetadata];
  v5 = [activeModeAssertionMetadata hash] ^ suppressionState;
  userVisibleTransitionDate = [(DNDState *)self userVisibleTransitionDate];
  v7 = [userVisibleTransitionDate hash];
  v8 = v5 ^ v7 ^ [(DNDState *)self userVisibleTransitionLifetimeType];
  activeModeConfiguration = [(DNDState *)self activeModeConfiguration];
  v10 = v8 ^ [activeModeConfiguration hash];
  v11 = [(NSString *)self->_overrideModeIdentifier hash];

  return v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      suppressionState = [(DNDState *)self suppressionState];
      if (suppressionState != [(DNDState *)v6 suppressionState])
      {
        v15 = 0;
LABEL_51:

        goto LABEL_52;
      }

      activeModeAssertionMetadata = [(DNDState *)self activeModeAssertionMetadata];
      activeModeAssertionMetadata2 = [(DNDState *)v6 activeModeAssertionMetadata];
      if (activeModeAssertionMetadata != activeModeAssertionMetadata2)
      {
        activeModeAssertionMetadata3 = [(DNDState *)self activeModeAssertionMetadata];
        if (!activeModeAssertionMetadata3)
        {
          v15 = 0;
          goto LABEL_50;
        }

        userVisibleTransitionDate6 = activeModeAssertionMetadata3;
        activeModeAssertionMetadata4 = [(DNDState *)v6 activeModeAssertionMetadata];
        if (!activeModeAssertionMetadata4)
        {
          v15 = 0;
LABEL_49:

          goto LABEL_50;
        }

        v12 = activeModeAssertionMetadata4;
        activeModeAssertionMetadata5 = [(DNDState *)self activeModeAssertionMetadata];
        activeModeAssertionMetadata6 = [(DNDState *)v6 activeModeAssertionMetadata];
        if (![activeModeAssertionMetadata5 isEqual:activeModeAssertionMetadata6])
        {
          v15 = 0;
LABEL_48:

          goto LABEL_49;
        }

        v43 = userVisibleTransitionDate6;
        v44 = activeModeAssertionMetadata6;
        v45 = activeModeAssertionMetadata5;
        v46 = v12;
      }

      userVisibleTransitionDate = [(DNDState *)self userVisibleTransitionDate];
      userVisibleTransitionDate2 = [(DNDState *)v6 userVisibleTransitionDate];
      if (userVisibleTransitionDate != userVisibleTransitionDate2)
      {
        userVisibleTransitionDate3 = [(DNDState *)self userVisibleTransitionDate];
        if (userVisibleTransitionDate3)
        {
          v42 = userVisibleTransitionDate3;
          userVisibleTransitionDate4 = [(DNDState *)v6 userVisibleTransitionDate];
          if (userVisibleTransitionDate4)
          {
            v20 = userVisibleTransitionDate4;
            userVisibleTransitionDate5 = [(DNDState *)self userVisibleTransitionDate];
            userVisibleTransitionDate6 = [(DNDState *)v6 userVisibleTransitionDate];
            if ([userVisibleTransitionDate5 isEqual:userVisibleTransitionDate6])
            {
              v38 = userVisibleTransitionDate6;
              v39 = userVisibleTransitionDate5;
              v40 = v20;
              goto LABEL_18;
            }
          }
        }

        v15 = 0;
        goto LABEL_47;
      }

LABEL_18:
      userVisibleTransitionLifetimeType = [(DNDState *)self userVisibleTransitionLifetimeType];
      if (userVisibleTransitionLifetimeType == [(DNDState *)v6 userVisibleTransitionLifetimeType])
      {
        activeModeConfiguration = [(DNDState *)self activeModeConfiguration];
        activeModeConfiguration2 = [(DNDState *)v6 activeModeConfiguration];
        v41 = activeModeConfiguration;
        if (activeModeConfiguration == activeModeConfiguration2)
        {
LABEL_29:
          overrideModeIdentifier = self->_overrideModeIdentifier;
          v32 = v6->_overrideModeIdentifier;
          v15 = overrideModeIdentifier == v32;
          if (overrideModeIdentifier != v32 && overrideModeIdentifier && v32)
          {
            v15 = [(NSString *)overrideModeIdentifier isEqual:?];
            v33 = activeModeConfiguration == activeModeConfiguration2;
            v26 = v35;
            if (v33)
            {
              goto LABEL_43;
            }

            goto LABEL_41;
          }

          if (activeModeConfiguration == activeModeConfiguration2)
          {
LABEL_43:

            goto LABEL_44;
          }

LABEL_44:
          if (userVisibleTransitionDate != userVisibleTransitionDate2)
          {
          }

LABEL_47:
          activeModeAssertionMetadata5 = v45;
          v12 = v46;
          userVisibleTransitionDate6 = v43;
          activeModeAssertionMetadata6 = v44;
          if (activeModeAssertionMetadata != activeModeAssertionMetadata2)
          {
            goto LABEL_48;
          }

LABEL_50:

          goto LABEL_51;
        }

        activeModeConfiguration3 = [(DNDState *)self activeModeConfiguration];
        if (activeModeConfiguration3)
        {
          v26 = activeModeConfiguration3;
          activeModeConfiguration4 = [(DNDState *)v6 activeModeConfiguration];
          if (!activeModeConfiguration4)
          {
            v15 = 0;
LABEL_42:

            goto LABEL_43;
          }

          v37 = activeModeConfiguration4;
          activeModeConfiguration5 = [(DNDState *)self activeModeConfiguration];
          activeModeConfiguration6 = [(DNDState *)v6 activeModeConfiguration];
          v36 = activeModeConfiguration5;
          v30 = activeModeConfiguration5;
          userVisibleTransitionDate6 = activeModeConfiguration6;
          if (![v30 isEqual:activeModeConfiguration6])
          {
            v15 = 0;
LABEL_41:

            goto LABEL_42;
          }

          v35 = v26;
          activeModeConfiguration = v41;
          goto LABEL_29;
        }
      }

      v15 = 0;
      goto LABEL_44;
    }

    v15 = 0;
  }

LABEL_52:

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = DNDStringFromInterruptionSuppressionState([(DNDState *)self suppressionState]);
  startDate = [(DNDState *)self startDate];
  userVisibleTransitionDate = [(DNDState *)self userVisibleTransitionDate];
  v8 = DNDStringFromModeAssertionLifetimeType([(DNDState *)self userVisibleTransitionLifetimeType]);
  activeModeConfiguration = [(DNDState *)self activeModeConfiguration];
  shortDescription = [activeModeConfiguration shortDescription];
  activeModeIdentifier = [(DNDState *)self activeModeIdentifier];
  v12 = [v3 stringWithFormat:@"<%@: %p suppressionState: %@; startDate: %@; userVisibleTransitionDate: %@; userVisibleTransitionLifetimeType: %@; activeModeConfiguration: %@; activeModeIdentifier: %@>", v4, self, v5, startDate, userVisibleTransitionDate, v8, shortDescription, activeModeIdentifier];;

  return v12;
}

- (DNDState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"suppressionState"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"activeModeAssertionMetadata"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userVisibleTransitionDate"];
  v12 = [coderCopy decodeIntegerForKey:@"userVisibleTransitionLifetimeType"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activeModeConfiguration"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"overrideModeIdentifier"];

  v15 = [(DNDState *)self initWithSuppressionState:v5 activeModeAssertionMetadata:v9 startDate:v10 userVisibleTransitionDate:v11 userVisibleTransitionLifetimeType:v12 activeModeConfiguration:v13];
  [(DNDState *)v15 setOverrideModeIdentifier:v14];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[DNDState suppressionState](self forKey:{"suppressionState"), @"suppressionState"}];
  activeModeAssertionMetadata = [(DNDState *)self activeModeAssertionMetadata];
  [coderCopy encodeObject:activeModeAssertionMetadata forKey:@"activeModeAssertionMetadata"];

  startDate = [(DNDState *)self startDate];
  [coderCopy encodeObject:startDate forKey:@"startDate"];

  userVisibleTransitionDate = [(DNDState *)self userVisibleTransitionDate];
  [coderCopy encodeObject:userVisibleTransitionDate forKey:@"userVisibleTransitionDate"];

  [coderCopy encodeInteger:-[DNDState userVisibleTransitionLifetimeType](self forKey:{"userVisibleTransitionLifetimeType"), @"userVisibleTransitionLifetimeType"}];
  activeModeConfiguration = [(DNDState *)self activeModeConfiguration];
  [coderCopy encodeObject:activeModeConfiguration forKey:@"activeModeConfiguration"];

  [coderCopy encodeObject:self->_overrideModeIdentifier forKey:@"overrideModeIdentifier"];
}

@end