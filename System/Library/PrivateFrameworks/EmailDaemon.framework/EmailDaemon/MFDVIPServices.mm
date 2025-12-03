@interface MFDVIPServices
+ (id)_sharedInstance;
- (id)_allVIPDictionaries;
- (id)_dictionaryFromVIP:(id)p;
- (id)_vipFromDictionary:(id)dictionary;
- (void)allVIPSendersWithCompletion:(id)completion;
- (void)deleteVIPSenderWithIdentifier:(id)identifier withCompletion:(id)completion;
- (void)orderedVIPAddressesAndUnreadCountsWithCompletion:(id)completion;
- (void)saveVIPSender:(id)sender withCompletion:(id)completion;
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

- (id)_dictionaryFromVIP:(id)p
{
  pCopy = p;
  v4 = +[NSMutableDictionary dictionary];
  name = [pCopy name];

  if (name)
  {
    name2 = [pCopy name];
    [v4 setObject:name2 forKeyedSubscript:kVIPDisplayNameKey];
  }

  emailAddresses = [pCopy emailAddresses];
  v8 = [emailAddresses count];

  if (v8)
  {
    emailAddresses2 = [pCopy emailAddresses];
    allObjects = [emailAddresses2 allObjects];
    [v4 setObject:allObjects forKeyedSubscript:kVIPEmailAddressesKey];
  }

  identifier = [pCopy identifier];

  if (identifier)
  {
    identifier2 = [pCopy identifier];
    v13 = [NSString stringWithFormat:@"%@://%@", EMAppleMailShowVIPMessagesURLScheme, identifier2];
    [v4 setObject:v13 forKeyedSubscript:kVIPURLKey];

    identifier3 = [pCopy identifier];
    [v4 setObject:identifier3 forKeyedSubscript:kVIPUniqueIdentifierKey];
  }

  return v4;
}

- (id)_vipFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = kVIPEmailAddressesKey;
  v5 = [dictionaryCopy objectForKeyedSubscript:kVIPEmailAddressesKey];

  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:v4];
    v7 = [EAEmailAddressSet setWithArray:v6];

    v8 = [EMVIP alloc];
    v9 = [dictionaryCopy objectForKeyedSubscript:kVIPUniqueIdentifierKey];
    v10 = [dictionaryCopy objectForKeyedSubscript:kVIPDisplayNameKey];
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
  sortedVIPs = [v4 sortedVIPs];

  v6 = [sortedVIPs countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(sortedVIPs);
        }

        v9 = [(MFDVIPServices *)self _dictionaryFromVIP:*(*(&v11 + 1) + 8 * i)];
        [v3 addObject:v9];
      }

      v6 = [sortedVIPs countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)orderedVIPAddressesAndUnreadCountsWithCompletion:(id)completion
{
  completionCopy = completion;
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

    if (!completionCopy)
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
  accountsProvider = [v10 accountsProvider];
  displayedAccounts = [accountsProvider displayedAccounts];

  v13 = [displayedAccounts countByEnumeratingWithState:&v28 objects:v38 count:16];
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
          objc_enumerationMutation(displayedAccounts);
        }

        v16 = [*(*(&v28 + 1) + 8 * v15) mailboxUidOfType:7 createIfNeeded:0];
        criterion = [v16 criterion];
        [v9 addObject:criterion];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [displayedAccounts countByEnumeratingWithState:&v28 objects:v38 count:16];
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
  if (completionCopy)
  {
LABEL_12:
    completionCopy[2](completionCopy, v5, v7);
  }

LABEL_13:
}

- (void)allVIPSendersWithCompletion:(id)completion
{
  completionCopy = completion;
  _allVIPDictionaries = [(MFDVIPServices *)self _allVIPDictionaries];
  completionCopy[2](completionCopy, _allVIPDictionaries, 0);
}

- (void)saveVIPSender:(id)sender withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = [(MFDVIPServices *)self _vipFromDictionary:sender];
  v7 = +[VIPManager defaultInstance];
  [v7 saveVIP:v6];

  v8 = [(MFDVIPServices *)self _dictionaryFromVIP:v6];
  completionCopy[2](completionCopy, v8, 0);
}

- (void)deleteVIPSenderWithIdentifier:(id)identifier withCompletion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v6 = +[VIPManager defaultInstance];
  [v6 deleteVIPWithIdentifier:identifierCopy];

  completionCopy[2](completionCopy, 0);
}

@end