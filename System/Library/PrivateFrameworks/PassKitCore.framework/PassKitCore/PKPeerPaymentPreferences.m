@interface PKPeerPaymentPreferences
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPreferences:(id)a3;
- (BOOL)isOutOfDate;
- (PKPeerPaymentPreferences)initWithCoder:(id)a3;
- (PKPeerPaymentPreferences)initWithDictionary:(id)a3;
- (PKPeerPaymentPreferences)initWithDictionary:(id)a3 lastUpdated:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)notificationWithType:(unint64_t)a3 altDSID:(id)a4;
- (id)restrictionsForAltDSID:(id)a3;
- (id)sendRestrictionWithType:(unint64_t)a3 altDSID:(id)a4;
- (unint64_t)hash;
- (void)addReceiveRestrictionType:(unint64_t)a3 altDSID:(id)a4;
- (void)addSendRestrictionType:(unint64_t)a3 altDSID:(id)a4;
- (void)didUpdateNotification:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentPreferences

- (PKPeerPaymentPreferences)initWithDictionary:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  v7 = [(PKPeerPaymentPreferences *)self initWithDictionary:v5 lastUpdated:v6];

  return v7;
}

- (PKPeerPaymentPreferences)initWithDictionary:(id)a3 lastUpdated:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v41.receiver = self;
  v41.super_class = PKPeerPaymentPreferences;
  v8 = [(PKPeerPaymentPreferences *)&v41 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lastUpdated, a4);
    v9->_requiresConfirmation = [v6 PKBoolForKey:@"requiresConfirmation"];
    v9->_canReceiveFormalPaymentRequests = [v6 PKBoolForKey:@"canReceiveFormalPaymentRequests"];
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v11 = [v6 PKArrayContaining:objc_opt_class() forKey:@"notifications"];
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
    v20 = [v6 PKArrayContaining:objc_opt_class() forKey:@"restrictions"];
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

    v28 = [v6 PKDictionaryForKey:@"profileAppearance"];
    if (v28)
    {
      v29 = [[PKPeerPaymentPreferencesProfileAppearance alloc] initWithDictionary:v28];
      profileAppearance = v9->_profileAppearance;
      v9->_profileAppearance = v29;
    }

    [v6 PKDoubleForKey:@"proactivePreferencesFetchPeriod"];
    v9->_proactiveFetchPeriod = v31;
  }

  return v9;
}

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresConfirmation];
  [v3 setObject:v4 forKey:@"requiresConfirmation"];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_canReceiveFormalPaymentRequests];
  [v3 setObject:v5 forKey:@"canReceiveFormalPaymentRequests"];

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

        v12 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
        [v6 safelyAddObject:v12];
      }

      v9 = [(NSSet *)v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  [v3 setObject:v6 forKey:@"notifications"];
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

        v19 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
        [v13 safelyAddObject:v19];
      }

      v16 = [(NSSet *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  [v3 setObject:v13 forKey:@"restrictions"];
  v20 = [(PKPeerPaymentPreferencesProfileAppearance *)self->_profileAppearance dictionaryRepresentation];
  if (v20)
  {
    [v3 setObject:v20 forKey:@"profileAppearance"];
  }

  v21 = [MEMORY[0x1E696AD98] numberWithDouble:{self->_proactiveFetchPeriod, v24}];
  [v3 setObject:v21 forKey:@"proactivePreferencesFetchPeriod"];

  v22 = [v3 copy];

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

  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:self->_lastUpdated];
  v6 = v5 >= proactiveFetchPeriod;

  return v6;
}

- (id)sendRestrictionWithType:(unint64_t)a3 altDSID:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
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
        if ([v12 sendRestrictionType] == a3)
        {
          v13 = [v12 altDSID];
          v14 = v6;
          v15 = v14;
          if (v13 == v14)
          {

LABEL_17:
            v17 = v12;
            goto LABEL_18;
          }

          if (v6 && v13)
          {
            v16 = [v13 isEqualToString:v14];

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

- (id)restrictionsForAltDSID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v10 = [v9 altDSID];
        v11 = v4;
        v12 = v11;
        if (v10 == v11)
        {

LABEL_16:
          v6 = v9;
          goto LABEL_17;
        }

        if (v4 && v10)
        {
          v13 = [v10 isEqualToString:v11];

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

- (id)notificationWithType:(unint64_t)a3 altDSID:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
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
    if ([v12 notificationType] != a3)
    {
      goto LABEL_13;
    }

    v13 = [v12 altDSID];
    v14 = v6;
    v15 = v14;
    if (v13 == v14)
    {
      break;
    }

    if (v6 && v13)
    {
      v16 = [v13 isEqualToString:v14];

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
  [(PKPeerPaymentPreferencesNotification *)v17 setAltDSID:v6];
  [(PKPeerPaymentPreferencesNotification *)v17 setNotificationType:a3];
LABEL_19:

  return v17;
}

- (void)addSendRestrictionType:(unint64_t)a3 altDSID:(id)a4
{
  v12 = a4;
  v6 = [(PKPeerPaymentPreferences *)self restrictionsForAltDSID:?];
  v7 = v6;
  if (v6)
  {
    [v6 setSendRestrictionType:a3];
  }

  else
  {
    v8 = objc_alloc_init(PKPeerPaymentPreferencesRestriction);
    [(PKPeerPaymentPreferencesRestriction *)v8 setSendRestrictionType:a3];
    [(PKPeerPaymentPreferencesRestriction *)v8 setAltDSID:v12];
    v9 = [(NSSet *)self->_restrictions mutableCopy];
    [v9 addObject:v8];
    v10 = [v9 copy];
    restrictions = self->_restrictions;
    self->_restrictions = v10;
  }
}

- (void)addReceiveRestrictionType:(unint64_t)a3 altDSID:(id)a4
{
  v12 = a4;
  v6 = [(PKPeerPaymentPreferences *)self restrictionsForAltDSID:?];
  v7 = v6;
  if (v6)
  {
    [v6 setReceiveRestrictionType:a3];
  }

  else
  {
    v8 = objc_alloc_init(PKPeerPaymentPreferencesRestriction);
    [(PKPeerPaymentPreferencesRestriction *)v8 setReceiveRestrictionType:a3];
    [(PKPeerPaymentPreferencesRestriction *)v8 setAltDSID:v12];
    v9 = [(NSSet *)self->_restrictions mutableCopy];
    [v9 addObject:v8];
    v10 = [v9 copy];
    restrictions = self->_restrictions;
    self->_restrictions = v10;
  }
}

- (void)didUpdateNotification:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12 = v4;
    v5 = [v4 notificationType];
    v6 = [v12 altDSID];
    v7 = [(PKPeerPaymentPreferences *)self notificationWithType:v5 altDSID:v6];

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

    v4 = v12;
  }
}

- (PKPeerPaymentPreferences)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = PKPeerPaymentPreferences;
  v5 = [(PKPeerPaymentPreferences *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v6;

    v5->_dirty = [v4 decodeBoolForKey:@"dirty"];
    v5->_requiresConfirmation = [v4 decodeBoolForKey:@"requiresConfirmation"];
    v5->_canReceiveFormalPaymentRequests = [v4 decodeBoolForKey:@"canReceiveFormalPaymentRequests"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"restrictions"];
    restrictions = v5->_restrictions;
    v5->_restrictions = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"notifications"];
    notifications = v5->_notifications;
    v5->_notifications = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"profileAppearance"];
    profileAppearance = v5->_profileAppearance;
    v5->_profileAppearance = v18;

    [v4 decodeDoubleForKey:@"proactivePreferencesFetchPeriod"];
    v5->_proactiveFetchPeriod = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  lastUpdated = self->_lastUpdated;
  v5 = a3;
  [v5 encodeObject:lastUpdated forKey:@"lastUpdated"];
  [v5 encodeBool:self->_dirty forKey:@"dirty"];
  [v5 encodeBool:self->_requiresConfirmation forKey:@"requiresConfirmation"];
  [v5 encodeBool:self->_canReceiveFormalPaymentRequests forKey:@"canReceiveFormalPaymentRequests"];
  [v5 encodeObject:self->_notifications forKey:@"notifications"];
  [v5 encodeObject:self->_restrictions forKey:@"restrictions"];
  [v5 encodeObject:self->_profileAppearance forKey:@"profileAppearance"];
  [v5 encodeDouble:@"proactivePreferencesFetchPeriod" forKey:self->_proactiveFetchPeriod];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPeerPaymentPreferences allocWithZone:](PKPeerPaymentPreferences init];
  v6 = [(NSDate *)self->_lastUpdated copyWithZone:a3];
  lastUpdated = v5->_lastUpdated;
  v5->_lastUpdated = v6;

  v5->_dirty = self->_dirty;
  v5->_requiresConfirmation = self->_requiresConfirmation;
  v5->_canReceiveFormalPaymentRequests = self->_canReceiveFormalPaymentRequests;
  v8 = [(NSSet *)self->_notifications copyWithZone:a3];
  notifications = v5->_notifications;
  v5->_notifications = v8;

  v10 = [(NSSet *)self->_restrictions copyWithZone:a3];
  restrictions = v5->_restrictions;
  v5->_restrictions = v10;

  v12 = [(PKPeerPaymentPreferencesProfileAppearance *)self->_profileAppearance copyWithZone:a3];
  profileAppearance = v5->_profileAppearance;
  v5->_profileAppearance = v12;

  v5->_proactiveFetchPeriod = self->_proactiveFetchPeriod;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPeerPaymentPreferences *)self isEqualToPreferences:v5];
  }

  return v6;
}

- (BOOL)isEqualToPreferences:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || self->_requiresConfirmation != *(v4 + 8) || self->_canReceiveFormalPaymentRequests != *(v4 + 9) || self->_proactiveFetchPeriod != *(v4 + 6))
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_notifications];
  [v3 safelyAddObject:self->_restrictions];
  [v3 safelyAddObject:self->_profileAppearance];
  [v3 safelyAddObject:self->_lastUpdated];
  v4 = PKCombinedHash(17, v3);
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