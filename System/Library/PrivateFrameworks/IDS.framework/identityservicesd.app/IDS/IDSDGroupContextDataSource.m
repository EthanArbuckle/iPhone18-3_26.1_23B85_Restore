@interface IDSDGroupContextDataSource
+ (id)sharedInstance;
- (IDSDGroupContextDataSource)init;
- (id)_sponsorAccount;
- (id)_sponsorAlias;
- (void)_groupFromServerResponse:(id)a3 context:(id)a4 groupID:(id)a5 error:(id)a6 resultCode:(int64_t)a7 resultDictionary:(id)a8 allEntries:(id)a9 completion:(id)a10;
- (void)groupContext:(id)a3 fetchGroupWithID:(id)a4 completion:(id)a5;
- (void)groupContext:(id)a3 upsertGroupWithInfo:(id)a4 previousGroup:(id)a5 completion:(id)a6;
- (void)groupFromPublicDataRepresentation:(id)a3 inContext:(id)a4 completion:(id)a5;
- (void)participantsForCypher:(id)a3 completion:(id)a4;
- (void)publicDataRepresentationForGroup:(id)a3 inContext:(id)a4 completion:(id)a5;
- (void)validateCachedGroup:(id)a3 isParentOfGroup:(id)a4 completion:(id)a5;
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

- (void)groupContext:(id)a3 upsertGroupWithInfo:(id)a4 previousGroup:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 accountIdentity];
  v15 = [v14 deviceKey];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v48 = v15;
    v16 = [v10 accountIdentity];
    v17 = [v16 deviceKey];

    v50 = [v12 cypher];
    [v50 conversationGroup];
    v49 = v66 = 0;
    v51 = v11;
    v18 = [IDSDGroupContextDataSource _groupWithDeviceIdentity:"_groupWithDeviceIdentity:parent:groupInfo:error:" parent:v17 groupInfo:? error:?];
    v19 = v66;
    v52 = v17;
    v20 = [v17 accountIdentity];
    v21 = [v20 signingIdentity];
    v65 = v19;
    v22 = [v18 publicDataRepresentationWithSponsor:v21 error:&v65];
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
        v27 = [v18 publicKeyData];
        if (v12)
        {
          v43 = [v18 forwardingTicket];
          v28 = [v12 groupID];
          [v28 stableGroupID];
          v30 = v29 = v25;
          v45 = [v30 dataRepresentation];

          v31 = [v12 groupID];
          v44 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v31 generation]);

          v25 = v29;
        }

        else
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
        }

        v41 = v25;
        v42 = [(IDSDGroupContextDataSource *)self groupServer];
        v53[0] = _NSConcreteStackBlock;
        v53[1] = 3221225472;
        v53[2] = sub_10041AC64;
        v53[3] = &unk_100BDB758;
        v53[4] = self;
        v54 = v10;
        v55 = v47;
        v63 = v13;
        v56 = v26;
        v57 = v52;
        v58 = v51;
        v59 = v27;
        v60 = v24;
        v61 = v25;
        v62 = v43;
        v37 = v43;
        v38 = v27;
        v39 = v37;
        v40 = v38;
        v11 = v51;
        [v42 publishGroupForKey:v40 data:v60 signature:v61 forwardingSig:v39 ENID:v45 version:v44 completion:v53];

        v36 = v41;
        v35 = v47;
        v15 = v48;
      }

      else
      {
        v34 = +[ENLog groupContext];
        v11 = v51;
        v35 = v47;
        v15 = v48;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          *buf = 138478595;
          v68 = v51;
          v69 = 2113;
          v70 = v10;
          v71 = 2114;
          v72 = v12;
          v73 = 2114;
          v74 = v47;
          _os_log_fault_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "Unable to create group signature {groupInfo: %{private}@, groupContext: %{private}@, previousGroup: %{public}@, error: %{public}@}", buf, 0x2Au);
        }

        (*(v13 + 2))(v13, 0, v47);
        v36 = 0;
      }

      v23 = v35;
    }

    else
    {
      v33 = +[ENLog groupContext];
      v11 = v51;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        *buf = 138478595;
        v68 = v51;
        v69 = 2113;
        v70 = v10;
        v71 = 2114;
        v72 = v12;
        v73 = 2114;
        v74 = v23;
        _os_log_fault_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, "Unable to get group.publicRepresentation {groupInfo: %{private}@, groupContext: %{private}@, previousGroup: %{public}@, error: %{public}@}", buf, 0x2Au);
      }

      (*(v13 + 2))(v13, 0, v23);
      v26 = v18;
      v15 = v48;
    }
  }

  else
  {
    v32 = +[ENLog groupContext];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      sub_10091D5B0();
    }

    (*(v13 + 2))(v13, 0, 0);
  }
}

- (void)_groupFromServerResponse:(id)a3 context:(id)a4 groupID:(id)a5 error:(id)a6 resultCode:(int64_t)a7 resultDictionary:(id)a8 allEntries:(id)a9 completion:(id)a10
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v59 = a10;
  v20 = [v15 accountIdentity];
  v21 = [v20 deviceKey];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v15 accountIdentity];
    v65 = [v22 deviceKey];

    v58 = objc_alloc_init(NSMutableArray);
    if (v17 || ![v19 count])
    {
      v23 = +[ENLog groupContext];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        sub_10091D77C();
      }

      v24 = v59;
      (*(v59 + 2))(v59, 0, v17);
    }

    else
    {
      v51 = v21;
      v55 = v15;
      v26 = +[ENLog groupContext];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138413058;
        v90 = v14;
        v91 = 2112;
        v92 = 0;
        v93 = 2112;
        v94 = v18;
        v95 = 2112;
        v96 = v19;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Got groups {%@ %@ %@ %@}", buf, 0x2Au);
      }

      v53 = v18;
      v56 = v14;

      v27 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v19, "count")}];
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v52 = v19;
      obj = v19;
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
            v34 = [v16 stableGroupID];
            v35 = [(IDSMPConversationGroupEntry *)v33 initWithStableGroupID:v34 groupServerEntry:v32];

            [v27 addObject:v35];
          }

          v29 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
        }

        while (v29);
      }

      v54 = v16;

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
            v38 = [v37 data];
            v39 = [v37 publicKeyData];
            v40 = [v37 signature];
            v41 = [v37 groupID];
            v42 = [v37 forwardingTicket];
            v43 = [v65 modernIdentity];
            v78 = 0;
            v44 = [IDSMPConversationGroup conversationSponsorPairFromPublicData:v38 publicKey:v39 signature:v40 groupID:v41 parent:0 parentPublicKey:0 forwardingTicket:v42 fullDeviceIdentity:v43 error:&v78];
            v45 = v78;

            if (v44)
            {
              v46 = [v37 publicKeyData];
              [v62 setObject:v44 forKeyedSubscript:v46];

              v47 = [v44 sponsorAlias];
              [v63 addObject:v47];
            }
          }

          v66 = [v60 countByEnumeratingWithState:&v79 objects:v87 count:16];
        }

        while (v66);
      }

      v48 = [v63 allObjects];
      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_10041B910;
      v67[3] = &unk_100BDB7A8;
      v68 = v60;
      v69 = v62;
      v70 = v58;
      v71 = v65;
      v72 = 0;
      v16 = v54;
      v73 = v54;
      v74 = self;
      v15 = v55;
      v75 = v55;
      v24 = v59;
      v77 = v59;
      v76 = obj;
      v49 = v62;
      v50 = v60;
      [(IDSDGroupContextDataSource *)self _participantsForDestinations:v48 completion:v67];

      v14 = v56;
      v18 = v53;
      v17 = 0;
      v21 = v51;
      v19 = v52;
    }
  }

  else
  {
    v25 = +[ENLog groupContext];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_10091D5B0();
    }

    v24 = v59;
    (*(v59 + 2))(v59, 0, 0);
  }
}

- (void)groupContext:(id)a3 fetchGroupWithID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 stableGroupID];
  v12 = [v11 dataRepresentation];

  v13 = [(IDSDGroupContextDataSource *)self groupServer];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10041C528;
  v17[3] = &unk_100BDB7D0;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  [v13 queryGroupServerForENID:v12 withCompletion:v17];
}

- (void)publicDataRepresentationForGroup:(id)a3 inContext:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[ENLog groupContext];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v52 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "group->groupPublicData -- Start {group: %{private}@}", buf, 0xCu);
  }

  v11 = [v8 accountIdentity];
  v12 = [v11 accountKey];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v36 = +[ENLog groupContext];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      sub_10091D8B4(v8);
    }

    v37 = ENGroupContextErrorDomain;
    v57 = NSLocalizedDescriptionKey;
    v58 = @"Unepxcted account key class. Expected IDSAccountIdentity";
    v38 = &v58;
    v39 = &v57;
    goto LABEL_19;
  }

  v14 = [v7 cypher];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if ((v15 & 1) == 0)
  {
    v40 = +[ENLog groupContext];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      sub_10091D950(v7);
    }

    v37 = ENGroupContextErrorDomain;
    v55 = NSLocalizedDescriptionKey;
    v56 = @"Unexpected cypher class. Expected IDSConversationGroupCypher";
    v38 = &v56;
    v39 = &v55;
LABEL_19:
    v22 = [NSDictionary dictionaryWithObjects:v38 forKeys:v39 count:1];
    v17 = [NSError errorWithDomain:v37 code:-1000 userInfo:v22];
    v9[2](v9, 0, v17);
    goto LABEL_32;
  }

  v16 = [v8 accountIdentity];
  v17 = [v16 accountKey];

  v18 = [v7 cypher];
  v19 = [v18 conversationGroup];
  v20 = [v17 signingIdentity];
  v50 = 0;
  v21 = [v19 publicDataRepresentationWithSponsor:v20 error:&v50];
  v22 = v50;

  if (v21)
  {
    v49 = v22;
    [v19 signData:v21 error:&v49];
    v23 = v19;
    v25 = v24 = v21;
    v46 = v49;

    v47 = v24;
    if (v25)
    {
      v45 = v18;
      v26 = objc_alloc_init(IDSMPConversationGroupEntry);
      [(IDSMPConversationGroupEntry *)v26 setData:v24];
      v44 = v25;
      [(IDSMPConversationGroupEntry *)v26 setSignature:v25];
      v27 = [v23 publicKeyData];
      [(IDSMPConversationGroupEntry *)v26 setPublicKeyData:v27];

      v28 = [v23 groupID];
      [(IDSMPConversationGroupEntry *)v26 setGroupID:v28];

      v29 = [v23 forwardingTicket];
      [(IDSMPConversationGroupEntry *)v26 setForwardingTicket:v29];

      v48 = v46;
      v30 = [(IDSMPConversationGroupEntry *)v26 publicDataRepresentationWithError:&v48];
      v43 = v48;

      v31 = +[ENLog groupContext];
      v32 = v31;
      v19 = v23;
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

        (v9)[2](v9, v30, 0);
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
          v54 = v7;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Failed group->groupPublicData -- could not create data from entry {error: %{public}@, group: %{private}@}", buf, 0x16u);
        }

        v9[2](v9, 0, v43);
        v25 = v44;
      }

      v18 = v45;
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
        v54 = v7;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Failed group->groupPublicData -- could not create signature {error: %{public}@, group: %{private}@}", buf, 0x16u);
      }

      v9[2](v9, 0, v46);
      v19 = v23;
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
      v54 = v7;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Failed group->groupPublicData -- could not create publicGroupData {error: %{public}@, group: %{private}@}", buf, 0x16u);
    }

    v9[2](v9, 0, v22);
  }

LABEL_32:
}

- (void)groupFromPublicDataRepresentation:(id)a3 inContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[ENLog groupContext];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v54 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "groupPublicData->Group -- Start {data: %{private}@}", buf, 0xCu);
  }

  v49 = 0;
  v12 = [IDSMPConversationGroupEntry entryFromPublicDataRepresentation:v8 error:&v49];
  v13 = v49;
  if (v12)
  {
    v14 = [v9 accountIdentity];
    v15 = [v14 deviceKey];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v35 = self;
      v39 = v8;
      v17 = [v9 accountIdentity];
      v18 = [v17 deviceKey];

      v19 = [v12 data];
      v20 = [v12 publicKeyData];
      v21 = [v12 signature];
      v22 = [v12 groupID];
      [v12 forwardingTicket];
      v37 = v9;
      v23 = v38 = v18;
      v24 = [v18 modernIdentity];
      v48 = v13;
      v25 = [IDSMPConversationGroup conversationSponsorPairFromPublicData:v19 publicKey:v20 signature:v21 groupID:v22 parent:0 parentPublicKey:0 forwardingTicket:v23 fullDeviceIdentity:v24 error:&v48];
      v36 = v48;

      if (v25)
      {
        v26 = [v25 sponsorAlias];
        v50 = v26;
        v27 = [NSArray arrayWithObjects:&v50 count:1];
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_10041D104;
        v40[3] = &unk_100BDB7F8;
        v41 = v25;
        v47 = v10;
        v42 = v12;
        v43 = v36;
        v44 = v35;
        v45 = v38;
        v9 = v37;
        v46 = v37;
        [(IDSDGroupContextDataSource *)v35 _participantsForDestinations:v27 completion:v40];

        v8 = v39;
        v28 = v38;
        v13 = v36;
      }

      else
      {
        v9 = v37;
        v28 = v38;
        v34 = +[ENLog groupContext];
        v13 = v36;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          sub_10091DAFC();
        }

        (*(v10 + 2))(v10, 0, v36);
        v8 = v39;
      }
    }

    else
    {
      v30 = +[ENLog groupContext];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        sub_10091DA60(v9);
      }

      v31 = ENGroupContextErrorDomain;
      v51 = NSLocalizedDescriptionKey;
      v52 = @"Unepxcted device key class. Expected IDSDeviceIdentity";
      v32 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v33 = [NSError errorWithDomain:v31 code:-1000 userInfo:v32];
      (*(v10 + 2))(v10, 0, v33);
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
      v56 = v8;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Failed groupPublicData->Group {error: %{public}@, data: %{private}@}", buf, 0x16u);
    }

    (*(v10 + 2))(v10, 0, v13);
  }
}

- (void)participantsForCypher:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v9 = [v8 conversationGroup];
    v10 = [v9 groupMembers];

    v11 = [v10 allKeys];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10041D8F8;
    v13[3] = &unk_100BDB820;
    v14 = v7;
    [(IDSDGroupContextDataSource *)self _participantsForDestinations:v11 completion:v13];
  }

  else
  {
    v12 = +[ENLog groupContext];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_10091DBDC();
    }

    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)validateCachedGroup:(id)a3 isParentOfGroup:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v12 = [a3 cypher];
  v9 = [v12 conversationGroup];
  v10 = [v8 cypher];

  v11 = [v10 conversationGroup];
  v7[2](v7, [v9 isParentOfGroup:v11], 0);
}

- (id)_sponsorAlias
{
  v2 = [(IDSDGroupContextDataSource *)self _sponsorAccount];
  v3 = [v2 prefixedURIStringsFromRegistration];
  v4 = [v3 firstObject];

  return v4;
}

- (id)_sponsorAccount
{
  v2 = +[IDSDServiceController sharedInstance];
  v3 = [v2 serviceWithPushTopic:@"com.apple.madrid"];

  v4 = +[IDSDAccountController sharedInstance];
  v5 = [v4 accountsOnService:v3];

  v6 = [v5 firstObject];

  return v6;
}

@end