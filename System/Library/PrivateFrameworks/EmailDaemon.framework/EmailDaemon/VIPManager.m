@interface VIPManager
+ (VIPManager)defaultInstance;
+ (void)setBackingManager:(id)a3;
- (BOOL)hasVIPs;
- (BOOL)isVIPAddress:(id)a3;
- (EAEmailAddressSet)allVIPEmailAddresses;
- (NSSet)allVIPs;
- (VIPManager)initWithBackingManager:(id)a3;
- (id)allVIPEmailAddressesCriterion;
- (id)criterionForEmailAddresses:(id)a3;
- (id)sortedVIPs;
- (id)vipCriteria;
- (id)vipForEmailAddresses:(id)a3 andDisplayNames:(id)a4;
- (id)vipWithIdentifier:(id)a3;
- (void)_vipsDidChange:(id)a3;
- (void)deleteVIPWithIdentifier:(id)a3;
- (void)existingPersonForVIP:(id)a3 usingAddressBook:(void *)a4;
- (void)getAllVIPsWithCompletion:(id)a3;
- (void)removeVIPsWithEmailAddresses:(id)a3;
- (void)removeVIPsWithIdentifiers:(id)a3;
- (void)saveVIP:(id)a3;
- (void)saveVIPs:(id)a3;
@end

@implementation VIPManager

+ (void)setBackingManager:(id)a3
{
  v7 = a3;
  v4 = [a1 defaultInstanceLock];
  os_unfair_lock_lock(v4);
  v5 = [[VIPManager alloc] initWithBackingManager:v7];
  v6 = qword_100185B60;
  qword_100185B60 = v5;

  os_unfair_lock_unlock(v4);
}

+ (VIPManager)defaultInstance
{
  v4 = [a1 defaultInstanceLock];
  os_unfair_lock_lock(v4);
  v5 = qword_100185B60;
  os_unfair_lock_unlock(v4);
  if (!v5)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"VIPManager.m" lineNumber:55 description:@"+setBackingManager: must be called before attempting to get the default instance"];
  }

  return v5;
}

- (VIPManager)initWithBackingManager:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = VIPManager;
  v6 = [(VIPManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingManager, a3);
    v8 = objc_alloc_init(NSLock);
    abPersonByVIPIdentifierLock = v7->_abPersonByVIPIdentifierLock;
    v7->_abPersonByVIPIdentifierLock = v8;

    v7->_abPersonByVIPIdentifier = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v7 selector:"_vipsDidChange:" name:EMVIPsDidChangeNotification object:v7->_backingManager];
  }

  return v7;
}

- (BOOL)hasVIPs
{
  v2 = [(VIPManager *)self backingManager];
  v3 = [v2 hasVIPs];

  return v3;
}

- (NSSet)allVIPs
{
  v2 = [(VIPManager *)self backingManager];
  v3 = [v2 allVIPs];

  return v3;
}

- (EAEmailAddressSet)allVIPEmailAddresses
{
  v2 = [(VIPManager *)self backingManager];
  v3 = [v2 allVIPEmailAddresses];

  return v3;
}

- (id)vipWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(VIPManager *)self backingManager];
  v6 = [v5 vipWithIdentifier:v4];

  return v6;
}

- (BOOL)isVIPAddress:(id)a3
{
  v4 = a3;
  v5 = [(VIPManager *)self backingManager];
  v6 = [v5 isVIPAddress:v4];

  return v6;
}

- (void)saveVIPs:(id)a3
{
  v5 = a3;
  v4 = [(VIPManager *)self backingManager];
  [v4 saveVIPs:v5];
}

- (void)removeVIPsWithIdentifiers:(id)a3
{
  v5 = a3;
  v4 = [(VIPManager *)self backingManager];
  [v4 removeVIPsWithIdentifiers:v5];
}

- (void)removeVIPsWithEmailAddresses:(id)a3
{
  v5 = a3;
  v4 = [(VIPManager *)self backingManager];
  [v4 removeVIPsWithEmailAddresses:v5];
}

- (void)getAllVIPsWithCompletion:(id)a3
{
  v5 = a3;
  v4 = [(VIPManager *)self backingManager];
  [v4 getAllVIPsWithCompletion:v5];
}

- (void)_vipsDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:EMVIPsRemovedKey];
  if ([v6 count])
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BB738;
    block[3] = &unk_1001563D8;
    block[4] = self;
    v14 = v6;
    dispatch_async(v7, block);
  }

  v11 = self;
  v8 = v4;
  v12 = v8;
  v9 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v9 performBlock:&v10];
}

- (void)saveVIP:(id)a3
{
  v4 = a3;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#MailServices saveVIP: %@", buf, 0xCu);
  }

  v6 = [[NSSet alloc] initWithObjects:{v4, 0}];
  [(VIPManager *)self saveVIPs:v6];
}

- (void)deleteVIPWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#MailServices deleteVIPWithIdentifier: %@", buf, 0xCu);
  }

  v6 = [[NSSet alloc] initWithObjects:{v4, 0}];
  [(VIPManager *)self removeVIPsWithIdentifiers:v6];
}

- (id)sortedVIPs
{
  v2 = [(VIPManager *)self allVIPs];
  v3 = [v2 allObjects];
  v4 = [v3 mutableCopy];

  [v4 sortUsingComparator:&stru_10015AAA8];

  return v4;
}

- (id)vipForEmailAddresses:(id)a3 andDisplayNames:(id)a4
{
  v25 = a3;
  v22 = a4;
  [(VIPManager *)self allVIPs];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  obj = v33 = 0u;
  v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (!v6)
  {
    v27 = 0;
    goto LABEL_25;
  }

  v7 = 0;
  v27 = 0;
  v24 = *v33;
  do
  {
    v26 = v6;
    for (i = 0; i != v26; i = i + 1)
    {
      if (*v33 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v32 + 1) + 8 * i);
      v10 = [v25 mutableCopy];
      v11 = [v9 emailAddresses];
      [v10 intersectSet:v11];

      v12 = [v10 count];
      v13 = v12;
      if (v7 < v12)
      {
        v14 = v27;
        v27 = v9;
LABEL_20:

        v7 = v13;
        goto LABEL_21;
      }

      if (v7 == v12 && v12)
      {
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v14 = v22;
        v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v15)
        {
          v16 = *v29;
          while (2)
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v29 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v28 + 1) + 8 * j);
              v19 = [v9 name];
              LODWORD(v18) = [v18 isEqualToString:v19];

              if (v18)
              {
                v20 = v9;

                v13 = v7;
                v27 = v20;
                goto LABEL_20;
              }
            }

            v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v13 = v7;
        goto LABEL_20;
      }

LABEL_21:
    }

    v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  }

  while (v6);
LABEL_25:

  return v27;
}

- (void)existingPersonForVIP:(id)a3 usingAddressBook:(void *)a4
{
  v6 = a3;
  [(NSLock *)self->_abPersonByVIPIdentifierLock lock];
  v7 = [v6 identifier];
  Value = CFDictionaryGetValue(self->_abPersonByVIPIdentifier, v7);
  v9 = Value;
  if (a4 && !Value)
  {
    v10 = [v6 emailAddresses];
    v11 = [v6 name];
    v12 = MFCopyClosestMatchingExistingPersonUsingAddressesAndDisplayName();

    if (v12)
    {
      abPersonByVIPIdentifier = self->_abPersonByVIPIdentifier;
      v14 = [v6 identifier];
      CFDictionarySetValue(abPersonByVIPIdentifier, v14, v12);

      v9 = v12;
    }

    else
    {
      v9 = 0;
    }
  }

  [(NSLock *)self->_abPersonByVIPIdentifierLock unlock];
  return v9;
}

- (id)criterionForEmailAddresses:(id)a3
{
  v19 = a3;
  v3 = [v19 count];
  if (v3)
  {
    v4 = [[NSMutableArray alloc] initWithCapacity:v3];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = v19;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          v10 = [v9 emailAddressValue];
          v11 = [v10 simpleAddress];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
          }

          else
          {
            v13 = [v9 stringValue];
          }

          v14 = v13;

          v15 = [v14 mf_copyIDNADecodedEmailAddress];
          v16 = [[MFMessageCriterion alloc] initWithType:35 qualifier:8 expression:v15];
          [v4 addObject:v16];
        }

        v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    v17 = [MFMessageCriterion orCompoundCriterionWithCriteria:v4];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)vipCriteria
{
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(VIPManager *)self sortedVIPs];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v7 = *v17;
    *&v6 = 138412290;
    v15 = v6;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 name];

        if (v10)
        {
          v11 = [v9 emailAddresses];
          v12 = [(VIPManager *)self criterionForEmailAddresses:v11];

          v13 = [v9 name];
          [v12 setName:v13];

          [v3 addObject:v12];
        }

        else
        {
          v12 = MFLogGeneral();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = v15;
            v21 = v9;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "#MailServices vip Sender name is nil: %@", buf, 0xCu);
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)allVIPEmailAddressesCriterion
{
  v3 = [(VIPManager *)self allVIPEmailAddresses];
  v4 = [(VIPManager *)self criterionForEmailAddresses:v3];

  return v4;
}

@end