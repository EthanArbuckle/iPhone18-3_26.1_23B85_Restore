@interface PKContactlessInterfaceSessionDefaultBehavior
+ (void)attachDefaultBehaviorToSession:(id)a3;
- (void)_processContexts:(id)a3 didFinishTransaction:(BOOL)a4;
- (void)contactlessInterfaceSession:(id)a3 didFinishTransactionWithContext:(id)a4;
@end

@implementation PKContactlessInterfaceSessionDefaultBehavior

+ (void)attachDefaultBehaviorToSession:(id)a3
{
  object = a3;
  v3 = objc_getAssociatedObject(object, &SessionBehaviorKey);

  if (!v3)
  {
    v4 = objc_alloc_init(PKContactlessInterfaceSessionDefaultBehavior);
    objc_setAssociatedObject(object, &SessionBehaviorKey, v4, 0x301);
    [object setDelegate:v4];
  }
}

- (void)contactlessInterfaceSession:(id)a3 didFinishTransactionWithContext:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = self;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "PKContactlessInterfaceSessionDefaultBehavior (%p): ignoring transaction end....", buf, 0xCu);
  }

  if (v7)
  {
    v10 = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
    [(PKContactlessInterfaceSessionDefaultBehavior *)self _processContexts:v9 didFinishTransaction:1];
  }

  else
  {
    [(PKContactlessInterfaceSessionDefaultBehavior *)self _processContexts:0 didFinishTransaction:1];
  }
}

- (void)_processContexts:(id)a3 didFinishTransaction:(BOOL)a4
{
  v4 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 firstObject];
  v8 = [v7 paymentPass];

  if (v8)
  {
    v9 = +[PKPaymentService paymentService];
    v10 = [v8 isStoredValuePass];
    v11 = [v8 uniqueID];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      obj = v12;
      v26 = self;
      v27 = v8;
      v28 = v6;
      v15 = 0;
      v16 = *v32;
      v29 = v10 | v4;
      while (1)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v31 + 1) + 8 * i);
          v19 = [v18 paymentApplication];
          if (v10)
          {
            v20 = [v18 transitHistory];
            v21 = [v18 date];
            v22 = [v18 expressState];
            [v9 processTransitTransactionEventWithHistory:v20 transactionDate:v21 forPaymentApplication:v19 withPassUniqueIdentifier:v11 expressTransactionState:v22];

            v15 = 1;
          }

          else if (!v29)
          {
            goto LABEL_11;
          }

          v23 = [v19 applicationIdentifier];
          [v9 recordPaymentApplicationUsageForPassUniqueIdentifier:v11 paymentApplicationIdentifier:v23];

          v24 = [v19 applicationIdentifier];
          [v9 recordPassTransactionActivitySummaryForPassUniqueIdentifier:v11 paymentApplicationIdentifier:v24 presentmentType:2];

LABEL_11:
        }

        v14 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (!v14)
        {

          v8 = v27;
          v6 = v28;
          self = v26;
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
    v36 = self;
    _os_log_impl(&dword_1AD337000, v25, OS_LOG_TYPE_DEFAULT, "PKContactlessInterfaceSessionDefaultBehavior (%p): dropping transaction.", buf, 0xCu);
  }

LABEL_19:
}

@end