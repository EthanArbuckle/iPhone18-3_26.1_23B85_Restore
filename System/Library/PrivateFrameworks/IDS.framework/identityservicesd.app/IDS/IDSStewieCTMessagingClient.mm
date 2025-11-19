@interface IDSStewieCTMessagingClient
+ (IDSStewieCTMessagingClient)sharedInstance;
- (BOOL)isActiveForIML;
- (BOOL)isActiveForSMS;
- (BOOL)isAvailableForIML;
- (BOOL)isAvailableForSMS;
- (IDSStewieCTMessagingClient)init;
- (id)shortHandleBase64StringFromNumber:(id)a3;
- (id)shortHandleNumberFromBase64String:(id)a3;
- (id)uriForShortHandle:(id)a3;
- (void)connectedServicesChanged:(int64_t)a3;
- (void)messageReceived:(id)a3 withMetadata:(id)a4 completionBlock:(id)a5;
- (void)sendFetchRequestForHandles:(id)a3 completion:(id)a4;
- (void)sendOffGridMessage:(id)a3 options:(id)a4 completion:(id)a5;
- (void)sendOffGridStatusDecryptionKey:(id)a3 completion:(id)a4;
@end

@implementation IDSStewieCTMessagingClient

- (IDSStewieCTMessagingClient)init
{
  v14.receiver = self;
  v14.super_class = IDSStewieCTMessagingClient;
  v2 = [(IDSStewieCTMessagingClient *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);

    v5 = dispatch_queue_create("com.apple.ids.offgridstatus.ct", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = [[CTStewieDataClient alloc] initWithServices:16 delegate:v2 delegateQueue:v2->_queue];
    ctDataClient = v2->_ctDataClient;
    v2->_ctDataClient = v7;

    v9 = [(CTStewieDataClient *)v2->_ctDataClient start];
    v10 = +[IDSFoundationLog stewieMessaging];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      v12 = v2->_ctDataClient;
      if (v9)
      {
        v11 = @"YES";
      }

      *buf = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Started data client %@ %@", buf, 0x16u);
    }
  }

  return v2;
}

+ (IDSStewieCTMessagingClient)sharedInstance
{
  if (qword_100CBF2E8 != -1)
  {
    sub_10092C874();
  }

  v3 = qword_100CBF2F0;

  return v3;
}

- (BOOL)isActiveForIML
{
  v2 = [(CTStewieDataClient *)self->_ctDataClient getState];
  v3 = [v2 isActiveService:16];

  return v3;
}

- (BOOL)isActiveForSMS
{
  v2 = [(CTStewieDataClient *)self->_ctDataClient getState];
  v3 = [v2 isActiveService:32];

  return v3;
}

- (BOOL)isAvailableForIML
{
  v2 = [(CTStewieDataClient *)self->_ctDataClient getState];
  v3 = [v2 isAllowedService:16];

  return v3;
}

- (BOOL)isAvailableForSMS
{
  v2 = [(CTStewieDataClient *)self->_ctDataClient getState];
  v3 = [v2 isAllowedService:32];

  return v3;
}

- (void)sendOffGridMessage:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v38 = a5;
  v9 = a4;
  v10 = [v8 senderShortHandle];
  v35 = [(IDSStewieCTMessagingClient *)self shortHandleNumberFromBase64String:v10];

  v11 = [v8 recipientShortHandle];
  v34 = self;
  v12 = [(IDSStewieCTMessagingClient *)self shortHandleNumberFromBase64String:v11];

  [v9 serviceType];
  v13 = [CTStewieIMessageLiteMessageOutgoing alloc];
  v14 = [v8 encryptionProperties];
  v15 = [v14 segmentNumber];
  [v15 integerValue];
  v16 = [v8 encryptionProperties];
  v17 = [v16 totalSegments];
  [v17 integerValue];
  v37 = v8;
  v18 = [v8 payload];
  v42 = 0;
  v36 = v12;
  v19 = [v13 initWithMyShortHandle:&v42 otherShortHandle:? partNumber:? totalParts:? payload:? isRelay:? error:?];
  v20 = v42;

  v21 = +[IDSFoundationLog stewieMessaging];
  v22 = v21;
  if (v20)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10092C888(v20, v22);
    }

    v23 = v38;
    (*(v38 + 2))(v38, 0, v20);
    v24 = v35;
    v26 = v36;
    v25 = v37;
  }

  else
  {
    v24 = v35;
    v26 = v36;
    v25 = v37;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v37 encryptionProperties];
      v27 = [v33 segmentNumber];
      v32 = [v37 encryptionProperties];
      v28 = [v32 totalSegments];
      v29 = [v37 payload];
      v30 = [v29 debugDescription];
      *buf = 138413314;
      v44 = v35;
      v45 = 2112;
      v46 = v36;
      v47 = 2112;
      v48 = v27;
      v49 = 2112;
      v50 = v28;
      v51 = 2112;
      v52 = v30;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Sending off grid message {sURI: %@, rURI: %@, pn: %@, tp: %@, p: %@}", buf, 0x34u);
    }

    ctDataClient = v34->_ctDataClient;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1005F1654;
    v39[3] = &unk_100BE1B50;
    v40 = v37;
    v23 = v38;
    v41 = v38;
    [(CTStewieDataClient *)ctDataClient sendMessage:v19 completion:v39];
  }
}

- (void)sendFetchRequestForHandles:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1005F19C0;
  v19[3] = &unk_100BE1B78;
  v8 = objc_alloc_init(NSMutableSet);
  v20 = v8;
  v21 = self;
  [v7 enumerateObjectsUsingBlock:v19];

  v9 = [CTStewieIMessageLiteFetchMessage alloc];
  v10 = [v8 allObjects];
  v18 = 0;
  v11 = [v9 initWithShortHandles:v10 error:&v18];
  v12 = v18;

  if (v12)
  {
    v13 = +[IDSFoundationLog stewieMessaging];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10092C900(v12, v13);
    }

    v6[2](v6, 0, v12);
  }

  else
  {
    ctDataClient = self->_ctDataClient;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1005F1A18;
    v15[3] = &unk_100BE1B50;
    v16 = v11;
    v17 = v6;
    [(CTStewieDataClient *)ctDataClient sendMessage:v16 completion:v15];
  }
}

- (void)sendOffGridStatusDecryptionKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog stewieMessaging];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending key for offgrid mode: %@", buf, 0xCu);
  }

  if (v6)
  {
    v15 = 0;
    v9 = [[CTStewieOffGridModeMessage alloc] initWithOffGridModeKey:v6 error:&v15];
    v10 = v15;
    ctDataClient = self->_ctDataClient;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1005F1D70;
    v13[3] = &unk_100BE1BA0;
    v14 = v7;
    [(CTStewieDataClient *)ctDataClient sendMessage:v9 completion:v13];
  }

  else
  {
    v9 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"Invalid decryption key.", NSLocalizedDescriptionKey, 0}];
    v12 = [NSError alloc];
    v10 = [v12 initWithDomain:IDSOffGridStatusErrorDomain code:5 userInfo:v9];
    (*(v7 + 2))(v7, 0, v10);
  }
}

- (void)messageReceived:(id)a3 withMetadata:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSFoundationLog stewieMessaging];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v105 = v8;
    v106 = 2112;
    v107 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Incoming stewie message: {message: %@, metadata: %@}", buf, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v82 = v10;
    v84 = v8;
    v12 = v8;
    v13 = +[IDSFoundationLog stewieMessaging];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v105 = v12;
      v106 = 2112;
      v107 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received incoming iMessage Lite: %@ with Metadata %@", buf, 0x16u);
    }

    v14 = [v12 otherShortHandle];
    v15 = [(IDSStewieCTMessagingClient *)self shortHandleBase64StringFromNumber:v14];

    v16 = [v12 myShortHandle];
    v17 = [(IDSStewieCTMessagingClient *)self shortHandleBase64StringFromNumber:v16];

    v18 = [(IDSStewieCTMessagingClient *)self uriForShortHandle:v15];
    v19 = [(IDSStewieCTMessagingClient *)self uriForShortHandle:v17];
    v20 = [IDSOffGridEncryptedMessage alloc];
    v21 = [v12 payload];
    v87 = v18;
    v86 = v19;
    v22 = [v20 initWithPayload:v21 senderURI:v18 recipientURI:v19];

    v23 = [v12 timestamp];
    [v23 doubleValue];
    v25 = [NSDate dateWithTimeIntervalSince1970:v24 / 1000000000.0];
    [v22 setDate:v25];

    v26 = [v22 encryptionProperties];
    v27 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 partNumber]);
    [v26 setSegmentNumber:v27];

    v28 = [v22 encryptionProperties];
    v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 totalParts]);
    [v28 setTotalSegments:v29];

    [v22 setSenderShortHandle:v15];
    v80 = v17;
    [v22 setRecipientShortHandle:v17];
    v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 pendingTotalCount]);
    [v22 setPendingTotalCount:v30];

    v31 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 pendingCount]);
    [v22 setPendingCount:v31];

    v32 = objc_alloc_init(IDSOffGridMessageContext);
    [v32 setTransportType:2];
    v33 = [v12 isRelay];
    v34 = v33;
    if (v33)
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }

    if (v33)
    {
      v36 = 140;
    }

    else
    {
      v36 = 100;
    }

    [v32 setServiceType:v35];
    [v32 setUnderlyingCommand:v36];
    v37 = +[IDSFoundationLog stewieMessaging];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = @"NO";
      *buf = 138413826;
      v105 = v22;
      if (v34)
      {
        v38 = @"YES";
      }

      v106 = 2112;
      v107 = v9;
      v108 = 2112;
      v109 = v15;
      v110 = 2112;
      v111 = v18;
      v112 = 2112;
      v113 = v80;
      v114 = 2112;
      v115 = v86;
      v116 = 2112;
      v117 = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Received incoming iMessage Lite: %@ with Metadata %@ senderShortHandle: %@ senderURI: %@ recipientShortHandle: %@ recipientURI: %@ isRelay: %@", buf, 0x48u);
    }

    v77 = v15;
    v39 = v9;

    v40 = [IDSServiceProperties alloc];
    v41 = &IDSServiceNameiMessageLiteRelay;
    if (!v34)
    {
      v41 = &IDSServiceNameiMessageLite;
    }

    v42 = [v40 initWithServiceIdentifier:{*v41, v77}];
    if (([v42 allowCrossAccountMessages] & 1) == 0)
    {
      v43 = +[IDSDaemon sharedInstance];
      v44 = [v43 isMessageFromSelfForFromURI:v87 service:v42];

      if ((v44 & 1) == 0)
      {
        v45 = +[IDSFoundationLog stewieMessaging];
        v8 = v84;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v46 = v87;
          v105 = v87;
          v47 = "Dropping incoming iMessage Lite because it is not on the cross-account allowlist and is coming from %@";
          v48 = v45;
          v49 = 12;
          goto LABEL_53;
        }

LABEL_54:
        v9 = v39;
        v10 = v82;
        v46 = v87;
        goto LABEL_55;
      }
    }

    if (sub_1006D6B44(v87))
    {
      v45 = +[IDSFoundationLog stewieMessaging];
      v8 = v84;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v46 = v87;
        v105 = v87;
        v106 = 2112;
        v107 = v86;
        v47 = "Incoming iMessage Lite with {senderURI: %@ recipientURI: %@} came from blocked URI - dropping";
        v48 = v45;
        v49 = 22;
LABEL_53:
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v47, buf, v49);
        v9 = v39;
        v10 = v82;
LABEL_55:

        v10[2](v10);
LABEL_63:

        goto LABEL_64;
      }

      goto LABEL_54;
    }

    messagingDelegate = self->_messagingDelegate;
    if (messagingDelegate)
    {
      v97[0] = _NSConcreteStackBlock;
      v97[1] = 3221225472;
      v97[2] = sub_1005F29B8;
      v97[3] = &unk_100BD8CB0;
      v9 = v39;
      v98 = v39;
      v99 = self;
      v10 = v82;
      v100 = v82;
      [(IDSStewieCTMessagingDelegate *)messagingDelegate incomingOffGridMessage:v22 messageContext:v32 completion:v97];

      v73 = v98;
      v8 = v84;
    }

    else
    {
      v73 = +[IDSFoundationLog stewieMessaging];
      v9 = v39;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v74 = @"NO";
        *buf = 138413826;
        v105 = v22;
        v106 = 2112;
        if (v34)
        {
          v74 = @"YES";
        }

        v107 = v39;
        v108 = 2112;
        v75 = v78;
        v109 = v78;
        v110 = 2112;
        v76 = v87;
        v111 = v87;
        v112 = 2112;
        v113 = v80;
        v114 = 2112;
        v115 = v86;
        v116 = 2112;
        v117 = v74;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "No delegate dropping incoming iMessage Lite: %@ with Metadata %@ senderShortHandle: %@ senderURI: %@ recipientShortHandle: %@ recipientURI: %@ isRelay: %@", buf, 0x48u);
        v10 = v82;
        v8 = v84;
        goto LABEL_62;
      }

      v10 = v82;
      v8 = v84;
    }

    v75 = v78;
    v76 = v87;
LABEL_62:

    goto LABEL_63;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v81 = v9;
    v83 = v10;
    v85 = v8;
    v50 = v8;
    v51 = +[IDSFoundationLog stewieMessaging];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v105 = v50;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Received incoming iMessage Lite Summary: %@", buf, 0xCu);
    }

    v88 = objc_alloc_init(NSMutableDictionary);
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v79 = v50;
    v52 = [v50 pendingCounts];
    v53 = [v52 countByEnumeratingWithState:&v93 objects:v103 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v94;
      do
      {
        for (i = 0; i != v54; i = i + 1)
        {
          if (*v94 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = *(*(&v93 + 1) + 8 * i);
          v58 = [v57 otherShortHandle];
          v59 = [(IDSStewieCTMessagingClient *)self shortHandleBase64StringFromNumber:v58];

          if (v59)
          {
            v60 = [(IDSStewieCTMessagingClient *)self uriForShortHandle:v59];
            v61 = v60;
            if (v60 && ([v60 prefixedURI], v62 = objc_claimAutoreleasedReturnValue(), v62, v62))
            {
              if (sub_1006D6B44(v61))
              {
                goto LABEL_41;
              }

              v63 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v57 pendingCount]);
              [v88 setObject:v63 forKey:v61];
            }

            else
            {
              v63 = +[IDSFoundationLog stewieMessaging];
              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                *v101 = 138412290;
                v102 = v59;
                _os_log_error_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "Unable to fetch URI from short handle %@, dropping", v101, 0xCu);
              }
            }
          }

          else
          {
            v61 = +[IDSFoundationLog stewieMessaging];
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              sub_10092C978(buf, v57, &v105, v61);
            }
          }

LABEL_41:
        }

        v54 = [v52 countByEnumeratingWithState:&v93 objects:v103 count:16];
      }

      while (v54);
    }

    v64 = [IDSOffGridSummaryMessage alloc];
    v65 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v79 pendingIMessageLiteTotalCount]);
    v66 = [v64 initWithSummary:v88 totalPendingMessagesCount:v65];

    v9 = v81;
    v10 = v83;
    if (self->_messagingDelegate)
    {
      v67 = objc_alloc_init(IDSOffGridMessageContext);
      [v67 setTransportType:2];
      [v67 setServiceType:1];
      v68 = self->_messagingDelegate;
      v89[0] = _NSConcreteStackBlock;
      v89[1] = 3221225472;
      v89[2] = sub_1005F2AE4;
      v89[3] = &unk_100BD8CB0;
      v90 = v81;
      v91 = self;
      v92 = v83;
      [(IDSStewieCTMessagingDelegate *)v68 incomingOffGridSummaryMessage:v66 messageContext:v67 completion:v89];
    }

    v8 = v85;
  }

  else
  {
    v69 = +[IDSFoundationLog stewieMessaging];
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v70 = objc_opt_class();
      *buf = 138412546;
      v105 = v70;
      v106 = 2112;
      v107 = v9;
      v71 = v70;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "Received incoming message of unhandled type: %@ with metadata %@. Dropping!", buf, 0x16u);
    }

    v10[2](v10);
  }

LABEL_64:
}

- (void)connectedServicesChanged:(int64_t)a3
{
  v5 = +[IDSFoundationLog stewieMessaging];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"YES";
    if ((a3 & 0x10) != 0)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = 134218498;
    v9 = a3;
    v11 = v7;
    v10 = 2112;
    if ((a3 & 0x20) == 0)
    {
      v6 = @"NO";
    }

    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "connectedServicesChanged %ld: iml(%@) sms(%@)", &v8, 0x20u);
  }

  if (self->_availabilityDelegate)
  {
    if (objc_opt_respondsToSelector())
    {
      [(IDSStewieCTAvailabilityDelegate *)self->_availabilityDelegate availabilityChangedForIML:(a3 >> 4) & 1];
    }
  }
}

- (id)uriForShortHandle:(id)a3
{
  v3 = a3;
  v4 = +[IDSPeerIDManager sharedInstance];
  v5 = [v4 uriForShortHandle:v3];

  return v5;
}

- (id)shortHandleNumberFromBase64String:(id)a3
{
  v3 = a3;
  v4 = [[NSData alloc] initWithBase64EncodedString:v3 options:0];

  v5 = 0;
  if ([v4 length] == 7)
  {
    v7 = 0;
    [v4 getBytes:&v7 length:8];
    v7 = bswap64(v7) >> 8;
    v5 = [NSNumber numberWithUnsignedLongLong:?];
  }

  return v5;
}

- (id)shortHandleBase64StringFromNumber:(id)a3
{
  v6 = bswap64([a3 unsignedLongLongValue]) >> 8;
  v3 = [NSData dataWithBytes:&v6 length:7];
  v4 = [v3 base64EncodedStringWithOptions:0];

  return v4;
}

@end