@interface PKSafariCardNotificationManager
- (PKSafariCardNotificationManager)init;
- (void)_eligibleToCheckWithCompletion:(id)completion;
- (void)userDidPerformAction:(int64_t)action withCard:(id)card;
@end

@implementation PKSafariCardNotificationManager

- (PKSafariCardNotificationManager)init
{
  v6.receiver = self;
  v6.super_class = PKSafariCardNotificationManager;
  v2 = [(PKSafariCardNotificationManager *)&v6 init];
  if (v2)
  {
    v3 = +[PKPaymentService paymentService];
    paymentService = v2->_paymentService;
    v2->_paymentService = v3;
  }

  return v2;
}

- (void)userDidPerformAction:(int64_t)action withCard:(id)card
{
  v18 = *MEMORY[0x1E69E9840];
  cardCopy = card;
  v8 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 138412546;
    v15 = v9;
    v16 = 2048;
    actionCopy = action;
    _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_DEFAULT, "%@ called with action %ld", buf, 0x16u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__PKSafariCardNotificationManager_userDidPerformAction_withCard___block_invoke;
  v11[3] = &unk_1E79D59F8;
  v12 = cardCopy;
  selfCopy = self;
  v10 = cardCopy;
  [(PKSafariCardNotificationManager *)self _eligibleToCheckWithCompletion:v11];
}

void __65__PKSafariCardNotificationManager_userDidPerformAction_withCard___block_invoke(uint64_t a1, int a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [[PKFPANCredential alloc] initWithSafariDictionary:*(a1 + 32)];
    v4 = v3;
    if (v3)
    {
      v5 = [(PKFPANCredential *)v3 canCheckEligibility];
      v6 = PKLogFacilityTypeGetObject(7uLL);
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (v7)
        {
          *v10 = 0;
          _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Safari Import: Sending credential to be suggested based on checks.", v10, 2u);
        }

        v8 = *(*(a1 + 40) + 8);
        v11[0] = v4;
        v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
        [v8 suggestPaymentFPANCredentialImport:v6 withCompletion:&__block_literal_global_113];
        goto LABEL_12;
      }

      if (v7)
      {
        *v10 = 0;
        v9 = "Safari Import: Not sending credential as it's missing a required field for eligibility checking.";
        goto LABEL_11;
      }
    }

    else
    {
      v6 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        v9 = "Safari Import: Error converting Safari dictionary into credential.";
LABEL_11:
        _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
      }
    }

LABEL_12:
  }
}

void __65__PKSafariCardNotificationManager_userDidPerformAction_withCard___block_invoke_15(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject(7uLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Safari Import: Success passing Safari credential for import suggestion.", &v8, 2u);
    }
  }

  else if (v6)
  {
    v7 = [v4 localizedDescription];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Safari Import: Error passing Safari credential for import suggestion: %@", &v8, 0xCu);
  }
}

- (void)_eligibleToCheckWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v4 = PKCurrentPassbookState();
    v5 = PKLogFacilityTypeGetObject(7uLL);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4 >= 2)
    {
      if (v6)
      {
        *v9 = 0;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Safari Import Eligibility: Wallet has been deleted.", v9, 2u);
      }

      completionCopy[2](completionCopy, 0);
    }

    else
    {
      if (v6)
      {
        *v8 = 0;
        _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, "Safari Import Eligibility: All checks have passed.", v8, 2u);
      }

      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    v7 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, "Safari Import Eligibility: No completion block provided to eligibility check.", buf, 2u);
    }
  }
}

@end