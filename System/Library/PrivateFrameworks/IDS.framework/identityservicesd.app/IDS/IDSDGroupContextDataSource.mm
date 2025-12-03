@interface IDSDGroupContextDataSource
+ (id)sharedInstance;
- (IDSDGroupContextDataSource)init;
- (id)_sponsorAccount;
- (id)_sponsorAlias;
- (void)_groupFromServerResponse:(id)response context:(id)context groupID:(id)d error:(id)error resultCode:(int64_t)code resultDictionary:(id)dictionary allEntries:(id)entries completion:(id)self0;
- (void)groupContext:(id)context fetchGroupWithID:(id)d completion:(id)completion;
- (void)groupContext:(id)context upsertGroupWithInfo:(id)info previousGroup:(id)group completion:(id)completion;
- (void)groupFromPublicDataRepresentation:(id)representation inContext:(id)context completion:(id)completion;
- (void)participantsForCypher:(id)cypher completion:(id)completion;
- (void)publicDataRepresentationForGroup:(id)group inContext:(id)context completion:(id)completion;
- (void)validateCachedGroup:(id)group isParentOfGroup:(id)ofGroup completion:(id)completion;
@end

@implementation IDSDGroupContextDataSource

+ (id)sharedInstance
{
  if (qword_100CBD280 != -1)
  {
    sub_10091D59C();
  }

  v3 = qword_100CBD288;

  return v3;
}

- (IDSDGroupContextDataSource)init
{
  v6.receiver = self;
  v6.super_class = IDSDGroupContextDataSource;
  v2 = [(IDSDGroupContextDataSource *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(IDSGroupServer);
    groupServer = v2->_groupServer;
    v2->_groupServer = v3;
  }

  return v2;
}

- (void)groupContext:(id)context upsertGroupWithInfo:(id)info previousGroup:(id)group completion:(id)completion
{
  contextCopy = context;
  infoCopy = info;
  groupCopy = group;
  completionCopy = completion;
  accountIdentity = [contextCopy accountIdentity];
  deviceKey = [accountIdentity deviceKey];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = deviceKey;
    accountIdentity2 = [contextCopy accountIdentity];
    deviceKey2 = [accountIdentity2 deviceKey];

    cypher = [groupCopy cypher];
    [cypher conversationGroup];
    v49 = v66 = 0;
    v51 = infoCopy;
    v18 = [IDSDGroupContextDataSource _groupWithDeviceIdentity:"_groupWithDeviceIdentity:parent:groupInfo:error:" parent:deviceKey2 groupInfo:? error:?];
    v19 = v66;
    v52 = deviceKey2;
    accountIdentity3 = [deviceKey2 accountIdentity];
    signingIdentity = [accountIdentity3 signingIdentity];
    v65 = v19;
    v22 = [v18 publicDataRepresentationWithSponsor:signingIdentity error:&v65];
    v23 = v65;

    v24 = v22;
    if (v22)
    {
      [NSMutableData dataWithData:v22];
      v46 = v64 = v23;
      v25 = [v18 signData:? error:?];
      v47 = v23;

      v26 = v18;
      if (v25)
      {
        publicKeyData = [v18 publicKeyData];
        if (groupCopy)
        {
          forwardingTicket = [v18 forwardingTicket];
          groupID = [groupCopy groupID];
          [groupID stableGroupID];
          v30 = v29 = v25;
          dataRepresentation = [v30 dataRepresentation];

          groupID2 = [groupCopy groupID];
          v44 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [groupID2 generation]);

          v25 = v29;
        }

        else
        {
          forwardingTicket = 0;
          v44 = 0;
          dataRepresentation = 0;
        }

        v41 = v25;
        groupServer = [(IDSDGroupContextDataSource *)self groupServer];
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_10041AC64;
        v53[3] = &unk_100BDB758;
        v53[4] = self;
        v54 = contextCopy;
        v55 = v47;
        v63 = completionCopy;
        v56 = v26;
        v57 = v52;
        v58 = v51;
        v59 = publicKeyData;
        v60 = v24;
        v61 = v25;
        v62 = forwardingTicket;
        v37 = forwardingTicket;
        v38 = publicKeyData;
        v39 = v37;
        v40 = v38;
        infoCopy = v51;
        [groupServer publishGroupForKey:v40 data:v60 signature:v61 forwardingSig:v39 ENID:dataRepresentation version:v44 completion:v53];

        v36 = v41;
        v35 = v47;
        deviceKey = v48;
      }

      else
      {
        v34 = +[ENLog groupContext];
        infoCopy = v51;
        v35 = v47;
        deviceKey = v48;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          *buf = 138478595;
          v68 = v51;
          v69 = 2113;
          v70 = contextCopy;
          v71 = 2114;
          v72 = groupCopy;
          v73 = 2114;
          v74 = v47;
          _os_log_fault_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "Unable to create group signature {groupInfo: %{private}@, groupContext: %{private}@, previousGroup: %{public}@, error: %{public}@}", buf, 0x2Au);
        }

        (*(completionCopy + 2))(completionCopy, 0, v47);
        v36 = 0;
      }

      v23 = v35;
    }

    else
    {
      v33 = +[ENLog groupContext];
      infoCopy = v51;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 138478595;
        v68 = v51;
        v69 = 2113;
        v70 = contextCopy;
        v71 = 2114;
        v72 = groupCopy;
        v73 = 2114;
        v74 = v23;
        _os_log_fault_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, "Unable to get group.publicRepresentation {groupInfo: %{private}@, groupContext: %{private}@, previousGroup: %{public}@, error: %{public}@}", buf, 0x2Au);
      }

      (*(completionCopy + 2))(completionCopy, 0, v23);
      v26 = v18;
      deviceKey = v48;
    }
  }

  else
  {
    v32 = +[ENLog groupContext];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      sub_10091D5B0();
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)_groupFromServerResponse:(id)response context:(id)context groupID:(id)d error:(id)error resultCode:(int64_t)code resultDictionary:(id)dictionary allEntries:(id)entries completion:(id)self0
{
  responseCopy = response;
  contextCopy = context;
  dCopy = d;
  errorCopy = error;
  dictionaryCopy = dictionary;
  entriesCopy = entries;
  completionCopy = completion;
  accountIdentity = [contextCopy accountIdentity];
  deviceKey = [accountIdentity deviceKey];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accountIdentity2 = [contextCopy accountIdentity];
    deviceKey2 = [accountIdentity2 deviceKey];

    v58 = objc_alloc_init(NSMutableArray);
    if (errorCopy || ![entriesCopy count])
    {
      v23 = +[ENLog groupContext];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        sub_10091D77C();
      }

      v24 = completionCopy;
      (*(completionCopy + 2))(completionCopy, 0, errorCopy);
    }

    else
    {
      v51 = deviceKey;
      v55 = contextCopy;
      v26 = +[ENLog groupContext];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v90 = responseCopy;
        v91 = 2112;
        v92 = 0;
        v93 = 2112;
        v94 = dictionaryCopy;
        v95 = 2112;
        v96 = entriesCopy;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Got groups {%@ %@ %@ %@}", buf, 0x2Au);
      }

      v53 = dictionaryCopy;
      v56 = responseCopy;

      v27 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(entriesCopy, "count")}];
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v52 = entriesCopy;
      obj = entriesCopy;
      v28 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v84;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v84 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v83 + 1) + 8 * i);
            v33 = [IDSMPConversationGroupEntry alloc];
            stableGroupID = [dCopy stableGroupID];
            v35 = [(IDSMPConversationGroupEntry *)v33 initWithStableGroupID:stableGroupID groupServerEntry:v32];

            [v27 addObject:v35];
          }

          v29 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
        }

        while (v29);
      }

      v54 = dCopy;

      v62 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(obj, "count")}];
      v63 = objc_alloc_init(NSMutableSet);
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v60 = v27;
      v66 = [v60 countByEnumeratingWithState:&v79 objects:v87 count:16];
      if (v66)
      {
        v64 = *v80;
        do
        {
          for (j = 0; j != v66; j = j + 1)
          {
            if (*v80 != v64)
            {
              objc_enumerationMutation(v60);
            }

            v37 = *(*(&v79 + 1) + 8 * j);
            data = [v37 data];
            publicKeyData = [v37 publicKeyData];
            signature = [v37 signature];
            groupID = [v37 groupID];
            forwardingTicket = [v37 forwardingTicket];
            modernIdentity = [deviceKey2 modernIdentity];
            v78 = 0;
            v44 = [IDSMPConversationGroup conversationSponsorPairFromPublicData:data publicKey:publicKeyData signature:signature groupID:groupID parent:0 parentPublicKey:0 forwardingTicket:forwardingTicket fullDeviceIdentity:modernIdentity error:&v78];
            v45 = v78;

            if (v44)
            {
              publicKeyData2 = [v37 publicKeyData];
              [v62 setObject:v44 forKeyedSubscript:publicKeyData2];

              sponsorAlias = [v44 sponsorAlias];
              [v63 addObject:sponsorAlias];
            }
          }

          v66 = [v60 countByEnumeratingWithState:&v79 objects:v87 count:16];
        }

        while (v66);
      }

      allObjects = [v63 allObjects];
      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_10041B910;
      v67[3] = &unk_100BDB7A8;
      v68 = v60;
      v69 = v62;
      v70 = v58;
      v71 = deviceKey2;
      v72 = 0;
      dCopy = v54;
      v73 = v54;
      selfCopy = self;
      contextCopy = v55;
      v75 = v55;
      v24 = completionCopy;
      v77 = completionCopy;
      v76 = obj;
      v49 = v62;
      v50 = v60;
      [(IDSDGroupContextDataSource *)self _participantsForDestinations:allObjects completion:v67];

      responseCopy = v56;
      dictionaryCopy = v53;
      errorCopy = 0;
      deviceKey = v51;
      entriesCopy = v52;
    }
  }

  else
  {
    v25 = +[ENLog groupContext];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_10091D5B0();
    }

    v24 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)groupContext:(id)context fetchGroupWithID:(id)d completion:(id)completion
{
  contextCopy = context;
  dCopy = d;
  completionCopy = completion;
  stableGroupID = [dCopy stableGroupID];
  dataRepresentation = [stableGroupID dataRepresentation];

  groupServer = [(IDSDGroupContextDataSource *)self groupServer];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10041C528;
  v17[3] = &unk_100BDB7D0;
  v17[4] = self;
  v18 = contextCopy;
  v19 = dCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = dCopy;
  v16 = contextCopy;
  [groupServer queryGroupServerForENID:dataRepresentation withCompletion:v17];
}

- (void)publicDataRepresentationForGroup:(id)group inContext:(id)context completion:(id)completion
{
  groupCopy = group;
  contextCopy = context;
  completionCopy = completion;
  v10 = +[ENLog groupContext];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v52 = groupCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "group->groupPublicData -- Start {group: %{private}@}", buf, 0xCu);
  }

  accountIdentity = [contextCopy accountIdentity];
  accountKey = [accountIdentity accountKey];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v36 = +[ENLog groupContext];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      sub_10091D8B4(contextCopy);
    }

    v37 = ENGroupContextErrorDomain;
    v57 = NSLocalizedDescriptionKey;
    v58 = @"Unepxcted account key class. Expected IDSAccountIdentity";
    v38 = &v58;
    v39 = &v57;
    goto LABEL_19;
  }

  cypher = [groupCopy cypher];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if ((v15 & 1) == 0)
  {
    v40 = +[ENLog groupContext];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      sub_10091D950(groupCopy);
    }

    v37 = ENGroupContextErrorDomain;
    v55 = NSLocalizedDescriptionKey;
    v56 = @"Unexpected cypher class. Expected IDSConversationGroupCypher";
    v38 = &v56;
    v39 = &v55;
LABEL_19:
    v22 = [NSDictionary dictionaryWithObjects:v38 forKeys:v39 count:1];
    accountKey2 = [NSError errorWithDomain:v37 code:-1000 userInfo:v22];
    completionCopy[2](completionCopy, 0, accountKey2);
    goto LABEL_32;
  }

  accountIdentity2 = [contextCopy accountIdentity];
  accountKey2 = [accountIdentity2 accountKey];

  cypher2 = [groupCopy cypher];
  conversationGroup = [cypher2 conversationGroup];
  signingIdentity = [accountKey2 signingIdentity];
  v50 = 0;
  v21 = [conversationGroup publicDataRepresentationWithSponsor:signingIdentity error:&v50];
  v22 = v50;

  if (v21)
  {
    v49 = v22;
    [conversationGroup signData:v21 error:&v49];
    v23 = conversationGroup;
    v25 = v24 = v21;
    v46 = v49;

    v47 = v24;
    if (v25)
    {
      v45 = cypher2;
      v26 = objc_alloc_init(IDSMPConversationGroupEntry);
      [(IDSMPConversationGroupEntry *)v26 setData:v24];
      v44 = v25;
      [(IDSMPConversationGroupEntry *)v26 setSignature:v25];
      publicKeyData = [v23 publicKeyData];
      [(IDSMPConversationGroupEntry *)v26 setPublicKeyData:publicKeyData];

      groupID = [v23 groupID];
      [(IDSMPConversationGroupEntry *)v26 setGroupID:groupID];

      forwardingTicket = [v23 forwardingTicket];
      [(IDSMPConversationGroupEntry *)v26 setForwardingTicket:forwardingTicket];

      v48 = v46;
      v30 = [(IDSMPConversationGroupEntry *)v26 publicDataRepresentationWithError:&v48];
      v43 = v48;

      v31 = +[ENLog groupContext];
      v32 = v31;
      conversationGroup = v23;
      if (v30)
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v30 length]);
          *buf = 138543362;
          v52 = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "group->groupPublicData -- Success {publicDataRepresentation.length: %{public}@}", buf, 0xCu);
        }

        v34 = +[ENLog groupContext];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          sub_10091D9EC();
        }

        (completionCopy)[2](completionCopy, v30, 0);
        v35 = v43;
        v25 = v44;
      }

      else
      {
        v35 = v43;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543619;
          v52 = v43;
          v53 = 2113;
          v54 = groupCopy;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Failed group->groupPublicData -- could not create data from entry {error: %{public}@, group: %{private}@}", buf, 0x16u);
        }

        completionCopy[2](completionCopy, 0, v43);
        v25 = v44;
      }

      cypher2 = v45;
    }

    else
    {
      v42 = +[ENLog groupContext];
      v35 = v46;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543619;
        v52 = v46;
        v53 = 2113;
        v54 = groupCopy;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Failed group->groupPublicData -- could not create signature {error: %{public}@, group: %{private}@}", buf, 0x16u);
      }

      completionCopy[2](completionCopy, 0, v46);
      conversationGroup = v23;
    }

    v22 = v35;
    v21 = v47;
  }

  else
  {
    v41 = +[ENLog groupContext];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      v52 = v22;
      v53 = 2113;
      v54 = groupCopy;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Failed group->groupPublicData -- could not create publicGroupData {error: %{public}@, group: %{private}@}", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 0, v22);
  }

LABEL_32:
}

- (void)groupFromPublicDataRepresentation:(id)representation inContext:(id)context completion:(id)completion
{
  representationCopy = representation;
  contextCopy = context;
  completionCopy = completion;
  v11 = +[ENLog groupContext];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v54 = representationCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "groupPublicData->Group -- Start {data: %{private}@}", buf, 0xCu);
  }

  v49 = 0;
  v12 = [IDSMPConversationGroupEntry entryFromPublicDataRepresentation:representationCopy error:&v49];
  v13 = v49;
  if (v12)
  {
    accountIdentity = [contextCopy accountIdentity];
    deviceKey = [accountIdentity deviceKey];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      selfCopy = self;
      v39 = representationCopy;
      accountIdentity2 = [contextCopy accountIdentity];
      deviceKey2 = [accountIdentity2 deviceKey];

      data = [v12 data];
      publicKeyData = [v12 publicKeyData];
      signature = [v12 signature];
      groupID = [v12 groupID];
      [v12 forwardingTicket];
      v37 = contextCopy;
      v23 = v38 = deviceKey2;
      modernIdentity = [deviceKey2 modernIdentity];
      v48 = v13;
      v25 = [IDSMPConversationGroup conversationSponsorPairFromPublicData:data publicKey:publicKeyData signature:signature groupID:groupID parent:0 parentPublicKey:0 forwardingTicket:v23 fullDeviceIdentity:modernIdentity error:&v48];
      v36 = v48;

      if (v25)
      {
        sponsorAlias = [v25 sponsorAlias];
        v50 = sponsorAlias;
        v27 = [NSArray arrayWithObjects:&v50 count:1];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_10041D104;
        v40[3] = &unk_100BDB7F8;
        v41 = v25;
        v47 = completionCopy;
        v42 = v12;
        v43 = v36;
        v44 = selfCopy;
        v45 = v38;
        contextCopy = v37;
        v46 = v37;
        [(IDSDGroupContextDataSource *)selfCopy _participantsForDestinations:v27 completion:v40];

        representationCopy = v39;
        v28 = v38;
        v13 = v36;
      }

      else
      {
        contextCopy = v37;
        v28 = v38;
        v34 = +[ENLog groupContext];
        v13 = v36;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          sub_10091DAFC();
        }

        (*(completionCopy + 2))(completionCopy, 0, v36);
        representationCopy = v39;
      }
    }

    else
    {
      v30 = +[ENLog groupContext];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_10091DA60(contextCopy);
      }

      v31 = ENGroupContextErrorDomain;
      v51 = NSLocalizedDescriptionKey;
      v52 = @"Unepxcted device key class. Expected IDSDeviceIdentity";
      v32 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v33 = [NSError errorWithDomain:v31 code:-1000 userInfo:v32];
      (*(completionCopy + 2))(completionCopy, 0, v33);
    }
  }

  else
  {
    v29 = +[ENLog groupContext];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543619;
      v54 = v13;
      v55 = 2113;
      v56 = representationCopy;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Failed groupPublicData->Group {error: %{public}@, data: %{private}@}", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

- (void)participantsForCypher:(id)cypher completion:(id)completion
{
  cypherCopy = cypher;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = cypherCopy;
    conversationGroup = [v8 conversationGroup];
    groupMembers = [conversationGroup groupMembers];

    allKeys = [groupMembers allKeys];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10041D8F8;
    v13[3] = &unk_100BDB820;
    v14 = completionCopy;
    [(IDSDGroupContextDataSource *)self _participantsForDestinations:allKeys completion:v13];
  }

  else
  {
    v12 = +[ENLog groupContext];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_10091DBDC();
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)validateCachedGroup:(id)group isParentOfGroup:(id)ofGroup completion:(id)completion
{
  completionCopy = completion;
  ofGroupCopy = ofGroup;
  cypher = [group cypher];
  conversationGroup = [cypher conversationGroup];
  cypher2 = [ofGroupCopy cypher];

  conversationGroup2 = [cypher2 conversationGroup];
  completionCopy[2](completionCopy, [conversationGroup isParentOfGroup:conversationGroup2], 0);
}

- (id)_sponsorAlias
{
  _sponsorAccount = [(IDSDGroupContextDataSource *)self _sponsorAccount];
  prefixedURIStringsFromRegistration = [_sponsorAccount prefixedURIStringsFromRegistration];
  firstObject = [prefixedURIStringsFromRegistration firstObject];

  return firstObject;
}

- (id)_sponsorAccount
{
  v2 = +[IDSDServiceController sharedInstance];
  v3 = [v2 serviceWithPushTopic:@"com.apple.madrid"];

  v4 = +[IDSDAccountController sharedInstance];
  v5 = [v4 accountsOnService:v3];

  firstObject = [v5 firstObject];

  return firstObject;
}

@end