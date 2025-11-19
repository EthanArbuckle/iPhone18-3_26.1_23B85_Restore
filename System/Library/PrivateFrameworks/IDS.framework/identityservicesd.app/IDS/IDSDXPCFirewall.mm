@interface IDSDXPCFirewall
- (IDSDXPCFirewall)initWithService:(id)a3 queue:(id)a4 connection:(id)a5;
- (void)addEntries:(id)a3 withCompletion:(id)a4;
- (void)currentDonatedEntries:(id)a3;
- (void)currentEntries:(id)a3;
- (void)impactedServicesForService:(id)a3 withCompletion:(id)a4;
- (void)populateMergeIDForEntries:(id)a3 withCompletion:(id)a4;
- (void)processStoredRemoteIncomingMessagesForCategoryFired;
- (void)recentlyBlockedEntries:(id)a3;
- (void)removeAllDonatedEntries:(id)a3;
- (void)removeAllEntries:(id)a3;
- (void)removeDonatedEntries:(id)a3 withCompletion:(id)a4;
- (void)removeEntries:(id)a3 withCompletion:(id)a4;
- (void)replaceEntries:(id)a3 replaceAll:(BOOL)a4 withCompletion:(id)a5;
- (void)scheduleProcessStoredRemoteIncomingMessages;
@end

@implementation IDSDXPCFirewall

- (IDSDXPCFirewall)initWithService:(id)a3 queue:(id)a4 connection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (([v11 hasEntitlement:kIDSFirewallEntitlement] & 1) == 0)
  {
    v24 = +[IDSFoundationLog IDSFirewall];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v11;
      v25 = "Missing IDS Firewall entitlement -- failing creation of IDSDXPCFirewall collaborator {connection: %@}";
      v26 = v24;
      v27 = 12;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
    }

LABEL_9:

    v23 = 0;
    goto LABEL_10;
  }

  v29.receiver = self;
  v29.super_class = IDSDXPCFirewall;
  v12 = [(IDSDXPCFirewall *)&v29 init];
  self = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, a4);
    processMessageTimer = self->_processMessageTimer;
    self->_processMessageTimer = 0;

    objc_storeStrong(&self->_service, a3);
    v14 = +[IDSDServiceController sharedInstance];
    v15 = [v14 serviceWithName:v9];

    if (v15)
    {
      self->_category = [v15 controlCategory];
      v16 = [NSSet alloc];
      v17 = +[IDSDServiceController sharedInstance];
      v18 = [v17 serviceNameToControlCategoryMap];
      v19 = [NSNumber numberWithUnsignedInt:self->_category];
      v20 = [v18 objectForKey:v19];
      v21 = [v16 initWithArray:v20];
      impactedServices = self->_impactedServices;
      self->_impactedServices = v21;

      goto LABEL_5;
    }

    v24 = +[IDSFoundationLog IDSFirewall];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v25 = "Invalid service name. Could not fetch service properties.";
      v26 = v24;
      v27 = 2;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

LABEL_5:
  self = self;
  v23 = self;
LABEL_10:

  return v23;
}

- (void)impactedServicesForService:(id)a3 withCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_10091EF90();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  sub_10091F004();
LABEL_3:
  v9 = +[IDSFoundationLog IDSFirewall];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fetching impacted services for service {%@}", buf, 0xCu);
  }

  objc_storeStrong(&self->_service, a3);
  v10 = +[IDSDServiceController sharedInstance];
  v11 = [v10 serviceWithName:v7];

  if (v11)
  {
    self->_category = [v11 controlCategory];
    v12 = [NSSet alloc];
    v13 = +[IDSDServiceController sharedInstance];
    v14 = [v13 serviceNameToControlCategoryMap];
    v15 = [NSNumber numberWithUnsignedInt:self->_category];
    v16 = [v14 objectForKey:v15];
    v17 = [v12 initWithArray:v16];
    impactedServices = self->_impactedServices;
    self->_impactedServices = v17;

    v8[2](v8, self->_impactedServices, 0);
  }

  else
  {
    v19 = IDSFirewallErrorDomain;
    v22 = NSLocalizedDescriptionKey;
    v23 = @"Invalid service name. Could not fetch service properties.";
    v20 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v21 = [NSError errorWithDomain:v19 code:1 userInfo:v20];

    (v8)[2](v8, 0, v21);
  }
}

- (void)addEntries:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    sub_10091F078();
  }

  v8 = +[IDSFoundationLog IDSFirewall];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    category = self->_category;
    *buf = 67109378;
    v16 = category;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Update to category %u addEntries %@", buf, 0x12u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100441BC8;
  v12[3] = &unk_100BDA978;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [(IDSDXPCFirewall *)self populateMergeIDForEntries:v11 withCompletion:v12];
}

- (void)removeEntries:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    sub_10091F0EC();
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100441E34;
  v10[3] = &unk_100BDA978;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(IDSDXPCFirewall *)self populateMergeIDForEntries:v9 withCompletion:v10];
}

- (void)removeDonatedEntries:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    sub_10091F160();
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100442094;
  v10[3] = &unk_100BDA978;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(IDSDXPCFirewall *)self populateMergeIDForEntries:v9 withCompletion:v10];
}

- (void)replaceEntries:(id)a3 replaceAll:(BOOL)a4 withCompletion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (!v9)
  {
    sub_10091F1D4();
  }

  v10 = +[IDSFoundationLog IDSFirewall];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v11)
    {
      category = self->_category;
      *buf = 67109378;
      v26 = category;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Update to category %u replaceAllEntries %@", buf, 0x12u);
    }

    v13 = [(IDSDXPCFirewall *)self _firewallStore];
    v14 = [v13 removeAllEntriesWithCategory:self->_category];
  }

  else
  {
    if (v11)
    {
      v15 = self->_category;
      *buf = 67109378;
      v26 = v15;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Update to category %u replaceEntries %@", buf, 0x12u);
    }

    v13 = [(IDSDXPCFirewall *)self _firewallStore];
    v14 = [v13 removeEntriesWithCategory:self->_category isDonated:1];
  }

  v16 = v14;

  if (v16)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1004424B4;
    v20[3] = &unk_100BDA978;
    v20[4] = self;
    v21 = v8;
    v22 = v9;
    [(IDSDXPCFirewall *)self populateMergeIDForEntries:v21 withCompletion:v20];
  }

  else
  {
    v17 = IDSFirewallErrorDomain;
    v23 = NSLocalizedDescriptionKey;
    v24 = @"Failed to remove entries from allow list.";
    v18 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v19 = [NSError errorWithDomain:v17 code:4 userInfo:v18];

    (*(v9 + 2))(v9, v19);
  }
}

- (void)currentDonatedEntries:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_10091F248();
  }

  v5 = +[IDSFoundationLog IDSFirewall];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    category = self->_category;
    *buf = 67109120;
    v15 = category;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching all entries for category %u", buf, 8u);
  }

  v7 = [(IDSDXPCFirewall *)self _firewallStore];
  v8 = [v7 getDonatedAllowedEntriesForCategory:self->_category];

  if (v8)
  {
    v4[2](v4, v8, 0);
  }

  else
  {
    v9 = IDSFirewallErrorDomain;
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Failed to fetch donated entries from allow list";
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v11 = [NSError errorWithDomain:v9 code:4 userInfo:v10];

    (v4)[2](v4, 0, v11);
  }
}

- (void)currentEntries:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_10091F2BC();
  }

  v5 = +[IDSFoundationLog IDSFirewall];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    category = self->_category;
    *buf = 67109120;
    v15 = category;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching all entries for category %u", buf, 8u);
  }

  v7 = [(IDSDXPCFirewall *)self _firewallStore];
  v8 = [v7 getAllAllowedEntriesForCategory:self->_category];

  if (v8)
  {
    v4[2](v4, v8, 0);
  }

  else
  {
    v9 = IDSFirewallErrorDomain;
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Failed to fetch entries from allow list";
    v10 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v11 = [NSError errorWithDomain:v9 code:4 userInfo:v10];

    (v4)[2](v4, 0, v11);
  }
}

- (void)removeAllDonatedEntries:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_10091F330();
  }

  v5 = +[IDSFoundationLog IDSFirewall];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    category = self->_category;
    *buf = 67109120;
    v15 = category;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update to category %u removeAllDonatedEntries", buf, 8u);
  }

  v7 = [(IDSDXPCFirewall *)self _firewallStore];
  v8 = [v7 removeEntriesWithCategory:self->_category isDonated:1];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = IDSFirewallErrorDomain;
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Failed to remove all donated entries from allow list.";
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v9 = [NSError errorWithDomain:v10 code:4 userInfo:v11];
  }

  v4[2](v4, v9);
}

- (void)removeAllEntries:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_10091F3A4();
  }

  v5 = +[IDSFoundationLog IDSFirewall];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    category = self->_category;
    *buf = 67109120;
    v15 = category;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update to category %u removeAllEntries", buf, 8u);
  }

  v7 = [(IDSDXPCFirewall *)self _firewallStore];
  v8 = [v7 removeAllEntriesWithCategory:self->_category];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = IDSFirewallErrorDomain;
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Failed to remove all entries from allow list.";
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v9 = [NSError errorWithDomain:v10 code:4 userInfo:v11];
  }

  v4[2](v4, v9);
}

- (void)recentlyBlockedEntries:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_10091F418();
  }

  v5 = +[IDSFoundationLog IDSFirewall];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    service = self->_service;
    *buf = 138412290;
    v15 = service;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching recently blocked handles for service {%@}", buf, 0xCu);
  }

  v7 = [(IDSDXPCFirewall *)self _firewallStore];
  v8 = [v7 blockedEntriesForCategory:self->_category];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = IDSFirewallErrorDomain;
    v12 = NSLocalizedDescriptionKey;
    v13 = @"Failed to get recently blocked entries";
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v9 = [NSError errorWithDomain:v10 code:4 userInfo:v11];
  }

  v4[2](v4, v8, v9);
}

- (void)scheduleProcessStoredRemoteIncomingMessages
{
  processMessageTimer = self->_processMessageTimer;
  if (processMessageTimer)
  {
    [(IMDispatchTimer *)processMessageTimer invalidate];
    v4 = self->_processMessageTimer;
    self->_processMessageTimer = 0;
  }

  v5 = +[IDSFoundationLog IDSFirewall];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    category = self->_category;
    *buf = 67109376;
    v13 = category;
    v14 = 2048;
    v15 = 1;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scheduling a process message timer for category %u in: %llu", buf, 0x12u);
  }

  v7 = [IMDispatchTimer alloc];
  v8 = im_primary_queue();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100442FFC;
  v11[3] = &unk_100BD9268;
  v11[4] = self;
  v9 = [v7 initWithQueue:v8 interval:1 repeats:0 handlerBlock:v11];
  v10 = self->_processMessageTimer;
  self->_processMessageTimer = v9;
}

- (void)processStoredRemoteIncomingMessagesForCategoryFired
{
  [(IMDispatchTimer *)self->_processMessageTimer invalidate];
  processMessageTimer = self->_processMessageTimer;
  self->_processMessageTimer = 0;

  v4 = +[IDSFoundationLog IDSFirewall];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    category = self->_category;
    *buf = 67109120;
    v9 = category;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Process message timer fired for category %u", buf, 8u);
  }

  v6 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100443128;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v6, block);
}

- (void)populateMergeIDForEntries:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v62 = objc_alloc_init(NSMutableArray);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v71 objects:v86 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v72;
    do
    {
      v11 = 0;
      do
      {
        if (*v72 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v71 + 1) + 8 * v11);
        v13 = [v12 mergeID];
        if (v13)
        {
          goto LABEL_7;
        }

        v14 = [v12 uri];
        if (v14)
        {
          v15 = v14;
          v16 = [v12 uri];
          v17 = [v16 prefixedURI];

          if (v17)
          {
            v13 = [v12 uri];
            [v62 addObject:v13];
LABEL_7:
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v18 = [v7 countByEnumeratingWithState:&v71 objects:v86 count:16];
      v9 = v18;
    }

    while (v18);
  }

  v19 = +[IDSFoundationLog IDSFirewall];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    category = self->_category;
    *buf = 67109378;
    *v79 = category;
    *&v79[4] = 2112;
    *&v79[6] = v7;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Update to category %u populateMergeIDForEntries %@", buf, 0x12u);
  }

  v21 = +[IDSDAccountController sharedInstance];
  v22 = +[IDSDServiceController sharedInstance];
  v23 = [v22 serviceWithIdentifier:self->_service];
  v24 = [v21 registeredAccountsOnService:v23];

  v25 = [IDSQueryUtilities accountToQueryFrom:v24 fromURI:0 destinationURIs:&__NSArray0__struct allowLocalAccount:0];
  v26 = v25;
  if (v25)
  {
    v60 = v24;
    v27 = [v25 primaryRegistration];
    v28 = [v27 registrationCert];

    v29 = v28;
    v59 = v26;
    v30 = [IDSQueryUtilities prefixedAliasStringToQueryFrom:v26 withPreferredFromURI:0];
    v31 = [IDSURI URIWithPrefixedURI:v30 withServiceLoggingHint:self->_service];

    v32 = +[IDSFoundationLog IDSFirewall];
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    if (v31 && v29)
    {
      v58 = v6;
      if (v33)
      {
        *buf = 138412290;
        *v79 = v62;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Checking cache first to populate mergeIDs for handles {%@}", buf, 0xCu);
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v57 = v7;
      v34 = v7;
      v35 = [v34 countByEnumeratingWithState:&v67 objects:v75 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v68;
        do
        {
          for (i = 0; i != v36; i = i + 1)
          {
            if (*v68 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v67 + 1) + 8 * i);
            v40 = +[IDSPeerIDManager sharedInstance];
            v41 = [v39 uri];
            v42 = [v40 senderCorrelationIdentifierForURI:v41 fromURI:v31 service:self->_service];

            if (v42)
            {
              [v39 setMergeID:v42];
              v43 = [v39 uri];
              [v62 removeObject:v43];
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v67 objects:v75 count:16];
        }

        while (v36);
      }

      if ([v62 count])
      {
        v44 = +[IDSFoundationLog IDSFirewall];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v79 = v62;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Still need to query handles {%@}", buf, 0xCu);
        }

        v45 = +[IDSPeerIDManager sharedInstance];
        service = self->_service;
        v63[0] = _NSConcreteStackBlock;
        v63[1] = 3221225472;
        v63[2] = sub_100443984;
        v63[3] = &unk_100BDC4E8;
        v64 = v62;
        v65 = v34;
        v66 = v58;
        LOBYTE(v56) = 0;
        [v45 startQueryForURIs:v64 fromIdentity:v29 fromURI:v31 fromService:service forSending:0 forceToServer:1 clientRequestedForceQuery:v56 reason:@"FirewallPopulate" completionBlock:v63];

        v6 = v58;
        v7 = v57;
      }

      else
      {
        v6 = v58;
        v58[2](v58, 0);

        v7 = v57;
      }
    }

    else
    {
      if (v33)
      {
        v51 = @"NO";
        v52 = self->_service;
        *v79 = "[IDSDXPCFirewall populateMergeIDForEntries:withCompletion:]";
        *buf = 136315906;
        if (v29)
        {
          v51 = @"YES";
        }

        *&v79[8] = 2112;
        *&v79[10] = v52;
        v80 = 2112;
        v81 = v31;
        v82 = 2112;
        v83 = v51;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s: No registered account found for service %@. localURI {%@} cert {%@}", buf, 0x2Au);
      }

      v53 = IDSFirewallErrorDomain;
      v76 = NSLocalizedDescriptionKey;
      v77 = @"Failed to query for merge id due to nil local uri or cert";
      v54 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      v55 = [NSError errorWithDomain:v53 code:6 userInfo:v54];

      (*(v6 + 2))(v6, v55);
    }

    v26 = v59;
    v24 = v60;
  }

  else
  {
    v47 = +[IDSFoundationLog IDSFirewall];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = self->_service;
      *buf = 136315394;
      *v79 = "[IDSDXPCFirewall populateMergeIDForEntries:withCompletion:]";
      *&v79[8] = 2112;
      *&v79[10] = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%s: No account found for service %@.", buf, 0x16u);
    }

    v49 = IDSFirewallErrorDomain;
    v84 = NSLocalizedDescriptionKey;
    v85 = @"Failed to query for merge id as there was no account found";
    v50 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    v29 = [NSError errorWithDomain:v49 code:6 userInfo:v50];

    (*(v6 + 2))(v6, v29);
  }
}

@end