@interface EMReceivingAccount
- (ECEmailAddress)identityEmailAddress;
- (EMReceivingAccount)initWithCoder:(id)coder;
- (EMReceivingAccount)initWithObjectID:(id)d name:(id)name hostname:(id)hostname builder:(id)builder;
- (id)_calculateIdentityEmailAddress;
- (void)_commonInitName:(id)name hostname:(id)hostname builder:(id)builder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMReceivingAccount

- (ECEmailAddress)identityEmailAddress
{
  v3 = EFAtomicObjectLoad();
  if (!v3)
  {
    _calculateIdentityEmailAddress = [(EMReceivingAccount *)self _calculateIdentityEmailAddress];
    if (_calculateIdentityEmailAddress)
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
  emailAddresses = [(EMReceivingAccount *)self emailAddresses];
  if ([emailAddresses count] <= 1)
  {
    firstObject = [emailAddresses firstObject];
    goto LABEL_39;
  }

  hostname = [(EMReceivingAccount *)self hostname];
  v41 = hostname;
  _lp_highLevelDomainFromHost = [hostname _lp_highLevelDomainFromHost];
  username = [(EMReceivingAccount *)self username];
  emailAddressValue = [username emailAddressValue];
  localPart = [emailAddressValue localPart];
  v7 = localPart;
  v8 = username;
  if (localPart)
  {
    v8 = localPart;
  }

  v35 = v8;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = emailAddresses;
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
      if ([emailAddressValue isEqual:v13])
      {
        firstObject = v13;

        goto LABEL_38;
      }

      if (!v10)
      {
        domain = [v13 domain];
        v15 = [domain ef_caseInsensitiveIsEqualToString:hostname];

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

        localPart2 = [v13 localPart];
        v21 = [localPart2 ef_caseInsensitiveIsEqualToString:v35];

        v22 = MEMORY[0x1E699B820];
        domain2 = [v13 domain];
        LODWORD(v22) = [v22 domain:hostname isSubdomainOfDomain:domain2];

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

          highLevelDomain = [v13 highLevelDomain];
          v26 = [highLevelDomain ef_caseInsensitiveIsEqualToString:_lp_highLevelDomainFromHost];

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
      hostname = v41;
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
    firstObject = v29;
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
    firstObject = [obj firstObject];
    v10 = 0;
    v40 = 0;
    v33 = 0;
    v38 = 0;
    v36 = 0;
  }

LABEL_38:

LABEL_39:
  v30 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (EMReceivingAccount)initWithObjectID:(id)d name:(id)name hostname:(id)hostname builder:(id)builder
{
  dCopy = d;
  nameCopy = name;
  hostnameCopy = hostname;
  builderCopy = builder;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMReceivingAccount.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
  }

  v19.receiver = self;
  v19.super_class = EMReceivingAccount;
  v15 = [(EMObject *)&v19 initWithObjectID:dCopy];
  v16 = v15;
  if (v15)
  {
    [(EMReceivingAccount *)v15 _commonInitName:nameCopy hostname:hostnameCopy builder:builderCopy];
  }

  return v16;
}

- (void)_commonInitName:(id)name hostname:(id)hostname builder:(id)builder
{
  nameCopy = name;
  hostnameCopy = hostname;
  objc_storeStrong(&self->_name, name);
  builderCopy = builder;
  hostname = self->_hostname;
  self->_hostname = hostnameCopy;

  builderCopy[2](builderCopy, self);
}

- (EMReceivingAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = EMReceivingAccount;
  v5 = [(EMObject *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_name"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_hostname"];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __36__EMReceivingAccount_initWithCoder___block_invoke;
    v9[3] = &unk_1E826F4B0;
    v10 = coderCopy;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = EMReceivingAccount;
  [(EMObject *)&v11 encodeWithCoder:coderCopy];
  name = [(EMReceivingAccount *)self name];
  [coderCopy encodeObject:name forKey:@"EFPropertyKey_name"];

  hostname = [(EMReceivingAccount *)self hostname];
  [coderCopy encodeObject:hostname forKey:@"EFPropertyKey_hostname"];

  username = [(EMReceivingAccount *)self username];
  [coderCopy encodeObject:username forKey:@"EFPropertyKey_username"];

  statisticsKind = [(EMReceivingAccount *)self statisticsKind];
  [coderCopy encodeObject:statisticsKind forKey:@"EFPropertyKey_statisticsKind"];

  deliveryAccount = [(EMReceivingAccount *)self deliveryAccount];
  [coderCopy encodeObject:deliveryAccount forKey:@"EFPropertyKey_deliveryAccount"];

  emailAddresses = [(EMReceivingAccount *)self emailAddresses];
  [coderCopy encodeObject:emailAddresses forKey:@"EFPropertyKey_emailAddresses"];

  [coderCopy encodeBool:-[EMReceivingAccount sourceIsManaged](self forKey:{"sourceIsManaged"), @"EFPropertyKey_sourceIsManaged"}];
  [coderCopy encodeBool:-[EMReceivingAccount shouldArchiveByDefault](self forKey:{"shouldArchiveByDefault"), @"EFPropertyKey_shouldArchiveByDefault"}];
  [coderCopy encodeBool:-[EMReceivingAccount isPrimaryiCloudAccount](self forKey:{"isPrimaryiCloudAccount"), @"EFPropertyKey_primaryiCloudAccount"}];
  [coderCopy encodeBool:-[EMReceivingAccount isLocalAccount](self forKey:{"isLocalAccount"), @"EFPropertyKey_isLocalAccount"}];
}

@end