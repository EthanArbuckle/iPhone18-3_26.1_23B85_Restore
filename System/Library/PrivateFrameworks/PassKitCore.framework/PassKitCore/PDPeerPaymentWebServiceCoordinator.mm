@interface PDPeerPaymentWebServiceCoordinator
- (BOOL)_hasAssociatedPeerPaymentPassSetup;
- (void)_queue_executeNextAccountFetchRequestIfPossible;
@end

@implementation PDPeerPaymentWebServiceCoordinator

- (void)_queue_executeNextAccountFetchRequestIfPossible
{
  if (!self->_currentAccountFetchRequest)
  {
    firstObject = [(NSMutableArray *)self->_accountFetchRequests firstObject];
    currentAccountFetchRequest = self->_currentAccountFetchRequest;
    self->_currentAccountFetchRequest = firstObject;

    if (self->_currentAccountFetchRequest)
    {
      [(NSMutableArray *)self->_accountFetchRequests removeObjectAtIndex:0];
      v5 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = self->_currentAccountFetchRequest;
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Peer Payment account fetch request starting %@", &buf, 0xCu);
      }

      sharedPeerPaymentWebService = self->_sharedPeerPaymentWebService;
      diagnosticReasonString = [(PDPeerPaymentWebServiceAccountFetch *)self->_currentAccountFetchRequest diagnosticReasonString];
      [(PKPeerPaymentWebService *)sharedPeerPaymentWebService addDiagnosticReason:diagnosticReasonString];

      identifier = [(PKPeerPaymentAccount *)self->_account identifier];
      v10 = objc_alloc_init(PKAsyncUnaryOperationComposer);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v23 = 0x2020000000;
      v24 = 0;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10000CF54;
      v19[3] = &unk_10083E620;
      v19[4] = self;
      v11 = identifier;
      v20 = v11;
      p_buf = &buf;
      [v10 addOperation:v19];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1004906B0;
      v16[3] = &unk_10083E620;
      v16[4] = self;
      v12 = v11;
      v17 = v12;
      v18 = &buf;
      [v10 addOperation:v16];
      kdebug_trace();
      v13 = +[NSNull null];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1004910C4;
      v15[3] = &unk_10084ED70;
      v15[4] = self;
      v15[5] = &buf;
      v14 = [v10 evaluateWithInput:v13 completion:v15];

      _Block_object_dispose(&buf, 8);
    }
  }
}

- (BOOL)_hasAssociatedPeerPaymentPassSetup
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  associatedPassUniqueID = [(PKPeerPaymentAccount *)self->_account associatedPassUniqueID];
  v5 = [WeakRetained passWithUniqueIdentifier:associatedPassUniqueID];
  paymentPass = [v5 paymentPass];

  if (paymentPass)
  {
    devicePrimaryPaymentApplication = [paymentPass devicePrimaryPaymentApplication];
    v8 = devicePrimaryPaymentApplication != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end