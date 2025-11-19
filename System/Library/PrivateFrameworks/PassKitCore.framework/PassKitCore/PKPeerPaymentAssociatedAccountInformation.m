@interface PKPeerPaymentAssociatedAccountInformation
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentAssociatedAccountInformation)initWithCoder:(id)a3;
- (PKPeerPaymentAssociatedAccountInformation)initWithDictionary:(id)a3 lastUpdated:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)markAssociatedAccountActiveWithAltDSID:(id)a3 hasPresentedNotification:(BOOL)a4;
- (void)markAssociatedAccountRemovalRecordWithAltDSID:(id)a3 hasPresentedNotification:(BOOL)a4;
@end

@implementation PKPeerPaymentAssociatedAccountInformation

- (PKPeerPaymentAssociatedAccountInformation)initWithDictionary:(id)a3 lastUpdated:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v53.receiver = self;
  v53.super_class = PKPeerPaymentAssociatedAccountInformation;
  v8 = [(PKPeerPaymentAssociatedAccountInformation *)&v53 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lastUpdated, a4);
    [v6 PKDoubleForKey:@"proactiveAssociatedAccountFetchPeriod"];
    v9->_proactiveAssociatedAccountFetchPeriod = v10;
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v12 = [v6 PKArrayContaining:objc_opt_class() forKey:@"associatedAccounts"];
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

          v17 = [[PKPeerPaymentAccount alloc] initWithDictionary:*(*(&v49 + 1) + 8 * i) lastUpdated:v7];
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
    v40 = v6;
    v21 = [v6 PKArrayContaining:objc_opt_class() forKey:@"associatedAccountInvitations"];
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
    v30 = [v6 PKArrayContaining:objc_opt_class() forKey:@"previousAssociatedAccounts"];
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

    v6 = v40;
  }

  return v9;
}

- (PKPeerPaymentAssociatedAccountInformation)initWithCoder:(id)a3
{
  v28[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"associatedAccounts"];
    associatedAccounts = v5->_associatedAccounts;
    v5->_associatedAccounts = v9;

    v11 = MEMORY[0x1E695DFD8];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"associatedAccountInvitations"];
    associatedAccountInvitations = v5->_associatedAccountInvitations;
    v5->_associatedAccountInvitations = v14;

    [v4 decodeDoubleForKey:@"proactiveAssociatedAccountFetchPeriod"];
    v5->_proactiveAssociatedAccountFetchPeriod = v16;
    v17 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v19 = [v17 setWithArray:v18];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"associatedAccountRemovalRecords"];
    associatedAccountRemovalRecords = v5->_associatedAccountRemovalRecords;
    v5->_associatedAccountRemovalRecords = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v22;

    v5->_associatedAccountStateDirty = [v4 decodeBoolForKey:@"associatedAccountStateDirty"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  associatedAccounts = self->_associatedAccounts;
  v5 = a3;
  [v5 encodeObject:associatedAccounts forKey:@"associatedAccounts"];
  [v5 encodeObject:self->_associatedAccountInvitations forKey:@"associatedAccountInvitations"];
  [v5 encodeDouble:@"proactiveAssociatedAccountFetchPeriod" forKey:self->_proactiveAssociatedAccountFetchPeriod];
  [v5 encodeObject:self->_associatedAccountRemovalRecords forKey:@"associatedAccountRemovalRecords"];
  [v5 encodeObject:self->_lastUpdated forKey:@"lastUpdated"];
  [v5 encodeBool:self->_associatedAccountStateDirty forKey:@"associatedAccountStateDirty"];
}

- (void)markAssociatedAccountRemovalRecordWithAltDSID:(id)a3 hasPresentedNotification:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
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
        v13 = [v12 altDSID];
        v14 = v6;
        v15 = v14;
        if (v13 == v14)
        {

LABEL_16:
          [v12 setHasPresentedNotification:v4];
          goto LABEL_17;
        }

        if (v6 && v13)
        {
          v16 = [v13 isEqualToString:v14];

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

- (void)markAssociatedAccountActiveWithAltDSID:(id)a3 hasPresentedNotification:(BOOL)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
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
        v12 = [v11 altDSID];
        v13 = v5;
        v14 = v13;
        if (v12 == v13)
        {

LABEL_16:
          [v11 setHasDisplayedAssociatedAccountActiveNotification:1];
          goto LABEL_17;
        }

        if (v5 && v12)
        {
          v15 = [v12 isEqualToString:v13];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_24;
  }

  associatedAccounts = self->_associatedAccounts;
  v6 = *(v4 + 2);
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
  v8 = *(v4 + 3);
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
  v10 = *(v4 + 6);
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
  v12 = *(v4 + 4);
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
  if (self->_proactiveAssociatedAccountFetchPeriod != v4[5])
  {
    goto LABEL_24;
  }

  v13 = self->_associatedAccountStateDirty == *(v4 + 8);
LABEL_25:

  return v13;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_lastUpdated];
  [v3 safelyAddObject:self->_associatedAccounts];
  [v3 safelyAddObject:self->_associatedAccountInvitations];
  [v3 safelyAddObject:self->_associatedAccountRemovalRecords];
  v4 = PKCombinedHash(17, v3);
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