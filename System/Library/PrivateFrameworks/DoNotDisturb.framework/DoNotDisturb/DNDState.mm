@interface DNDState
- (BOOL)isEqual:(id)a3;
- (DNDState)initWithCoder:(id)a3;
- (DNDState)initWithSuppressionState:(unint64_t)a3 activeModeAssertionMetadata:(id)a4 startDate:(id)a5 userVisibleTransitionDate:(id)a6 userVisibleTransitionLifetimeType:(unint64_t)a7 activeModeConfiguration:(id)a8;
- (NSArray)activeModeAssertionMetadata;
- (NSArray)activeModeIdentifiers;
- (NSString)activeModeIdentifier;
- (NSUUID)activeModeUUID;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setOverrideModeIdentifier:(id)a3;
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
    v3 = overrideModeIdentifier;
  }

  else
  {
    v4 = [(DNDState *)self activeModeConfiguration];
    v5 = [v4 mode];
    v3 = [v5 modeIdentifier];
  }

  return v3;
}

- (DNDState)initWithSuppressionState:(unint64_t)a3 activeModeAssertionMetadata:(id)a4 startDate:(id)a5 userVisibleTransitionDate:(id)a6 userVisibleTransitionLifetimeType:(unint64_t)a7 activeModeConfiguration:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v28.receiver = self;
  v28.super_class = DNDState;
  v18 = [(DNDState *)&v28 init];
  v19 = v18;
  if (v18)
  {
    v18->_suppressionState = a3;
    v20 = [v14 copy];
    activeModeAssertionMetadata = v19->_activeModeAssertionMetadata;
    v19->_activeModeAssertionMetadata = v20;

    v22 = [v15 copy];
    startDate = v19->_startDate;
    v19->_startDate = v22;

    v24 = [v16 copy];
    userVisibleTransitionDate = v19->_userVisibleTransitionDate;
    v19->_userVisibleTransitionDate = v24;

    v19->_userVisibleTransitionLifetimeType = a7;
    objc_storeStrong(&v19->_activeModeConfiguration, a8);
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
  v4 = [(DNDState *)self activeModeAssertionMetadata];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) modeIdentifier];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 allObjects];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (NSUUID)activeModeUUID
{
  v2 = [(DNDState *)self activeModeConfiguration];
  v3 = [v2 mode];
  v4 = [v3 identifier];

  return v4;
}

- (void)setOverrideModeIdentifier:(id)a3
{
  v5 = a3;
  overrideModeIdentifier = self->_overrideModeIdentifier;
  p_overrideModeIdentifier = &self->_overrideModeIdentifier;
  v6 = overrideModeIdentifier;
  if (overrideModeIdentifier != v5)
  {
    v9 = v5;
    if (!v5 || !v6 || (v6 = [v6 isEqual:v5], v5 = v9, (v6 & 1) == 0))
    {
      objc_storeStrong(p_overrideModeIdentifier, a3);
      v5 = v9;
    }
  }

  MEMORY[0x2821F96F8](v6, v5);
}

- (unint64_t)hash
{
  v3 = [(DNDState *)self suppressionState];
  v4 = [(DNDState *)self activeModeAssertionMetadata];
  v5 = [v4 hash] ^ v3;
  v6 = [(DNDState *)self userVisibleTransitionDate];
  v7 = [v6 hash];
  v8 = v5 ^ v7 ^ [(DNDState *)self userVisibleTransitionLifetimeType];
  v9 = [(DNDState *)self activeModeConfiguration];
  v10 = v8 ^ [v9 hash];
  v11 = [(NSString *)self->_overrideModeIdentifier hash];

  return v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDState *)self suppressionState];
      if (v7 != [(DNDState *)v6 suppressionState])
      {
        v15 = 0;
LABEL_51:

        goto LABEL_52;
      }

      v8 = [(DNDState *)self activeModeAssertionMetadata];
      v9 = [(DNDState *)v6 activeModeAssertionMetadata];
      if (v8 != v9)
      {
        v10 = [(DNDState *)self activeModeAssertionMetadata];
        if (!v10)
        {
          v15 = 0;
          goto LABEL_50;
        }

        v3 = v10;
        v11 = [(DNDState *)v6 activeModeAssertionMetadata];
        if (!v11)
        {
          v15 = 0;
LABEL_49:

          goto LABEL_50;
        }

        v12 = v11;
        v13 = [(DNDState *)self activeModeAssertionMetadata];
        v14 = [(DNDState *)v6 activeModeAssertionMetadata];
        if (![v13 isEqual:v14])
        {
          v15 = 0;
LABEL_48:

          goto LABEL_49;
        }

        v43 = v3;
        v44 = v14;
        v45 = v13;
        v46 = v12;
      }

      v16 = [(DNDState *)self userVisibleTransitionDate];
      v17 = [(DNDState *)v6 userVisibleTransitionDate];
      if (v16 != v17)
      {
        v18 = [(DNDState *)self userVisibleTransitionDate];
        if (v18)
        {
          v42 = v18;
          v19 = [(DNDState *)v6 userVisibleTransitionDate];
          if (v19)
          {
            v20 = v19;
            v21 = [(DNDState *)self userVisibleTransitionDate];
            v3 = [(DNDState *)v6 userVisibleTransitionDate];
            if ([v21 isEqual:v3])
            {
              v38 = v3;
              v39 = v21;
              v40 = v20;
              goto LABEL_18;
            }
          }
        }

        v15 = 0;
        goto LABEL_47;
      }

LABEL_18:
      v22 = [(DNDState *)self userVisibleTransitionLifetimeType];
      if (v22 == [(DNDState *)v6 userVisibleTransitionLifetimeType])
      {
        v23 = [(DNDState *)self activeModeConfiguration];
        v24 = [(DNDState *)v6 activeModeConfiguration];
        v41 = v23;
        if (v23 == v24)
        {
LABEL_29:
          overrideModeIdentifier = self->_overrideModeIdentifier;
          v32 = v6->_overrideModeIdentifier;
          v15 = overrideModeIdentifier == v32;
          if (overrideModeIdentifier != v32 && overrideModeIdentifier && v32)
          {
            v15 = [(NSString *)overrideModeIdentifier isEqual:?];
            v33 = v23 == v24;
            v26 = v35;
            if (v33)
            {
              goto LABEL_43;
            }

            goto LABEL_41;
          }

          if (v23 == v24)
          {
LABEL_43:

            goto LABEL_44;
          }

LABEL_44:
          if (v16 != v17)
          {
          }

LABEL_47:
          v13 = v45;
          v12 = v46;
          v3 = v43;
          v14 = v44;
          if (v8 != v9)
          {
            goto LABEL_48;
          }

LABEL_50:

          goto LABEL_51;
        }

        v25 = [(DNDState *)self activeModeConfiguration];
        if (v25)
        {
          v26 = v25;
          v27 = [(DNDState *)v6 activeModeConfiguration];
          if (!v27)
          {
            v15 = 0;
LABEL_42:

            goto LABEL_43;
          }

          v37 = v27;
          v28 = [(DNDState *)self activeModeConfiguration];
          v29 = [(DNDState *)v6 activeModeConfiguration];
          v36 = v28;
          v30 = v28;
          v3 = v29;
          if (![v30 isEqual:v29])
          {
            v15 = 0;
LABEL_41:

            goto LABEL_42;
          }

          v35 = v26;
          v23 = v41;
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
  v6 = [(DNDState *)self startDate];
  v7 = [(DNDState *)self userVisibleTransitionDate];
  v8 = DNDStringFromModeAssertionLifetimeType([(DNDState *)self userVisibleTransitionLifetimeType]);
  v9 = [(DNDState *)self activeModeConfiguration];
  v10 = [v9 shortDescription];
  v11 = [(DNDState *)self activeModeIdentifier];
  v12 = [v3 stringWithFormat:@"<%@: %p suppressionState: %@; startDate: %@; userVisibleTransitionDate: %@; userVisibleTransitionLifetimeType: %@; activeModeConfiguration: %@; activeModeIdentifier: %@>", v4, self, v5, v6, v7, v8, v10, v11];;

  return v12;
}

- (DNDState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"suppressionState"];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"activeModeAssertionMetadata"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userVisibleTransitionDate"];
  v12 = [v4 decodeIntegerForKey:@"userVisibleTransitionLifetimeType"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeModeConfiguration"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"overrideModeIdentifier"];

  v15 = [(DNDState *)self initWithSuppressionState:v5 activeModeAssertionMetadata:v9 startDate:v10 userVisibleTransitionDate:v11 userVisibleTransitionLifetimeType:v12 activeModeConfiguration:v13];
  [(DNDState *)v15 setOverrideModeIdentifier:v14];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeInteger:-[DNDState suppressionState](self forKey:{"suppressionState"), @"suppressionState"}];
  v4 = [(DNDState *)self activeModeAssertionMetadata];
  [v8 encodeObject:v4 forKey:@"activeModeAssertionMetadata"];

  v5 = [(DNDState *)self startDate];
  [v8 encodeObject:v5 forKey:@"startDate"];

  v6 = [(DNDState *)self userVisibleTransitionDate];
  [v8 encodeObject:v6 forKey:@"userVisibleTransitionDate"];

  [v8 encodeInteger:-[DNDState userVisibleTransitionLifetimeType](self forKey:{"userVisibleTransitionLifetimeType"), @"userVisibleTransitionLifetimeType"}];
  v7 = [(DNDState *)self activeModeConfiguration];
  [v8 encodeObject:v7 forKey:@"activeModeConfiguration"];

  [v8 encodeObject:self->_overrideModeIdentifier forKey:@"overrideModeIdentifier"];
}

@end