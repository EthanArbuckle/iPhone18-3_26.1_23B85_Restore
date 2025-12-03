@interface NPDCompanionMaintenanceService
- (NPDBulletinManager)bulletinManager;
- (NPDCompanionMaintenanceService)init;
- (NPDCompanionMaintenanceServiceDelegate)delegate;
- (id)_fetchArchivedPendingTransactions;
- (id)_notificationIdentifierForPendingTransactionWithPassUniqueID:(id)d;
- (void)_archivePendingTransactions:(id)transactions;
- (void)_handleBarcodeEventApplicationRedirectRequest:(id)request;
- (void)_handleBarcodeEventMetadataRequest:(id)request;
- (void)_handleInsertBridgeNotificationRequest:(id)request;
- (void)_sendBarcodeEventResponseWithData:(id)data incomingProtobuf:(id)protobuf;
- (void)fetchPendingTransactionForPassWithUniqueID:(id)d completion:(id)completion;
- (void)markPendingTransactionAsProcessedForPassWithUniqueID:(id)d;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
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
    _fetchArchivedPendingTransactions = [(NPDCompanionMaintenanceService *)v2 _fetchArchivedPendingTransactions];
    pendingAppRedirectRequests = v2->_pendingAppRedirectRequests;
    v2->_pendingAppRedirectRequests = _fetchArchivedPendingTransactions;

    [v6 addDelegate:v2 queue:v2->_idsServiceQueue];
    idsService = v2->_idsService;
    v2->_idsService = v6;
  }

  return v2;
}

- (void)fetchPendingTransactionForPassWithUniqueID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  pendingAppRedirectRequests = [(NPDCompanionMaintenanceService *)self pendingAppRedirectRequests];
  v9 = [pendingAppRedirectRequests objectForKeyedSubscript:dCopy];

  if (v9)
  {
    transactionData = [v9 transactionData];
    objc_opt_class();
    v11 = NPKSecureUnarchiveObject();

    v12 = +[NSDate date];
    transactionDate = [v11 transactionDate];
    [v12 timeIntervalSinceDate:transactionDate];
    v15 = v14;
    v16 = PKPaymentTransactionAuthenticationValidPeriod;

    if (v15 < v16)
    {
      passData = [v9 passData];
      objc_opt_class();
      v18 = NPKSecureUnarchiveObject();

      v11 = v11;
      appLaunchToken = [v9 appLaunchToken];
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

    pendingAppRedirectRequests2 = [(NPDCompanionMaintenanceService *)self pendingAppRedirectRequests];
    [pendingAppRedirectRequests2 setObject:0 forKeyedSubscript:dCopy];

    pendingAppRedirectRequests3 = [(NPDCompanionMaintenanceService *)self pendingAppRedirectRequests];
    [(NPDCompanionMaintenanceService *)self _archivePendingTransactions:pendingAppRedirectRequests3];
  }

  else
  {
    v21 = pk_General_log();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

    if (!v22)
    {
      appLaunchToken = 0;
      v20 = 0;
      v18 = 0;
      if (!completionCopy)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = dCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodeEvent] Pass %@ doesn't have cached pending app redirect transactions.", &v28, 0xCu);
    }
  }

  appLaunchToken = 0;
  v20 = 0;
  v18 = 0;
LABEL_13:

  if (completionCopy)
  {
LABEL_14:
    completionCopy[2](completionCopy, v18, v20, appLaunchToken);
  }

LABEL_15:
}

- (void)markPendingTransactionAsProcessedForPassWithUniqueID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    pendingAppRedirectRequests = [(NPDCompanionMaintenanceService *)self pendingAppRedirectRequests];
    v6 = [pendingAppRedirectRequests objectForKeyedSubscript:dCopy];

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
          v15 = dCopy;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodeEvent] Marking pending transactions as processed for pass %@.", &v14, 0xCu);
        }
      }

      pendingAppRedirectRequests2 = [(NPDCompanionMaintenanceService *)self pendingAppRedirectRequests];
      [pendingAppRedirectRequests2 setObject:0 forKeyedSubscript:dCopy];

      pendingAppRedirectRequests3 = [(NPDCompanionMaintenanceService *)self pendingAppRedirectRequests];
      [(NPDCompanionMaintenanceService *)self _archivePendingTransactions:pendingAppRedirectRequests3];

      v12 = [(NPDCompanionMaintenanceService *)self _notificationIdentifierForPendingTransactionWithPassUniqueID:dCopy];
      bulletinManager = [(NPDCompanionMaintenanceService *)self bulletinManager];
      [bulletinManager removeDeliveredBridgeBulletinsWithNotificationIdentifier:v12];
    }
  }
}

- (void)_handleInsertBridgeNotificationRequest:(id)request
{
  requestCopy = request;
  idsServiceQueue = [(NPDCompanionMaintenanceService *)self idsServiceQueue];
  dispatch_assert_queue_V2(idsServiceQueue);

  v6 = [NPKProtoInsertBridgeNotificationRequest alloc];
  data = [requestCopy data];

  v8 = [v6 initWithData:data];
  v9 = pk_Payment_log();
  LODWORD(data) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (data)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: Received insertBridgeNotificationRequest %@", buf, 0xCu);
    }
  }

  title = [v8 title];
  message = [v8 message];
  if ([v8 hasActionURLString])
  {
    v12 = [NSURL alloc];
    actionURLString = [v8 actionURLString];
    v14 = [v12 initWithString:actionURLString];
  }

  else
  {
    v14 = 0;
  }

  selfCopy = self;
  if ([v8 hasPassUniqueID])
  {
    passUniqueID = [v8 passUniqueID];
    if (passUniqueID)
    {
      delegate = [(NPDCompanionMaintenanceService *)self delegate];
      v17 = [delegate companionMaintenanceService:self paymentPassForUniqueID:passUniqueID];

      goto LABEL_13;
    }
  }

  else
  {
    passUniqueID = 0;
  }

  v17 = 0;
LABEL_13:
  playSound = [v8 playSound];
  notificationIdentifier = [v8 notificationIdentifier];
  if ([v8 hasExpirationDateData])
  {
    expirationDateData = [v8 expirationDateData];
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
      v29 = title;
      v30 = 2112;
      v31 = message;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Notice: Inserting Bridge bulletin with title: %@ message: %@.", buf, 0x16u);
    }
  }

  bulletinManager = [(NPDCompanionMaintenanceService *)selfCopy bulletinManager];
  [bulletinManager insertBridgeBulletinWithTitle:title message:message actionURL:v14 forPass:v17 playSound:playSound notificationIdentifier:notificationIdentifier expirationDate:v21];
}

- (void)_handleBarcodeEventMetadataRequest:(id)request
{
  requestCopy = request;
  idsServiceQueue = [(NPDCompanionMaintenanceService *)self idsServiceQueue];
  dispatch_assert_queue_V2(idsServiceQueue);

  v6 = [NPKProtoBarcodeEventRequest alloc];
  data = [requestCopy data];
  v8 = [v6 initWithData:data];

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

  requestData = [v8 requestData];
  objc_opt_class();
  v13 = NPKSecureUnarchiveObject();

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10003751C;
  v23[3] = &unk_1000726C0;
  v23[4] = self;
  v24 = requestCopy;
  v14 = requestCopy;
  v15 = objc_retainBlock(v23);
  v16 = [PKExtensionProvider providerForExtensionPoint:PKExtensionPaymentInformationEventExtensionPointName];
  associatedApplicationIdentifiers = [v8 associatedApplicationIdentifiers];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100037750;
  v20[3] = &unk_100072580;
  v21 = v13;
  v22 = v15;
  v18 = v13;
  v19 = v15;
  [v16 extensionsWithContainingApplicationIdentifiers:associatedApplicationIdentifiers completion:v20];
}

- (void)_sendBarcodeEventResponseWithData:(id)data incomingProtobuf:(id)protobuf
{
  dataCopy = data;
  protobufCopy = protobuf;
  idsServiceQueue = [(NPDCompanionMaintenanceService *)self idsServiceQueue];
  dispatch_assert_queue_V2(idsServiceQueue);

  v9 = [[IDSProtobuf alloc] initWithProtobufData:dataCopy type:objc_msgSend(protobufCopy isResponse:{"type"), 1}];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100037FB4;
  v23 = sub_100037FC4;
  v24 = 0;
  idsService = [(NPDCompanionMaintenanceService *)self idsService];
  v30[0] = &off_100073F48;
  v29[0] = IDSSendMessageOptionTimeoutKey;
  v29[1] = IDSSendMessageOptionPeerResponseIdentifierKey;
  context = [protobufCopy context];
  outgoingResponseIdentifier = [context outgoingResponseIdentifier];
  v30[1] = outgoingResponseIdentifier;
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

- (void)_handleBarcodeEventApplicationRedirectRequest:(id)request
{
  requestCopy = request;
  idsServiceQueue = [(NPDCompanionMaintenanceService *)self idsServiceQueue];
  dispatch_assert_queue_V2(idsServiceQueue);

  v6 = [NPKProtoBarcodeApplicationRedirectRequest alloc];
  data = [requestCopy data];

  v8 = [v6 initWithData:data];
  v9 = pk_General_log();
  LODWORD(data) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (data)
  {
    v10 = pk_General_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v60 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notice: [BarcodeEvent] Received applicationRedirectRequest %@", buf, 0xCu);
    }
  }

  passData = [v8 passData];
  objc_opt_class();
  v12 = NPKSecureUnarchiveObject();

  transactionData = [v8 transactionData];
  objc_opt_class();
  v14 = NPKSecureUnarchiveObject();

  uniqueID = [v12 uniqueID];
  if (uniqueID)
  {
    pendingAppRedirectRequests = [(NPDCompanionMaintenanceService *)self pendingAppRedirectRequests];
    v53 = uniqueID;
    v54 = v8;
    [pendingAppRedirectRequests setObject:v8 forKeyedSubscript:uniqueID];

    pendingAppRedirectRequests2 = [(NPDCompanionMaintenanceService *)self pendingAppRedirectRequests];
    selfCopy = self;
    [(NPDCompanionMaintenanceService *)self _archivePendingTransactions:pendingAppRedirectRequests2];

    passTypeIdentifier = [v12 passTypeIdentifier];
    serialNumber = [v12 serialNumber];
    v20 = +[NSCharacterSet URLQueryAllowedCharacterSet];
    v52 = passTypeIdentifier;
    v21 = [passTypeIdentifier stringByAddingPercentEncodingWithAllowedCharacters:v20];
    v22 = +[NSCharacterSet URLQueryAllowedCharacterSet];
    v51 = serialNumber;
    [serialNumber stringByAddingPercentEncodingWithAllowedCharacters:v22];
    v23 = v55 = v14;
    v50 = [NSString stringWithFormat:@"bridge:root=com.apple.NanoPassbookBridgeSettings&action=HANDLE_PENDING_TRANSACTION&passTypeIdentifier=%@&passSerialNumber=%@", v21, v23];

    transactionDate = [v55 transactionDate];
    v25 = [transactionDate dateByAddingTimeInterval:PKPaymentTransactionAuthenticationValidPeriod];

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
    currencyAmount = [v55 currencyAmount];
    formattedStringValue = [currencyAmount formattedStringValue];
    [v55 merchant];
    v33 = v25;
    v34 = v47 = v25;
    displayName = [v34 displayName];
    organizationName = [v12 organizationName];
    v37 = [NSString stringWithFormat:v30, formattedStringValue, displayName, organizationName];

    uniqueID = v53;
    v38 = [(NPDCompanionMaintenanceService *)selfCopy _notificationIdentifierForPendingTransactionWithPassUniqueID:v53];
    bulletinManager = [(NPDCompanionMaintenanceService *)selfCopy bulletinManager];
    v40 = [NSURL URLWithString:v50];
    [bulletinManager insertBridgeBulletinWithTitle:v48 message:v37 actionURL:v40 forPass:0 playSound:1 notificationIdentifier:v38 expirationDate:v33];

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

- (void)_archivePendingTransactions:(id)transactions
{
  transactionsCopy = transactions;
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = transactionsCopy;
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

- (id)_notificationIdentifierForPendingTransactionWithPassUniqueID:(id)d
{
  v7 = @"Pending Barcode Transaction";
  dCopy = d;
  dCopy2 = d;
  v4 = [NSArray arrayWithObjects:&v7 count:2];
  dCopy = [NSString stringWithFormat:@"wallet-%ld", PKCombinedHash(), v7, dCopy];

  return dCopy;
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  changedCopy = changed;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = changedCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPDCompanionMaintenanceService IDS service accounts changed: %@", &v8, 0xCu);
    }
  }
}

- (void)service:(id)service devicesChanged:(id)changed
{
  changedCopy = changed;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = changedCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPDCompanionMaintenanceService IDS service devices changed: %@", &v8, 0xCu);
    }
  }
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  protobufCopy = protobuf;
  dCopy = d;
  contextCopy = context;
  v16 = pk_General_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

  if (v17)
  {
    v18 = pk_General_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 138413314;
      v20 = serviceCopy;
      v21 = 2112;
      v22 = accountCopy;
      v23 = 2112;
      v24 = protobufCopy;
      v25 = 2112;
      v26 = dCopy;
      v27 = 2112;
      v28 = contextCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Error: NPDCompanionMaintenanceService IDS service incoming unhandled protobuf: %@ %@ %@ %@ %@", &v19, 0x34u);
    }
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  v15 = pk_General_log();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  if (v16)
  {
    v17 = pk_General_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138413314;
      v19 = serviceCopy;
      v20 = 2112;
      v21 = accountCopy;
      v22 = 2112;
      v23 = identifierCopy;
      v24 = 1024;
      v25 = successCopy;
      v26 = 2112;
      v27 = errorCopy;
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