@interface PKPeerPaymentPreferences
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPreferences:(id)preferences;
- (BOOL)isOutOfDate;
- (PKPeerPaymentPreferences)initWithCoder:(id)coder;
- (PKPeerPaymentPreferences)initWithDictionary:(id)dictionary;
- (PKPeerPaymentPreferences)initWithDictionary:(id)dictionary lastUpdated:(id)updated;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)notificationWithType:(unint64_t)type altDSID:(id)d;
- (id)restrictionsForAltDSID:(id)d;
- (id)sendRestrictionWithType:(unint64_t)type altDSID:(id)d;
- (unint64_t)hash;
- (void)addReceiveRestrictionType:(unint64_t)type altDSID:(id)d;
- (void)addSendRestrictionType:(unint64_t)type altDSID:(id)d;
- (void)didUpdateNotification:(id)notification;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentPreferences

- (PKPeerPaymentPreferences)initWithDictionary:(id)dictionary
{
  v4 = MEMORY[0x1E695DF00];
  dictionaryCopy = dictionary;
  date = [v4 date];
  v7 = [(PKPeerPaymentPreferences *)self initWithDictionary:dictionaryCopy lastUpdated:date];

  return v7;
}

- (PKPeerPaymentPreferences)initWithDictionary:(id)dictionary lastUpdated:(id)updated
{
  v44 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  updatedCopy = updated;
  v41.receiver = self;
  v41.super_class = PKPeerPaymentPreferences;
  v8 = [(PKPeerPaymentPreferences *)&v41 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lastUpdated, updated);
    v9->_requiresConfirmation = [dictionaryCopy PKBoolForKey:@"requiresConfirmation"];
    v9->_canReceiveFormalPaymentRequests = [dictionaryCopy PKBoolForKey:@"canReceiveFormalPaymentRequests"];
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v11 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"notifications"];
    v12 = [v11 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [[PKPeerPaymentPreferencesNotification alloc] initWithDictionary:*(*(&v37 + 1) + 8 * i)];
          if (v16)
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v13);
    }

    v17 = [v10 copy];
    notifications = v9->_notifications;
    v9->_notifications = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v20 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"restrictions"];
    v21 = [v20 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v34;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [[PKPeerPaymentPreferencesRestriction alloc] initWithDictionary:*(*(&v33 + 1) + 8 * j)];
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v22);
    }

    v26 = [v19 copy];
    restrictions = v9->_restrictions;
    v9->_restrictions = v26;

    v28 = [dictionaryCopy PKDictionaryForKey:@"profileAppearance"];
    if (v28)
    {
      v29 = [[PKPeerPaymentPreferencesProfileAppearance alloc] initWithDictionary:v28];
      profileAppearance = v9->_profileAppearance;
      v9->_profileAppearance = v29;
    }

    [dictionaryCopy PKDoubleForKey:@"proactivePreferencesFetchPeriod"];
    v9->_proactiveFetchPeriod = v31;
  }

  return v9;
}

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresConfirmation];
  [dictionary setObject:v4 forKey:@"requiresConfirmation"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_canReceiveFormalPaymentRequests];
  [dictionary setObject:v5 forKey:@"canReceiveFormalPaymentRequests"];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = self->_notifications;
  v8 = [(NSSet *)v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        dictionaryRepresentation = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
        [v6 safelyAddObject:dictionaryRepresentation];
      }

      v9 = [(NSSet *)v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  [dictionary setObject:v6 forKey:@"notifications"];
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = self->_restrictions;
  v15 = [(NSSet *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        dictionaryRepresentation2 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
        [v13 safelyAddObject:dictionaryRepresentation2];
      }

      v16 = [(NSSet *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  [dictionary setObject:v13 forKey:@"restrictions"];
  dictionaryRepresentation3 = [(PKPeerPaymentPreferencesProfileAppearance *)self->_profileAppearance dictionaryRepresentation];
  if (dictionaryRepresentation3)
  {
    [dictionary setObject:dictionaryRepresentation3 forKey:@"profileAppearance"];
  }

  v21 = [MEMORY[0x1E696AD98] numberWithDouble:{self->_proactiveFetchPeriod, v24}];
  [dictionary setObject:v21 forKey:@"proactivePreferencesFetchPeriod"];

  v22 = [dictionary copy];

  return v22;
}

- (BOOL)isOutOfDate
{
  if (!self->_lastUpdated)
  {
    return 1;
  }

  if (self->_proactiveFetchPeriod <= 0.0)
  {
    proactiveFetchPeriod = *&PKPeerPaymentPreferencesDefaultProactiveFetchPeriod;
  }

  else
  {
    proactiveFetchPeriod = self->_proactiveFetchPeriod;
  }

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:self->_lastUpdated];
  v6 = v5 >= proactiveFetchPeriod;

  return v6;
}

- (id)sendRestrictionWithType:(unint64_t)type altDSID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_restrictions;
  v8 = [(NSSet *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if ([v12 sendRestrictionType] == type)
        {
          altDSID = [v12 altDSID];
          v14 = dCopy;
          v15 = v14;
          if (altDSID == v14)
          {

LABEL_17:
            v17 = v12;
            goto LABEL_18;
          }

          if (dCopy && altDSID)
          {
            v16 = [altDSID isEqualToString:v14];

            if (v16)
            {
              goto LABEL_17;
            }
          }

          else
          {
          }
        }
      }

      v9 = [(NSSet *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_18:

  return v17;
}

- (id)restrictionsForAltDSID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_restrictions;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        altDSID = [v9 altDSID];
        v11 = dCopy;
        v12 = v11;
        if (altDSID == v11)
        {

LABEL_16:
          v6 = v9;
          goto LABEL_17;
        }

        if (dCopy && altDSID)
        {
          v13 = [altDSID isEqualToString:v11];

          if (v13)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v6;
}

- (id)notificationWithType:(unint64_t)type altDSID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_notifications;
  v8 = [(NSSet *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v8)
  {
LABEL_15:

    goto LABEL_18;
  }

  v9 = v8;
  v10 = *v20;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v20 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v19 + 1) + 8 * v11);
    if ([v12 notificationType] != type)
    {
      goto LABEL_13;
    }

    altDSID = [v12 altDSID];
    v14 = dCopy;
    v15 = v14;
    if (altDSID == v14)
    {
      break;
    }

    if (dCopy && altDSID)
    {
      v16 = [altDSID isEqualToString:v14];

      if (v16)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

LABEL_13:
    if (v9 == ++v11)
    {
      v9 = [(NSSet *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        goto LABEL_3;
      }

      goto LABEL_15;
    }
  }

LABEL_17:
  v17 = v12;

  if (v17)
  {
    goto LABEL_19;
  }

LABEL_18:
  v17 = objc_alloc_init(PKPeerPaymentPreferencesNotification);
  [(PKPeerPaymentPreferencesNotification *)v17 setAltDSID:dCopy];
  [(PKPeerPaymentPreferencesNotification *)v17 setNotificationType:type];
LABEL_19:

  return v17;
}

- (void)addSendRestrictionType:(unint64_t)type altDSID:(id)d
{
  dCopy = d;
  v6 = [(PKPeerPaymentPreferences *)self restrictionsForAltDSID:?];
  v7 = v6;
  if (v6)
  {
    [v6 setSendRestrictionType:type];
  }

  else
  {
    v8 = objc_alloc_init(PKPeerPaymentPreferencesRestriction);
    [(PKPeerPaymentPreferencesRestriction *)v8 setSendRestrictionType:type];
    [(PKPeerPaymentPreferencesRestriction *)v8 setAltDSID:dCopy];
    v9 = [(NSSet *)self->_restrictions mutableCopy];
    [v9 addObject:v8];
    v10 = [v9 copy];
    restrictions = self->_restrictions;
    self->_restrictions = v10;
  }
}

- (void)addReceiveRestrictionType:(unint64_t)type altDSID:(id)d
{
  dCopy = d;
  v6 = [(PKPeerPaymentPreferences *)self restrictionsForAltDSID:?];
  v7 = v6;
  if (v6)
  {
    [v6 setReceiveRestrictionType:type];
  }

  else
  {
    v8 = objc_alloc_init(PKPeerPaymentPreferencesRestriction);
    [(PKPeerPaymentPreferencesRestriction *)v8 setReceiveRestrictionType:type];
    [(PKPeerPaymentPreferencesRestriction *)v8 setAltDSID:dCopy];
    v9 = [(NSSet *)self->_restrictions mutableCopy];
    [v9 addObject:v8];
    v10 = [v9 copy];
    restrictions = self->_restrictions;
    self->_restrictions = v10;
  }
}

- (void)didUpdateNotification:(id)notification
{
  notificationCopy = notification;
  if (notificationCopy)
  {
    v12 = notificationCopy;
    notificationType = [notificationCopy notificationType];
    altDSID = [v12 altDSID];
    v7 = [(PKPeerPaymentPreferences *)self notificationWithType:notificationType altDSID:altDSID];

    v8 = [(NSSet *)self->_notifications mutableCopy];
    v9 = v8;
    if (v7)
    {
      [v8 removeObject:v7];
    }

    [v9 addObject:v12];
    v10 = [v9 copy];
    notifications = self->_notifications;
    self->_notifications = v10;

    notificationCopy = v12;
  }
}

- (PKPeerPaymentPreferences)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = PKPeerPaymentPreferences;
  v5 = [(PKPeerPaymentPreferences *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v6;

    v5->_dirty = [coderCopy decodeBoolForKey:@"dirty"];
    v5->_requiresConfirmation = [coderCopy decodeBoolForKey:@"requiresConfirmation"];
    v5->_canReceiveFormalPaymentRequests = [coderCopy decodeBoolForKey:@"canReceiveFormalPaymentRequests"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"restrictions"];
    restrictions = v5->_restrictions;
    v5->_restrictions = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"notifications"];
    notifications = v5->_notifications;
    v5->_notifications = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"profileAppearance"];
    profileAppearance = v5->_profileAppearance;
    v5->_profileAppearance = v18;

    [coderCopy decodeDoubleForKey:@"proactivePreferencesFetchPeriod"];
    v5->_proactiveFetchPeriod = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  lastUpdated = self->_lastUpdated;
  coderCopy = coder;
  [coderCopy encodeObject:lastUpdated forKey:@"lastUpdated"];
  [coderCopy encodeBool:self->_dirty forKey:@"dirty"];
  [coderCopy encodeBool:self->_requiresConfirmation forKey:@"requiresConfirmation"];
  [coderCopy encodeBool:self->_canReceiveFormalPaymentRequests forKey:@"canReceiveFormalPaymentRequests"];
  [coderCopy encodeObject:self->_notifications forKey:@"notifications"];
  [coderCopy encodeObject:self->_restrictions forKey:@"restrictions"];
  [coderCopy encodeObject:self->_profileAppearance forKey:@"profileAppearance"];
  [coderCopy encodeDouble:@"proactivePreferencesFetchPeriod" forKey:self->_proactiveFetchPeriod];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPeerPaymentPreferences allocWithZone:](PKPeerPaymentPreferences init];
  v6 = [(NSDate *)self->_lastUpdated copyWithZone:zone];
  lastUpdated = v5->_lastUpdated;
  v5->_lastUpdated = v6;

  v5->_dirty = self->_dirty;
  v5->_requiresConfirmation = self->_requiresConfirmation;
  v5->_canReceiveFormalPaymentRequests = self->_canReceiveFormalPaymentRequests;
  v8 = [(NSSet *)self->_notifications copyWithZone:zone];
  notifications = v5->_notifications;
  v5->_notifications = v8;

  v10 = [(NSSet *)self->_restrictions copyWithZone:zone];
  restrictions = v5->_restrictions;
  v5->_restrictions = v10;

  v12 = [(PKPeerPaymentPreferencesProfileAppearance *)self->_profileAppearance copyWithZone:zone];
  profileAppearance = v5->_profileAppearance;
  v5->_profileAppearance = v12;

  v5->_proactiveFetchPeriod = self->_proactiveFetchPeriod;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPeerPaymentPreferences *)self isEqualToPreferences:v5];
  }

  return v6;
}

- (BOOL)isEqualToPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = preferencesCopy;
  if (!preferencesCopy || self->_requiresConfirmation != *(preferencesCopy + 8) || self->_canReceiveFormalPaymentRequests != *(preferencesCopy + 9) || self->_proactiveFetchPeriod != *(preferencesCopy + 6))
  {
    goto LABEL_17;
  }

  notifications = self->_notifications;
  v7 = v5[2];
  if (notifications && v7)
  {
    if (([(NSSet *)notifications isEqual:?]& 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (notifications != v7)
  {
    goto LABEL_17;
  }

  restrictions = self->_restrictions;
  v9 = v5[3];
  if (!restrictions || !v9)
  {
    if (restrictions == v9)
    {
      goto LABEL_13;
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  if (([(NSSet *)restrictions isEqual:?]& 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  profileAppearance = self->_profileAppearance;
  v11 = v5[4];
  if (profileAppearance && v11)
  {
    v12 = [(PKPeerPaymentPreferencesProfileAppearance *)profileAppearance isEqual:?];
  }

  else
  {
    v12 = profileAppearance == v11;
  }

LABEL_18:

  return v12;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_notifications];
  [array safelyAddObject:self->_restrictions];
  [array safelyAddObject:self->_profileAppearance];
  [array safelyAddObject:self->_lastUpdated];
  v4 = PKCombinedHash(17, array);
  v5 = self->_dirty - v4 + 32 * v4;
  v6 = self->_requiresConfirmation - v5 + 32 * v5;
  v7 = self->_canReceiveFormalPaymentRequests - v6 + 32 * v6;
  v8 = self->_proactiveFetchPeriod - v7 + 32 * v7;

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"lastUpdated: '%@'; ", self->_lastUpdated];
  if (self->_dirty)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"dirty: '%@'; ", v4];
  if (self->_requiresConfirmation)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"requiresConfirmation: '%@'; ", v5];
  if (self->_canReceiveFormalPaymentRequests)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"canReceiveFormalPaymentRequests: '%@'; ", v6];
  [v3 appendFormat:@"notifications: '%@'; ", self->_notifications];
  [v3 appendFormat:@"restrictions: '%@'; ", self->_restrictions];
  [v3 appendFormat:@"profileAppearance: '%@'; ", self->_profileAppearance];
  [v3 appendFormat:@"proactiveFetchPeriod: '%lf'; ", *&self->_proactiveFetchPeriod];
  [v3 appendFormat:@">"];

  return v3;
}

@end