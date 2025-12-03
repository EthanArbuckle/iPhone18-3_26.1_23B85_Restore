@interface PKContactlessInterfaceSessionDefaultBehavior
+ (void)attachDefaultBehaviorToSession:(id)session;
- (void)_processContexts:(id)contexts didFinishTransaction:(BOOL)transaction;
- (void)contactlessInterfaceSession:(id)session didFinishTransactionWithContext:(id)context;
@end

@implementation PKContactlessInterfaceSessionDefaultBehavior

+ (void)attachDefaultBehaviorToSession:(id)session
{
  object = session;
  v3 = objc_getAssociatedObject(object, &SessionBehaviorKey);

  if (!v3)
  {
    v4 = objc_alloc_init(PKContactlessInterfaceSessionDefaultBehavior);
    objc_setAssociatedObject(object, &SessionBehaviorKey, v4, 0x301);
    [object setDelegate:v4];
  }
}

- (void)contactlessInterfaceSession:(id)session didFinishTransactionWithContext:(id)context
{
  v13 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  contextCopy = context;
  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKContactlessInterfaceSessionDefaultBehavior (%p): ignoring transaction end....", buf, 0xCu);
  }

  if (contextCopy)
  {
    v10 = contextCopy;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
    [(PKContactlessInterfaceSessionDefaultBehavior *)self _processContexts:v9 didFinishTransaction:1];
  }

  else
  {
    [(PKContactlessInterfaceSessionDefaultBehavior *)self _processContexts:0 didFinishTransaction:1];
  }
}

- (void)_processContexts:(id)contexts didFinishTransaction:(BOOL)transaction
{
  transactionCopy = transaction;
  v38 = *MEMORY[0x1E69E9840];
  contextsCopy = contexts;
  firstObject = [contextsCopy firstObject];
  paymentPass = [firstObject paymentPass];

  if (paymentPass)
  {
    v9 = +[PKPaymentService paymentService];
    isStoredValuePass = [paymentPass isStoredValuePass];
    uniqueID = [paymentPass uniqueID];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = contextsCopy;
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      obj = v12;
      selfCopy = self;
      v27 = paymentPass;
      v28 = contextsCopy;
      v15 = 0;
      v16 = *v32;
      v29 = isStoredValuePass | transactionCopy;
      while (1)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          paymentApplication = [v18 paymentApplication];
          if (isStoredValuePass)
          {
            transitHistory = [v18 transitHistory];
            date = [v18 date];
            expressState = [v18 expressState];
            [v9 processTransitTransactionEventWithHistory:transitHistory transactionDate:date forPaymentApplication:paymentApplication withPassUniqueIdentifier:uniqueID expressTransactionState:expressState];

            v15 = 1;
          }

          else if (!v29)
          {
            goto LABEL_11;
          }

          applicationIdentifier = [paymentApplication applicationIdentifier];
          [v9 recordPaymentApplicationUsageForPassUniqueIdentifier:uniqueID paymentApplicationIdentifier:applicationIdentifier];

          applicationIdentifier2 = [paymentApplication applicationIdentifier];
          [v9 recordPassTransactionActivitySummaryForPassUniqueIdentifier:uniqueID paymentApplicationIdentifier:applicationIdentifier2 presentmentType:2];

LABEL_11:
        }

        v14 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (!v14)
        {

          paymentPass = v27;
          contextsCopy = v28;
          self = selfCopy;
          if (v15)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }
      }
    }
  }

LABEL_16:
  v25 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy2 = self;
    _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "PKContactlessInterfaceSessionDefaultBehavior (%p): dropping transaction.", buf, 0xCu);
  }

LABEL_19:
}

@end