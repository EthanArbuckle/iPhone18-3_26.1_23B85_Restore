@interface EMReceivingAccount
- (ECEmailAddress)identityEmailAddress;
- (EMReceivingAccount)initWithCoder:(id)a3;
- (EMReceivingAccount)initWithObjectID:(id)a3 name:(id)a4 hostname:(id)a5 builder:(id)a6;
- (id)_calculateIdentityEmailAddress;
- (void)_commonInitName:(id)a3 hostname:(id)a4 builder:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMReceivingAccount

- (ECEmailAddress)identityEmailAddress
{
  v3 = EFAtomicObjectLoad();
  if (!v3)
  {
    v4 = [(EMReceivingAccount *)self _calculateIdentityEmailAddress];
    if (v4)
    {
      v3 = EFAtomicObjectSetIfNil();
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)_calculateIdentityEmailAddress
{
  v47 = *MEMORY[0x1E69E9840];
  v37 = [(EMReceivingAccount *)self emailAddresses];
  if ([v37 count] <= 1)
  {
    v3 = [v37 firstObject];
    goto LABEL_39;
  }

  v4 = [(EMReceivingAccount *)self hostname];
  v41 = v4;
  v32 = [v4 _lp_highLevelDomainFromHost];
  v34 = [(EMReceivingAccount *)self username];
  v5 = [v34 emailAddressValue];
  v6 = [v5 localPart];
  v7 = v6;
  v8 = v34;
  if (v6)
  {
    v8 = v6;
  }

  v35 = v8;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v37;
  v9 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v9)
  {

    goto LABEL_37;
  }

  v36 = 0;
  v38 = 0;
  v33 = 0;
  v40 = 0;
  v10 = 0;
  v11 = *v43;
  do
  {
    v12 = 0;
    do
    {
      if (*v43 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v42 + 1) + 8 * v12);
      if ([v5 isEqual:v13])
      {
        v3 = v13;

        goto LABEL_38;
      }

      if (!v10)
      {
        v14 = [v13 domain];
        v15 = [v14 ef_caseInsensitiveIsEqualToString:v4];

        if (v15)
        {
          v16 = v38;
          v17 = v40;
          v18 = v13;
LABEL_14:
          v19 = v13;
          v38 = v16;
          v40 = v17;
          v10 = v18;
          goto LABEL_17;
        }

        if (v40)
        {
          goto LABEL_16;
        }

        v20 = [v13 localPart];
        v21 = [v20 ef_caseInsensitiveIsEqualToString:v35];

        v22 = MEMORY[0x1E699B820];
        v23 = [v13 domain];
        LODWORD(v22) = [v22 domain:v4 isSubdomainOfDomain:v23];

        if (v22)
        {
          v24 = v36;
          if (!v36)
          {
            v24 = v13;
          }

          v36 = v24;
          v18 = 0;
          v40 = 0;
          v10 = 0;
          v16 = v38;
          v17 = v13;
          if (v21)
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (v38)
          {
            goto LABEL_31;
          }

          v25 = [v13 highLevelDomain];
          v26 = [v25 ef_caseInsensitiveIsEqualToString:v32];

          if (!v26)
          {
            v38 = 0;
LABEL_31:
            v40 = 0;
LABEL_16:
            v10 = 0;
            goto LABEL_17;
          }

          v27 = v33;
          if (!v33)
          {
            v27 = v13;
          }

          v33 = v27;
          v17 = 0;
          v18 = 0;
          v38 = 0;
          v40 = 0;
          v10 = 0;
          v16 = v13;
          if (v21)
          {
            goto LABEL_14;
          }
        }
      }

LABEL_17:
      ++v12;
      v4 = v41;
    }

    while (v9 != v12);
    v28 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    v9 = v28;
  }

  while (v28);

  if (v10)
  {
    v29 = v10;
    goto LABEL_49;
  }

  v29 = v40;
  if (v40)
  {
LABEL_49:
    v3 = v29;
  }

  else
  {
    v29 = v36;
    if (v36)
    {
      v40 = 0;
      goto LABEL_49;
    }

    if (v38)
    {
      v40 = 0;
      v36 = 0;
      v29 = v38;
      goto LABEL_49;
    }

    v29 = v33;
    if (v33)
    {
      v40 = 0;
      v38 = 0;
      v36 = 0;
      goto LABEL_49;
    }

LABEL_37:
    v3 = [obj firstObject];
    v10 = 0;
    v40 = 0;
    v33 = 0;
    v38 = 0;
    v36 = 0;
  }

LABEL_38:

LABEL_39:
  v30 = *MEMORY[0x1E69E9840];

  return v3;
}

- (EMReceivingAccount)initWithObjectID:(id)a3 name:(id)a4 hostname:(id)a5 builder:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v14)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"EMReceivingAccount.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
  }

  v19.receiver = self;
  v19.super_class = EMReceivingAccount;
  v15 = [(EMObject *)&v19 initWithObjectID:v11];
  v16 = v15;
  if (v15)
  {
    [(EMReceivingAccount *)v15 _commonInitName:v12 hostname:v13 builder:v14];
  }

  return v16;
}

- (void)_commonInitName:(id)a3 hostname:(id)a4 builder:(id)a5
{
  v12 = a3;
  v9 = a4;
  objc_storeStrong(&self->_name, a3);
  v10 = a5;
  hostname = self->_hostname;
  self->_hostname = v9;

  v10[2](v10, self);
}

- (EMReceivingAccount)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EMReceivingAccount;
  v5 = [(EMObject *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_name"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_hostname"];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__EMReceivingAccount_initWithCoder___block_invoke;
    v9[3] = &unk_1E826F4B0;
    v10 = v4;
    [(EMReceivingAccount *)v5 _commonInitName:v6 hostname:v7 builder:v9];
  }

  return v5;
}

void __36__EMReceivingAccount_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_username"];
  [v11 setUsername:v3];

  v4 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_statisticsKind"];
  [v11 setStatisticsKind:v4];

  v5 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_deliveryAccount"];
  [v11 setDeliveryAccount:v5];

  [v11 setSourceIsManaged:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_sourceIsManaged"}];
  [v11 setShouldArchiveByDefault:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_shouldArchiveByDefault"}];
  v6 = *(a1 + 32);
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v6 decodeObjectOfClasses:v9 forKey:@"EFPropertyKey_emailAddresses"];
  [v11 setEmailAddresses:v10];

  [v11 setPrimaryiCloudAccount:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_primaryiCloudAccount"}];
  [v11 setIsLocalAccount:{objc_msgSend(*(a1 + 32), "decodeBoolForKey:", @"EFPropertyKey_isLocalAccount"}];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EMReceivingAccount;
  [(EMObject *)&v11 encodeWithCoder:v4];
  v5 = [(EMReceivingAccount *)self name];
  [v4 encodeObject:v5 forKey:@"EFPropertyKey_name"];

  v6 = [(EMReceivingAccount *)self hostname];
  [v4 encodeObject:v6 forKey:@"EFPropertyKey_hostname"];

  v7 = [(EMReceivingAccount *)self username];
  [v4 encodeObject:v7 forKey:@"EFPropertyKey_username"];

  v8 = [(EMReceivingAccount *)self statisticsKind];
  [v4 encodeObject:v8 forKey:@"EFPropertyKey_statisticsKind"];

  v9 = [(EMReceivingAccount *)self deliveryAccount];
  [v4 encodeObject:v9 forKey:@"EFPropertyKey_deliveryAccount"];

  v10 = [(EMReceivingAccount *)self emailAddresses];
  [v4 encodeObject:v10 forKey:@"EFPropertyKey_emailAddresses"];

  [v4 encodeBool:-[EMReceivingAccount sourceIsManaged](self forKey:{"sourceIsManaged"), @"EFPropertyKey_sourceIsManaged"}];
  [v4 encodeBool:-[EMReceivingAccount shouldArchiveByDefault](self forKey:{"shouldArchiveByDefault"), @"EFPropertyKey_shouldArchiveByDefault"}];
  [v4 encodeBool:-[EMReceivingAccount isPrimaryiCloudAccount](self forKey:{"isPrimaryiCloudAccount"), @"EFPropertyKey_primaryiCloudAccount"}];
  [v4 encodeBool:-[EMReceivingAccount isLocalAccount](self forKey:{"isLocalAccount"), @"EFPropertyKey_isLocalAccount"}];
}

@end