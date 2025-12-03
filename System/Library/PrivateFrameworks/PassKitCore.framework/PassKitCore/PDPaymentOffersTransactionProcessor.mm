@interface PDPaymentOffersTransactionProcessor
- (PDPaymentOffersTransactionProcessor)initWithDelegate:(id)delegate databaseManager:(id)manager paymentWebServiceCoordinator:(id)coordinator;
- (PDPaymentOffersTransactionProcessorDelegate)delegate;
- (id)_confirmRequestWithConfirmationRecord:(id)record transaction:(id)transaction paymentPass:(id)pass;
- (id)_confirmationRecordForTransaction:(id)transaction;
- (id)_transactionForConfirmationRecord:(id)record;
- (void)_performConfirmWithTransactionRecord:(id)record transaction:(id)transaction;
- (void)_processConfirmResponse:(id)response record:(id)record eventType:(unint64_t)type paymentPass:(id)pass transaction:(id)transaction;
- (void)_processConfirmationRecord:(id)record withTransaction:(id)transaction;
- (void)_processFailedConfirmResponseWithError:(id)error record:(id)record eventType:(unint64_t)type paymentPass:(id)pass transaction:(id)transaction;
- (void)didReceivePaymentOfferConfirmationRecord:(id)record;
- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction oldTransaction:(id)oldTransaction;
@end

@implementation PDPaymentOffersTransactionProcessor

- (PDPaymentOffersTransactionProcessor)initWithDelegate:(id)delegate databaseManager:(id)manager paymentWebServiceCoordinator:(id)coordinator
{
  delegateCopy = delegate;
  managerCopy = manager;
  coordinatorCopy = coordinator;
  v18.receiver = self;
  v18.super_class = PDPaymentOffersTransactionProcessor;
  v11 = [(PDPaymentOffersTransactionProcessor *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    objc_storeStrong(&v12->_databaseManager, manager);
    objc_storeStrong(&v12->_paymentWebServiceCoordinator, coordinator);
    v13 = dispatch_queue_create("com.apple.passd.PDPaymentOffersTransactionProcessor", 0);
    workQueue = v12->_workQueue;
    v12->_workQueue = v13;

    v15 = objc_alloc_init(NSMutableSet);
    inflightRequests = v12->_inflightRequests;
    v12->_inflightRequests = v15;
  }

  return v12;
}

- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction oldTransaction:(id)oldTransaction
{
  transactionCopy = transaction;
  workQueue = self->_workQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007111C;
  v9[3] = &unk_10083C420;
  v9[4] = self;
  v10 = transactionCopy;
  v8 = transactionCopy;
  dispatch_async(workQueue, v9);
}

- (void)didReceivePaymentOfferConfirmationRecord:(id)record
{
  recordCopy = record;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100071218;
  v7[3] = &unk_10083C420;
  v7[4] = self;
  v8 = recordCopy;
  v6 = recordCopy;
  dispatch_async(workQueue, v7);
}

- (id)_confirmationRecordForTransaction:(id)transaction
{
  databaseManager = self->_databaseManager;
  paymentHash = [transaction paymentHash];
  v5 = [(PDDatabaseManager *)databaseManager paymentOfferConfirmationRecordWithPaymentHash:paymentHash];

  return v5;
}

- (id)_transactionForConfirmationRecord:(id)record
{
  databaseManager = self->_databaseManager;
  recordCopy = record;
  passUniqueID = [recordCopy passUniqueID];
  v7 = [(PDDatabaseManager *)databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:passUniqueID];

  v8 = self->_databaseManager;
  v9 = [NSSet alloc];
  paymentHash = [recordCopy paymentHash];

  v11 = [v9 initWithObjects:{paymentHash, 0}];
  v12 = [(PDDatabaseManager *)v8 paymentTransactionsWithFullPaymentHashes:v11 transactionSourceIdentifiers:v7];
  firstObject = [v12 firstObject];

  return firstObject;
}

- (void)_processConfirmationRecord:(id)record withTransaction:(id)transaction
{
  recordCopy = record;
  transactionCopy = transaction;
  type = [recordCopy type];
  if ((type - 2) < 2)
  {
    goto LABEL_2;
  }

  if (type == 1)
  {
    selectedOffer = [recordCopy selectedOffer];
    type2 = [selectedOffer type];
    if (type2 == 1)
    {
      v10 = [selectedOffer selectionType] & 0xFFFFFFFFFFFFFFFDLL;

      if (!v10)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (type2 == 2)
      {

LABEL_2:
        [(PDPaymentOffersTransactionProcessor *)self _performConfirmWithTransactionRecord:recordCopy transaction:transactionCopy];
        goto LABEL_10;
      }
    }
  }

LABEL_10:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didProcessConfirmationRecord:recordCopy forPaymentTransaction:transactionCopy];
}

- (void)_performConfirmWithTransactionRecord:(id)record transaction:(id)transaction
{
  recordCopy = record;
  transactionCopy = transaction;
  paymentHash = [(PDPaymentOffersTransactionProcessorRequest *)recordCopy paymentHash];
  if (paymentHash)
  {
    if ([(PDPaymentOffersTransactionProcessorRequest *)recordCopy fullyProcessed])
    {
      paymentPass = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(paymentPass, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = recordCopy;
        _os_log_impl(&_mh_execute_header, paymentPass, OS_LOG_TYPE_DEFAULT, "Payment offer confirmation record is already processed, skipping: %@", buf, 0xCu);
      }
    }

    else
    {
      databaseManager = self->_databaseManager;
      passUniqueID = [(PDPaymentOffersTransactionProcessorRequest *)recordCopy passUniqueID];
      v12 = [(PDDatabaseManager *)databaseManager passWithUniqueIdentifier:passUniqueID];
      paymentPass = [v12 paymentPass];

      v13 = [(PDPaymentOffersTransactionProcessor *)self _confirmRequestWithConfirmationRecord:recordCopy transaction:transactionCopy paymentPass:paymentPass];
      if (v13)
      {
        v24 = transactionCopy;
        v23 = v13;
        v14 = -[PDPaymentOffersTransactionProcessorRequest initWithPaymentHash:confirmEventType:]([PDPaymentOffersTransactionProcessorRequest alloc], "initWithPaymentHash:confirmEventType:", paymentHash, [v13 eventType]);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v15 = self->_inflightRequests;
        v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v33;
          while (2)
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v33 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v32 + 1) + 8 * i);
              if ([v20 coalesceWithRequest:v14])
              {
                v22 = PKLogFacilityTypeGetObject();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v37 = v14;
                  v38 = 2112;
                  v39 = v20;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Coalescing incoming payment offers transaction processor request %@ onto inflight request %@", buf, 0x16u);
                }

                v13 = v23;
                transactionCopy = v24;
                goto LABEL_18;
              }
            }

            v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        [(NSMutableSet *)self->_inflightRequests addObject:v14];
        paymentWebServiceCoordinator = self->_paymentWebServiceCoordinator;
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100071818;
        v25[3] = &unk_1008403B8;
        v13 = v23;
        v26 = v23;
        selfCopy = self;
        v28 = recordCopy;
        v29 = paymentPass;
        transactionCopy = v24;
        v30 = v24;
        v31 = v14;
        [(PDPaymentWebServiceCoordinator *)paymentWebServiceCoordinator performHandlerOnSharedWebServiceQueue:v25];

        v15 = v26;
LABEL_18:
      }
    }
  }
}

- (id)_confirmRequestWithConfirmationRecord:(id)record transaction:(id)transaction paymentPass:(id)pass
{
  recordCopy = record;
  transactionCopy = transaction;
  passCopy = pass;
  v11 = passCopy;
  v12 = 0;
  if (recordCopy && transactionCopy && passCopy)
  {
    primaryAccountIdentifier = [passCopy primaryAccountIdentifier];
    dpanIdentifier = [transactionCopy dpanIdentifier];
    v14 = dpanIdentifier;
    if (dpanIdentifier)
    {
      dpanIdentifier3 = dpanIdentifier;
    }

    else
    {
      devicePrimaryPaymentApplication = [v11 devicePrimaryPaymentApplication];
      dpanIdentifier2 = [devicePrimaryPaymentApplication dpanIdentifier];

      dpanIdentifier3 = dpanIdentifier2;
    }

    criteriaIdentifier = [recordCopy criteriaIdentifier];
    context = [recordCopy context];
    type = [recordCopy type];
    if (type == 3)
    {
      selectedOfferIdentifier = 0;
      v50 = dpanIdentifier3;
      sessionIdentifier = 0;
      selectedOffer = 0;
      rewardsRedemptionIntent = 0;
      v23 = 4;
    }

    else if (type == 2)
    {
      selectedOfferIdentifier = 0;
      v50 = dpanIdentifier3;
      sessionIdentifier = 0;
      selectedOffer = 0;
      rewardsRedemptionIntent = 0;
      v23 = 1;
    }

    else
    {
      if (type == 1)
      {
        v42 = context;
        v21 = recordCopy;
        selectedOffer = [v21 selectedOffer];
        [(PDDatabaseManager *)self->_databaseManager paymentOfferCriteriaTypeForCriteriaIdentifier:criteriaIdentifier];
        v23 = PKPaymentOfferWebServiceConfirmOfferSelectionTypeFromCriteriaType();
        if (primaryAccountIdentifier)
        {
          if (dpanIdentifier3)
          {
            goto LABEL_12;
          }
        }

        else
        {
          passDetails = [selectedOffer passDetails];
          primaryAccountIdentifier = [passDetails primaryAccountIdentifier];

          if (dpanIdentifier3)
          {
LABEL_12:
            if (criteriaIdentifier)
            {
LABEL_13:
              v50 = dpanIdentifier3;
              selectedOfferIdentifier = [v21 selectedOfferIdentifier];
              sessionIdentifier = [v21 sessionIdentifier];
              rewardsRedemptionIntent = [v21 rewardsRedemptionIntent];

              context = v43;
              goto LABEL_17;
            }

LABEL_36:
            criteriaIdentifier = [v21 criteriaIdentifier];
            goto LABEL_13;
          }
        }

        passDetails2 = [selectedOffer passDetails];
        dpanIdentifier3 = [passDetails2 dpanIdentifier];

        if (criteriaIdentifier)
        {
          goto LABEL_13;
        }

        goto LABEL_36;
      }

      selectedOfferIdentifier = 0;
      v50 = dpanIdentifier3;
      sessionIdentifier = 0;
      selectedOffer = 0;
      rewardsRedemptionIntent = 0;
      v23 = 0;
    }

LABEL_17:
    hasNotificationServiceData = [transactionCopy hasNotificationServiceData];
    if (hasNotificationServiceData)
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }

    v46 = [[PKPaymentOffersSessionTransactionDetails alloc] initWithTransaction:transactionCopy];
    processedEvents = [recordCopy processedEvents];
    v47 = v11;
    v45 = transactionCopy;
    if (hasNotificationServiceData)
    {
      if (processedEvents)
      {
        v28 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v53 = 0;
          v29 = "The post CNS event has already been processed. No need to call confirm again.";
          v30 = &v53;
LABEL_28:
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v29, v30, 2u);
          goto LABEL_29;
        }

        goto LABEL_29;
      }
    }

    else if ((processedEvents & 2) != 0)
    {
      v28 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v29 = "The post Tap event has already been processed. No need to call confirm again.";
        v30 = buf;
        goto LABEL_28;
      }

LABEL_29:

      v12 = 0;
      v36 = v50;
      v37 = primaryAccountIdentifier;
      v33 = rewardsRedemptionIntent;
      v31 = selectedOfferIdentifier;
      v38 = v46;
      goto LABEL_30;
    }

    v12 = objc_alloc_init(PKPaymentOfferWebServiceConfirmOffer);
    [v12 setEventType:v26];
    [v12 setSelectionType:v23];
    [v12 setCriteriaIdentifier:criteriaIdentifier];
    v44 = context;
    v31 = selectedOfferIdentifier;
    [v12 setSelectedOfferIdentifier:selectedOfferIdentifier];
    [v12 setSessionIdentifier:sessionIdentifier];
    v32 = v11;
    v33 = rewardsRedemptionIntent;
    [v12 setRewardsRedemptionIntent:rewardsRedemptionIntent];
    serialNumber = [v32 serialNumber];
    [v12 setPassSerialNumber:serialNumber];

    passTypeIdentifier = [v32 passTypeIdentifier];
    [v12 setPassTypeIdentifier:passTypeIdentifier];

    v36 = v50;
    [v12 setDpanIdentifier:v50];
    v37 = primaryAccountIdentifier;
    [v12 setFpanIdentifier:primaryAccountIdentifier];
    v38 = v46;
    [v12 setTransactionDetails:v46];
    [v12 setSelectedOffer:selectedOffer];
    [v12 setContext:v44];
LABEL_30:

    v11 = v47;
    transactionCopy = v45;
  }

  return v12;
}

- (void)_processConfirmResponse:(id)response record:(id)record eventType:(unint64_t)type paymentPass:(id)pass transaction:(id)transaction
{
  responseCopy = response;
  recordCopy = record;
  passCopy = pass;
  transactionCopy = transaction;
  transactionSourceIdentifier = [transactionCopy transactionSourceIdentifier];
  v17 = transactionSourceIdentifier;
  if (transactionSourceIdentifier)
  {
    transactionSourceIdentifier2 = transactionSourceIdentifier;
  }

  else
  {
    devicePrimaryPaymentApplication = [passCopy devicePrimaryPaymentApplication];
    transactionSourceIdentifier2 = [devicePrimaryPaymentApplication transactionSourceIdentifier];
  }

  uniqueID = [passCopy uniqueID];
  paymentHash = [transactionCopy paymentHash];
  if ([recordCopy type] == 1)
  {
    selectedOffer = [recordCopy selectedOffer];
  }

  else
  {
    selectedOffer = 0;
  }

  redemption = [responseCopy redemption];
  if (redemption)
  {
    v22 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = redemption;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Updating rewards redemption after payment offer confirm: %@", buf, 0xCu);
    }

    [(PDDatabaseManager *)self->_databaseManager insertOrUpdatePaymentRewardsRedemption:redemption withPassUniqueIdentifier:uniqueID];
  }

  type = [selectedOffer type];
  if (responseCopy && type == 1)
  {
    v37 = uniqueID;
    issuerInstallmentManagementURL = [responseCopy issuerInstallmentManagementURL];
    [transactionCopy setIssuerInstallmentManagementURL:issuerInstallmentManagementURL];
    [transactionCopy setIsIssuerInstallmentTransaction:1];
    v25 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      [transactionCopy serviceIdentifier];
      typeCopy = type;
      v26 = selectedOffer;
      v28 = v27 = passCopy;
      *buf = 138412546;
      v41 = v28;
      v42 = 2112;
      v43 = issuerInstallmentManagementURL;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Updating payment transaction with service identifier %@ to have issuerInstallmentManagementURL as %@ and issIssuerInstallmentTransaction as true", buf, 0x16u);

      passCopy = v27;
      selectedOffer = v26;
      type = typeCopy;
    }

    v29 = [(PDDatabaseManager *)self->_databaseManager insertOrUpdatePaymentTransaction:transactionCopy withTransactionSourceIdentifier:transactionSourceIdentifier2 insertionMode:0 performTruncation:1 insertedTransaction:0];

    transactionCopy = v29;
    uniqueID = v37;
  }

  if (type > 3)
  {
    v30 = 0;
  }

  else
  {
    v30 = qword_10068E0A0[type];
  }

  typeCopy = [(PDDatabaseManager *)self->_databaseManager updateProcessingForPaymentOfferConfirmationRecord:recordCopy event:v30 successfully:1, typeCopy];

  v32 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = typeCopy;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Updated payment offer confirmation record %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained paymentOffersTransactionProcessor:self didUpdateConfirmationRecord:typeCopy forTransactionWithPaymentHash:paymentHash];

  followUpAction = [responseCopy followUpAction];
  if (followUpAction == 2)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v35 = "Confirmation follow up action requires to wait for a push";
      goto LABEL_32;
    }

LABEL_33:

    goto LABEL_34;
  }

  if (followUpAction == 1)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Confirmation follow up action requires a call to list offers", buf, 2u);
    }

    if ([selectedOffer type] == 1)
    {
      v32 = objc_loadWeakRetained(&self->_delegate);
      [v32 shouldUpdateOffersForConfirmationRecord:typeCopy transaction:transactionCopy];
      goto LABEL_33;
    }
  }

  else if (!followUpAction)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v35 = "No follow up actions following confirm call";
LABEL_32:
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v35, buf, 2u);
      goto LABEL_33;
    }

    goto LABEL_33;
  }

LABEL_34:
}

- (void)_processFailedConfirmResponseWithError:(id)error record:(id)record eventType:(unint64_t)type paymentPass:(id)pass transaction:(id)transaction
{
  if (type == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (type == 1);
  }

  databaseManager = self->_databaseManager;
  transactionCopy = transaction;
  v12 = [(PDDatabaseManager *)databaseManager updateProcessingForPaymentOfferConfirmationRecord:record event:v9 successfully:0];
  v13 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updated payment offer confirmation record because of failed confirm response %@", &v18, 0xCu);
  }

  paymentHash = [transactionCopy paymentHash];

  if (paymentHash)
  {
    paymentHash2 = paymentHash;
  }

  else
  {
    paymentHash2 = [v12 paymentHash];
  }

  v16 = paymentHash2;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained paymentOffersTransactionProcessor:self didUpdateConfirmationRecord:v12 forTransactionWithPaymentHash:v16];
}

- (PDPaymentOffersTransactionProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end