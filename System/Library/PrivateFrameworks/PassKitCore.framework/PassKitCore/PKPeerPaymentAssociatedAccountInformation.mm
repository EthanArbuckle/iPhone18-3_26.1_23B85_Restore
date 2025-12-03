@interface PKPeerPaymentAssociatedAccountInformation
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentAssociatedAccountInformation)initWithCoder:(id)coder;
- (PKPeerPaymentAssociatedAccountInformation)initWithDictionary:(id)dictionary lastUpdated:(id)updated;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)markAssociatedAccountActiveWithAltDSID:(id)d hasPresentedNotification:(BOOL)notification;
- (void)markAssociatedAccountRemovalRecordWithAltDSID:(id)d hasPresentedNotification:(BOOL)notification;
@end

@implementation PKPeerPaymentAssociatedAccountInformation

- (PKPeerPaymentAssociatedAccountInformation)initWithDictionary:(id)dictionary lastUpdated:(id)updated
{
  v57 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  updatedCopy = updated;
  v53.receiver = self;
  v53.super_class = PKPeerPaymentAssociatedAccountInformation;
  v8 = [(PKPeerPaymentAssociatedAccountInformation *)&v53 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lastUpdated, updated);
    [dictionaryCopy PKDoubleForKey:@"proactiveAssociatedAccountFetchPeriod"];
    v9->_proactiveAssociatedAccountFetchPeriod = v10;
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v12 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"associatedAccounts"];
    v13 = [v12 countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v50;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v50 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [[PKPeerPaymentAccount alloc] initWithDictionary:*(*(&v49 + 1) + 8 * i) lastUpdated:updatedCopy];
          if (v17)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v14);
    }

    v18 = [v11 copy];
    associatedAccounts = v9->_associatedAccounts;
    v9->_associatedAccounts = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v40 = dictionaryCopy;
    v21 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"associatedAccountInvitations"];
    v22 = [v21 countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v46;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v46 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [[PKPeerPaymentAccountInvitation alloc] initWithDictionary:*(*(&v45 + 1) + 8 * j)];
          if (v26)
          {
            [v20 addObject:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v23);
    }

    v27 = [v20 copy];
    associatedAccountInvitations = v9->_associatedAccountInvitations;
    v39 = v9;
    v9->_associatedAccountInvitations = v27;

    v29 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v30 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"previousAssociatedAccounts"];
    v31 = [v30 countByEnumeratingWithState:&v41 objects:v54 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v42;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v42 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = [[PKPeerPaymentAssociatedAccountRemovalRecord alloc] initWithDictionary:*(*(&v41 + 1) + 8 * k)];
          if (v35)
          {
            [v29 addObject:v35];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v41 objects:v54 count:16];
      }

      while (v32);
    }

    v36 = [v29 copy];
    v9 = v39;
    associatedAccountRemovalRecords = v39->_associatedAccountRemovalRecords;
    v39->_associatedAccountRemovalRecords = v36;

    dictionaryCopy = v40;
  }

  return v9;
}

- (PKPeerPaymentAssociatedAccountInformation)initWithCoder:(id)coder
{
  v28[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = PKPeerPaymentAssociatedAccountInformation;
  v5 = [(PKPeerPaymentAssociatedAccountInformation *)&v25 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"associatedAccounts"];
    associatedAccounts = v5->_associatedAccounts;
    v5->_associatedAccounts = v9;

    v11 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"associatedAccountInvitations"];
    associatedAccountInvitations = v5->_associatedAccountInvitations;
    v5->_associatedAccountInvitations = v14;

    [coderCopy decodeDoubleForKey:@"proactiveAssociatedAccountFetchPeriod"];
    v5->_proactiveAssociatedAccountFetchPeriod = v16;
    v17 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v19 = [v17 setWithArray:v18];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"associatedAccountRemovalRecords"];
    associatedAccountRemovalRecords = v5->_associatedAccountRemovalRecords;
    v5->_associatedAccountRemovalRecords = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v22;

    v5->_associatedAccountStateDirty = [coderCopy decodeBoolForKey:@"associatedAccountStateDirty"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  associatedAccounts = self->_associatedAccounts;
  coderCopy = coder;
  [coderCopy encodeObject:associatedAccounts forKey:@"associatedAccounts"];
  [coderCopy encodeObject:self->_associatedAccountInvitations forKey:@"associatedAccountInvitations"];
  [coderCopy encodeDouble:@"proactiveAssociatedAccountFetchPeriod" forKey:self->_proactiveAssociatedAccountFetchPeriod];
  [coderCopy encodeObject:self->_associatedAccountRemovalRecords forKey:@"associatedAccountRemovalRecords"];
  [coderCopy encodeObject:self->_lastUpdated forKey:@"lastUpdated"];
  [coderCopy encodeBool:self->_associatedAccountStateDirty forKey:@"associatedAccountStateDirty"];
}

- (void)markAssociatedAccountRemovalRecordWithAltDSID:(id)d hasPresentedNotification:(BOOL)notification
{
  notificationCopy = notification;
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_associatedAccountRemovalRecords;
  v8 = [(NSSet *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        altDSID = [v12 altDSID];
        v14 = dCopy;
        v15 = v14;
        if (altDSID == v14)
        {

LABEL_16:
          [v12 setHasPresentedNotification:notificationCopy];
          goto LABEL_17;
        }

        if (dCopy && altDSID)
        {
          v16 = [altDSID isEqualToString:v14];

          if (v16)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v9 = [(NSSet *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
}

- (void)markAssociatedAccountActiveWithAltDSID:(id)d hasPresentedNotification:(BOOL)notification
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_associatedAccounts;
  v7 = [(NSSet *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        altDSID = [v11 altDSID];
        v13 = dCopy;
        v14 = v13;
        if (altDSID == v13)
        {

LABEL_16:
          [v11 setHasDisplayedAssociatedAccountActiveNotification:1];
          goto LABEL_17;
        }

        if (dCopy && altDSID)
        {
          v15 = [altDSID isEqualToString:v13];

          if (v15)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v8 = [(NSSet *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_24;
  }

  associatedAccounts = self->_associatedAccounts;
  v6 = *(equalCopy + 2);
  if (associatedAccounts && v6)
  {
    if (([(NSSet *)associatedAccounts isEqual:?]& 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (associatedAccounts != v6)
  {
    goto LABEL_24;
  }

  associatedAccountInvitations = self->_associatedAccountInvitations;
  v8 = *(equalCopy + 3);
  if (associatedAccountInvitations && v8)
  {
    if (([(NSSet *)associatedAccountInvitations isEqual:?]& 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (associatedAccountInvitations != v8)
  {
    goto LABEL_24;
  }

  lastUpdated = self->_lastUpdated;
  v10 = *(equalCopy + 6);
  if (lastUpdated && v10)
  {
    if (([(NSDate *)lastUpdated isEqual:?]& 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (lastUpdated != v10)
  {
    goto LABEL_24;
  }

  associatedAccountRemovalRecords = self->_associatedAccountRemovalRecords;
  v12 = *(equalCopy + 4);
  if (!associatedAccountRemovalRecords || !v12)
  {
    if (associatedAccountRemovalRecords == v12)
    {
      goto LABEL_22;
    }

LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

  if (([(NSSet *)associatedAccountRemovalRecords isEqual:?]& 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (self->_proactiveAssociatedAccountFetchPeriod != equalCopy[5])
  {
    goto LABEL_24;
  }

  v13 = self->_associatedAccountStateDirty == *(equalCopy + 8);
LABEL_25:

  return v13;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_lastUpdated];
  [array safelyAddObject:self->_associatedAccounts];
  [array safelyAddObject:self->_associatedAccountInvitations];
  [array safelyAddObject:self->_associatedAccountRemovalRecords];
  v4 = PKCombinedHash(17, array);
  v5 = self->_proactiveAssociatedAccountFetchPeriod - v4 + 32 * v4;
  v6 = self->_associatedAccountStateDirty - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"associatedAccounts: '%@'; ", self->_associatedAccounts];
  [v3 appendFormat:@"associatedAccountInvitations: '%@'; ", self->_associatedAccountInvitations];
  [v3 appendFormat:@"associatedAccountRemovalRecords: '%@'; ", self->_associatedAccountRemovalRecords];
  [v3 appendFormat:@"lastAssociatedAccountUpdated: '%@'; ", self->_lastUpdated];
  if (self->_associatedAccountStateDirty)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"associatedAccountStateDirty: '%@'; ", v4];
  v5 = [v3 copy];

  return v5;
}

@end