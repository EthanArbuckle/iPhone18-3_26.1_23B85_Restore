@interface MFDVIPServices
+ (id)_sharedInstance;
- (id)_allVIPDictionaries;
- (id)_dictionaryFromVIP:(id)a3;
- (id)_vipFromDictionary:(id)a3;
- (void)allVIPSendersWithCompletion:(id)a3;
- (void)deleteVIPSenderWithIdentifier:(id)a3 withCompletion:(id)a4;
- (void)orderedVIPAddressesAndUnreadCountsWithCompletion:(id)a3;
- (void)saveVIPSender:(id)a3 withCompletion:(id)a4;
@end

@implementation MFDVIPServices

+ (id)_sharedInstance
{
  if (qword_100185880 != -1)
  {
    sub_1000D44B4();
  }

  v3 = qword_100185878;

  return v3;
}

- (id)_dictionaryFromVIP:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 name];

  if (v5)
  {
    v6 = [v3 name];
    [v4 setObject:v6 forKeyedSubscript:kVIPDisplayNameKey];
  }

  v7 = [v3 emailAddresses];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v3 emailAddresses];
    v10 = [v9 allObjects];
    [v4 setObject:v10 forKeyedSubscript:kVIPEmailAddressesKey];
  }

  v11 = [v3 identifier];

  if (v11)
  {
    v12 = [v3 identifier];
    v13 = [NSString stringWithFormat:@"%@://%@", EMAppleMailShowVIPMessagesURLScheme, v12];
    [v4 setObject:v13 forKeyedSubscript:kVIPURLKey];

    v14 = [v3 identifier];
    [v4 setObject:v14 forKeyedSubscript:kVIPUniqueIdentifierKey];
  }

  return v4;
}

- (id)_vipFromDictionary:(id)a3
{
  v3 = a3;
  v4 = kVIPEmailAddressesKey;
  v5 = [v3 objectForKeyedSubscript:kVIPEmailAddressesKey];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:v4];
    v7 = [EAEmailAddressSet setWithArray:v6];

    v8 = [EMVIP alloc];
    v9 = [v3 objectForKeyedSubscript:kVIPUniqueIdentifierKey];
    v10 = [v3 objectForKeyedSubscript:kVIPDisplayNameKey];
    v11 = [v8 initWithIdentifier:v9 name:v10 emailAddresses:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_allVIPDictionaries
{
  v3 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = +[VIPManager defaultInstance];
  v5 = [v4 sortedVIPs];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [(MFDVIPServices *)self _dictionaryFromVIP:*(*(&v11 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)orderedVIPAddressesAndUnreadCountsWithCompletion:(id)a3
{
  v4 = a3;
  [(MFDVIPServices *)self _allVIPDictionaries];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100067588;
  v5 = v33[3] = &unk_1001588F8;
  v34 = v5;
  v24 = objc_retainBlock(v33);
  v23 = +[MFMailMessageLibrary defaultInstance];
  if ([v23 protectedDataAvailability])
  {
    v35 = NSLocalizedDescriptionKey;
    v36 = @"Data protection not available";
    v6 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v7 = [NSError errorWithDomain:@"MFVIPServicesError" code:1 userInfo:v6];

    if (!v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v32[3] = 0;
  v22 = [MFMessageCriterion senderIsVIPCriterion:1];
  v8 = objc_alloc_init(MFMessageCriterion);
  [v8 setCriterionType:25];
  [v8 setAllCriteriaMustBeSatisfied:0];
  v9 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = sub_100027C70();
  v11 = [v10 accountsProvider];
  v12 = [v11 displayedAccounts];

  v13 = [v12 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v13)
  {
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(*(&v28 + 1) + 8 * v15) mailboxUidOfType:7 createIfNeeded:0];
        v17 = [v16 criterion];
        [v9 addObject:v17];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v13);
  }

  [v8 setCriteria:v9];
  v37[0] = v8;
  v37[1] = v22;
  v18 = [MFMessageCriterion messageIsDeletedCriterion:0];
  v37[2] = v18;
  v19 = [NSArray arrayWithObjects:v37 count:3];
  v20 = [MFMessageCriterion andCompoundCriterionWithCriteria:v19];

  v21 = +[MFMailMessageLibrary defaultInstance];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000676E0;
  v25[3] = &unk_100158920;
  v26 = v24;
  v27 = v32;
  [v21 iterateMessagesMatchingCriterion:v20 options:32770 handler:v25];

  [v5 sortUsingComparator:&stru_100158960];
  _Block_object_dispose(v32, 8);
  v7 = 0;
  if (v4)
  {
LABEL_12:
    v4[2](v4, v5, v7);
  }

LABEL_13:
}

- (void)allVIPSendersWithCompletion:(id)a3
{
  v5 = a3;
  v4 = [(MFDVIPServices *)self _allVIPDictionaries];
  v5[2](v5, v4, 0);
}

- (void)saveVIPSender:(id)a3 withCompletion:(id)a4
{
  v9 = a4;
  v6 = [(MFDVIPServices *)self _vipFromDictionary:a3];
  v7 = +[VIPManager defaultInstance];
  [v7 saveVIP:v6];

  v8 = [(MFDVIPServices *)self _dictionaryFromVIP:v6];
  v9[2](v9, v8, 0);
}

- (void)deleteVIPSenderWithIdentifier:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = +[VIPManager defaultInstance];
  [v6 deleteVIPWithIdentifier:v7];

  v5[2](v5, 0);
}

@end