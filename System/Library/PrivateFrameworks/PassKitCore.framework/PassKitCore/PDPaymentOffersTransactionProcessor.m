@interface PDPaymentOffersTransactionProcessor
- (PDPaymentOffersTransactionProcessor)initWithDelegate:(id)a3 databaseManager:(id)a4 paymentWebServiceCoordinator:(id)a5;
- (PDPaymentOffersTransactionProcessorDelegate)delegate;
- (id)_confirmRequestWithConfirmationRecord:(id)a3 transaction:(id)a4 paymentPass:(id)a5;
- (id)_confirmationRecordForTransaction:(id)a3;
- (id)_transactionForConfirmationRecord:(id)a3;
- (void)_performConfirmWithTransactionRecord:(id)a3 transaction:(id)a4;
- (void)_processConfirmResponse:(id)a3 record:(id)a4 eventType:(unint64_t)a5 paymentPass:(id)a6 transaction:(id)a7;
- (void)_processConfirmationRecord:(id)a3 withTransaction:(id)a4;
- (void)_processFailedConfirmResponseWithError:(id)a3 record:(id)a4 eventType:(unint64_t)a5 paymentPass:(id)a6 transaction:(id)a7;
- (void)didReceivePaymentOfferConfirmationRecord:(id)a3;
- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4 oldTransaction:(id)a5;
@end

@implementation PDPaymentOffersTransactionProcessor

- (PDPaymentOffersTransactionProcessor)initWithDelegate:(id)a3 databaseManager:(id)a4 paymentWebServiceCoordinator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = PDPaymentOffersTransactionProcessor;
  v11 = [(PDPaymentOffersTransactionProcessor *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v8);
    objc_storeStrong(&v12->_databaseManager, a4);
    objc_storeStrong(&v12->_paymentWebServiceCoordinator, a5);
    v13 = dispatch_queue_create("com.apple.passd.PDPaymentOffersTransactionProcessor", 0);
    workQueue = v12->_workQueue;
    v12->_workQueue = v13;

    v15 = objc_alloc_init(NSMutableSet);
    inflightRequests = v12->_inflightRequests;
    v12->_inflightRequests = v15;
  }

  return v12;
}

- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4 oldTransaction:(id)a5
{
  v6 = a4;
  workQueue = self->_workQueue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007111C;
  v9[3] = &unk_10083C420;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(workQueue, v9);
}

- (void)didReceivePaymentOfferConfirmationRecord:(id)a3
{
  v4 = a3;
  workQueue = self->_workQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100071218;
  v7[3] = &unk_10083C420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workQueue, v7);
}

- (id)_confirmationRecordForTransaction:(id)a3
{
  databaseManager = self->_databaseManager;
  v4 = [a3 paymentHash];
  v5 = [(PDDatabaseManager *)databaseManager paymentOfferConfirmationRecordWithPaymentHash:v4];

  return v5;
}

- (id)_transactionForConfirmationRecord:(id)a3
{
  databaseManager = self->_databaseManager;
  v5 = a3;
  v6 = [v5 passUniqueID];
  v7 = [(PDDatabaseManager *)databaseManager transactionSourceIdentifiersForPassUniqueIdentifier:v6];

  v8 = self->_databaseManager;
  v9 = [NSSet alloc];
  v10 = [v5 paymentHash];

  v11 = [v9 initWithObjects:{v10, 0}];
  v12 = [(PDDatabaseManager *)v8 paymentTransactionsWithFullPaymentHashes:v11 transactionSourceIdentifiers:v7];
  v13 = [v12 firstObject];

  return v13;
}

- (void)_processConfirmationRecord:(id)a3 withTransaction:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [v12 type];
  if ((v7 - 2) < 2)
  {
    goto LABEL_2;
  }

  if (v7 == 1)
  {
    v8 = [v12 selectedOffer];
    v9 = [v8 type];
    if (v9 == 1)
    {
      v10 = [v8 selectionType] & 0xFFFFFFFFFFFFFFFDLL;

      if (!v10)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (v9 == 2)
      {

LABEL_2:
        [(PDPaymentOffersTransactionProcessor *)self _performConfirmWithTransactionRecord:v12 transaction:v6];
        goto LABEL_10;
      }
    }
  }

LABEL_10:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didProcessConfirmationRecord:v12 forPaymentTransaction:v6];
}

- (void)_performConfirmWithTransactionRecord:(id)a3 transaction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PDPaymentOffersTransactionProcessorRequest *)v6 paymentHash];
  if (v8)
  {
    if ([(PDPaymentOffersTransactionProcessorRequest *)v6 fullyProcessed])
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Payment offer confirmation record is already processed, skipping: %@", buf, 0xCu);
      }
    }

    else
    {
      databaseManager = self->_databaseManager;
      v11 = [(PDPaymentOffersTransactionProcessorRequest *)v6 passUniqueID];
      v12 = [(PDDatabaseManager *)databaseManager passWithUniqueIdentifier:v11];
      v9 = [v12 paymentPass];

      v13 = [(PDPaymentOffersTransactionProcessor *)self _confirmRequestWithConfirmationRecord:v6 transaction:v7 paymentPass:v9];
      if (v13)
      {
        v24 = v7;
        v23 = v13;
        v14 = -[PDPaymentOffersTransactionProcessorRequest initWithPaymentHash:confirmEventType:]([PDPaymentOffersTransactionProcessorRequest alloc], "initWithPaymentHash:confirmEventType:", v8, [v13 eventType]);
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
                v7 = v24;
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
        v27 = self;
        v28 = v6;
        v29 = v9;
        v7 = v24;
        v30 = v24;
        v31 = v14;
        [(PDPaymentWebServiceCoordinator *)paymentWebServiceCoordinator performHandlerOnSharedWebServiceQueue:v25];

        v15 = v26;
LABEL_18:
      }
    }
  }
}

- (id)_confirmRequestWithConfirmationRecord:(id)a3 transaction:(id)a4 paymentPass:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v12 = 0;
  if (v8 && v9 && v10)
  {
    v51 = [v10 primaryAccountIdentifier];
    v13 = [v9 dpanIdentifier];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v16 = [v11 devicePrimaryPaymentApplication];
      v17 = [v16 dpanIdentifier];

      v15 = v17;
    }

    v18 = [v8 criteriaIdentifier];
    v19 = [v8 context];
    v20 = [v8 type];
    if (v20 == 3)
    {
      v49 = 0;
      v50 = v15;
      v24 = 0;
      v22 = 0;
      v48 = 0;
      v23 = 4;
    }

    else if (v20 == 2)
    {
      v49 = 0;
      v50 = v15;
      v24 = 0;
      v22 = 0;
      v48 = 0;
      v23 = 1;
    }

    else
    {
      if (v20 == 1)
      {
        v42 = v19;
        v21 = v8;
        v22 = [v21 selectedOffer];
        [(PDDatabaseManager *)self->_databaseManager paymentOfferCriteriaTypeForCriteriaIdentifier:v18];
        v23 = PKPaymentOfferWebServiceConfirmOfferSelectionTypeFromCriteriaType();
        if (v51)
        {
          if (v15)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v40 = [v22 passDetails];
          v51 = [v40 primaryAccountIdentifier];

          if (v15)
          {
LABEL_12:
            if (v18)
            {
LABEL_13:
              v50 = v15;
              v49 = [v21 selectedOfferIdentifier];
              v24 = [v21 sessionIdentifier];
              v48 = [v21 rewardsRedemptionIntent];

              v19 = v43;
              goto LABEL_17;
            }

LABEL_36:
            v18 = [v21 criteriaIdentifier];
            goto LABEL_13;
          }
        }

        v41 = [v22 passDetails];
        v15 = [v41 dpanIdentifier];

        if (v18)
        {
          goto LABEL_13;
        }

        goto LABEL_36;
      }

      v49 = 0;
      v50 = v15;
      v24 = 0;
      v22 = 0;
      v48 = 0;
      v23 = 0;
    }

LABEL_17:
    v25 = [v9 hasNotificationServiceData];
    if (v25)
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }

    v46 = [[PKPaymentOffersSessionTransactionDetails alloc] initWithTransaction:v9];
    v27 = [v8 processedEvents];
    v47 = v11;
    v45 = v9;
    if (v25)
    {
      if (v27)
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

    else if ((v27 & 2) != 0)
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
      v37 = v51;
      v33 = v48;
      v31 = v49;
      v38 = v46;
      goto LABEL_30;
    }

    v12 = objc_alloc_init(PKPaymentOfferWebServiceConfirmOffer);
    [v12 setEventType:v26];
    [v12 setSelectionType:v23];
    [v12 setCriteriaIdentifier:v18];
    v44 = v19;
    v31 = v49;
    [v12 setSelectedOfferIdentifier:v49];
    [v12 setSessionIdentifier:v24];
    v32 = v11;
    v33 = v48;
    [v12 setRewardsRedemptionIntent:v48];
    v34 = [v32 serialNumber];
    [v12 setPassSerialNumber:v34];

    v35 = [v32 passTypeIdentifier];
    [v12 setPassTypeIdentifier:v35];

    v36 = v50;
    [v12 setDpanIdentifier:v50];
    v37 = v51;
    [v12 setFpanIdentifier:v51];
    v38 = v46;
    [v12 setTransactionDetails:v46];
    [v12 setSelectedOffer:v22];
    [v12 setContext:v44];
LABEL_30:

    v11 = v47;
    v9 = v45;
  }

  return v12;
}

- (void)_processConfirmResponse:(id)a3 record:(id)a4 eventType:(unint64_t)a5 paymentPass:(id)a6 transaction:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [v15 transactionSourceIdentifier];
  v17 = v16;
  if (v16)
  {
    v38 = v16;
  }

  else
  {
    v18 = [v14 devicePrimaryPaymentApplication];
    v38 = [v18 transactionSourceIdentifier];
  }

  v19 = [v14 uniqueID];
  v39 = [v15 paymentHash];
  if ([v13 type] == 1)
  {
    v20 = [v13 selectedOffer];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v12 redemption];
  if (v21)
  {
    v22 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Updating rewards redemption after payment offer confirm: %@", buf, 0xCu);
    }

    [(PDDatabaseManager *)self->_databaseManager insertOrUpdatePaymentRewardsRedemption:v21 withPassUniqueIdentifier:v19];
  }

  v23 = [v20 type];
  if (v12 && v23 == 1)
  {
    v37 = v19;
    v24 = [v12 issuerInstallmentManagementURL];
    [v15 setIssuerInstallmentManagementURL:v24];
    [v15 setIsIssuerInstallmentTransaction:1];
    v25 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      [v15 serviceIdentifier];
      v36 = a5;
      v26 = v20;
      v28 = v27 = v14;
      *buf = 138412546;
      v41 = v28;
      v42 = 2112;
      v43 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Updating payment transaction with service identifier %@ to have issuerInstallmentManagementURL as %@ and issIssuerInstallmentTransaction as true", buf, 0x16u);

      v14 = v27;
      v20 = v26;
      a5 = v36;
    }

    v29 = [(PDDatabaseManager *)self->_databaseManager insertOrUpdatePaymentTransaction:v15 withTransactionSourceIdentifier:v38 insertionMode:0 performTruncation:1 insertedTransaction:0];

    v15 = v29;
    v19 = v37;
  }

  if (a5 > 3)
  {
    v30 = 0;
  }

  else
  {
    v30 = qword_10068E0A0[a5];
  }

  v31 = [(PDDatabaseManager *)self->_databaseManager updateProcessingForPaymentOfferConfirmationRecord:v13 event:v30 successfully:1, v36];

  v32 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v31;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Updated payment offer confirmation record %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained paymentOffersTransactionProcessor:self didUpdateConfirmationRecord:v31 forTransactionWithPaymentHash:v39];

  v34 = [v12 followUpAction];
  if (v34 == 2)
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

  if (v34 == 1)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Confirmation follow up action requires a call to list offers", buf, 2u);
    }

    if ([v20 type] == 1)
    {
      v32 = objc_loadWeakRetained(&self->_delegate);
      [v32 shouldUpdateOffersForConfirmationRecord:v31 transaction:v15];
      goto LABEL_33;
    }
  }

  else if (!v34)
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

- (void)_processFailedConfirmResponseWithError:(id)a3 record:(id)a4 eventType:(unint64_t)a5 paymentPass:(id)a6 transaction:(id)a7
{
  if (a5 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2 * (a5 == 1);
  }

  databaseManager = self->_databaseManager;
  v11 = a7;
  v12 = [(PDDatabaseManager *)databaseManager updateProcessingForPaymentOfferConfirmationRecord:a4 event:v9 successfully:0];
  v13 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updated payment offer confirmation record because of failed confirm response %@", &v18, 0xCu);
  }

  v14 = [v11 paymentHash];

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = [v12 paymentHash];
  }

  v16 = v15;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained paymentOffersTransactionProcessor:self didUpdateConfirmationRecord:v12 forTransactionWithPaymentHash:v16];
}

- (PDPaymentOffersTransactionProcessorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end