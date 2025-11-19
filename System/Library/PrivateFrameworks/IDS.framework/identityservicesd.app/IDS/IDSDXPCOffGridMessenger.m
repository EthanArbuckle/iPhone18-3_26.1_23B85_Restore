@interface IDSDXPCOffGridMessenger
- (BOOL)isCTClientActive;
- (IDSDXPCOffGridMessenger)initWithQueue:(id)a3;
- (id)identifierFromMessage:(id)a3 senderURI:(id)a4 receiverURI:(id)a5 senderKey:(id)a6 ratchetCounter:(unsigned int)a7 authTag:(id)a8;
- (void)decryptOffGridMessage:(id)a3 completion:(id)a4;
- (void)donateHandlesForMessagingKeys:(id)a3 fromURI:(id)a4 options:(id)a5 completion:(id)a6;
- (void)encryptOffGridMessage:(id)a3 completion:(id)a4;
- (void)incomingOffGridMessage:(id)a3 messageContext:(id)a4 completion:(id)a5;
- (void)incomingOffGridSummaryMessage:(id)a3 messageContext:(id)a4 completion:(id)a5;
- (void)monitorConnection:(id)a3;
- (void)resultsForDestinationURIs:(id)a3 senderURI:(id)a4 service:(id)a5 options:(id)a6 completion:(id)a7;
- (void)sendEncryptedOffGridMessage:(id)a3 options:(id)a4 completion:(id)a5;
- (void)sendFetchRequestForHandles:(id)a3 fromHandle:(id)a4 completion:(id)a5;
- (void)setupOffGridMessengerClient:(id)a3 withUUID:(id)a4 forServiceType:(int64_t)a5;
@end

@implementation IDSDXPCOffGridMessenger

- (IDSDXPCOffGridMessenger)initWithQueue:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = IDSDXPCOffGridMessenger;
  v6 = [(IDSDXPCOffGridMessenger *)&v13 init];
  if (v6)
  {
    v7 = +[IDSFoundationLog IDSOffGridMessenger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Created IDSDXPCOffGridMessenger {self: %p}", buf, 0xCu);
    }

    v8 = +[IDSStewieCTMessagingClient sharedInstance];
    ctClient = v6->_ctClient;
    v6->_ctClient = v8;

    [(IDSStewieCTMessagingClient *)v6->_ctClient setMessagingDelegate:v6];
    objc_storeStrong(&v6->_queue, a3);
    v10 = [[IMNetworkConnectionMonitor alloc] initWithRemoteHost:0 delegate:0];
    connectionMonitor = v6->_connectionMonitor;
    v6->_connectionMonitor = v10;
  }

  return v6;
}

- (void)monitorConnection:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog IDSOffGridMessenger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSDXPCOffGridMessenger monitoring new connection {self: %p, connection: %@}", &v6, 0x16u);
  }
}

- (BOOL)isCTClientActive
{
  v2 = [(IDSStewieCTMessagingClient *)self->_ctClient isActiveForIML];
  v3 = +[IDSFoundationLog IDSOffGridMessenger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CT Data client is active? %@", &v6, 0xCu);
  }

  return v2;
}

- (void)setupOffGridMessengerClient:(id)a3 withUUID:(id)a4 forServiceType:(int64_t)a5
{
  v8 = a4;
  if (a3)
  {
    v9 = [a3 remoteObjectProxy];
    v10 = +[IDSFoundationLog IDSOffGridMessenger];
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 134218498;
        v35 = self;
        v36 = 2112;
        v37 = v8;
        v38 = 2048;
        v39 = a5;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding OffGrid messenger client {self: %p, uuid: %@, serviceType: %ld}", &v34, 0x20u);
      }

      v12 = [(IDSDXPCOffGridMessenger *)self clientRemoteObjectsByService];

      if (!v12)
      {
        v13 = objc_alloc_init(NSMutableDictionary);
        [(IDSDXPCOffGridMessenger *)self setClientRemoteObjectsByService:v13];
      }

      v14 = [(IDSDXPCOffGridMessenger *)self clientRemoteObjectsByService];
      v15 = [NSNumber numberWithInteger:a5];
      v16 = [v14 objectForKeyedSubscript:v15];

      if (!v16)
      {
        v17 = objc_alloc_init(NSMutableDictionary);
        v18 = [(IDSDXPCOffGridMessenger *)self clientRemoteObjectsByService];
        v19 = [NSNumber numberWithInteger:a5];
        [v18 setObject:v17 forKeyedSubscript:v19];
      }

      v11 = [(IDSDXPCOffGridMessenger *)self clientRemoteObjectsByService];
      v20 = [NSNumber numberWithInteger:a5];
      v21 = [v11 objectForKeyedSubscript:v20];
      [v21 setObject:v9 forKeyedSubscript:v8];
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v34 = 134218498;
      v35 = self;
      v36 = 2112;
      v37 = v8;
      v38 = 2048;
      v39 = a5;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error creating proxy for OffGrid messenger client {self: %p, uuid: %@, serviceType: %ld}", &v34, 0x20u);
    }
  }

  else
  {
    v22 = +[IDSFoundationLog IDSOffGridMessenger];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v34 = 134218498;
      v35 = self;
      v36 = 2112;
      v37 = v8;
      v38 = 2048;
      v39 = a5;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Removing OffGrid messenger client {self: %p, uuid: %@, serviceType: %ld}", &v34, 0x20u);
    }

    v23 = [(IDSDXPCOffGridMessenger *)self clientRemoteObjectsByService];
    v24 = [NSNumber numberWithInteger:a5];
    v25 = [v23 objectForKeyedSubscript:v24];
    [v25 setObject:0 forKeyedSubscript:v8];

    v26 = [(IDSDXPCOffGridMessenger *)self clientRemoteObjectsByService];
    v27 = [NSNumber numberWithInteger:a5];
    v28 = [v26 objectForKeyedSubscript:v27];
    v29 = [v28 count];

    if (!v29)
    {
      v30 = [(IDSDXPCOffGridMessenger *)self clientRemoteObjectsByService];
      v31 = [NSNumber numberWithInteger:a5];
      [v30 setObject:0 forKeyedSubscript:v31];
    }

    v32 = [(IDSDXPCOffGridMessenger *)self clientRemoteObjectsByService];
    v33 = [v32 count];

    if (!v33)
    {
      [(IDSDXPCOffGridMessenger *)self setClientRemoteObjectsByService:0];
    }
  }
}

- (void)donateHandlesForMessagingKeys:(id)a3 fromURI:(id)a4 options:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[IDSFoundationLog IDSOffGridMessenger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v34 = v9;
    v35 = 2112;
    v36 = v10;
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Client request to donate handles for messaging keys { destinationURIs: %@ fromURI: %@ options: %@ }", buf, 0x20u);
  }

  if (!v9 || ![v9 count])
  {
    v20 = IDSOffGridDeliveryErrorDomain;
    v31 = NSLocalizedDescriptionKey;
    v32 = @"DestinationURIs cannot be nil or empty";
    v21 = &v32;
    v22 = &v31;
LABEL_10:
    v23 = [NSDictionary dictionaryWithObjects:v21 forKeys:v22 count:1];
    v17 = [NSError errorWithDomain:v20 code:1 userInfo:v23];

    v12[2](v12, 0, v17);
    goto LABEL_11;
  }

  if (!v10 || ([v10 prefixedURI], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, !v15))
  {
    v20 = IDSOffGridDeliveryErrorDomain;
    v29 = NSLocalizedDescriptionKey;
    v30 = @"FromURI cannot be nil or empty";
    v21 = &v30;
    v22 = &v29;
    goto LABEL_10;
  }

  v16 = +[IDSDaemon sharedInstance];
  v17 = [v16 senderKeyDistributionManager];

  v18 = [v11 priority];
  v19 = [v11 isInitialDonation];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1005B6334;
  v24[3] = &unk_100BDA308;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  [v17 processDonatedHandlesForMessagingKeysWithUris:v25 fromURI:v26 priority:v18 isInitialDonation:v19 completion:v24];

LABEL_11:
}

- (void)resultsForDestinationURIs:(id)a3 senderURI:(id)a4 service:(id)a5 options:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v72 = a7;
  v16 = +[IDSFoundationLog IDSOffGridMessenger];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v88 = v13;
    v89 = 2112;
    v90 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "resultsForDestinationURIs called for senderURI %@ destinationURIs {%@}", buf, 0x16u);
  }

  v17 = objc_alloc_init(NSMutableDictionary);
  v18 = [v12 allObjects];
  v74 = [NSMutableArray arrayWithArray:v18];

  v19 = [v15 cached];
  if ([(IDSDXPCOffGridMessenger *)self _isDeviceOnline])
  {
    v70 = v19;
  }

  else
  {
    v20 = +[IDSFoundationLog IDSOffGridMessenger];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Forcing cached results as we are offline", buf, 2u);
    }

    v70 = 1;
  }

  v21 = +[IDSDAccountController sharedInstance];
  v22 = +[IDSDServiceController sharedInstance];
  v23 = [v22 serviceWithIdentifier:v14];
  v24 = [v21 registeredAccountsOnService:v23];

  v25 = [v12 allObjects];
  v26 = [IDSQueryUtilities accountToQueryFrom:v24 fromURI:v13 destinationURIs:v25 allowLocalAccount:0 respectFromURI:1];

  if (v26)
  {
    v69 = v24;
    [v26 primaryRegistration];
    v28 = v27 = v26;
    v29 = [v28 registrationCert];

    v68 = v27;
    v30 = [IDSQueryUtilities prefixedAliasStringToQueryFrom:v27 withPreferredFromURI:v13];
    v31 = [IDSURI URIWithPrefixedURI:v30 withServiceLoggingHint:v14];

    v71 = v29;
    if (v31 && v29)
    {
      v75 = v17;
      v64 = v15;
      v65 = v14;
      v66 = v13;
      v32 = +[IDSDaemon sharedInstance];
      v33 = [v32 senderKeyDistributionManager];

      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v67 = v12;
      obj = v12;
      v34 = [obj countByEnumeratingWithState:&v80 objects:v84 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v81;
        do
        {
          for (i = 0; i != v35; i = i + 1)
          {
            if (*v81 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(*(&v80 + 1) + 8 * i);
            if ([v38 isTokenURI])
            {
              v39 = [v38 tokenFreeURI];
            }

            else
            {
              v39 = v38;
            }

            v40 = v39;
            v41 = objc_alloc_init(IDSOffGridDeliveryQueryResult);
            [v41 setUri:v38];
            if ([v38 isTokenURI])
            {
              v42 = [v38 pushToken];
              v43 = [v38 tokenFreeURI];
              [v33 markLastActivePeerToken:v42 localURI:v31 remoteURI:v43];
            }

            [v41 setHasUsableSenderKey:{objc_msgSend(v33, "hasUsableSenderKeyFor:from:", v40, v31)}];
            v44 = +[IDSPeerIDManager sharedInstance];
            v45 = [v44 shortHandleForURI:v40 fromURI:v31];

            if (v45)
            {
              [v41 setShortHandle:v45];
              [v41 setStatus:1];
              [v74 removeObject:v38];
            }

            else
            {
              v46 = +[IDSFoundationLog IDSOffGridMessenger];
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v88 = v38;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Missing short handle for %@ - returning status invalid", buf, 0xCu);
              }

              [v41 setStatus:2];
            }

            [v75 setObject:v41 forKey:v38];
          }

          v35 = [obj countByEnumeratingWithState:&v80 objects:v84 count:16];
        }

        while (v35);
      }

      v47 = v71;
      if ((v70 & 1) != 0 || ![v74 count])
      {
        v53 = v72;
        v17 = v75;
        (*(v72 + 2))(v72, v75, 0);
      }

      else
      {
        v48 = +[IDSFoundationLog IDSOffGridMessenger];
        v17 = v75;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v88 = v74;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Still need to query shortHandles for uris {%@}", buf, 0xCu);
        }

        v49 = [v74 __imArrayByApplyingBlock:&stru_100BE0F68];
        v50 = +[IDSPeerIDManager sharedInstance];
        v51 = IDSServiceNameiMessage;
        v76[0] = _NSConcreteStackBlock;
        v76[1] = 3221225472;
        v76[2] = sub_1005B6E5C;
        v76[3] = &unk_100BE0F90;
        v79 = v72;
        v77 = v75;
        v78 = v74;
        LOBYTE(v63) = 0;
        v52 = v51;
        v53 = v72;
        [v50 startQueryForURIs:v49 fromIdentity:v71 fromURI:v31 fromService:v52 forSending:0 forceToServer:0 clientRequestedForceQuery:v63 reason:@"ShortHandles" completionBlock:v76];

        v47 = v71;
      }

      v13 = v66;
      v12 = v67;
      v15 = v64;
      v14 = v65;
      v54 = v68;
      v24 = v69;
    }

    else
    {
      v58 = +[IDSFoundationLog IDSOffGridMessenger];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = @"NO";
        *buf = 136315906;
        v88 = "[IDSDXPCOffGridMessenger resultsForDestinationURIs:senderURI:service:options:completion:]";
        if (v29)
        {
          v59 = @"YES";
        }

        v89 = 2112;
        v90 = v14;
        v91 = 2112;
        v92 = v31;
        v93 = 2112;
        v94 = v59;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%s: No registered account found for service %@. localURI {%@} cert {%@}", buf, 0x2Au);
      }

      v60 = IDSOffGridDeliveryErrorDomain;
      v85 = NSLocalizedDescriptionKey;
      v86 = @"Failed to query due to nil local uri or cert";
      v61 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      v62 = [NSError errorWithDomain:v60 code:6 userInfo:v61];

      v53 = v72;
      (*(v72 + 2))(v72, v17, v62);

      v54 = v68;
      v24 = v69;
      v47 = v71;
    }
  }

  else
  {
    v54 = 0;
    v55 = +[IDSFoundationLog IDSOffGridMessenger];
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v88 = "[IDSDXPCOffGridMessenger resultsForDestinationURIs:senderURI:service:options:completion:]";
      v89 = 2112;
      v90 = v13;
      v91 = 2112;
      v92 = v14;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "%s: No account matching senderURI %@ found for service %@.", buf, 0x20u);
    }

    v56 = IDSOffGridDeliveryErrorDomain;
    v95 = NSLocalizedDescriptionKey;
    v96 = @"Failed to as there was no account found";
    v57 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];
    v47 = [NSError errorWithDomain:v56 code:6 userInfo:v57];

    v53 = v72;
    (*(v72 + 2))(v72, v17, v47);
  }
}

- (void)encryptOffGridMessage:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(IDSOffGridEncryptionProperties);
  v8 = +[IDSDaemon sharedInstance];
  v9 = [v8 persistenceManager];

  v48 = v9;
  v10 = [[IDSSenderKeyEncryptionController alloc] initWithPersistenceManager:v9];
  v11 = [v5 message];
  v12 = [v5 recipientURI];
  v13 = [v5 senderURI];
  v47 = v10;
  v14 = [(IDSSenderKeyEncryptionController *)v10 paddyEncryptData:v11 to:v12 from:v13];

  v15 = [v14 encryptedData];
  if (!v15 || (v16 = v15, [v14 error], v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v17))
  {
    v18 = [v14 error];
    (*(v6 + 2))(v6, 0, 0, v18);
  }

  v49 = v6;
  v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v14 keyIndex]);
  [v7 setRatchetCounter:v19];

  v20 = [v14 keyID];
  v21 = [v20 subdataWithRange:{0, 1}];

  v50 = v21;
  [v7 setEncryptionKeyID:v21];
  v22 = [v14 authTag];
  [v7 setAuthTag:v22];

  [v7 setSegmentNumber:&off_100C3CCE8];
  [v7 setTotalSegments:&off_100C3CCE8];
  v23 = [IDSOffGridEncryptedMessage alloc];
  v24 = [v14 encryptedData];
  v25 = [v5 senderURI];
  v26 = [v5 recipientURI];
  v27 = [v23 initWithMessage:v24 senderURI:v25 recipientURI:v26 encryptionProperties:v7];

  v28 = [v5 message];
  v29 = [v5 senderURI];
  v30 = [v5 recipientURI];
  v31 = [v14 key];
  v32 = [v14 keyIndex];
  v33 = [v14 authTag];
  v34 = [(IDSDXPCOffGridMessenger *)self identifierFromMessage:v28 senderURI:v29 receiverURI:v30 senderKey:v31 ratchetCounter:v32 authTag:v33];
  [v27 setIdentifier:v34];

  v35 = [v5 service];
  [v27 setService:v35];

  v36 = +[IDSFoundationLog IDSOffGridMessenger];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [v5 senderURI];
    [v5 recipientURI];
    v38 = v46 = v7;
    v44 = [v14 encryptedData];
    v39 = [v44 debugDescription];
    v40 = [v50 debugDescription];
    v41 = [v14 authTag];
    v42 = [v41 debugDescription];
    *buf = 138413314;
    v52 = v37;
    v53 = 2112;
    v54 = v38;
    v55 = 2112;
    v56 = v39;
    v57 = 2112;
    v58 = v40;
    v59 = 2112;
    v60 = v42;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Encrypted off grid message {sURI: %@, rURI: %@, data: %@, kID: %@, (aTag: %@)}", buf, 0x34u);

    v7 = v46;
  }

  v43 = [v27 identifier];
  (v49)[2](v49, v27, v43, 0);
}

- (void)decryptOffGridMessage:(id)a3 completion:(id)a4
{
  v34 = self;
  v38 = a3;
  v5 = a4;
  v6 = +[IDSDaemon sharedInstance];
  v7 = [v6 persistenceManager];

  v37 = v7;
  v8 = [[IDSSenderKeyEncryptionController alloc] initWithPersistenceManager:v7];
  v9 = [v38 encryptionProperties];
  v10 = [v9 authTag];

  v11 = [v38 encryptionProperties];
  v12 = [v11 ratchetCounter];

  v13 = [v38 encryptionProperties];
  v14 = [v13 encryptionKeyID];

  v15 = [v38 message];
  v16 = [v12 unsignedIntValue];
  v17 = [v38 senderURI];
  v18 = [v38 recipientURI];
  v36 = v8;
  v19 = [(IDSSenderKeyEncryptionController *)v8 paddyDecryptData:v15 keyIndex:v16 keyIDByte:v14 from:v17 to:v18];

  v20 = [v19 decryptedData];
  if (!v20 || (v21 = v20, [v19 error], v22 = objc_claimAutoreleasedReturnValue(), v22, v21, v22))
  {
    v23 = [v19 error];
    (*(v5 + 2))(v5, 0, 0, v23);
  }

  v24 = [v19 decryptedData];
  v25 = [v38 senderURI];
  v26 = [v19 originalRecipientURI];
  v27 = [v19 key];
  v28 = [v35 identifierFromMessage:v24 senderURI:v25 receiverURI:v26 senderKey:v27 ratchetCounter:objc_msgSend(v12 authTag:{"unsignedIntValue"), v10}];

  v29 = [IDSOffGridMessage alloc];
  v30 = [v19 decryptedData];
  v31 = [v38 senderURI];
  v32 = [v19 originalRecipientURI];
  v33 = [v29 initWithMessage:v30 senderURI:v31 recipientURI:v32];

  (*(v5 + 2))(v5, v33, v28, 0);
}

- (void)sendEncryptedOffGridMessage:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(IDSDXPCOffGridMessenger *)self isCTClientActive])
  {
    v11 = objc_alloc_init(IDSOffGridDeliveryQueryOptions);
    [v11 setCached:{objc_msgSend(v9, "transportType") == 2}];
    v12 = [NSSet alloc];
    v13 = [v8 senderURI];
    v14 = [v8 recipientURI];
    v15 = [v12 initWithObjects:{v13, v14, 0}];

    v16 = [v8 senderURI];
    v17 = [v8 service];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1005B7C04;
    v21[3] = &unk_100BE0FE0;
    v22 = v8;
    v25 = v10;
    v23 = self;
    v24 = v9;
    [(IDSDXPCOffGridMessenger *)self resultsForDestinationURIs:v15 senderURI:v16 service:v17 options:v11 completion:v21];

    v18 = v22;
  }

  else
  {
    v11 = [NSString stringWithFormat:@"Core Telephony Client is not active"];
    v19 = [NSError alloc];
    v20 = IDSOffGridDeliveryErrorDomain;
    v26 = NSLocalizedDescriptionKey;
    v27 = v11;
    v15 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v18 = [v19 initWithDomain:v20 code:10 userInfo:v15];
    (*(v10 + 2))(v10, 0, 0, v18);
  }
}

- (void)sendFetchRequestForHandles:(id)a3 fromHandle:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(IDSDXPCOffGridMessenger *)self isCTClientActive])
  {
    v11 = objc_alloc_init(NSMutableSet);
    v12 = IDSServiceNameiMessageLite;
    v13 = objc_alloc_init(IDSOffGridDeliveryQueryOptions);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1005B8528;
    v19[3] = &unk_100BE1008;
    v20 = v8;
    v21 = v11;
    v22 = self;
    v23 = v10;
    v14 = v11;
    [(IDSDXPCOffGridMessenger *)self resultsForDestinationURIs:v20 senderURI:v9 service:v12 options:v13 completion:v19];

    v15 = v20;
  }

  else
  {
    v14 = [NSString stringWithFormat:@"Core Telephony Client is not active"];
    v16 = [NSError alloc];
    v17 = IDSOffGridDeliveryErrorDomain;
    v24 = NSLocalizedDescriptionKey;
    v25 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v18 = [v16 initWithDomain:v17 code:10 userInfo:v15];
    (*(v10 + 2))(v10, 0, v18);
  }
}

- (void)incomingOffGridMessage:(id)a3 messageContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 serviceType];
  if (_os_feature_enabled_impl())
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  clientRemoteObjectsByService = self->_clientRemoteObjectsByService;
  v14 = [NSNumber numberWithInteger:v12];
  v15 = [(NSMutableDictionary *)clientRemoteObjectsByService objectForKeyedSubscript:v14];

  v16 = +[IDSFoundationLog IDSOffGridMessenger];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v9 identifier];
    *buf = 138412802;
    v30 = v17;
    v31 = 2112;
    v32 = v9;
    v33 = 2112;
    v34 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Broadcasting iMessage Lite {messageContext.identifier: %@, messageContext: %@, clientRemoteObjects: %@}", buf, 0x20u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [v18 objectForKeyedSubscript:{*(*(&v24 + 1) + 8 * v22), v24}];
        [v23 incomingOffGridMessage:v8 messageContext:v9 completion:v10];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v20);
  }
}

- (void)incomingOffGridSummaryMessage:(id)a3 messageContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 serviceType];
  if (_os_feature_enabled_impl())
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  clientRemoteObjectsByService = self->_clientRemoteObjectsByService;
  v14 = [NSNumber numberWithInteger:v12];
  v15 = [(NSMutableDictionary *)clientRemoteObjectsByService objectForKeyedSubscript:v14];

  v16 = +[IDSFoundationLog IDSOffGridMessenger];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v9 identifier];
    *buf = 138412802;
    v30 = v17;
    v31 = 2112;
    v32 = v9;
    v33 = 2112;
    v34 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Broadcasting iMessage Lite Summary {messageContext.identifier: %@, messageContext: %@, clientRemoteObjects: %@}", buf, 0x20u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [v18 objectForKeyedSubscript:{*(*(&v24 + 1) + 8 * v22), v24}];
        [v23 incomingOffGridSummaryMessage:v8 messageContext:v9 completion:v10];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v20);
  }
}

- (id)identifierFromMessage:(id)a3 senderURI:(id)a4 receiverURI:(id)a5 senderKey:(id)a6 ratchetCounter:(unsigned int)a7 authTag:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v30 = a7;
  v17 = a8;
  v18 = +[IDSFoundationLog IDSOffGridMessenger];
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v13 && v14 && v15 && v16 && v17)
  {
    if (v19)
    {
      *buf = 138413058;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      *&buf[22] = 2112;
      *&buf[24] = v17;
      v35 = 2048;
      v36 = a7;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Will generate offgrid message identifier from senderURI: %@, receiverURI: %@, authTag: %@, ratchetCounter: %ld", buf, 0x2Au);
    }

    v18 = +[NSMutableData data];
    [v18 appendData:v13];
    v20 = [v14 unprefixedURI];
    v21 = [v20 dataUsingEncoding:4];
    [v18 appendData:v21];

    v22 = [v15 unprefixedURI];
    v23 = [v22 dataUsingEncoding:4];
    [v18 appendData:v23];

    [v18 appendData:v16];
    [v18 appendData:v17];
    [v18 appendBytes:&v30 length:4];
    *&v24 = 0xAAAAAAAAAAAAAAAALL;
    *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v24;
    *&buf[16] = v24;
    CC_SHA256([v18 bytes], [v18 length], buf);
    v25 = [NSData dataWithBytes:&buf[16] length:16];
    v33[0] = 0xAAAAAAAAAAAAAAAALL;
    v33[1] = 0xAAAAAAAAAAAAAAAALL;
    [v25 getBytes:v33 length:16];
    v26 = [[NSUUID alloc] initWithUUIDBytes:v33];
    v27 = [v26 UUIDString];
    v28 = +[IDSFoundationLog IDSOffGridMessenger];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v31 = 138412290;
      v32 = v27;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Generated offgrid message identifier: %@", v31, 0xCu);
    }
  }

  else
  {
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Error: cannot generate offgrid message identifier - one or more fields are null.", buf, 2u);
    }

    v27 = 0;
  }

  return v27;
}

@end