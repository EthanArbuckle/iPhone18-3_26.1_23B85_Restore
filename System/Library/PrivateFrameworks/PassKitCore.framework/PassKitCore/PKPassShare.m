@interface PKPassShare
+ (id)createTaggedShare;
- (BOOL)appendCredentialShareDictionary:(id)a3 entitlements:(id)a4;
- (BOOL)createdByActiveUser;
- (BOOL)isEditable;
- (BOOL)isEqual:(id)a3;
- (BOOL)isParentOfShare:(id)a3;
- (BOOL)isRevokable;
- (BOOL)isSameUnderlyingShareAs:(id)a3;
- (BOOL)mostRestrictiveIntraAccountSharingEnabled;
- (NSUUID)uuidIdentifier;
- (PKPassShare)init;
- (PKPassShare)initWithCoder:(id)a3;
- (PKPassShare)initWithDictionary:(id)a3;
- (PKPassShare)initWithSubcredentialDictionary:(id)a3 isForCurrentUser:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descendantsInShares:(id)a3;
- (id)description;
- (unint64_t)hash;
- (unint64_t)status;
- (void)addCredentialShare:(id)a3;
- (void)addCredentialShares:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setStatus:(unint64_t)a3;
- (void)updateDisplayableSharedEntitlementsFromDisplayableEntitlements:(id)a3;
@end

@implementation PKPassShare

+ (id)createTaggedShare
{
  v2 = objc_alloc_init(PKPassShare);
  v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v4 = [v3 UUIDString];
  [(PKPassShare *)v2 setIdentifier:v4];

  [(PKPassShare *)v2 setStatus:3];
  return v2;
}

- (PKPassShare)init
{
  v3.receiver = self;
  v3.super_class = PKPassShare;
  return [(PKPassShare *)&v3 init];
}

- (PKPassShare)initWithDictionary:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_20;
  }

  v35.receiver = self;
  v35.super_class = PKPassShare;
  self = [(PKPassShare *)&v35 init];
  if (self)
  {
    v5 = [v4 PKStringForKey:@"shareIdentifier"];
    identifier = self->_identifier;
    self->_identifier = v5;

    if (self->_identifier)
    {
      v7 = [v4 PKStringForKey:@"recipient"];
      recipientNickname = self->_recipientNickname;
      self->_recipientNickname = v7;

      v9 = [v4 PKStringForKey:@"sender"];
      senderShareIdentifier = self->_senderShareIdentifier;
      self->_senderShareIdentifier = v9;

      v11 = [v4 PKStringForKey:@"status"];
      self->_status = PKShareStatusFromString(v11);

      v12 = [v4 PKDateForKey:@"creationDate"];
      creationDate = self->_creationDate;
      self->_creationDate = v12;

      v14 = [v4 PKBoolForKey:@"managementEnabled"];
      v15 = 2;
      if (!v14)
      {
        v15 = 0;
      }

      self->_manageability = v15;
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v30 = v4;
      v17 = [v4 PKArrayContaining:objc_opt_class() forKey:@"sharedEntitlements"];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v31 objects:v38 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v32;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v32 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v31 + 1) + 8 * i);
            v23 = [[PKPassSharedEntitlement alloc] initWithDictionary:v22];
            if (v23)
            {
              [v16 addObject:v23];
            }

            else
            {
              v24 = PKLogFacilityTypeGetObject(0x22uLL);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138477827;
                v37 = v22;
                _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "PKPassShare: Unable to create shared entitlement from %{private}@", buf, 0xCu);
              }
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v31 objects:v38 count:16];
        }

        while (v19);
      }

      v25 = [v16 copy];
      self = v29;
      sharedEntitlements = v29->_sharedEntitlements;
      v29->_sharedEntitlements = v25;

      v4 = v30;
      goto LABEL_19;
    }

LABEL_20:
    v27 = 0;
    goto LABEL_21;
  }

LABEL_19:
  self = self;
  v27 = self;
LABEL_21:

  return v27;
}

- (PKPassShare)initWithSubcredentialDictionary:(id)a3 isForCurrentUser:(BOOL)a4
{
  v37[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v34.receiver = self;
    v34.super_class = PKPassShare;
    self = [(PKPassShare *)&v34 init];
    if (!self)
    {
LABEL_32:
      self = self;
      v16 = self;
      goto LABEL_33;
    }

    v7 = [v6 PKStringForKey:@"groupIdentifier"];
    groupIdentifier = self->_groupIdentifier;
    self->_groupIdentifier = v7;

    objc_storeStrong(&self->_identifier, self->_groupIdentifier);
    if (self->_identifier)
    {
      v9 = [v6 PKStringForKey:@"sharerGroupIdentifier"];
      senderGroupIdentifier = self->_senderGroupIdentifier;
      self->_senderGroupIdentifier = v9;

      v11 = self->_groupIdentifier;
      v12 = self->_senderGroupIdentifier;
      v13 = v11;
      v14 = v13;
      if (v12 == v13)
      {
      }

      else
      {
        if (v12)
        {
          v15 = v13 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {

LABEL_15:
          goto LABEL_16;
        }

        v17 = [(NSString *)v12 isEqualToString:v13];

        if (!v17)
        {
LABEL_16:
          self->_isForCurrentUser = a4;
          v18 = [v6 PKDateForKey:@"validFrom"];
          creationDate = self->_creationDate;
          self->_creationDate = v18;

          if (self->_isForCurrentUser)
          {
            PKLocalizedShareableCredentialString(&cfstr_ShareManagemen.isa, 0);
          }

          else
          {
            [v6 PKStringForKey:@"friendlyName"];
          }
          v20 = ;
          recipientNickname = self->_recipientNickname;
          self->_recipientNickname = v20;

          if (self->_isForCurrentUser)
          {
            v22 = 0;
          }

          else
          {
            v22 = [v6 PKBoolForKey:@"managementEnabled"];
          }

          self->_manageability = v22;
          v23 = [v6 PKDictionaryForKey:@"entitlement"];
          v24 = [[PKPassSharedEntitlement alloc] initWithSubcredentialDictionary:v23];
          v25 = v24;
          if (v24)
          {
            v37[0] = v24;
            v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
            p_super = &self->_sharedEntitlements->super;
            self->_sharedEntitlements = v26;
          }

          else
          {
            p_super = PKLogFacilityTypeGetObject(0x22uLL);
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138477827;
              v36 = v23;
              _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "PKPassShare: Unable to create shared entitlement from %{private}@", buf, 0xCu);
            }
          }

          v28 = [v6 PKArrayContaining:objc_opt_class() forKey:@"sharedKeysData"];
          v29 = [v28 pk_arrayBySafelyApplyingBlock:&__block_literal_global_212];
          credentialShares = self->_credentialShares;
          self->_credentialShares = v29;

          v31 = self->_credentialShares;
          if (!v31 || ![(NSArray *)v31 count])
          {

            v32 = PKLogFacilityTypeGetObject(0x22uLL);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138477827;
              v36 = v23;
              _os_log_impl(&dword_1AD337000, v32, OS_LOG_TYPE_DEFAULT, "PKPassShare: Discarding subcredential share because missing shared key data from %{private}@", buf, 0xCu);
            }

            self = 0;
          }

          goto LABEL_32;
        }
      }

      v12 = self->_senderGroupIdentifier;
      self->_senderGroupIdentifier = @"owner";
      goto LABEL_15;
    }
  }

  v16 = 0;
LABEL_33:

  return v16;
}

PKPassCredentialShare *__64__PKPassShare_initWithSubcredentialDictionary_isForCurrentUser___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPassCredentialShare alloc] initWithSubcredentialDictionary:v2];

  return v3;
}

- (BOOL)appendCredentialShareDictionary:(id)a3 entitlements:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (!v6 || !v7)
  {
    goto LABEL_32;
  }

  v58 = 0;
  v10 = PKShareStatusFromCarKeyIntStatus([v6 PKIntegerForKey:@"status"], &v58);
  v11 = v58;
  if (v58)
  {
    goto LABEL_31;
  }

  v49 = v10;
  v50 = v58;
  v12 = [v6 PKDictionaryForKey:@"keyConfiguration"];
  v13 = [v12 PKStringForKey:@"friendlyName"];
  [(PKPassShare *)self setRecipientNickname:v13];

  v51 = v12;
  v14 = [v12 PKIntegerForKey:@"rights"];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v54 objects:v60 count:16];
  if (!v16)
  {
    goto LABEL_25;
  }

  v17 = v16;
  v18 = *v55;
  v48 = self;
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v55 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v54 + 1) + 8 * i);
      v21 = [v20 value];
      v22 = [v21 integerValue];

      if (v22 == v14)
      {
        v23 = objc_alloc_init(PKPassSharedEntitlement);
        v24 = [v20 identifier];
        [(PKPassSharedEntitlement *)v23 setEntitlementIdentifier:v24];

        v25 = [v51 PKDateForKey:@"keyValidFrom"];
        v26 = [v51 PKDateForKey:@"keyValidTo"];
        v27 = v26;
        if (v25)
        {
          v28 = [MEMORY[0x1E695DF00] now];
          v29 = [v25 compare:v28] == 1;

          if (v27)
          {
LABEL_15:
            v30 = [MEMORY[0x1E695DF00] distantFuture];
            v31 = [v27 compare:v30] == -1;

LABEL_18:
            if (v29 || v31)
            {
              v32 = objc_alloc_init(PKPassShareTimeConfiguration);
              v33 = v32;
              if (v29)
              {
                [(PKPassShareTimeConfiguration *)v32 setStartDate:v25];
              }

              if (v31)
              {
                [(PKPassShareTimeConfiguration *)v33 setExpirationDate:v27];
              }

              [(PKPassSharedEntitlement *)v23 setTimeConfiguration:v33];
            }

            v59 = v23;
            v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
            self = v48;
            sharedEntitlements = v48->_sharedEntitlements;
            v48->_sharedEntitlements = v34;

            goto LABEL_25;
          }
        }

        else
        {
          v29 = 0;
          if (v26)
          {
            goto LABEL_15;
          }
        }

        v31 = 0;
        goto LABEL_18;
      }
    }

    v17 = [v15 countByEnumeratingWithState:&v54 objects:v60 count:16];
    self = v48;
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_25:

  v36 = [v6 PKStringForKey:@"keyID"];
  credentialShares = self->_credentialShares;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __60__PKPassShare_appendCredentialShareDictionary_entitlements___block_invoke;
  v52[3] = &unk_1E79E1E78;
  v38 = v36;
  v53 = v38;
  v39 = [(NSArray *)credentialShares pk_firstObjectPassingTest:v52];
  if (!v39)
  {
    v39 = objc_alloc_init(PKPassCredentialShare);
    [(PKPassCredentialShare *)v39 setIdentifier:v38];
    v40 = [(NSArray *)self->_credentialShares mutableCopy];
    v41 = v40;
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v43 = v42;

    [v43 addObject:v39];
    v44 = [v43 copy];
    v45 = self->_credentialShares;
    self->_credentialShares = v44;
  }

  v46 = [v6 PKStringForKey:@"deviceType"];
  [(PKPassCredentialShare *)v39 setTargetDevice:PKPassCredentialShareTargetDeviceFromString(v46)];

  [(PKPassCredentialShare *)v39 setStatus:v49];
  v11 = v50;
LABEL_31:
  v9 = v11 ^ 1;
LABEL_32:

  return v9;
}

uint64_t __60__PKPassShare_appendCredentialShareDictionary_entitlements___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = v2;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
    v8 = 1;
  }

  else
  {
    if (v4)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v4 isEqualToString:v5];
    }
  }

  return v8;
}

uint64_t __51__PKPassShare__effectiveStatusFromCredentialShares__block_invoke(unint64_t a1)
{
  if (a1 > 9)
  {
    return 1000;
  }

  else
  {
    return qword_1ADB9B368[a1];
  }
}

- (NSUUID)uuidIdentifier
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:self->_identifier];

  return v2;
}

- (void)addCredentialShare:(id)a3
{
  credentialShares = self->_credentialShares;
  v5 = a3;
  v6 = [(NSArray *)credentialShares mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v11 = v8;

  [v11 addObject:v5];
  v9 = [v11 copy];
  v10 = self->_credentialShares;
  self->_credentialShares = v9;
}

- (void)addCredentialShares:(id)a3
{
  credentialShares = self->_credentialShares;
  v5 = a3;
  v6 = [(NSArray *)credentialShares mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v11 = v8;

  [v11 addObjectsFromArray:v5];
  v9 = [v11 copy];
  v10 = self->_credentialShares;
  self->_credentialShares = v9;
}

- (void)setStatus:(unint64_t)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    self->_status = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_credentialShares;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) setStatus:{a3, v9}];
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (unint64_t)status
{
  v20 = *MEMORY[0x1E69E9840];
  if (![(NSArray *)self->_credentialShares count])
  {
    return self->_status;
  }

  v3 = [(NSArray *)self->_credentialShares firstObject];
  v4 = [v3 status];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_credentialShares;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = __51__PKPassShare__effectiveStatusFromCredentialShares__block_invoke(v4);
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) status];
        if (v11 != v4)
        {
          v12 = v11;
          v13 = __51__PKPassShare__effectiveStatusFromCredentialShares__block_invoke(v11);
          if (v13 < v8)
          {
            v8 = v13;
            v4 = v12;
          }
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (BOOL)isSameUnderlyingShareAs:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    identifier = self->_identifier;
    if (identifier && ([v4 identifier], (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (v8 = v7, v9 = -[NSString isEqual:](identifier, "isEqual:", v7), v8, (v9 & 1) != 0) || (recipientHandle = self->_recipientHandle) != 0 && v5[8] && (-[NSString isEqual:](recipientHandle, "isEqual:") & 1) != 0 || (groupIdentifier = self->_groupIdentifier) != 0 && (objc_msgSend(v5, "groupIdentifier"), (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, v15 = -[NSString isEqual:](groupIdentifier, "isEqual:", v13), v14, (v15 & 1) != 0))
    {
      v10 = 1;
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v16 = self->_credentialShares;
      v33 = [(NSArray *)v16 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v33)
      {
        v17 = *v40;
        v34 = v16;
        v32 = *v40;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v40 != v17)
            {
              objc_enumerationMutation(v16);
            }

            v19 = *(*(&v39 + 1) + 8 * i);
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v20 = [v5 credentialShares];
            v21 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v36;
              do
              {
                for (j = 0; j != v22; ++j)
                {
                  if (*v36 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = *(*(&v35 + 1) + 8 * j);
                  v26 = [v19 identifier];
                  if (v26)
                  {
                    v27 = v26;
                    v28 = [v25 identifier];
                    if (v28)
                    {
                      v29 = v28;
                      v30 = [v27 isEqual:v28];

                      if (v30)
                      {

                        v10 = 1;
                        v16 = v34;
                        goto LABEL_35;
                      }
                    }

                    else
                    {
                    }
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
              }

              while (v22);
            }

            v16 = v34;
            v17 = v32;
          }

          v10 = 0;
          v33 = [(NSArray *)v34 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v33);
      }

      else
      {
        v10 = 0;
      }

LABEL_35:
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isParentOfShare:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 groupIdentifier];
  v6 = [v4 senderGroupIdentifier];
  if (!v5)
  {
    goto LABEL_13;
  }

  groupIdentifier = self->_groupIdentifier;
  v8 = v5;
  v9 = groupIdentifier;
  v10 = v9;
  if (v8 == v9)
  {

LABEL_55:
    v52 = 0;
    goto LABEL_63;
  }

  if (v9)
  {
    v11 = [(NSString *)v8 isEqualToString:v9];

    if (v11)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  v12 = v8;
  v13 = v6;
  v14 = v13;
  if (v12 == v13)
  {

    goto LABEL_55;
  }

  if (!v13)
  {
LABEL_18:

    goto LABEL_19;
  }

  v15 = [(NSString *)v12 isEqualToString:v13];

  if (v15)
  {
    goto LABEL_55;
  }

  v16 = v14;
  if (v16 == @"owner")
  {
    goto LABEL_55;
  }

  v17 = v16;
  v18 = [(__CFString *)v16 isEqualToString:@"owner"];

  if (v18)
  {
    goto LABEL_55;
  }

LABEL_13:
  if (v6)
  {
    v19 = self->_groupIdentifier;
    v12 = v6;
    v20 = v19;
    v21 = v20;
    if (v12 == v20)
    {

LABEL_57:
      v52 = 1;
      goto LABEL_63;
    }

    if (v20)
    {
      v22 = [(NSString *)v12 isEqualToString:v20];

      if (v22)
      {
        goto LABEL_57;
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_19:
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v23 = [v4 credentialShares];
  v56 = [v23 countByEnumeratingWithState:&v66 objects:v71 count:16];
  if (!v56)
  {
    goto LABEL_47;
  }

  v24 = *v67;
  v60 = v5;
  v61 = v4;
  v58 = v23;
  v59 = v6;
  v54 = *v67;
  v55 = self;
  do
  {
    v25 = 0;
    do
    {
      if (*v67 != v24)
      {
        objc_enumerationMutation(v23);
      }

      v57 = v25;
      v26 = *(*(&v66 + 1) + 8 * v25);
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v27 = self->_credentialShares;
      v28 = [(NSArray *)v27 countByEnumeratingWithState:&v62 objects:v70 count:16];
      if (!v28)
      {
        goto LABEL_45;
      }

      v29 = v28;
      v30 = *v63;
      while (2)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v63 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v62 + 1) + 8 * i);
          v33 = [v26 identifier];
          v34 = [v32 identifier];
          v35 = v33;
          v36 = v34;
          v37 = v36;
          v38 = v36;
          v39 = v35;
          if (v35 == v36)
          {
            goto LABEL_41;
          }

          if (v35 && v36)
          {
            v40 = [v35 isEqualToString:v36];

            if (v40)
            {
              goto LABEL_42;
            }
          }

          else
          {
          }

          v41 = [v26 senderKeyIdentifier];
          v42 = [v32 identifier];
          v39 = v41;
          v43 = v42;
          v38 = v43;
          if (v39 == v43)
          {

LABEL_53:
            v52 = 1;
            v5 = v60;
            v4 = v61;
            v6 = v59;
            goto LABEL_63;
          }

          if (!v39 || !v43)
          {

LABEL_41:
LABEL_42:

            continue;
          }

          v44 = [v39 isEqualToString:v43];

          if (v44)
          {
            goto LABEL_53;
          }
        }

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v62 objects:v70 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }

LABEL_45:

      v25 = v57 + 1;
      v5 = v60;
      v4 = v61;
      v23 = v58;
      v6 = v59;
      v24 = v54;
      self = v55;
    }

    while (v57 + 1 != v56);
    v56 = [v58 countByEnumeratingWithState:&v66 objects:v71 count:16];
  }

  while (v56);
LABEL_47:

  v45 = [v4 senderShareIdentifier];
  v46 = v45;
  if (!v45)
  {
    goto LABEL_61;
  }

  identifier = self->_identifier;
  v48 = v45;
  v49 = identifier;
  v50 = v49;
  if (v48 == v49)
  {

LABEL_59:
    v52 = 1;
    goto LABEL_62;
  }

  if (!v49)
  {

    goto LABEL_61;
  }

  v51 = [(NSString *)v48 isEqualToString:v49];

  if (v51)
  {
    goto LABEL_59;
  }

LABEL_61:
  v52 = 0;
LABEL_62:

LABEL_63:
  return v52;
}

- (BOOL)createdByActiveUser
{
  v2 = self->_senderShareIdentifier;
  v3 = v2;
  if (v2 == @"self")
  {
    v4 = 1;
  }

  else if (v2)
  {
    v4 = [(__CFString *)v2 caseInsensitiveCompare:@"self"]== 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)descendantsInShares:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __35__PKPassShare_descendantsInShares___block_invoke;
  v20[3] = &unk_1E79E1EA0;
  v20[4] = self;
  v6 = [v4 pk_objectsPassingTest:v20];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([(PKPassShare *)self isParentOfShare:v11])
        {
          [v5 addObject:v11];
          v12 = [v6 pk_arrayByRemovingObject:v11];
          v13 = [v11 descendantsInShares:v12];
          [v5 addObjectsFromArray:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

uint64_t __35__PKPassShare_descendantsInShares___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [v3 isEqual:v4];
  }

  else
  {
    v6 = v3 == v4;
  }

  return v6 ^ 1u;
}

- (BOOL)mostRestrictiveIntraAccountSharingEnabled
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_sharedEntitlements;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) intraAccountSharingEnabled])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isRevokable
{
  status = self->_status;
  v3 = status > 9;
  v4 = (1 << status) & 0x340;
  return (v3 || v4 == 0) && self->_manageability != 0;
}

- (BOOL)isEditable
{
  status = self->_status;
  v3 = status > 9;
  v4 = (1 << status) & 0x340;
  return (v3 || v4 == 0) && self->_manageability > 1;
}

- (void)setIdentifier:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Cannot set nil identifier on share"];
  }

  identifier = self->_identifier;
  self->_identifier = v4;
}

- (void)updateDisplayableSharedEntitlementsFromDisplayableEntitlements:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [a3 pk_indexDictionaryByApplyingBlock:&__block_literal_global_101];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = self;
    v6 = self->_sharedEntitlements;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [v11 entitlementIdentifier];
          v13 = [v4 objectForKeyedSubscript:v12];
          v14 = [v13 copy];

          [v14 replaceEntitlementWithSharedEntitlement:v11];
          [v5 safelyAddObject:v14];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    v15 = [v5 copy];
    displayableSharedEntitlements = v18->_displayableSharedEntitlements;
    v18->_displayableSharedEntitlements = v15;
  }

  else
  {
    v17 = self->_displayableSharedEntitlements;
    self->_displayableSharedEntitlements = MEMORY[0x1E695E0F0];
  }
}

- (PKPassShare)initWithCoder:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = PKPassShare;
  v5 = [(PKPassShare *)&v42 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = [v8 unsignedIntegerValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipientNickname"];
    recipientNickname = v5->_recipientNickname;
    v5->_recipientNickname = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderShareIdentifier"];
    senderShareIdentifier = v5->_senderShareIdentifier;
    v5->_senderShareIdentifier = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderGroupIdentifier"];
    senderGroupIdentifier = v5->_senderGroupIdentifier;
    v5->_senderGroupIdentifier = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manageability"];
    v5->_manageability = [v17 unsignedIntegerValue];

    v5->_isForCurrentUser = [v4 decodeBoolForKey:@"isForCurrentUser"];
    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"sharedEntitlement"];
    sharedEntitlements = v5->_sharedEntitlements;
    v5->_sharedEntitlements = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"displayableSharedEntitlements"];
    displayableSharedEntitlements = v5->_displayableSharedEntitlements;
    v5->_displayableSharedEntitlements = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v28;

    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"credentialShares"];
    credentialShares = v5->_credentialShares;
    v5->_credentialShares = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subcredentialIdentifier"];
    subcredentialIdentifier = v5->_subcredentialIdentifier;
    v5->_subcredentialIdentifier = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipientHandle"];
    recipientHandle = v5->_recipientHandle;
    v5->_recipientHandle = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activationOptions"];
    activationOptions = v5->_activationOptions;
    v5->_activationOptions = v39;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v7 = a3;
  [v7 encodeObject:identifier forKey:@"identifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_status];
  [v7 encodeObject:v5 forKey:@"status"];

  [v7 encodeObject:self->_recipientNickname forKey:@"recipientNickname"];
  [v7 encodeObject:self->_senderShareIdentifier forKey:@"senderShareIdentifier"];
  [v7 encodeObject:self->_senderGroupIdentifier forKey:@"senderGroupIdentifier"];
  [v7 encodeObject:self->_creationDate forKey:@"creationDate"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_manageability];
  [v7 encodeObject:v6 forKey:@"manageability"];

  [v7 encodeBool:self->_isForCurrentUser forKey:@"isForCurrentUser"];
  [v7 encodeObject:self->_sharedEntitlements forKey:@"sharedEntitlement"];
  [v7 encodeObject:self->_groupIdentifier forKey:@"groupIdentifier"];
  [v7 encodeObject:self->_displayableSharedEntitlements forKey:@"displayableSharedEntitlements"];
  [v7 encodeObject:self->_credentialShares forKey:@"credentialShares"];
  [v7 encodeObject:self->_subcredentialIdentifier forKey:@"subcredentialIdentifier"];
  [v7 encodeObject:self->_recipientHandle forKey:@"recipientHandle"];
  [v7 encodeObject:self->_activationOptions forKey:@"activationOptions"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"identifier: '%@'; ", self->_identifier];
  v7 = PKShareStatusToString([(PKPassShare *)self status]);
  [v6 appendFormat:@"status: '%@'; ", v7];

  [v6 appendFormat:@"recipientNickname: '%@'; ", self->_recipientNickname];
  if (self->_isForCurrentUser)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v6 appendFormat:@"isForCurrentUser: '%@'; ", v8];
  [v6 appendFormat:@"recipientHandle: '%@'; ", self->_recipientHandle];
  [v6 appendFormat:@"senderShareIdentifier: '%@'; ", self->_senderShareIdentifier];
  [v6 appendFormat:@"senderGroupIdentifier: '%@'; ", self->_senderGroupIdentifier];
  [v6 appendFormat:@"creationDate: '%@'; ", self->_creationDate];
  v9 = PKPassShareManageabilityToString(self->_manageability);
  [v6 appendFormat:@"manageability: '%@'; ", v9];

  [v6 appendFormat:@"groupIdentifier: '%@'; ", self->_groupIdentifier];
  [v6 appendFormat:@"credentialShares: '%@'; ", self->_credentialShares];
  [v6 appendFormat:@"subcredentialIdentifier: '%@'; ", self->_subcredentialIdentifier];
  [v6 appendFormat:@"activationOptions: '%@'; ", self->_activationOptions];
  [v6 appendFormat:@"\nsharedEntitlement: '%@'\n; ", self->_sharedEntitlements];
  [v6 appendFormat:@">"];
  v10 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_identifier)
  {
    [v3 addObject:?];
  }

  if (self->_recipientNickname)
  {
    [v4 addObject:?];
  }

  if (self->_senderShareIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_senderGroupIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_creationDate)
  {
    [v4 addObject:?];
  }

  if (self->_sharedEntitlements)
  {
    [v4 addObject:?];
  }

  if (self->_groupIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_credentialShares)
  {
    [v4 addObject:?];
  }

  if (self->_subcredentialIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_recipientHandle)
  {
    [v4 addObject:?];
  }

  if (self->_activationOptions)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);
  v6 = self->_status - v5 + 32 * v5;
  v7 = self->_manageability - v6 + 32 * v6;
  v8 = self->_isForCurrentUser - v7 + 32 * v7;

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        if (!self)
        {
LABEL_63:

          goto LABEL_64;
        }

        identifier = self->_identifier;
        v8 = v6->_identifier;
        if (identifier && v8)
        {
          if (([(NSString *)identifier isEqual:?]& 1) == 0)
          {
            goto LABEL_62;
          }
        }

        else if (identifier != v8)
        {
          goto LABEL_62;
        }

        v9 = [(PKPassShare *)self status];
        if (v9 == [(PKPassShare *)v6 status])
        {
          recipientNickname = self->_recipientNickname;
          v11 = v6->_recipientNickname;
          if (recipientNickname && v11)
          {
            if (([(NSString *)recipientNickname isEqual:?]& 1) == 0)
            {
              goto LABEL_62;
            }
          }

          else if (recipientNickname != v11)
          {
            goto LABEL_62;
          }

          senderShareIdentifier = self->_senderShareIdentifier;
          v13 = v6->_senderShareIdentifier;
          if (senderShareIdentifier && v13)
          {
            if (([(NSString *)senderShareIdentifier isEqual:?]& 1) == 0)
            {
              goto LABEL_62;
            }
          }

          else if (senderShareIdentifier != v13)
          {
            goto LABEL_62;
          }

          senderGroupIdentifier = self->_senderGroupIdentifier;
          v15 = v6->_senderGroupIdentifier;
          if (senderGroupIdentifier && v15)
          {
            if (([(NSString *)senderGroupIdentifier isEqual:?]& 1) == 0)
            {
              goto LABEL_62;
            }
          }

          else if (senderGroupIdentifier != v15)
          {
            goto LABEL_62;
          }

          creationDate = self->_creationDate;
          v17 = v6->_creationDate;
          if (creationDate && v17)
          {
            if (([(NSDate *)creationDate isEqual:?]& 1) == 0)
            {
              goto LABEL_62;
            }
          }

          else if (creationDate != v17)
          {
            goto LABEL_62;
          }

          if (self->_manageability != v6->_manageability || self->_isForCurrentUser != v6->_isForCurrentUser)
          {
            goto LABEL_62;
          }

          sharedEntitlements = self->_sharedEntitlements;
          v19 = v6->_sharedEntitlements;
          if (sharedEntitlements && v19)
          {
            if (([(NSArray *)sharedEntitlements isEqual:?]& 1) == 0)
            {
              goto LABEL_62;
            }
          }

          else if (sharedEntitlements != v19)
          {
            goto LABEL_62;
          }

          groupIdentifier = self->_groupIdentifier;
          v21 = v6->_groupIdentifier;
          if (groupIdentifier && v21)
          {
            if (([(NSString *)groupIdentifier isEqual:?]& 1) == 0)
            {
              goto LABEL_62;
            }
          }

          else if (groupIdentifier != v21)
          {
            goto LABEL_62;
          }

          credentialShares = self->_credentialShares;
          v23 = v6->_credentialShares;
          if (credentialShares && v23)
          {
            if (([(NSArray *)credentialShares isEqual:?]& 1) == 0)
            {
              goto LABEL_62;
            }
          }

          else if (credentialShares != v23)
          {
            goto LABEL_62;
          }

          subcredentialIdentifier = self->_subcredentialIdentifier;
          v25 = v6->_subcredentialIdentifier;
          if (subcredentialIdentifier && v25)
          {
            if (([(NSString *)subcredentialIdentifier isEqual:?]& 1) == 0)
            {
              goto LABEL_62;
            }
          }

          else if (subcredentialIdentifier != v25)
          {
            goto LABEL_62;
          }

          recipientHandle = self->_recipientHandle;
          v27 = v6->_recipientHandle;
          if (recipientHandle && v27)
          {
            if (([(NSString *)recipientHandle isEqual:?]& 1) != 0)
            {
LABEL_58:
              activationOptions = self->_activationOptions;
              v29 = v6->_activationOptions;
              if (activationOptions && v29)
              {
                LOBYTE(self) = [(PKPassShareActivationOptions *)activationOptions isEqual:?];
              }

              else
              {
                LOBYTE(self) = activationOptions == v29;
              }

              goto LABEL_63;
            }
          }

          else if (recipientHandle == v27)
          {
            goto LABEL_58;
          }
        }

LABEL_62:
        LOBYTE(self) = 0;
        goto LABEL_63;
      }
    }

    LOBYTE(self) = 0;
  }

LABEL_64:

  return self;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[PKPassShare allocWithZone:?]];
  v5 = [(NSString *)self->_identifier copy];
  identifier = v4->_identifier;
  v4->_identifier = v5;

  v7 = [(NSString *)self->_recipientNickname copy];
  recipientNickname = v4->_recipientNickname;
  v4->_recipientNickname = v7;

  v9 = [(NSString *)self->_senderShareIdentifier copy];
  senderShareIdentifier = v4->_senderShareIdentifier;
  v4->_senderShareIdentifier = v9;

  v11 = [(NSString *)self->_senderGroupIdentifier copy];
  senderGroupIdentifier = v4->_senderGroupIdentifier;
  v4->_senderGroupIdentifier = v11;

  v13 = [(NSDate *)self->_creationDate copy];
  creationDate = v4->_creationDate;
  v4->_creationDate = v13;

  v15 = [(NSArray *)self->_sharedEntitlements copy];
  sharedEntitlements = v4->_sharedEntitlements;
  v4->_sharedEntitlements = v15;

  v17 = [(NSString *)self->_groupIdentifier copy];
  groupIdentifier = v4->_groupIdentifier;
  v4->_groupIdentifier = v17;

  v4->_status = self->_status;
  v4->_manageability = self->_manageability;
  v4->_isForCurrentUser = self->_isForCurrentUser;
  v19 = [(NSArray *)self->_credentialShares copy];
  credentialShares = v4->_credentialShares;
  v4->_credentialShares = v19;

  v21 = [(NSString *)self->_subcredentialIdentifier copy];
  subcredentialIdentifier = v4->_subcredentialIdentifier;
  v4->_subcredentialIdentifier = v21;

  v23 = [(NSString *)self->_recipientHandle copy];
  recipientHandle = v4->_recipientHandle;
  v4->_recipientHandle = v23;

  v25 = [(PKPassShareActivationOptions *)self->_activationOptions copy];
  activationOptions = v4->_activationOptions;
  v4->_activationOptions = v25;

  v27 = [(NSArray *)self->_displayableSharedEntitlements copy];
  displayableSharedEntitlements = v4->_displayableSharedEntitlements;
  v4->_displayableSharedEntitlements = v27;

  return v4;
}

@end