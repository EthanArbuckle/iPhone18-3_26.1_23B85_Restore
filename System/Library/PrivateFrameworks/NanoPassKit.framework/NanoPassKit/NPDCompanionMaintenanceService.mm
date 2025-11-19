@interface NPDCompanionMaintenanceService
- (NPDBulletinManager)bulletinManager;
- (NPDCompanionMaintenanceService)init;
- (NPDCompanionMaintenanceServiceDelegate)delegate;
- (id)_fetchArchivedPendingTransactions;
- (id)_notificationIdentifierForPendingTransactionWithPassUniqueID:(id)a3;
- (void)_archivePendingTransactions:(id)a3;
- (void)_handleBarcodeEventApplicationRedirectRequest:(id)a3;
- (void)_handleBarcodeEventMetadataRequest:(id)a3;
- (void)_handleInsertBridgeNotificationRequest:(id)a3;
- (void)_sendBarcodeEventResponseWithData:(id)a3 incomingProtobuf:(id)a4;
- (void)fetchPendingTransactionForPassWithUniqueID:(id)a3 completion:(id)a4;
- (void)markPendingTransactionAsProcessedForPassWithUniqueID:(id)a3;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
@end

@implementation NPDCompanionMaintenanceService

- (NPDCompanionMaintenanceService)init
{
  v11.receiver = self;
  v11.super_class = NPDCompanionMaintenanceService;
  v2 = [(NPDCompanionMaintenanceService *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.NPKCompanionAgent.maintenance.idsservice", v3);
    idsServiceQueue = v2->_idsServiceQueue;
    v2->_idsServiceQueue = v4;

    v6 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.passbook.maintenance"];
    [v6 setProtobufAction:"_handleInsertBridgeNotificationRequest:" forIncomingRequestsOfType:139];
    [v6 setProtobufAction:"_handleBarcodeEventMetadataRequest:" forIncomingRequestsOfType:84];
    [v6 setProtobufAction:"_handleBarcodeEventApplicationRedirectRequest:" forIncomingRequestsOfType:85];
    v7 = [(NPDCompanionMaintenanceService *)v2 _fetchArchivedPendingTransactions];
    pendingAppRedirectRequests = v2->_pendingAppRedirectRequests;
    v2->_pendingAppRedirectRequests = v7;

    [v6 addDelegate:v2 queue:v2->_idsServiceQueue];
    idsService = v2->_idsService;
    v2->_idsService = v6;
  }

  return v2;
}

- (void)fetchPendingTransactionForPassWithUniqueID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NPDCompanionMaintenanceService *)self pendingAppRedirectRequests];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9)
  {
    v10 = [v9 transactionData];
    objc_opt_class();
    v11 = NPKSecureUnarchiveObject();

    v12 = +[NSDate date];
    v13 = [v11 transactionDate];
    [v12 timeIntervalSinceDate:v13];
    v15 = v14;
    v16 = PKPaymentTransactionAuthenticationValidPeriod;

    if (v15 < v16)
    {
      v17 = [v9 passData];
      objc_opt_class();
      v18 = NPKSecureUnarchiveObject();

      v11 = v11;
      v19 = [v9 appLaunchToken];
      v20 = v11;
      goto LABEL_13;
    }

    v23 = pk_General_log();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

    if (v24)
    {
      v25 = pk_General_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 138412290;
        v29 = v11;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodeEvent] Pending transaction has expired. Not returning: %@", &v28, 0xCu);
      }
    }

    v26 = [(NPDCompanionMaintenanceService *)self pendingAppRedirectRequests];
    [v26 setObject:0 forKeyedSubscript:v6];

    v27 = [(NPDCompanionMaintenanceService *)self pendingAppRedirectRequests];
    [(NPDCompanionMaintenanceService *)self _archivePendingTransactions:v27];
  }

  else
  {
    v21 = pk_General_log();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

    if (!v22)
    {
      v19 = 0;
      v20 = 0;
      v18 = 0;
      if (!v7)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodeEvent] Pass %@ doesn't have cached pending app redirect transactions.", &v28, 0xCu);
    }
  }

  v19 = 0;
  v20 = 0;
  v18 = 0;
LABEL_13:

  if (v7)
  {
LABEL_14:
    v7[2](v7, v18, v20, v19);
  }

LABEL_15:
}

- (void)markPendingTransactionAsProcessedForPassWithUniqueID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NPDCompanionMaintenanceService *)self pendingAppRedirectRequests];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (v6)
    {
      v7 = pk_General_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

      if (v8)
      {
        v9 = pk_General_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = v4;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodeEvent] Marking pending transactions as processed for pass %@.", &v14, 0xCu);
        }
      }

      v10 = [(NPDCompanionMaintenanceService *)self pendingAppRedirectRequests];
      [v10 setObject:0 forKeyedSubscript:v4];

      v11 = [(NPDCompanionMaintenanceService *)self pendingAppRedirectRequests];
      [(NPDCompanionMaintenanceService *)self _archivePendingTransactions:v11];

      v12 = [(NPDCompanionMaintenanceService *)self _notificationIdentifierForPendingTransactionWithPassUniqueID:v4];
      v13 = [(NPDCompanionMaintenanceService *)self bulletinManager];
      [v13 removeDeliveredBridgeBulletinsWithNotificationIdentifier:v12];
    }
  }
}

- (void)_handleInsertBridgeNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(NPDCompanionMaintenanceService *)self idsServiceQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [NPKProtoInsertBridgeNotificationRequest alloc];
  v7 = [v4 data];

  v8 = [v6 initWithData:v7];
  v9 = pk_Payment_log();
  LODWORD(v7) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Received insertBridgeNotificationRequest %@", buf, 0xCu);
    }
  }

  v27 = [v8 title];
  v11 = [v8 message];
  if ([v8 hasActionURLString])
  {
    v12 = [NSURL alloc];
    v13 = [v8 actionURLString];
    v14 = [v12 initWithString:v13];
  }

  else
  {
    v14 = 0;
  }

  v26 = self;
  if ([v8 hasPassUniqueID])
  {
    v15 = [v8 passUniqueID];
    if (v15)
    {
      v16 = [(NPDCompanionMaintenanceService *)self delegate];
      v17 = [v16 companionMaintenanceService:self paymentPassForUniqueID:v15];

      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = 0;
LABEL_13:
  v18 = [v8 playSound];
  v19 = [v8 notificationIdentifier];
  if ([v8 hasExpirationDateData])
  {
    v20 = [v8 expirationDateData];
    objc_opt_class();
    v21 = NPKSecureUnarchiveObject();
  }

  else
  {
    v21 = 0;
  }

  v22 = pk_Payment_log();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

  if (v23)
  {
    v24 = pk_Payment_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = v27;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Notice: Inserting Bridge bulletin with title: %@ message: %@.", buf, 0x16u);
    }
  }

  v25 = [(NPDCompanionMaintenanceService *)v26 bulletinManager];
  [v25 insertBridgeBulletinWithTitle:v27 message:v11 actionURL:v14 forPass:v17 playSound:v18 notificationIdentifier:v19 expirationDate:v21];
}

- (void)_handleBarcodeEventMetadataRequest:(id)a3
{
  v4 = a3;
  v5 = [(NPDCompanionMaintenanceService *)self idsServiceQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [NPKProtoBarcodeEventRequest alloc];
  v7 = [v4 data];
  v8 = [v6 initWithData:v7];

  v9 = pk_General_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodeEvent] Received metadataRequest %@", buf, 0xCu);
    }
  }

  v12 = [v8 requestData];
  objc_opt_class();
  v13 = NPKSecureUnarchiveObject();

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10003751C;
  v23[3] = &unk_1000726C0;
  v23[4] = self;
  v24 = v4;
  v14 = v4;
  v15 = objc_retainBlock(v23);
  v16 = [PKExtensionProvider providerForExtensionPoint:PKExtensionPaymentInformationEventExtensionPointName];
  v17 = [v8 associatedApplicationIdentifiers];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100037750;
  v20[3] = &unk_100072580;
  v21 = v13;
  v22 = v15;
  v18 = v13;
  v19 = v15;
  [v16 extensionsWithContainingApplicationIdentifiers:v17 completion:v20];
}

- (void)_sendBarcodeEventResponseWithData:(id)a3 incomingProtobuf:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NPDCompanionMaintenanceService *)self idsServiceQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [[IDSProtobuf alloc] initWithProtobufData:v6 type:objc_msgSend(v7 isResponse:{"type"), 1}];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100037FB4;
  v23 = sub_100037FC4;
  v24 = 0;
  v10 = [(NPDCompanionMaintenanceService *)self idsService];
  v30[0] = &off_100073F48;
  v29[0] = IDSSendMessageOptionTimeoutKey;
  v29[1] = IDSSendMessageOptionPeerResponseIdentifierKey;
  v11 = [v7 context];
  v12 = [v11 outgoingResponseIdentifier];
  v30[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  v14 = NPKProtoSendWithOptions();

  if (v20[5])
  {
    v15 = pk_General_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

    if (v16)
    {
      v17 = pk_General_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = v20[5];
        *buf = 138412546;
        v26 = v14;
        v27 = 2112;
        v28 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Error: [BarcodeEvent] Failed to send message with identifier %@ due to %@", buf, 0x16u);
      }
    }
  }

  _Block_object_dispose(&v19, 8);
}

- (void)_handleBarcodeEventApplicationRedirectRequest:(id)a3
{
  v4 = a3;
  v5 = [(NPDCompanionMaintenanceService *)self idsServiceQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [NPKProtoBarcodeApplicationRedirectRequest alloc];
  v7 = [v4 data];

  v8 = [v6 initWithData:v7];
  v9 = pk_General_log();
  LODWORD(v7) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v60 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodeEvent] Received applicationRedirectRequest %@", buf, 0xCu);
    }
  }

  v11 = [v8 passData];
  objc_opt_class();
  v12 = NPKSecureUnarchiveObject();

  v13 = [v8 transactionData];
  objc_opt_class();
  v14 = NPKSecureUnarchiveObject();

  v15 = [v12 uniqueID];
  if (v15)
  {
    v16 = [(NPDCompanionMaintenanceService *)self pendingAppRedirectRequests];
    v53 = v15;
    v54 = v8;
    [v16 setObject:v8 forKeyedSubscript:v15];

    v17 = [(NPDCompanionMaintenanceService *)self pendingAppRedirectRequests];
    v49 = self;
    [(NPDCompanionMaintenanceService *)self _archivePendingTransactions:v17];

    v18 = [v12 passTypeIdentifier];
    v19 = [v12 serialNumber];
    v20 = +[NSCharacterSet URLQueryAllowedCharacterSet];
    v52 = v18;
    v21 = [v18 stringByAddingPercentEncodingWithAllowedCharacters:v20];
    v22 = +[NSCharacterSet URLQueryAllowedCharacterSet];
    v51 = v19;
    [v19 stringByAddingPercentEncodingWithAllowedCharacters:v22];
    v23 = v55 = v14;
    v50 = [NSString stringWithFormat:@"bridge:root=com.apple.NanoPassbookBridgeSettings&action=HANDLE_PENDING_TRANSACTION&passTypeIdentifier=%@&passSerialNumber=%@", v21, v23];

    v24 = [v55 transactionDate];
    v25 = [v24 dateByAddingTimeInterval:PKPaymentTransactionAuthenticationValidPeriod];

    v26 = pk_General_log();
    LODWORD(v20) = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v27 = pk_General_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v60 = v54;
        v61 = 2112;
        v62 = v25;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodeEvent] Inserting Bridge bulletin for applicationRedirect %@ with expiration date %@.", buf, 0x16u);
      }
    }

    v28 = [NSBundle bundleWithIdentifier:@"com.apple.NanoPassKit"];
    v48 = [v28 localizedStringForKey:@"APP_REDIRECT_AUTHENTICATION_NOTIFICATION_TITLE" value:&stru_100073088 table:@"NanoPassKit"];

    v29 = [NSBundle bundleWithIdentifier:@"com.apple.NanoPassKit"];
    v30 = [v29 localizedStringForKey:@"APP_REDIRECT_AUTHENTICATION_NOTIFICATION_MESSAGE" value:&stru_100073088 table:@"NanoPassKit"];
    v31 = [v55 currencyAmount];
    v32 = [v31 formattedStringValue];
    [v55 merchant];
    v33 = v25;
    v34 = v47 = v25;
    v35 = [v34 displayName];
    v36 = [v12 organizationName];
    v37 = [NSString stringWithFormat:v30, v32, v35, v36];

    v15 = v53;
    v38 = [(NPDCompanionMaintenanceService *)v49 _notificationIdentifierForPendingTransactionWithPassUniqueID:v53];
    v39 = [(NPDCompanionMaintenanceService *)v49 bulletinManager];
    v40 = [NSURL URLWithString:v50];
    [v39 insertBridgeBulletinWithTitle:v48 message:v37 actionURL:v40 forPass:0 playSound:1 notificationIdentifier:v38 expirationDate:v33];

    v41 = PKAnalyticsSubjectBridge;
    [PKAnalyticsReporter beginSubjectReporting:PKAnalyticsSubjectBridge];
    v58 = v41;
    v42 = [NSArray arrayWithObjects:&v58 count:1];
    v56 = PKAnalyticsReportEventKey;
    v57 = PKAnalyticsReportEventTypeBarcodePaymentTransactionApplicationRedirectRequested;
    v43 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    [PKAnalyticsReporter subjects:v42 sendEvent:v43];

    [PKAnalyticsReporter endSubjectReporting:v41];
    v14 = v55;

    v8 = v54;
    v44 = v52;
  }

  else
  {
    v45 = pk_General_log();
    v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);

    if (!v46)
    {
      goto LABEL_12;
    }

    v44 = pk_General_log();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v60 = v8;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Error: [BarcodeEvent] Skipped applicationRedirect %@ without valid passUniqueID.", buf, 0xCu);
    }
  }

LABEL_12:
}

- (id)_fetchArchivedPendingTransactions
{
  v3 = NPKPendingTransactionsCachePath();
  v25 = 0;
  v4 = [NSData dataWithContentsOfFile:v3 options:0 error:&v25];
  v5 = v25;

  if (!v5)
  {
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v8 = [NSArray arrayWithObjects:v29 count:2];
    v10 = [NSSet setWithArray:v8];
    v9 = NPKSecureUnarchiveObjectOfClasses();

LABEL_7:
    goto LABEL_9;
  }

  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodeEvent] Unable to read pending transactions. This is expected in the case of a fresh device install.\n\tError: %@", &buf, 0xCu);
    }

    v9 = 0;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_9:
  v11 = +[NSMutableDictionary dictionary];
  v12 = +[NSDate date];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v27 = 0x2020000000;
  v28 = 0;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_1000388EC;
  v21 = &unk_100072738;
  v13 = v12;
  v22 = v13;
  v14 = v11;
  v23 = v14;
  p_buf = &buf;
  [v9 enumerateKeysAndObjectsUsingBlock:&v18];
  if (*(*(&buf + 1) + 24) == 1)
  {
    [(NPDCompanionMaintenanceService *)self _archivePendingTransactions:v14, v18, v19, v20, v21, v22];
  }

  v15 = v23;
  v16 = v14;

  _Block_object_dispose(&buf, 8);

  return v16;
}

- (void)_archivePendingTransactions:(id)a3
{
  v3 = a3;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodeEvent] Archiving pending transactions %@", buf, 0xCu);
    }
  }

  v7 = [NPKOSTransaction transactionWithName:@"Archive pending transaction"];
  v8 = NPKSecureArchiveObject();
  v9 = NPKPendingTransactionsCachePath();
  v14 = 0;
  [v8 writeToFile:v9 options:1 error:&v14];
  v10 = v14;

  if (v10)
  {
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error: [BarcodeEvent] Unable to archive pending transactions to disk\n\tError: %@", buf, 0xCu);
      }
    }
  }

  [v7 invalidate];
}

- (id)_notificationIdentifierForPendingTransactionWithPassUniqueID:(id)a3
{
  v7 = @"Pending Barcode Transaction";
  v8 = a3;
  v3 = a3;
  v4 = [NSArray arrayWithObjects:&v7 count:2];
  v5 = [NSString stringWithFormat:@"wallet-%ld", PKCombinedHash(), v7, v8];

  return v5;
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v4 = a4;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPDCompanionMaintenanceService IDS service accounts changed: %@", &v8, 0xCu);
    }
  }
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v4 = a4;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPDCompanionMaintenanceService IDS service devices changed: %@", &v8, 0xCu);
    }
  }
}

- (void)service:(id)a3 account:(id)a4 incomingUnhandledProtobuf:(id)a5 fromID:(id)a6 context:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = pk_General_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

  if (v17)
  {
    v18 = pk_General_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 138413314;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error: NPDCompanionMaintenanceService IDS service incoming unhandled protobuf: %@ %@ %@ %@ %@", &v19, 0x34u);
    }
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = pk_General_log();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v17 = pk_General_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138413314;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      v24 = 1024;
      v25 = v8;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Notice: NPDCompanionMaintenanceService IDS service did send with success: %@ %@ %@ %d %@", &v18, 0x30u);
    }
  }
}

- (NPDCompanionMaintenanceServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NPDBulletinManager)bulletinManager
{
  WeakRetained = objc_loadWeakRetained(&self->_bulletinManager);

  return WeakRetained;
}

@end