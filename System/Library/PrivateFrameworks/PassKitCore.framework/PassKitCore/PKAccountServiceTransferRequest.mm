@interface PKAccountServiceTransferRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccountServicePaymentRequest:(id)a3;
- (PKAccountServiceTransferRequest)initWithAccount:(id)a3 peerPaymentAccount:(id)a4 peerPaymentPass:(id)a5 transferType:(unint64_t)a6 fundingSources:(id)a7 currencyAmount:(id)a8 paymentDate:(id)a9 objectSettings:(id)a10;
- (PKAccountServiceTransferRequest)initWithCoder:(id)a3;
- (id)_bankAccountsForFundingSources:(id)a3;
- (id)paymentSummaryItemsWithFundingSources:(unint64_t)a3 bankAccount:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)paymentAmountsWithFundingSources:(unint64_t)a3 apc:(id *)a4 ach:(id *)a5;
@end

@implementation PKAccountServiceTransferRequest

- (PKAccountServiceTransferRequest)initWithAccount:(id)a3 peerPaymentAccount:(id)a4 peerPaymentPass:(id)a5 transferType:(unint64_t)a6 fundingSources:(id)a7 currencyAmount:(id)a8 paymentDate:(id)a9 objectSettings:(id)a10
{
  v134 = *MEMORY[0x1E69E9840];
  v118 = a3;
  v16 = a4;
  v17 = a5;
  v119 = a7;
  v120 = a8;
  v18 = a9;
  v19 = a10;
  v125.receiver = self;
  v125.super_class = PKAccountServiceTransferRequest;
  v20 = [(PKPaymentRequest *)&v125 init];
  if (!v20)
  {
LABEL_120:
    v95 = v20;
    v26 = v118;
    goto LABEL_121;
  }

  if (!(v16 | v17) && ![v119 count])
  {
    v36 = PKLogFacilityTypeGetObject(0xFuLL);
    v26 = v118;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "Transfer request invalid: No peer payment or funding sources", buf, 2u);
    }

    goto LABEL_110;
  }

  v116 = v19;
  objc_storeStrong(&v20->_account, a3);
  v20->_featureIdentifier = [(PKAccount *)v20->_account feature];
  v21 = [(PKAccount *)v20->_account accountIdentifier];
  accountIdentifier = v20->_accountIdentifier;
  v20->_accountIdentifier = v21;

  v23 = [(PKAccount *)v20->_account accountBaseURL];
  accountBaseURL = v20->_accountBaseURL;
  v20->_accountBaseURL = v23;

  v20->_transferType = a6;
  objc_storeStrong(&v20->_currencyAmount, a8);
  objc_storeStrong(&v20->_peerPaymentAccount, a4);
  objc_storeStrong(&v20->_peerPaymentPass, a5);
  v20->_userWasShownAPCTransferSpeed = 0;
  [(PKPaymentRequest *)v20 setRequestType:2];
  [(PKPaymentRequest *)v20 setClientCallbackTimeout:65.0];
  v25 = [v120 currency];
  [(PKPaymentRequest *)v20 setCurrencyCode:v25];

  [(PKPaymentRequest *)v20 setConfirmationStyle:9];
  v26 = v118;
  if (v18)
  {
    v27 = v18;
    [(PKPaymentRequest *)v20 setPaymentDate:v18];
    v28 = 2;
  }

  else
  {
    v27 = 0;
    v29 = [MEMORY[0x1E695DF00] date];
    [(PKPaymentRequest *)v20 setPaymentDate:v29];

    v28 = 1;
  }

  [(PKPaymentRequest *)v20 setPaymentFrequency:v28];
  v30 = [v118 type];
  v31 = 0;
  if (v30 > 2)
  {
    if (v30 != 4)
    {
      v18 = v27;
      if (v30 != 3)
      {
        goto LABEL_116;
      }

LABEL_14:
      v31 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v35 = PKAccountTypeToString([v118 type]);
        *buf = 138412290;
        *v127 = v35;
        _os_log_impl(&dword_1AD337000, v31, OS_LOG_TYPE_DEFAULT, "Transfer request invalid for account type %@", buf, 0xCu);
      }

      goto LABEL_109;
    }

    v37 = [v118 savingsDetails];
    v31 = [v37 productTimeZone];

    transferType = v20->_transferType;
    v18 = v27;
    if (transferType == 3)
    {
      v39 = [v118 oneTimeWithdrawalFundingSourceTypes];
    }

    else
    {
      if (transferType != 2)
      {
        v58 = 0;
LABEL_46:
        v115 = [v120 amount];
        if ((v58 & 1) == 0)
        {
          v59 = 0;
          goto LABEL_74;
        }

        if (a6 == 3)
        {
          v60 = [v118 oneTimeWithdrawalFeatureDescriptor];
        }

        else
        {
          if (a6 != 2)
          {
            goto LABEL_56;
          }

          v60 = [v118 oneTimeDepositFeatureDescriptor];
        }

        if (v60)
        {
          v113 = v31;
          v61 = v60;
          v107 = [v60 minimumAmount];
          v103 = v61;
          if ([v115 compare:?] == -1)
          {
            v59 = 0;
          }

          else
          {
            v102 = v58;
            v62 = [v61 maximumAmount];
            v63 = [v115 compare:v62];

            if (v63 == 1)
            {
              v59 = 0;
              v31 = v113;
              v58 = v102;
LABEL_72:
              v64 = v103;
              goto LABEL_73;
            }

            v65 = [(PKAccountServiceTransferRequest *)v20 _bankAccountsForFundingSources:v119];
            v66 = [v65 pk_firstObjectPassingTest:&__block_literal_global_136];
            v67 = v66;
            v59 = v66 != 0;
            if (v66)
            {
              v101 = v66;
              v105 = v66 != 0;
              v100 = [v118 accountIdentifier];
              v68 = PKLastBankAccountIdentifierForAccountTransfer(v100);
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
                v73 = [v72 identifier];
                PKSetLastBankAccountIdentifierForAccountTransfer(v100, v73);
              }

              v59 = v105;
              v67 = v101;
              v74 = v110;
            }

            else
            {
              v74 = 0;
            }

            v107 = v74;
            [(PKAccountServiceTransferRequest *)v20 setDefaultBankAccount:v74];
            [(PKPaymentRequest *)v20 setBankAccounts:v65];

            v58 = v102;
          }

          v31 = v113;
          goto LABEL_72;
        }

LABEL_56:
        v64 = 0;
        v59 = 0;
LABEL_73:

LABEL_74:
        if (PKPeerPaymentNeedsResolutionToPerformAccountServicePayments(v16, v17))
        {
          LOBYTE(v75) = 0;
        }

        else
        {
          v75 = PKPeerPaymentCanPerformAccountServicePayments(v16, v17) ^ 1;
        }

        if (v58 & 2) == 0 || (v75)
        {
LABEL_100:
          if ([(PKPaymentRequest *)v20 accountPaymentSupportsPeerPayment])
          {
            v92 = [(PKPaymentRequest *)v20 deviceSupportsPeerPaymentAccountPayment];
          }

          else
          {
            v92 = 0;
          }

          v93 = [(PKPaymentRequest *)v20 bankAccounts];
          v94 = [v93 count];

          if (!v92 && !v94)
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

          if (v92)
          {
            v49 = v115;
            if (!v94)
            {
              [(PKPaymentRequest *)v20 setAccountPaymentUsePeerPaymentBalance:1];
            }

            goto LABEL_115;
          }

          goto LABEL_114;
        }

        v76 = [v16 currentBalance];
        v111 = [v76 amount];

        v77 = v20->_transferType;
        v114 = v31;
        if (v77 == 2)
        {
          v106 = v59;
          v82 = [v111 decimalNumberBySubtracting:v115];
          v83 = [MEMORY[0x1E696AB90] zero];
          v80 = [v82 compare:v83] != -1;

          v81 = [v118 oneTimeDepositWithAppleCashFeatureDescriptor];
        }

        else
        {
          if (v77 != 3)
          {
            v87 = 0;
LABEL_91:
            v88 = a6 != 2 || [v111 compare:v115] != -1;
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

            v31 = v114;
            goto LABEL_100;
          }

          v106 = v59;
          v78 = [v115 decimalNumberByAdding:v111];
          v79 = [v16 maximumBalance];
          v80 = [v78 compare:v79] != 1;

          v81 = [v118 oneTimeWithdrawalWithAppleCashFeatureDescriptor];
        }

        if (v81)
        {
          v104 = v80;
          v84 = [v81 minimumAmount];
          if ([v115 compare:v84] == -1)
          {
            v86 = 0;
          }

          else
          {
            v85 = [v81 maximumAmount];
            v86 = [v115 compare:v85] != 1;
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

      v39 = [v118 oneTimeDepositFundingSourceTypes];
    }

    v58 = v39;
    goto LABEL_46;
  }

  v18 = v27;
  if (!v30)
  {
    goto LABEL_14;
  }

  if (v30 != 1)
  {
LABEL_116:
    [(PKPaymentRequest *)v20 setPaymentTimeZone:v31];
    if ([(PKPaymentRequest *)v20 accountPaymentUsePeerPaymentBalance])
    {
      v96 = 3;
    }

    else
    {
      v96 = 1;
    }

    v97 = [(PKAccountServiceTransferRequest *)v20 defaultBankAccount];
    v98 = [(PKAccountServiceTransferRequest *)v20 paymentSummaryItemsWithFundingSources:v96 bankAccount:v97];
    [(PKPaymentRequest *)v20 setPaymentSummaryItems:v98];

    goto LABEL_120;
  }

  v32 = [v118 creditDetails];
  v33 = [v32 productTimeZone];

  v34 = ([v19 settings] & 0x200) != 0 || objc_msgSend(v119, "count") == 0;
  v40 = [v118 schedulePaymentFeatureDescriptor];
  v41 = [v40 paymentFundingSourceTypes];

  [(PKPaymentRequest *)v20 setDeviceSupportsPeerPaymentAccountPayment:PKPeerPaymentCanPerformAccountServicePayments(v16, v17)];
  v42 = 0;
  if (!v18 && (v41 & 2) != 0)
  {
    v42 = [(PKPaymentRequest *)v20 deviceSupportsPeerPaymentAccountPayment];
  }

  [(PKPaymentRequest *)v20 setAccountPaymentSupportsPeerPayment:v42];
  v43 = v34 && [(PKPaymentRequest *)v20 accountPaymentSupportsPeerPayment];
  v112 = v33;
  [(PKPaymentRequest *)v20 setAccountPaymentUsePeerPaymentBalance:v43];
  v115 = [(PKAccountServiceTransferRequest *)v20 _bankAccountsForFundingSources:v119];
  if ([v115 count])
  {
    v44 = [v118 accountIdentifier];
    v45 = PKLastBankAccountIdentifierForAccountTransfer(v44);
    v46 = [v45 length];
    v47 = v18;
    if (!v46)
    {
      v48 = PKSharedCacheGetStringForKey(@"LastBankAccountIdentifier");

      v45 = v48;
    }

    v49 = v115;
    if (![v45 length] || (v123[0] = MEMORY[0x1E69E9820], v123[1] = 3221225472, v123[2] = __156__PKAccountServiceTransferRequest_initWithAccount_peerPaymentAccount_peerPaymentPass_transferType_fundingSources_currencyAmount_paymentDate_objectSettings___block_invoke, v123[3] = &unk_1E79D9420, v124 = v45, objc_msgSend(v115, "pk_firstObjectPassingTest:", v123), v50 = objc_claimAutoreleasedReturnValue(), v124, !v50))
    {
      v50 = [v115 firstObject];
    }

    if (!v46 && v50)
    {
      v51 = [v50 identifier];
      PKSetLastBankAccountIdentifierForAccountTransfer(v44, v51);
    }

    [(PKAccountServiceTransferRequest *)v20 setDefaultBankAccount:v50];
    [(PKPaymentRequest *)v20 setBankAccounts:v115];

    v18 = v47;
    v19 = v116;
    v31 = v112;
    goto LABEL_115;
  }

  v52 = [v16 currentBalance];
  v53 = [v52 amount];
  v54 = [v120 amount];
  v55 = [v53 compare:v54];

  if (v55 != -1)
  {
    v31 = v112;
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
    v49 = v115;
LABEL_115:

    goto LABEL_116;
  }

  v56 = PKLogFacilityTypeGetObject(0xFuLL);
  v31 = v112;
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

- (void)paymentAmountsWithFundingSources:(unint64_t)a3 apc:(id *)a4 ach:(id *)a5
{
  v7 = a3;
  v9 = [(PKCurrencyAmount *)self->_currencyAmount amount];
  if ((v7 & 2) != 0)
  {
    v16 = v9;
    v11 = [(PKPeerPaymentAccount *)self->_peerPaymentAccount currentBalance];
    v12 = [v11 amount];

    if ([v12 compare:v16] == -1)
    {
      if ([(PKAccountServiceTransferRequest *)self supportsSplitPayment])
      {
        v15 = v12;
        *a4 = v12;
        v14 = v12;
      }

      else
      {
        v14 = *a4;
      }
    }

    else
    {
      v13 = v16;
      *a4 = v13;
      v14 = v13;
    }

    *a5 = [v16 decimalNumberBySubtracting:v14];

    v10 = v16;
  }

  else
  {
    v10 = v9;
    *a5 = v10;
  }
}

- (id)paymentSummaryItemsWithFundingSources:(unint64_t)a3 bankAccount:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
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
      [(PKAccountServiceTransferRequest *)self paymentAmountsWithFundingSources:a3 apc:&v50 ach:&v49];
      v9 = v50;
      v15 = v49;
      if (v9)
      {
        v16 = [MEMORY[0x1E696AB90] zero];
        if ([v16 compare:v9] == -1 && v15)
        {
          v17 = [MEMORY[0x1E696AB90] zero];
          v18 = [v17 compare:v15];

          if (!v6 || v18 != -1)
          {
            goto LABEL_11;
          }

          v16 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SCHEDULE_PAYMENT_APC_ITEM", self->_featureIdentifier, 0, v10, v11, v12, v13, v14, v48);
          featureIdentifier = self->_featureIdentifier;
          v20 = [v6 bankName];
          v26 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SCHEDULE_PAYMENT_ACH_ITEM_FORMAT", featureIdentifier, @"%@", v21, v22, v23, v24, v25, v20);

          v27 = [PKPaymentSummaryItem summaryItemWithLabel:v26 amount:v15];
          v28 = [PKPaymentSummaryItem summaryItemWithLabel:v16 amount:v9];
          [v7 safelyAddObject:v28];
          [v7 safelyAddObject:v27];
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

  v40 = [v6 bankName];
  if ((a3 & 2) != 0)
  {
    v41 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_WITHDRAW_APPLE_CASH_TITLE", self->_featureIdentifier, 0, v35, v36, v37, v38, v39, v48);

    v40 = v41;
  }

  v29 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_WITHDRAW_TOTAL_FMT", self->_featureIdentifier, @"%@", v35, v36, v37, v38, v39, v40);

LABEL_19:
  v42 = [(PKCurrencyAmount *)self->_currencyAmount amount];
  v43 = v42;
  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = [MEMORY[0x1E696AB90] zero];
  }

  v45 = v44;

  v46 = [PKPaymentSummaryItem summaryItemWithLabel:v29 amount:v45];
  [v7 addObject:v46];

  return v7;
}

- (id)_bankAccountsForFundingSources:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v3 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
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

          v10 = [*(*(&v13 + 1) + 8 * i) bankAccountRepresentation];
          [v4 safelyAddObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v11 = [v4 copy];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountServiceTransferRequest *)self isEqualToAccountServicePaymentRequest:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountServicePaymentRequest:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_33;
  }

  v21.receiver = self;
  v21.super_class = PKAccountServiceTransferRequest;
  if (![(PKPaymentRequest *)&v21 isEqual:v4])
  {
    goto LABEL_33;
  }

  v5 = v4[74];
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
  v12 = v4[75];
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
  v16 = v4[76];
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
  v18 = v4[77];
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
  if (self->_transferType != v4[78] || self->_initialAction != v4[81])
  {
    goto LABEL_33;
  }

  v19 = self->_userWasShownAPCTransferSpeed == *(v4 + 584);
LABEL_34:

  return v19;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_accountIdentifier];
  [v3 safelyAddObject:self->_accountBaseURL];
  [v3 safelyAddObject:self->_defaultBankAccount];
  [v3 safelyAddObject:self->_account];
  v10.receiver = self;
  v10.super_class = PKAccountServiceTransferRequest;
  v4 = [(PKAccountServiceTransferRequest *)&v10 hash];
  v5 = PKCombinedHash(v4, v3);
  v6 = self->_transferType - v5 + 32 * v5;
  v7 = self->_initialAction - v6 + 32 * v6;
  v8 = self->_userWasShownAPCTransferSpeed - v7 + 32 * v7;

  return v8;
}

- (PKAccountServiceTransferRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKAccountServiceTransferRequest;
  v5 = [(PKPaymentRequest *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountBaseURL"];
    accountBaseURL = v5->_accountBaseURL;
    v5->_accountBaseURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultBankAccount"];
    defaultBankAccount = v5->_defaultBankAccount;
    v5->_defaultBankAccount = v10;

    v5->_transferType = [v4 decodeIntegerForKey:@"transferType"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    account = v5->_account;
    v5->_account = v12;

    v5->_initialAction = [v4 decodeIntegerForKey:@"initialAction"];
    v5->_userWasShownAPCTransferSpeed = [v4 decodeBoolForKey:@"userWasShownAPCTransferSpeed"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKAccountServiceTransferRequest;
  v4 = a3;
  [(PKPaymentRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_accountIdentifier forKey:{@"accountIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_accountBaseURL forKey:@"accountBaseURL"];
  [v4 encodeObject:self->_defaultBankAccount forKey:@"defaultBankAccount"];
  [v4 encodeInteger:self->_transferType forKey:@"transferType"];
  [v4 encodeObject:self->_account forKey:@"account"];
  [v4 encodeInteger:self->_initialAction forKey:@"initialAction"];
  [v4 encodeBool:self->_userWasShownAPCTransferSpeed forKey:@"userWasShownAPCTransferSpeed"];
}

@end