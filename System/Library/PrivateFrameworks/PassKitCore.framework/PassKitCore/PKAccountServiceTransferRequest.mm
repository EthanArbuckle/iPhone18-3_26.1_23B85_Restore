@interface PKAccountServiceTransferRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccountServicePaymentRequest:(id)request;
- (PKAccountServiceTransferRequest)initWithAccount:(id)account peerPaymentAccount:(id)paymentAccount peerPaymentPass:(id)pass transferType:(unint64_t)type fundingSources:(id)sources currencyAmount:(id)amount paymentDate:(id)date objectSettings:(id)self0;
- (PKAccountServiceTransferRequest)initWithCoder:(id)coder;
- (id)_bankAccountsForFundingSources:(id)sources;
- (id)paymentSummaryItemsWithFundingSources:(unint64_t)sources bankAccount:(id)account;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)paymentAmountsWithFundingSources:(unint64_t)sources apc:(id *)apc ach:(id *)ach;
@end

@implementation PKAccountServiceTransferRequest

- (PKAccountServiceTransferRequest)initWithAccount:(id)account peerPaymentAccount:(id)paymentAccount peerPaymentPass:(id)pass transferType:(unint64_t)type fundingSources:(id)sources currencyAmount:(id)amount paymentDate:(id)date objectSettings:(id)self0
{
  v134 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  paymentAccountCopy = paymentAccount;
  passCopy = pass;
  sourcesCopy = sources;
  amountCopy = amount;
  dateCopy = date;
  settingsCopy = settings;
  v125.receiver = self;
  v125.super_class = PKAccountServiceTransferRequest;
  v20 = [(PKPaymentRequest *)&v125 init];
  if (!v20)
  {
LABEL_120:
    v95 = v20;
    v26 = accountCopy;
    goto LABEL_121;
  }

  if (!(paymentAccountCopy | passCopy) && ![sourcesCopy count])
  {
    v36 = PKLogFacilityTypeGetObject(0xFuLL);
    v26 = accountCopy;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "Transfer request invalid: No peer payment or funding sources", buf, 2u);
    }

    goto LABEL_110;
  }

  v116 = settingsCopy;
  objc_storeStrong(&v20->_account, account);
  v20->_featureIdentifier = [(PKAccount *)v20->_account feature];
  accountIdentifier = [(PKAccount *)v20->_account accountIdentifier];
  accountIdentifier = v20->_accountIdentifier;
  v20->_accountIdentifier = accountIdentifier;

  accountBaseURL = [(PKAccount *)v20->_account accountBaseURL];
  accountBaseURL = v20->_accountBaseURL;
  v20->_accountBaseURL = accountBaseURL;

  v20->_transferType = type;
  objc_storeStrong(&v20->_currencyAmount, amount);
  objc_storeStrong(&v20->_peerPaymentAccount, paymentAccount);
  objc_storeStrong(&v20->_peerPaymentPass, pass);
  v20->_userWasShownAPCTransferSpeed = 0;
  [(PKPaymentRequest *)v20 setRequestType:2];
  [(PKPaymentRequest *)v20 setClientCallbackTimeout:65.0];
  currency = [amountCopy currency];
  [(PKPaymentRequest *)v20 setCurrencyCode:currency];

  [(PKPaymentRequest *)v20 setConfirmationStyle:9];
  v26 = accountCopy;
  if (dateCopy)
  {
    v27 = dateCopy;
    [(PKPaymentRequest *)v20 setPaymentDate:dateCopy];
    v28 = 2;
  }

  else
  {
    v27 = 0;
    date = [MEMORY[0x1E695DF00] date];
    [(PKPaymentRequest *)v20 setPaymentDate:date];

    v28 = 1;
  }

  [(PKPaymentRequest *)v20 setPaymentFrequency:v28];
  type = [accountCopy type];
  productTimeZone = 0;
  if (type > 2)
  {
    if (type != 4)
    {
      dateCopy = v27;
      if (type != 3)
      {
        goto LABEL_116;
      }

LABEL_14:
      productTimeZone = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(productTimeZone, OS_LOG_TYPE_DEFAULT))
      {
        v35 = PKAccountTypeToString([accountCopy type]);
        *buf = 138412290;
        *v127 = v35;
        _os_log_impl(&dword_1AD337000, productTimeZone, OS_LOG_TYPE_DEFAULT, "Transfer request invalid for account type %@", buf, 0xCu);
      }

      goto LABEL_109;
    }

    savingsDetails = [accountCopy savingsDetails];
    productTimeZone = [savingsDetails productTimeZone];

    transferType = v20->_transferType;
    dateCopy = v27;
    if (transferType == 3)
    {
      oneTimeWithdrawalFundingSourceTypes = [accountCopy oneTimeWithdrawalFundingSourceTypes];
    }

    else
    {
      if (transferType != 2)
      {
        v58 = 0;
LABEL_46:
        amount = [amountCopy amount];
        if ((v58 & 1) == 0)
        {
          v59 = 0;
          goto LABEL_74;
        }

        if (type == 3)
        {
          oneTimeWithdrawalFeatureDescriptor = [accountCopy oneTimeWithdrawalFeatureDescriptor];
        }

        else
        {
          if (type != 2)
          {
            goto LABEL_56;
          }

          oneTimeWithdrawalFeatureDescriptor = [accountCopy oneTimeDepositFeatureDescriptor];
        }

        if (oneTimeWithdrawalFeatureDescriptor)
        {
          v113 = productTimeZone;
          v61 = oneTimeWithdrawalFeatureDescriptor;
          minimumAmount = [oneTimeWithdrawalFeatureDescriptor minimumAmount];
          v103 = v61;
          if ([amount compare:?] == -1)
          {
            v59 = 0;
          }

          else
          {
            v102 = v58;
            maximumAmount = [v61 maximumAmount];
            v63 = [amount compare:maximumAmount];

            if (v63 == 1)
            {
              v59 = 0;
              productTimeZone = v113;
              v58 = v102;
LABEL_72:
              v64 = v103;
              goto LABEL_73;
            }

            v65 = [(PKAccountServiceTransferRequest *)v20 _bankAccountsForFundingSources:sourcesCopy];
            v66 = [v65 pk_firstObjectPassingTest:&__block_literal_global_136];
            v67 = v66;
            v59 = v66 != 0;
            if (v66)
            {
              v101 = v66;
              v105 = v66 != 0;
              accountIdentifier2 = [accountCopy accountIdentifier];
              v68 = PKLastBankAccountIdentifierForAccountTransfer(accountIdentifier2);
              v69 = [v68 length];
              if (!v69)
              {
                PKSharedCacheGetStringForKey(@"LastBankAccountIdentifier");
                v70 = v108 = v65;

                v68 = v70;
                v65 = v108;
              }

              if (![v68 length] || (v121[0] = MEMORY[0x1E69E9820], v121[1] = 3221225472, v121[2] = __156__PKAccountServiceTransferRequest_initWithAccount_peerPaymentAccount_peerPaymentPass_transferType_fundingSources_currencyAmount_paymentDate_objectSettings___block_invoke_2, v121[3] = &unk_1E79D9420, v122 = v68, objc_msgSend(v65, "pk_firstObjectPassingTest:", v121), v109 = v69, v71 = objc_claimAutoreleasedReturnValue(), v122, v72 = v71, v69 = v109, !v72))
              {
                v72 = v101;
              }

              v110 = v72;
              if (!v69)
              {
                identifier = [v72 identifier];
                PKSetLastBankAccountIdentifierForAccountTransfer(accountIdentifier2, identifier);
              }

              v59 = v105;
              v67 = v101;
              v74 = v110;
            }

            else
            {
              v74 = 0;
            }

            minimumAmount = v74;
            [(PKAccountServiceTransferRequest *)v20 setDefaultBankAccount:v74];
            [(PKPaymentRequest *)v20 setBankAccounts:v65];

            v58 = v102;
          }

          productTimeZone = v113;
          goto LABEL_72;
        }

LABEL_56:
        v64 = 0;
        v59 = 0;
LABEL_73:

LABEL_74:
        if (PKPeerPaymentNeedsResolutionToPerformAccountServicePayments(paymentAccountCopy, passCopy))
        {
          LOBYTE(v75) = 0;
        }

        else
        {
          v75 = PKPeerPaymentCanPerformAccountServicePayments(paymentAccountCopy, passCopy) ^ 1;
        }

        if (v58 & 2) == 0 || (v75)
        {
LABEL_100:
          if ([(PKPaymentRequest *)v20 accountPaymentSupportsPeerPayment])
          {
            deviceSupportsPeerPaymentAccountPayment = [(PKPaymentRequest *)v20 deviceSupportsPeerPaymentAccountPayment];
          }

          else
          {
            deviceSupportsPeerPaymentAccountPayment = 0;
          }

          bankAccounts = [(PKPaymentRequest *)v20 bankAccounts];
          v94 = [bankAccounts count];

          if (!deviceSupportsPeerPaymentAccountPayment && !v94)
          {
            v56 = PKLogFacilityTypeGetObject(0xFuLL);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v57 = "Transfer request invalid: No bank account, and account does not support peer payment";
              goto LABEL_107;
            }

            goto LABEL_108;
          }

          if (deviceSupportsPeerPaymentAccountPayment)
          {
            v49 = amount;
            if (!v94)
            {
              [(PKPaymentRequest *)v20 setAccountPaymentUsePeerPaymentBalance:1];
            }

            goto LABEL_115;
          }

          goto LABEL_114;
        }

        currentBalance = [paymentAccountCopy currentBalance];
        amount2 = [currentBalance amount];

        v77 = v20->_transferType;
        v114 = productTimeZone;
        if (v77 == 2)
        {
          v106 = v59;
          v82 = [amount2 decimalNumberBySubtracting:amount];
          zero = [MEMORY[0x1E696AB90] zero];
          v80 = [v82 compare:zero] != -1;

          oneTimeDepositWithAppleCashFeatureDescriptor = [accountCopy oneTimeDepositWithAppleCashFeatureDescriptor];
        }

        else
        {
          if (v77 != 3)
          {
            v87 = 0;
LABEL_91:
            v88 = type != 2 || [amount2 compare:amount] != -1;
            v89 = v59 & PKAccountServiceTransferPrefersBank();
            v90 = PKLogFacilityTypeGetObject(0xFuLL);
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67110144;
              *v127 = 1;
              *&v127[4] = 1024;
              *&v127[6] = 1;
              v128 = 1024;
              v129 = v87;
              v130 = 1024;
              v131 = v88;
              v132 = 1024;
              v133 = v89 ^ 1;
              _os_log_impl(&dword_1AD337000, v90, OS_LOG_TYPE_DEFAULT, "Should use peer payment for transfer request? Supports peer payment: %d, device can show peer payment: %d, satisfies cash limits %d, cash balance is sufficient %d, user doesn't prefer bank: %d", buf, 0x20u);
            }

            if (v87)
            {
              v91 = v88 & (v89 ^ 1u);
            }

            else
            {
              v91 = 0;
            }

            [(PKPaymentRequest *)v20 setAccountPaymentUsePeerPaymentBalance:v91];
            [(PKPaymentRequest *)v20 setAccountPaymentSupportsPeerPayment:1];
            [(PKPaymentRequest *)v20 setDeviceSupportsPeerPaymentAccountPayment:1];

            productTimeZone = v114;
            goto LABEL_100;
          }

          v106 = v59;
          v78 = [amount decimalNumberByAdding:amount2];
          maximumBalance = [paymentAccountCopy maximumBalance];
          v80 = [v78 compare:maximumBalance] != 1;

          oneTimeDepositWithAppleCashFeatureDescriptor = [accountCopy oneTimeWithdrawalWithAppleCashFeatureDescriptor];
        }

        if (oneTimeDepositWithAppleCashFeatureDescriptor)
        {
          v104 = v80;
          minimumAmount2 = [oneTimeDepositWithAppleCashFeatureDescriptor minimumAmount];
          if ([amount compare:minimumAmount2] == -1)
          {
            v86 = 0;
          }

          else
          {
            maximumAmount2 = [oneTimeDepositWithAppleCashFeatureDescriptor maximumAmount];
            v86 = [amount compare:maximumAmount2] != 1;
          }

          v87 = v104 && v86;
        }

        else
        {
          v87 = 0;
        }

        v59 = v106;
        goto LABEL_91;
      }

      oneTimeWithdrawalFundingSourceTypes = [accountCopy oneTimeDepositFundingSourceTypes];
    }

    v58 = oneTimeWithdrawalFundingSourceTypes;
    goto LABEL_46;
  }

  dateCopy = v27;
  if (!type)
  {
    goto LABEL_14;
  }

  if (type != 1)
  {
LABEL_116:
    [(PKPaymentRequest *)v20 setPaymentTimeZone:productTimeZone];
    if ([(PKPaymentRequest *)v20 accountPaymentUsePeerPaymentBalance])
    {
      v96 = 3;
    }

    else
    {
      v96 = 1;
    }

    defaultBankAccount = [(PKAccountServiceTransferRequest *)v20 defaultBankAccount];
    v98 = [(PKAccountServiceTransferRequest *)v20 paymentSummaryItemsWithFundingSources:v96 bankAccount:defaultBankAccount];
    [(PKPaymentRequest *)v20 setPaymentSummaryItems:v98];

    goto LABEL_120;
  }

  creditDetails = [accountCopy creditDetails];
  productTimeZone2 = [creditDetails productTimeZone];

  v34 = ([settingsCopy settings] & 0x200) != 0 || objc_msgSend(sourcesCopy, "count") == 0;
  schedulePaymentFeatureDescriptor = [accountCopy schedulePaymentFeatureDescriptor];
  paymentFundingSourceTypes = [schedulePaymentFeatureDescriptor paymentFundingSourceTypes];

  [(PKPaymentRequest *)v20 setDeviceSupportsPeerPaymentAccountPayment:PKPeerPaymentCanPerformAccountServicePayments(paymentAccountCopy, passCopy)];
  deviceSupportsPeerPaymentAccountPayment2 = 0;
  if (!dateCopy && (paymentFundingSourceTypes & 2) != 0)
  {
    deviceSupportsPeerPaymentAccountPayment2 = [(PKPaymentRequest *)v20 deviceSupportsPeerPaymentAccountPayment];
  }

  [(PKPaymentRequest *)v20 setAccountPaymentSupportsPeerPayment:deviceSupportsPeerPaymentAccountPayment2];
  v43 = v34 && [(PKPaymentRequest *)v20 accountPaymentSupportsPeerPayment];
  v112 = productTimeZone2;
  [(PKPaymentRequest *)v20 setAccountPaymentUsePeerPaymentBalance:v43];
  amount = [(PKAccountServiceTransferRequest *)v20 _bankAccountsForFundingSources:sourcesCopy];
  if ([amount count])
  {
    accountIdentifier3 = [accountCopy accountIdentifier];
    v45 = PKLastBankAccountIdentifierForAccountTransfer(accountIdentifier3);
    v46 = [v45 length];
    v47 = dateCopy;
    if (!v46)
    {
      v48 = PKSharedCacheGetStringForKey(@"LastBankAccountIdentifier");

      v45 = v48;
    }

    v49 = amount;
    if (![v45 length] || (v123[0] = MEMORY[0x1E69E9820], v123[1] = 3221225472, v123[2] = __156__PKAccountServiceTransferRequest_initWithAccount_peerPaymentAccount_peerPaymentPass_transferType_fundingSources_currencyAmount_paymentDate_objectSettings___block_invoke, v123[3] = &unk_1E79D9420, v124 = v45, objc_msgSend(amount, "pk_firstObjectPassingTest:", v123), firstObject = objc_claimAutoreleasedReturnValue(), v124, !firstObject))
    {
      firstObject = [amount firstObject];
    }

    if (!v46 && firstObject)
    {
      identifier2 = [firstObject identifier];
      PKSetLastBankAccountIdentifierForAccountTransfer(accountIdentifier3, identifier2);
    }

    [(PKAccountServiceTransferRequest *)v20 setDefaultBankAccount:firstObject];
    [(PKPaymentRequest *)v20 setBankAccounts:amount];

    dateCopy = v47;
    settingsCopy = v116;
    productTimeZone = v112;
    goto LABEL_115;
  }

  currentBalance2 = [paymentAccountCopy currentBalance];
  amount3 = [currentBalance2 amount];
  amount4 = [amountCopy amount];
  v55 = [amount3 compare:amount4];

  if (v55 != -1)
  {
    productTimeZone = v112;
    if (![(PKPaymentRequest *)v20 accountPaymentSupportsPeerPayment])
    {
      v56 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v57 = "Transfer request invalid - no bank accounts and cash is not supported";
LABEL_107:
        _os_log_impl(&dword_1AD337000, v56, OS_LOG_TYPE_DEFAULT, v57, buf, 2u);
        goto LABEL_108;
      }

      goto LABEL_108;
    }

LABEL_114:
    v49 = amount;
LABEL_115:

    goto LABEL_116;
  }

  v56 = PKLogFacilityTypeGetObject(0xFuLL);
  productTimeZone = v112;
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v57 = "Transfer request invalid - no bank accounts and cash cannot cover the full amount";
    goto LABEL_107;
  }

LABEL_108:

LABEL_109:
LABEL_110:
  v95 = 0;
LABEL_121:

  return v95;
}

uint64_t __156__PKAccountServiceTransferRequest_initWithAccount_peerPaymentAccount_peerPaymentPass_transferType_fundingSources_currencyAmount_paymentDate_objectSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

BOOL __156__PKAccountServiceTransferRequest_initWithAccount_peerPaymentAccount_peerPaymentPass_transferType_fundingSources_currencyAmount_paymentDate_objectSettings___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (!v6 || !v7)
    {

LABEL_9:
      v10 = 0;
      goto LABEL_10;
    }

    v9 = [v6 isEqualToString:v7];

    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v10 = [v3 status] == 1;
LABEL_10:

  return v10;
}

- (void)paymentAmountsWithFundingSources:(unint64_t)sources apc:(id *)apc ach:(id *)ach
{
  sourcesCopy = sources;
  amount = [(PKCurrencyAmount *)self->_currencyAmount amount];
  if ((sourcesCopy & 2) != 0)
  {
    v16 = amount;
    currentBalance = [(PKPeerPaymentAccount *)self->_peerPaymentAccount currentBalance];
    amount2 = [currentBalance amount];

    if ([amount2 compare:v16] == -1)
    {
      if ([(PKAccountServiceTransferRequest *)self supportsSplitPayment])
      {
        v15 = amount2;
        *apc = amount2;
        v14 = amount2;
      }

      else
      {
        v14 = *apc;
      }
    }

    else
    {
      v13 = v16;
      *apc = v13;
      v14 = v13;
    }

    *ach = [v16 decimalNumberBySubtracting:v14];

    v10 = v16;
  }

  else
  {
    v10 = amount;
    *ach = v10;
  }
}

- (id)paymentSummaryItemsWithFundingSources:(unint64_t)sources bankAccount:(id)account
{
  accountCopy = account;
  array = [MEMORY[0x1E695DF70] array];
  transferType = self->_transferType;
  if (transferType != 3)
  {
    if (transferType == 2)
    {
      if ([(PKAccount *)self->_account type]== 4)
      {
        v29 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_DEPOSIT_SAVINGS_TOTAL", self->_featureIdentifier, 0, v30, v31, v32, v33, v34, v48);
        goto LABEL_19;
      }
    }

    else if (transferType == 1)
    {
      v49 = 0;
      v50 = 0;
      [(PKAccountServiceTransferRequest *)self paymentAmountsWithFundingSources:sources apc:&v50 ach:&v49];
      v9 = v50;
      v15 = v49;
      if (v9)
      {
        zero = [MEMORY[0x1E696AB90] zero];
        if ([zero compare:v9] == -1 && v15)
        {
          zero2 = [MEMORY[0x1E696AB90] zero];
          v18 = [zero2 compare:v15];

          if (!accountCopy || v18 != -1)
          {
            goto LABEL_11;
          }

          zero = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SCHEDULE_PAYMENT_APC_ITEM", self->_featureIdentifier, 0, v10, v11, v12, v13, v14, v48);
          featureIdentifier = self->_featureIdentifier;
          bankName = [accountCopy bankName];
          v26 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SCHEDULE_PAYMENT_ACH_ITEM_FORMAT", featureIdentifier, @"%@", v21, v22, v23, v24, v25, bankName);

          v27 = [PKPaymentSummaryItem summaryItemWithLabel:v26 amount:v15];
          v28 = [PKPaymentSummaryItem summaryItemWithLabel:zero amount:v9];
          [array safelyAddObject:v28];
          [array safelyAddObject:v27];
        }
      }

LABEL_11:
      v29 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SCHEDULE_PAYMENT_ITEM_TOTAL", self->_featureIdentifier, 0, v10, v11, v12, v13, v14, v48);

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ([(PKAccount *)self->_account type]!= 4)
  {
LABEL_18:
    v29 = 0;
    goto LABEL_19;
  }

  bankName2 = [accountCopy bankName];
  if ((sources & 2) != 0)
  {
    v41 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_WITHDRAW_APPLE_CASH_TITLE", self->_featureIdentifier, 0, v35, v36, v37, v38, v39, v48);

    bankName2 = v41;
  }

  v29 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_WITHDRAW_TOTAL_FMT", self->_featureIdentifier, @"%@", v35, v36, v37, v38, v39, bankName2);

LABEL_19:
  amount = [(PKCurrencyAmount *)self->_currencyAmount amount];
  v43 = amount;
  if (amount)
  {
    zero3 = amount;
  }

  else
  {
    zero3 = [MEMORY[0x1E696AB90] zero];
  }

  v45 = zero3;

  v46 = [PKPaymentSummaryItem summaryItemWithLabel:v29 amount:v45];
  [array addObject:v46];

  return array;
}

- (id)_bankAccountsForFundingSources:(id)sources
{
  v18 = *MEMORY[0x1E69E9840];
  sourcesCopy = sources;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([sourcesCopy count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = sourcesCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          bankAccountRepresentation = [*(*(&v13 + 1) + 8 * i) bankAccountRepresentation];
          [v4 safelyAddObject:bankAccountRepresentation];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = [v4 copy];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountServiceTransferRequest *)self isEqualToAccountServicePaymentRequest:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountServicePaymentRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    goto LABEL_33;
  }

  v21.receiver = self;
  v21.super_class = PKAccountServiceTransferRequest;
  if (![(PKPaymentRequest *)&v21 isEqual:requestCopy])
  {
    goto LABEL_33;
  }

  v5 = requestCopy[74];
  v6 = self->_accountIdentifier;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {

      goto LABEL_33;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_33;
    }
  }

  accountBaseURL = self->_accountBaseURL;
  v12 = requestCopy[75];
  if (accountBaseURL)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    if (accountBaseURL != v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v14 = [(NSURL *)accountBaseURL isEqual:?];
    if ((v14 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  defaultBankAccount = self->_defaultBankAccount;
  v16 = requestCopy[76];
  if (defaultBankAccount && v16)
  {
    if (([(PKBankAccountInformation *)defaultBankAccount isEqual:?]& 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (defaultBankAccount != v16)
  {
    goto LABEL_33;
  }

  account = self->_account;
  v18 = requestCopy[77];
  if (!account || !v18)
  {
    if (account == v18)
    {
      goto LABEL_30;
    }

LABEL_33:
    v19 = 0;
    goto LABEL_34;
  }

  if (![(PKAccount *)account isEqual:?])
  {
    goto LABEL_33;
  }

LABEL_30:
  if (self->_transferType != requestCopy[78] || self->_initialAction != requestCopy[81])
  {
    goto LABEL_33;
  }

  v19 = self->_userWasShownAPCTransferSpeed == *(requestCopy + 584);
LABEL_34:

  return v19;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_accountIdentifier];
  [array safelyAddObject:self->_accountBaseURL];
  [array safelyAddObject:self->_defaultBankAccount];
  [array safelyAddObject:self->_account];
  v10.receiver = self;
  v10.super_class = PKAccountServiceTransferRequest;
  v4 = [(PKAccountServiceTransferRequest *)&v10 hash];
  v5 = PKCombinedHash(v4, array);
  v6 = self->_transferType - v5 + 32 * v5;
  v7 = self->_initialAction - v6 + 32 * v6;
  v8 = self->_userWasShownAPCTransferSpeed - v7 + 32 * v7;

  return v8;
}

- (PKAccountServiceTransferRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKAccountServiceTransferRequest;
  v5 = [(PKPaymentRequest *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountBaseURL"];
    accountBaseURL = v5->_accountBaseURL;
    v5->_accountBaseURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultBankAccount"];
    defaultBankAccount = v5->_defaultBankAccount;
    v5->_defaultBankAccount = v10;

    v5->_transferType = [coderCopy decodeIntegerForKey:@"transferType"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    account = v5->_account;
    v5->_account = v12;

    v5->_initialAction = [coderCopy decodeIntegerForKey:@"initialAction"];
    v5->_userWasShownAPCTransferSpeed = [coderCopy decodeBoolForKey:@"userWasShownAPCTransferSpeed"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKAccountServiceTransferRequest;
  coderCopy = coder;
  [(PKPaymentRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_accountIdentifier forKey:{@"accountIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_accountBaseURL forKey:@"accountBaseURL"];
  [coderCopy encodeObject:self->_defaultBankAccount forKey:@"defaultBankAccount"];
  [coderCopy encodeInteger:self->_transferType forKey:@"transferType"];
  [coderCopy encodeObject:self->_account forKey:@"account"];
  [coderCopy encodeInteger:self->_initialAction forKey:@"initialAction"];
  [coderCopy encodeBool:self->_userWasShownAPCTransferSpeed forKey:@"userWasShownAPCTransferSpeed"];
}

@end