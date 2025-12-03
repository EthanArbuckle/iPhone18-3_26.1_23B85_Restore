@interface PKPaymentTransactionPresentation
+ (id)_billPaymentFundingSourceForTransaction:(id)transaction;
+ (id)_presentationInformationForBankConnectTransaction:(id)transaction paymentPass:(id)pass context:(unint64_t)context shouldDisplayTransactionSource:(BOOL)source;
+ (id)_relativeDateForTransaction:(id)transaction;
+ (id)_statusAnnotationForTransaction:(id)transaction overloadAnnotation:(BOOL *)annotation;
+ (id)presentationInformationForTransaction:(id)transaction transactionSource:(id)source secondaryTransactionSource:(id)transactionSource familyMember:(id)member account:(id)account deviceName:(id)name context:(unint64_t)context shouldDisplayTransactionSource:(BOOL)self0;
+ (id)secondaryFundingSourceDescriptionForTransaction:(id)transaction secondarySource:(id)source includeBankAccountSuffix:(BOOL)suffix useGenericNameIfNoDescriptionAvailable:(BOOL)available;
+ (id)staticIconNameForTransaction:(id)transaction;
+ (unint64_t)iconTypeForTransaction:(id)transaction ignoreLogoURL:(BOOL)l;
+ (void)_transferFundingSourceInformationForTransaction:(id)transaction primaryString:(id *)string secondaryString:(id *)secondaryString;
@end

@implementation PKPaymentTransactionPresentation

+ (id)presentationInformationForTransaction:(id)transaction transactionSource:(id)source secondaryTransactionSource:(id)transactionSource familyMember:(id)member account:(id)account deviceName:(id)name context:(unint64_t)context shouldDisplayTransactionSource:(BOOL)self0
{
  v420 = *MEMORY[0x1E69E9840];
  transactionCopy = transaction;
  sourceCopy = source;
  transactionSourceCopy = transactionSource;
  memberCopy = member;
  accountCopy = account;
  nameCopy = name;
  LODWORD(name) = [transactionCopy isBankConnectTransaction];
  paymentPass = [sourceCopy paymentPass];
  v22 = paymentPass;
  if (name)
  {
    v23 = [self _presentationInformationForBankConnectTransaction:transactionCopy paymentPass:paymentPass context:context shouldDisplayTransactionSource:displayTransactionSource];

    v24 = transactionSourceCopy;
    goto LABEL_291;
  }

  v399 = paymentPass;
  selfCopy = self;
  v390 = nameCopy;
  v402 = accountCopy;
  v394 = memberCopy;
  transactionType = [transactionCopy transactionType];
  transactionStatus = [transactionCopy transactionStatus];
  transitType = [transactionCopy transitType];
  transitModifiers = [transactionCopy transitModifiers];
  v372 = transitType;
  v27 = transactionType != 2 || transitType == 0;
  v28 = !v27;
  if ([transactionCopy hasNotificationServiceData])
  {
    processedForStations = 1;
  }

  else if ([transactionCopy processedForLocation])
  {
    processedForStations = [transactionCopy processedForStations];
  }

  else
  {
    processedForStations = 0;
  }

  enRoute = [transactionCopy enRoute];
  featureIdentifier = [transactionCopy featureIdentifier];
  if ((v28 & processedForStations) == 1)
  {
    *(&v381 + 1) = [transactionCopy startStation];
    *&v381 = [transactionCopy endStation];
  }

  else
  {
    v381 = 0uLL;
  }

  transactionType2 = [transactionCopy transactionType];
  v33 = context != 5 && transactionType2 != 12;
  v379 = v33;
  if ([transactionCopy isRecurring])
  {
    transactionType3 = [transactionCopy transactionType];
    v35 = @"arrow.triangle.2.circlepath";
    if (transactionType3 == 6)
    {
      v35 = 0;
    }

    v401 = v35;
  }

  else
  {
    v401 = 0;
  }

  peerPaymentType = [transactionCopy peerPaymentType];
  peerPaymentCounterpartHandle = [transactionCopy peerPaymentCounterpartHandle];
  if (transactionType == 3)
  {
    peerPaymentPaymentMode = [transactionCopy peerPaymentPaymentMode];
    if (peerPaymentPaymentMode == 3)
    {
      if ([transactionCopy peerPaymentType] == 2)
      {
        peerPaymentRequestToken = [transactionCopy peerPaymentRequestToken];

        v39 = v401;
        if (peerPaymentRequestToken)
        {
          v39 = @"person.3.fill";
        }

        v401 = v39;
      }
    }

    else if (peerPaymentPaymentMode == 2)
    {
      v401 = @"apple.cash.tap";
    }
  }

  amount = [transactionCopy amount];
  if (amount)
  {
    v49Amount = amount;
    v42 = v28 ^ 1;
    if (transactionType == 3)
    {
      v42 = 0;
    }

    if (v42)
    {
      formattedBalanceAdjustmentAmount = [transactionCopy formattedBalanceAdjustmentAmount];
    }

    else
    {
      formattedBalanceAdjustmentSubtotalAmount = [transactionCopy formattedBalanceAdjustmentSubtotalAmount];
      v44 = formattedBalanceAdjustmentSubtotalAmount;
      if (formattedBalanceAdjustmentSubtotalAmount)
      {
        formattedBalanceAdjustmentAmount = formattedBalanceAdjustmentSubtotalAmount;
      }

      else
      {
        formattedBalanceAdjustmentAmount = [transactionCopy formattedBalanceAdjustmentAmount];
      }
    }

    currencyCode = [transactionCopy currencyCode];
    if (processedForStations)
    {
      goto LABEL_51;
    }

LABEL_47:
    displayLocation = 0;
    displayName = 0;
    goto LABEL_52;
  }

  amounts = [transactionCopy amounts];
  if (amounts)
  {
  }

  else
  {
    plans = [transactionCopy plans];

    if (!plans)
    {
      v49Amount = 0;
      currencyCode = 0;
      formattedBalanceAdjustmentAmount = 0;
      if (!processedForStations)
      {
        goto LABEL_47;
      }

      goto LABEL_51;
    }
  }

  formattedBalanceAdjustmentAmount = [transactionCopy formattedStringForMultipleAmountsForPass:v399];
  transactionAmountsForMultipleAmounts = [transactionCopy transactionAmountsForMultipleAmounts];
  firstObject = [transactionAmountsForMultipleAmounts firstObject];

  amount2 = [firstObject amount];
  v49Amount = [amount2 amount];
  currencyCode = [amount2 currency];

  if (!processedForStations)
  {
    goto LABEL_47;
  }

LABEL_51:
  merchant = [transactionCopy merchant];
  displayName = [merchant displayName];

  displayLocation = [transactionCopy displayLocation];

LABEL_52:
  v404 = transactionCopy;
  transactionStatus2 = [transactionCopy transactionStatus];
  v396 = sourceCopy;
  v57 = transactionSourceCopy;
  v378 = v49Amount;
  contextCopy15 = context;
  v387 = peerPaymentType;
  if (transactionStatus2 == 3)
  {
    v59 = PKLocalizedPaymentString(&cfstr_PaymentTransac_6.isa, 0);

    v60 = 0;
    v61 = 0;
    v62 = 1;
    formattedBalanceAdjustmentAmount = v59;
    goto LABEL_109;
  }

  if (v28 && (!v49Amount || !currencyCode))
  {
    if (!((transactionStatus != 0) | enRoute & 1))
    {
      v72 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_1.isa, 0);
LABEL_132:
      v95 = v72;

      v61 = 0;
      v62 = 0;
      v60 = 0;
      formattedBalanceAdjustmentAmount = v95;
      goto LABEL_133;
    }

    v61 = 0;
    if (v372 > 256)
    {
      if ((v372 - 257) >= 5)
      {
        if (v372 == 1025)
        {
          if (enRoute)
          {
            goto LABEL_77;
          }

          v75 = @"TRANSIT_TRANSACTION_REDEEMED";
          goto LABEL_131;
        }

        if (v372 != 517)
        {
          goto LABEL_127;
        }

        if (transactionStatus)
        {
          if ([v399 shouldSuppressNoChargeAmount])
          {
            goto LABEL_77;
          }

          devicePrimaryPaymentApplication = [v399 devicePrimaryPaymentApplication];
          paymentNetworkIdentifier = [devicePrimaryPaymentApplication paymentNetworkIdentifier];

          if (paymentNetworkIdentifier == 131)
          {
            v75 = @"-";
          }

          else
          {
            v75 = @"TRANSIT_TRANSACTION_FARE_FREE";
          }

          goto LABEL_131;
        }

        goto LABEL_130;
      }
    }

    else if ((v372 - 1) >= 8)
    {
      goto LABEL_127;
    }

    if (enRoute)
    {
      goto LABEL_77;
    }

    if (transitModifiers)
    {
      v75 = @"TRANSIT_TRANSACTION_FARE_PAID";
LABEL_131:
      v72 = PKLocalizedPaymentString(&v75->isa, 0);
      goto LABEL_132;
    }

    if ((transitModifiers & 6) != 0)
    {
      v72 = _zeroCurrencyAmount(v399);
      goto LABEL_132;
    }

    if (transactionStatus)
    {
      v61 = 0;
      if (([v399 shouldSuppressNoChargeAmount] & 1) == 0)
      {
        v62 = 0;
        v60 = 0;
        if (formattedBalanceAdjustmentAmount)
        {
          goto LABEL_133;
        }

        formattedBalanceAdjustmentAmount = PKLocalizedPaymentString(&cfstr_TransitTransac_0.isa, 0);
LABEL_77:
        v61 = 0;
        v62 = 0;
        v60 = 0;
        goto LABEL_133;
      }

LABEL_127:
      v62 = 0;
      v60 = 0;
      goto LABEL_133;
    }

LABEL_130:
    v75 = @"TRANSIT_TRANSACTION_PENDING";
    goto LABEL_131;
  }

  v60 = 0;
  if (!v49Amount || !currencyCode)
  {
    goto LABEL_108;
  }

  if (context == 4)
  {
    if ([v404 transactionType] == 8)
    {
      currencyAmount = [v404 currencyAmount];
      if (v402)
      {
        feature = [v402 feature];
      }

      else
      {
        feature = [v404 featureIdentifier];
      }

      v74 = feature == 5;
    }

    else
    {
      currencyAmount = [v404 rewardsTotalCurrencyAmount];
      v74 = [v404 redemptionType] == 3;
    }

    v76 = !v74;
    if (!currencyAmount)
    {
      goto LABEL_94;
    }

    formattedStringValue = [currencyAmount formattedStringValue];

    amount3 = [currencyAmount amount];
    zero = [MEMORY[0x1E696AB90] zero];
    v79 = [amount3 compare:zero] != -1;

    if ((v79 & v76) != 1)
    {
      formattedBalanceAdjustmentAmount = formattedStringValue;
      v57 = transactionSourceCopy;
      contextCopy15 = 4;
      peerPaymentType = v387;
      goto LABEL_94;
    }

    minimalFormattedStringValue = formattedStringValue;
    v69 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F2281668.isa);
    v57 = transactionSourceCopy;
    contextCopy15 = 4;
    peerPaymentType = v387;
    goto LABEL_92;
  }

  if (context != 3)
  {
    goto LABEL_95;
  }

  rewardsTotalCurrencyAmount = [v404 rewardsTotalCurrencyAmount];
  currencyAmount = rewardsTotalCurrencyAmount;
  if (rewardsTotalCurrencyAmount)
  {
    amount4 = [rewardsTotalCurrencyAmount amount];
    zero2 = [MEMORY[0x1E696AB90] zero];
    v67 = [amount4 compare:zero2];

    formattedStringValue2 = [currencyAmount formattedStringValue];
    v69 = formattedStringValue2;
    if (v67 == -1)
    {
      formattedStringValue = formattedBalanceAdjustmentAmount;
    }

    else
    {
      minimalFormattedStringValue = formattedStringValue2;
      v70 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F2281668.isa);

      formattedStringValue = v69;
      v69 = v70;
    }

    contextCopy15 = 3;
    v57 = transactionSourceCopy;
LABEL_92:

    formattedBalanceAdjustmentAmount = v69;
  }

LABEL_94:

LABEL_95:
  v60 = 0;
  if (transactionStatus > 2)
  {
    if ((transactionStatus - 3) < 5)
    {
LABEL_97:
      v62 = 1;
      v61 = 1;
      goto LABEL_109;
    }

    if (transactionStatus == 8)
    {
      goto LABEL_102;
    }

LABEL_108:
    v62 = 0;
    v61 = 0;
    goto LABEL_109;
  }

  if (transactionStatus)
  {
    if (transactionStatus == 2)
    {
      v60 = 1;
      goto LABEL_97;
    }

    goto LABEL_108;
  }

LABEL_102:
  v60 = 0;
  v61 = 0;
  v62 = transactionType == 3 && peerPaymentType == 2;
LABEL_109:
  if (transactionType == 11)
  {
    v392 = v60;
    v376 = v62;
    v377 = v61;
    accountType = [v404 accountType];
    if (contextCopy15 == 1 && accountType != 3)
    {
      v82 = v404;
      transactionDate = [v404 transactionDate];
      displayName2 = PKMonthAndYearStringFromDate(transactionDate);

      v385 = 0;
      v373 = 0;
      v84 = 0;
      v85 = 1;
      v86 = selfCopy;
      goto LABEL_167;
    }

    v373 = accountType == 3;
    v385 = contextCopy15 != 1;
    v86 = selfCopy;
    if ([v402 type] != 1 && objc_msgSend(v404, "accountType") != 2)
    {
      v82 = v404;
      featureIdentifier2 = [v404 featureIdentifier];
      displayName2 = PKLocalizedFeatureString(@"TRANSACTION_TYPE_INTEREST_PAID", featureIdentifier2, 0, v88, v89, v90, v91, v92, minimalFormattedStringValue);
      v84 = 0;
      v85 = 1;
      goto LABEL_167;
    }

    displayName2 = PKLocalizedPaymentString(&cfstr_TransactionTyp_5.isa, 0);
    v84 = 0;
    v85 = 1;
    goto LABEL_166;
  }

LABEL_133:
  v376 = v62;
  v377 = v61;
  v392 = v60;
  if (contextCopy15 == 1)
  {
    v86 = selfCopy;
    v82 = v404;
    displayName2 = [selfCopy _relativeDateForTransaction:v404];
    v385 = 0;
    v373 = 0;
    v85 = 0;
    v84 = 0;
    goto LABEL_167;
  }

  if (transactionType == 3)
  {
    if ([peerPaymentCounterpartHandle length])
    {
      v86 = selfCopy;
      if ([v404 peerPaymentPaymentMode] != 2)
      {
        v101 = [PKPeerPaymentCounterpartHandleFormatter displayNameForCounterpartHandle:peerPaymentCounterpartHandle contact:0];
        goto LABEL_163;
      }

      v96 = peerPaymentCounterpartHandle;
      goto LABEL_153;
    }

    v27 = peerPaymentType == 1;
    v102 = peerPaymentType;
    v86 = selfCopy;
    if (v27)
    {
      v103 = @"PAYMENT_SUMMARY_PEER_PAYMENT_UNKNOWN_RECIPIENT_TITLE";
      goto LABEL_162;
    }

    if (v102 == 2)
    {
      v103 = @"PAYMENT_SUMMARY_PEER_PAYMENT_UNKNOWN_SENDER_TITLE";
LABEL_162:
      v101 = PKLocalizedPeerPaymentString(&v103->isa, 0);
      goto LABEL_163;
    }
  }

  else
  {
    if ((transactionType - 5) <= 1)
    {
      v86 = selfCopy;
      v97 = objc_opt_class();
      v98 = v57;
      v82 = v404;
      v99 = [v97 secondaryFundingSourceDescriptionForTransaction:v404 secondarySource:v98 includeBankAccountSuffix:0 useGenericNameIfNoDescriptionAvailable:0];
LABEL_141:
      displayName2 = v99;
LABEL_142:
      v373 = 0;
      v85 = 0;
      v84 = 0;
LABEL_143:
      v385 = 1;
      goto LABEL_167;
    }

    v86 = selfCopy;
    if (transactionType == 10)
    {
      v100 = @"TRANSACTION_DETAIL_BILL_PAYMENT_TITLE";
      goto LABEL_146;
    }
  }

  v82 = v404;
  if (![v404 transactionType])
  {
    payments = [v404 payments];
    v108 = [payments count];

    if (v108)
    {
      displayName2 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_DISPLAY_NAME", 2, 0, v109, v110, v111, v112, v113, minimalFormattedStringValue);
      v119 = PKLocalizedFeatureString(@"TRANSACTION_DETAIL_BILL_PAYMENT_TITLE", 2, 0, v114, v115, v116, v117, v118, v370);
LABEL_327:
      v84 = v119;
      v373 = 0;
      v85 = 0;
      goto LABEL_143;
    }
  }

  if ([v404 transactionType] == 15)
  {
    v96 = displayName;
    if (displayName)
    {
LABEL_153:
      v101 = v96;
      goto LABEL_163;
    }

    v82 = v404;
    releasedData = [v404 releasedData];
    verificationType = [releasedData verificationType];

    v99 = PKTransactionReleasedDataVerificationTypeToLocalizedTitle(verificationType);
    goto LABEL_141;
  }

  if (![v404 transactionType])
  {
    transfers = [v404 transfers];
    v253 = [transfers count];

    if (v253)
    {
      v417 = 0;
      v418 = 0;
      [v86 _transferFundingSourceInformationForTransaction:v404 primaryString:&v418 secondaryString:&v417];
      displayName2 = v418;
      v119 = v417;
      goto LABEL_327;
    }
  }

  if ([v404 transactionType] == 7)
  {
    transfers2 = [v404 transfers];
    v105 = [transfers2 count];

    if (v105)
    {
      v416 = 0;
      [v86 _transferFundingSourceInformationForTransaction:v404 primaryString:&v416 secondaryString:0];
      v106 = v416;
LABEL_321:
      v99 = v106;
      goto LABEL_141;
    }
  }

  if (![v404 transactionType] && objc_msgSend(v404, "accountType") == 1)
  {
    referenceIdentifier = [v404 referenceIdentifier];
    v246 = [referenceIdentifier length];

    if (v246)
    {
      v99 = PKLocalizedPaymentString(&cfstr_TransactionTyp_0.isa, 0);
      goto LABEL_141;
    }
  }

  if (![v404 transactionType])
  {
    recurringPeerPayment = [v404 recurringPeerPayment];

    if (recurringPeerPayment)
    {
      merchant2 = [v404 merchant];
      hasMapsMatch = [merchant2 hasMapsMatch];

      if (hasMapsMatch)
      {
        merchant3 = [v404 merchant];
        displayName2 = [merchant3 displayName];
      }

      else
      {
        displayName2 = PKLocalizedPeerPaymentString(&cfstr_AppleCash_0.isa, 0);
      }

      recurringPeerPayment2 = [v404 recurringPeerPayment];
      type = [recurringPeerPayment2 type];

      if (type == 1)
      {
        v301 = @"TRANSACTION_DEBIT_RECURRING_PAYMENT";
      }

      else
      {
        if (type != 3)
        {
          goto LABEL_164;
        }

        v301 = @"TRANSACTION_DEBIT_AUTO_RELOAD";
      }

      v84 = PKLocalizedPeerPaymentRecurringString(&v301->isa, 0);
      v373 = 0;
      v85 = 0;
      goto LABEL_165;
    }
  }

  if ([v404 transactionType] == 13)
  {
    v106 = displayName;
    goto LABEL_321;
  }

  if ([v404 transactionType] == 14)
  {
    installmentPlan = [v404 installmentPlan];
    product = [installmentPlan product];
    displayName2 = [product model];

    goto LABEL_142;
  }

  if (featureIdentifier == 4)
  {
    v280 = 1;
  }

  else
  {
    v280 = v28;
  }

  if ((v280 & 1) == 0 && [displayName length])
  {
    v96 = displayName;
    goto LABEL_153;
  }

  if (transactionType <= 7)
  {
    if (transactionType != 4)
    {
      if (transactionType == 7)
      {
        v82 = v404;
        v99 = PKLocalizedTitleForTransactionWithAdjustment(v404);
        goto LABEL_141;
      }

      goto LABEL_450;
    }

    v317 = @"TRANSACTION_TYPE_FEE";
    goto LABEL_486;
  }

  if (transactionType == 8)
  {
    redemptionEvent = [v404 redemptionEvent];

    if (redemptionEvent)
    {
      v100 = @"TRANSACTION_REWARDS_TITLE";
      goto LABEL_146;
    }

    v317 = @"TRANSACTION_TYPE_DISBURSEMENT";
LABEL_486:
    v101 = PKLocalizedPaymentString(&v317->isa, 0);
    goto LABEL_163;
  }

  if (transactionType != 9)
  {
    if (transactionType == 12)
    {
      rewards = [v404 rewards];
      rewardsItems = [rewards rewardsItems];
      firstObject2 = [rewardsItems firstObject];
      type2 = [firstObject2 type];

      if (type2 == 6)
      {
        v298 = @"TRANSACTION_REWARDS_REASON_ACTIVATION_OFFER";
      }

      else
      {
        v298 = @"TRANSACTION_REWARDS_REASON_OTHER";
      }

      displayName2 = PKLocalizedFeatureString(v298, 2, 0, v293, v294, v295, v296, v297, minimalFormattedStringValue);
      v373 = 0;
      v85 = 0;
      v84 = 0;
      v385 = 1;
      goto LABEL_539;
    }

LABEL_450:
    if (v28)
    {
      if (v381 != 0)
      {
        v318 = *(&v381 + 1);
        if (v381)
        {
          v318 = v381;
        }

        goto LABEL_536;
      }

      if ([displayLocation length])
      {
        v318 = displayLocation;
LABEL_536:
        organizationName = v318;
        goto LABEL_537;
      }

      if ([displayName length])
      {
LABEL_535:
        v318 = displayName;
        goto LABEL_536;
      }

      if ([v404 transactionSource] || v372 != 516 && v372 != 513)
      {
        v373 = 0;
        v85 = 0;
        v84 = 0;
        displayName2 = 0;
        goto LABEL_538;
      }

      organizationName = [v399 organizationName];
    }

    else
    {
      if (featureIdentifier == 4 && [displayName length])
      {
        goto LABEL_535;
      }

      organizationName = PKLocalizedPaymentString(&cfstr_PaymentSummary_1.isa, 0);
    }

LABEL_537:
    displayName2 = organizationName;
    v373 = 0;
    v85 = 0;
    v84 = 0;
LABEL_538:
    v385 = 1;
    v86 = selfCopy;
LABEL_539:
    contextCopy15 = context;
    goto LABEL_166;
  }

  v100 = @"ACCOUNT_SERVICE_DISPLAY_NAME";
LABEL_146:
  v101 = PKLocalizedFeatureString(v100, 2, 0, v52, v53, v54, v55, v56, minimalFormattedStringValue);
LABEL_163:
  displayName2 = v101;
LABEL_164:
  v373 = 0;
  v85 = 0;
  v84 = 0;
LABEL_165:
  v385 = 1;
LABEL_166:
  v82 = v404;
LABEL_167:
  disputeStatus = [v82 disputeStatus];
  v415 = 1;
  v395 = [v86 _statusAnnotationForTransaction:v82 overloadAnnotation:&v415];
  if ((disputeStatus - 1) <= 4)
  {
    transactionType4 = [v82 transactionType];
    disputeType = [v82 disputeType];
    if ((disputeStatus - 1) < 3)
    {
      v133 = PKLocalizedFeatureString(@"TRANSACTION_DISPUTE_STATUS_IN_REVIEW", 2, 0, v128, v129, v130, v131, v132, minimalFormattedStringValue);

      v134 = 0;
      v392 = 1;
LABEL_213:
      v84 = v133;
LABEL_214:
      v135 = v402;
LABEL_215:
      displayTransactionSourceCopy19 = displayTransactionSource;
      goto LABEL_216;
    }

    displayTransactionSourceCopy19 = displayTransactionSource;
    if (disputeStatus == 4)
    {
      if (transactionType4 || disputeType != 1)
      {
        v146 = @"TRANSACTION_DISPUTE_STATUS_APPROVED";
      }

      else
      {
        v146 = @"TRANSACTION_DISPUTE_STATUS_CREDIT_APPLIED";
      }

      v168 = PKLocalizedFeatureString(v146, 2, 0, v128, v129, v130, v131, v132, minimalFormattedStringValue);

      goto LABEL_203;
    }

    if (!transactionType4 && disputeType == 1)
    {
      disputeStatusDetails = [v404 disputeStatusDetails];
      statusReasons = [disputeStatusDetails statusReasons];
      v149 = [statusReasons containsObject:@"splitLiability"];

      if (v149)
      {
        v150 = @"TRANSACTION_DISPUTE_STATUS_CREDIT_APPLIED";
      }

      else
      {
        v150 = @"TRANSACTION_DISPUTE_STATUS_NO_CREDIT_APPLIED";
      }

      goto LABEL_212;
    }

    v169 = @"TRANSACTION_DISPUTE_STATUS_REJECTED";
    goto LABEL_200;
  }

  if (v85)
  {
    v135 = v402;
    if ([v402 type] == 1 || objc_msgSend(v404, "accountType") == 2)
    {

      v134 = 0;
      v84 = 0;
    }

    else
    {
      featureIdentifier3 = [v404 featureIdentifier];
      v167 = PKLocalizedFeatureString(@"TRANSACTION_TYPE_TOP_UP", featureIdentifier3, 0, v162, v163, v164, v165, v166, minimalFormattedStringValue);

      v134 = 0;
      v84 = v167;
    }

    goto LABEL_215;
  }

  if (transactionType == 14)
  {
    v150 = @"APPLE_CARD_INSTALLMENTS";
LABEL_212:
    v133 = PKLocalizedFeatureString(v150, 2, 0, v121, v122, v123, v124, v125, minimalFormattedStringValue);

    v134 = 0;
    goto LABEL_213;
  }

  displayTransactionSourceCopy19 = displayTransactionSource;
  switch(transactionType)
  {
    case 13:
      installmentPayment = [v404 installmentPayment];
      localizedDisplay = [installmentPayment localizedDisplay];
      v144 = localizedDisplay;
      if (localizedDisplay)
      {
        v145 = localizedDisplay;
      }

      else
      {
        v145 = PKLocalizedFeatureString(@"APPLE_CARD_INSTALLMENTS", 2, 0, v139, v140, v141, v142, v143, minimalFormattedStringValue);

        v84 = v145;
      }

      v134 = 0;
      v84 = v145;
      goto LABEL_214;
    case 3:
      peerPaymentType2 = [v404 peerPaymentType];
      v152 = peerPaymentType2;
      v134 = 0;
      if (peerPaymentType2 <= 3)
      {
        v135 = v402;
        switch(peerPaymentType2)
        {
          case 1:
            v254 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_TOTAL_SENT";
            break;
          case 2:
            v254 = @"TRANSACTION_DETAILS_AMOUNT_LINE_ITEM_TOTAL_RECEIVED";
            break;
          case 3:
            v153 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_5.isa, 0);

            if (!v385)
            {
              v134 = 0;
              v84 = v153;
              goto LABEL_406;
            }

            expirationDate = [v404 expirationDate];
            currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
            date = [MEMORY[0x1E695DF00] date];
            v157 = PKStartOfDay(date);
            v158 = [currentCalendar components:16 fromDate:v157 toDate:expirationDate options:0];

            v159 = [v158 day];
            if (v159 == 1)
            {
              v160 = @"PEER_PAYMENT_PENDING_REQUEST_EXPIRATION_BADGE_VALUE_TOMORROW";
            }

            else
            {
              if (v159)
              {
                PKLocalizedPeerPaymentString(&cfstr_PeerPaymentPen_1.isa, &cfstr_Ld_2.isa, v159);
                goto LABEL_403;
              }

              v160 = @"PEER_PAYMENT_PENDING_REQUEST_EXPIRATION_BADGE_VALUE_TODAY";
            }

            PKLocalizedPeerPaymentString(&v160->isa, 0, minimalFormattedStringValue);
            v84 = LABEL_403:;
            contextCopy15 = context;

            v134 = 0;
LABEL_404:
            v135 = v402;
            goto LABEL_405;
          default:
            goto LABEL_406;
        }

        PKLocalizedPeerPaymentString(&v254->isa, 0);
        v134 = 0;
        v84 = expirationDate = v84;
LABEL_405:

LABEL_406:
        peerPaymentMemo = [v404 peerPaymentMemo];
        if (!peerPaymentMemo)
        {
          recurringPeerPayment3 = [v404 recurringPeerPayment];
          memo = [recurringPeerPayment3 memo];
          peerPaymentMemo = [memo text];
        }

        if (![peerPaymentMemo length])
        {
          goto LABEL_416;
        }

        if (v152 == 3)
        {
          if (v385)
          {
            v305 = v84;

            v84 = peerPaymentMemo;
            v134 = v305;
LABEL_416:

            goto LABEL_215;
          }
        }

        else if ((v152 - 6) > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_416;
        }

        if (v84)
        {
          minimalFormattedStringValue = v84;
          v306 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@"];

          v84 = v306;
        }

        else
        {
          v84 = peerPaymentMemo;
        }

        goto LABEL_416;
      }

      if ((peerPaymentType2 - 4) >= 2)
      {
        if (peerPaymentType2 != 6)
        {
          v135 = v402;
          goto LABEL_406;
        }

        expirationDate = [v404 recurringPeerPayment];
        v247 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadEntr.isa, 0);

        currencyThreshold = [expirationDate currencyThreshold];
        minimalFormattedStringValue = [currencyThreshold minimalFormattedStringValue];
        v249 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadEntr_0.isa, &stru_1F2281668.isa);

        v134 = 0;
        v84 = v249;
        displayName2 = v247;
        goto LABEL_404;
      }

      expirationDate = [v404 recurringPeerPayment];
      frequency = [expirationDate frequency];
      startDate = [expirationDate startDate];
      v233 = PKPeerPaymentRecurringPaymentFrequencyToLocalizedWeekdayString(frequency, startDate);

      transactionDate2 = [v404 transactionDate];
      memo2 = [expirationDate memo];
      text = [memo2 text];

      if (contextCopy15 != 6 && contextCopy15)
      {
        v267 = v233;

        if (!transactionDate2)
        {
          v134 = 0;
          v135 = v402;
          v84 = text;
          goto LABEL_364;
        }

        v384 = transactionDate2;
        name = PKMediumDateString(transactionDate2, 0);
        minimalFormattedStringValue = name;
        v134 = PKLocalizedPeerPaymentRecurringString(&cfstr_TransactionNex.isa, &stru_1F2281668.isa);
        displayName2 = v267;
        v135 = v402;
      }

      else
      {
        if (v152 != 4)
        {
          v134 = v233;
          status = [expirationDate status];
          v135 = v402;
          if ((status - 3) >= 2)
          {
            v84 = text;
            if (status == 2)
            {
              v384 = transactionDate2;
              v278 = PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringPayme_1.isa, 0);
              name = v278;
              if (v134)
              {
                minimalFormattedStringValue = v134;
                v279 = PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringPayme_2.isa, &stru_1F22903C8.isa);

                v134 = v279;
              }

              else
              {
                name = v278;
                v134 = name;
              }

              goto LABEL_363;
            }
          }

          else
          {
            v84 = text;
            if (([expirationDate lastExecutedTransactionAppearsInHistory] & 1) == 0)
            {
              v384 = transactionDate2;
              lastExecutedTransaction = [expirationDate lastExecutedTransaction];
              errorCode = [lastExecutedTransaction errorCode];

              if (errorCode == 40311)
              {
                fundingSource = [expirationDate fundingSource];
                name = [fundingSource name];

                if ([name length])
                {
                  PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringPayme_3.isa, &stru_1F2281668.isa, name);
                }

                else
                {
                  PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringPayme_4.isa, 0, minimalFormattedStringValue);
                }
                v319 = ;

                v392 = 1;
                v84 = v319;
              }

              else
              {
                PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringPayme_5.isa, 0);
                name = text;
                v84 = v392 = 1;
              }

              goto LABEL_363;
            }
          }

          v267 = displayName2;
          goto LABEL_364;
        }

        v236 = v233;
        currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
        date2 = [MEMORY[0x1E695DF00] date];
        v239 = PKStartOfDay(date2);
        v384 = transactionDate2;
        name = [currentCalendar2 components:16 fromDate:v239 toDate:transactionDate2 options:0];

        v241 = [name day];
        if (v241 == 1)
        {
          PKLocalizedPeerPaymentRecurringString(&cfstr_SendingTomorro.isa, 0, minimalFormattedStringValue);
        }

        else
        {
          PKLocalizedPeerPaymentRecurringString(&cfstr_SendingInDays.isa, &cfstr_Ld_2.isa, v241);
        }
        v134 = ;
        v135 = v402;
        v233 = v236;
      }

      v84 = text;
LABEL_363:

      v267 = displayName2;
      transactionDate2 = v384;
LABEL_364:

      displayName2 = v267;
      goto LABEL_405;
    case 5:
      transfers3 = [v404 transfers];
      v243 = [transfers3 count];

      if (v243)
      {
        v411 = v84;
        v412 = displayName2;
        [v86 _transferFundingSourceInformationForTransaction:v404 primaryString:&v412 secondaryString:&v411];
        v168 = v412;

        v173 = v411;
        goto LABEL_308;
      }

      secondaryFundingSourceType = [v404 secondaryFundingSourceType];
      if (secondaryFundingSourceType == 1)
      {
        v258 = @"TRANSACTION_TYPE_WITHDRAWAL_BANK_ACCOUNT";
        v135 = v402;
        v257 = displayName2;
      }

      else
      {
        v257 = displayName2;
        if (secondaryFundingSourceType != 2)
        {
          v281 = 0;
          v135 = v402;
          goto LABEL_380;
        }

        v258 = @"TRANSACTION_TYPE_WITHDRAWAL_DEBIT";
        v135 = v402;
      }

      v281 = PKLocalizedPaymentString(&v258->isa, 0);
LABEL_380:
      v282 = [v257 length];
      v283 = v257;
      if (v282)
      {
        v257 = v84;
        v84 = v281;
      }

      else
      {
        v283 = v281;
      }

      displayName2 = v283;
      v284 = v281;

      v134 = 0;
      v86 = selfCopy;
      goto LABEL_216;
    case 6:
      transfers4 = [v404 transfers];
      v172 = [transfers4 count];

      if (!v172)
      {
        v255 = [displayName2 length];
        v168 = PKLocalizedPaymentString(&cfstr_TransactionTyp_1.isa, 0);
        if (v255)
        {
          goto LABEL_202;
        }

        v134 = 0;
LABEL_309:
        displayName2 = v168;
        goto LABEL_204;
      }

      v413 = v84;
      v414 = displayName2;
      [v86 _transferFundingSourceInformationForTransaction:v404 primaryString:&v414 secondaryString:&v413];
      v168 = v414;

      v173 = v413;
LABEL_308:
      v244 = v173;

      v134 = 0;
      v84 = v244;
      displayTransactionSourceCopy19 = displayTransactionSource;
      goto LABEL_309;
  }

  if (![v404 transactionType])
  {
    transfers5 = [v404 transfers];
    v260 = [transfers5 count];

    if (v260)
    {
      v409 = v84;
      v410 = displayName2;
      [v86 _transferFundingSourceInformationForTransaction:v404 primaryString:&v410 secondaryString:&v409];
      v261 = v410;

      v262 = v409;
      v134 = 0;
      v84 = v262;
      displayName2 = v261;
      goto LABEL_214;
    }
  }

  if (transactionType == 8)
  {
    v270 = v404;
    redemptionEvent2 = [v404 redemptionEvent];

    displayTransactionSourceCopy19 = displayTransactionSource;
    if (redemptionEvent2)
    {
      v169 = @"TRANSACTION_REWARDS_CASH_BACK";
LABEL_200:
      merchantProvidedDescription2 = PKLocalizedFeatureString(v169, 2, 0, v128, v129, v130, v131, v132, minimalFormattedStringValue);
LABEL_201:
      v168 = merchantProvidedDescription2;
LABEL_202:

LABEL_203:
      v134 = 0;
      v84 = v168;
LABEL_204:
      v135 = v402;
      goto LABEL_216;
    }

    merchantProvidedDescription = [v404 merchantProvidedDescription];
    v286 = [merchantProvidedDescription length];

    if (v286)
    {
      merchantProvidedDescription2 = [v404 merchantProvidedDescription];
      goto LABEL_201;
    }

LABEL_387:
    unansweredQuestions = [v270 unansweredQuestions];
    v288 = [unansweredQuestions count];

    if (transactionStatus == 2)
    {
      if (v288)
      {
        v169 = @"TRANSACTION_VERIFICATION_REQUIRED";
      }

      else
      {
        questions = [v404 questions];
        v310 = [questions count];

        if (!v310)
        {
          transactionDeclinedReason = [v404 transactionDeclinedReason];
          merchantProvidedDescription2 = PKPaymentTransactionDeclinedReasonLocalizedString(transactionDeclinedReason, v326, v327, v328, v329, v330, v331, v332);
          goto LABEL_201;
        }

        if (![v404 reviewed])
        {
          v134 = 0;
          goto LABEL_204;
        }

        v169 = @"TRANSACTION_REVIEWED";
      }

      goto LABEL_200;
    }

    v135 = v402;
    if (v288)
    {
      v308 = PKLocalizedFeatureString(@"TRANSACTION_VERIFICATION_REQUIRED", 2, 0, v128, v129, v130, v131, v132, minimalFormattedStringValue);

      v134 = 0;
      v392 = 1;
LABEL_439:
      v84 = v308;
      goto LABEL_216;
    }

    if ([v404 reviewed])
    {
      v308 = PKLocalizedFeatureString(@"TRANSACTION_REVIEWED", 2, 0, v311, v312, v313, v314, v315, minimalFormattedStringValue);

      v134 = 0;
      goto LABEL_439;
    }

    if ([v404 isIssuerInstallmentTransaction])
    {
      uniqueID = [v399 uniqueID];
      if (uniqueID)
      {
        v321 = +[PKPaymentService paymentService];
        paymentOffersCatalog = [v321 paymentOffersCatalog];

        originURL = [paymentOffersCatalog criteriaWithType:1 passUniqueID:uniqueID];
      }

      else
      {
        originURL = 0;
      }

      programName = [originURL programName];
      absoluteString = programName;
      if (!originURL || !programName)
      {
        v345 = PKLocalizedPaymentOffersString(&cfstr_PayLaterBadgeT.isa, 0);
        goto LABEL_526;
      }

LABEL_524:
      v345 = absoluteString;
LABEL_526:
      v343 = v345;
      goto LABEL_527;
    }

    if (!PKHideCardBenefitRewards())
    {
      paymentRewardsRedemption = [v404 paymentRewardsRedemption];

      if (paymentRewardsRedemption)
      {
        v334 = PKLocalizedPayWithPointsString(&cfstr_TransactionRew_3.isa, 0);
LABEL_493:
        v335 = v334;

LABEL_494:
        v134 = 0;
        v84 = v335;
        goto LABEL_528;
      }
    }

    effectiveTransactionSource = [v404 effectiveTransactionSource];
    v134 = 0;
    if (effectiveTransactionSource > 4)
    {
      if ((effectiveTransactionSource - 7) >= 2)
      {
        if (effectiveTransactionSource == 5)
        {
          if (displayLocation)
          {
            v334 = displayLocation;
            goto LABEL_493;
          }

          if (v395)
          {
            v346 = @"TRANSACTION_DETAILS_PHYSICAL_CARD_SEPARATOR";
          }

          else
          {
            v346 = @"TRANSACTION_DETAILS_PHYSICAL_CARD";
          }
        }

        else
        {
          if (effectiveTransactionSource != 6)
          {
            goto LABEL_528;
          }

          if (v395)
          {
            v346 = @"TRANSACTION_DETAILS_VIRTUAL_CARD_SEPARATOR";
          }

          else
          {
            v346 = @"TRANSACTION_DETAILS_VIRTUAL_CARD";
          }
        }

        v335 = PKLocalizedFeatureString(v346, 2, 0, v337, v338, v339, v340, v341, minimalFormattedStringValue);

        goto LABEL_494;
      }

      goto LABEL_540;
    }

    if (effectiveTransactionSource != 1)
    {
      if (effectiveTransactionSource != 2)
      {
        if (effectiveTransactionSource == 3)
        {
          uniqueID = [v404 merchant];
          originURL = [uniqueID originURL];
          absoluteString = [originURL absoluteString];
          if (!absoluteString)
          {
            v343 = PKLocalizedPaymentString(&cfstr_TransactionSou.isa, 0);

            v84 = v343;
LABEL_527:

            v134 = 0;
            v84 = v343;
            goto LABEL_528;
          }

          goto LABEL_524;
        }

LABEL_528:
        v135 = v402;
        displayTransactionSourceCopy19 = displayTransactionSource;
        v86 = selfCopy;
        contextCopy15 = context;
        goto LABEL_216;
      }

LABEL_540:
      if (transactionType == 15)
      {
        releasedData2 = [v404 releasedData];
        application = [releasedData2 application];
        v349 = application;
        if (releasedData2 && application)
        {
          client = [application client];
          if (!client)
          {
            releasedData3 = [v404 releasedData];
            v367 = PKTransactionReleasedDataVerificationTypeToLocalizedTitle([releasedData3 verificationType]);

            v84 = releasedData3;
LABEL_602:

            v84 = v367;
            goto LABEL_603;
          }

          if (client != 2)
          {
            if (client != 1)
            {
LABEL_603:

              goto LABEL_604;
            }

            v351 = @"TRANSACTION_TYPE_SERVICES";
            goto LABEL_600;
          }

          if (![v404 requiresLocation] || (objc_msgSend(v404, "displayLocation"), v368 = objc_claimAutoreleasedReturnValue(), v368, !v368))
          {
            v351 = @"TRANSACTION_TYPE_APPS";
LABEL_600:
            displayLocation2 = PKLocalizedIdentityString(&v351->isa, 0);
            goto LABEL_601;
          }

          displayLocation2 = [v404 displayLocation];
        }

        else
        {
          releasedData4 = [v404 releasedData];
          verificationType2 = [releasedData4 verificationType];

          displayLocation2 = PKTransactionReleasedDataVerificationTypeToLocalizedTitle(verificationType2);
        }

LABEL_601:
        v367 = displayLocation2;
        goto LABEL_602;
      }

      if (![v84 length] && objc_msgSend(v404, "featureIdentifier") != 4)
      {
        v334 = PKLocalizedPaymentString(&cfstr_TransactionSou.isa, 0);
        goto LABEL_493;
      }

LABEL_604:
      v134 = 0;
      goto LABEL_528;
    }

    v335 = displayLocation;

    if (v335)
    {
      goto LABEL_494;
    }

    if (transactionType != 15)
    {
      v84 = PKLocalizedPaymentString(&cfstr_TransactionSou.isa, 0);
      goto LABEL_604;
    }

    releasedData5 = [v404 releasedData];
    verificationType3 = [releasedData5 verificationType];

    v358 = PKTransactionReleasedDataVerificationTypeToLocalizedTitle(verificationType3);
    v359 = displayName2;
    v360 = v358;
    v361 = v360;
    displayName2 = v359;
    if (v359 == v360)
    {
    }

    else
    {
      if (!v359 || !v360)
      {

LABEL_610:
        v84 = v361;
        goto LABEL_611;
      }

      v362 = [v359 isEqualToString:v360];

      if ((v362 & 1) == 0)
      {
        goto LABEL_610;
      }
    }

    v84 = 0;
LABEL_611:

    goto LABEL_604;
  }

  displayTransactionSourceCopy19 = displayTransactionSource;
  if (transactionType == 7)
  {
    merchantProvidedDescription2 = PKLocalizedSubtitleForTransactionWithAdjustment(v404);
    goto LABEL_201;
  }

  if (!v28)
  {
    v270 = v404;
    if (transactionType == 10)
    {
      merchantProvidedDescription2 = [v86 _billPaymentFundingSourceForTransaction:v404];
      goto LABEL_201;
    }

    goto LABEL_387;
  }

  if ((transitModifiers & 2) != 0)
  {
    v307 = @"TRANSIT_TRANSACTION_TRANSFER";
    v135 = v402;
    goto LABEL_556;
  }

  v272 = v372;
  if ((transitModifiers & 8) != 0)
  {
    v273 = 0;
    if (v372 <= 256)
    {
      if (v372 > 3)
      {
        if (v372 == 4)
        {
          v307 = @"TRAIN_TRANSACTION_LIST_FARE_ADJUSTMENT";
        }

        else
        {
          if (v372 != 7)
          {
            v135 = v402;
            displayTransactionSourceCopy19 = displayTransactionSource;
            v86 = selfCopy;
            contextCopy15 = context;
            if (v372 != 8)
            {
              goto LABEL_557;
            }

            v307 = @"CABLE_CAR_TRANSACTION_LIST_FARE_ADJUSTMENT";
            goto LABEL_556;
          }

          v307 = @"LIGHT_RAIL_TRANSACTION_LIST_FARE_ADJUSTMENT";
        }
      }

      else if (v372 == 1)
      {
        v307 = @"TRANSIT_TRANSACTION_LIST_FARE_ADJUSTMENT";
      }

      else
      {
        if (v372 != 2)
        {
          v135 = v402;
          displayTransactionSourceCopy19 = displayTransactionSource;
          v86 = selfCopy;
          contextCopy15 = context;
          if (v372 != 3)
          {
            goto LABEL_557;
          }

          v307 = @"BUS_TRANSACTION_LIST_FARE_ADJUSTMENT";
          goto LABEL_556;
        }

        v307 = @"METRO_TRANSACTION_LIST_FARE_ADJUSTMENT";
      }
    }

    else
    {
      if (v372 > 259)
      {
        if (v372 > 1024)
        {
          if (v372 != 1025)
          {
            v135 = v402;
            displayTransactionSourceCopy19 = displayTransactionSource;
            v86 = selfCopy;
            contextCopy15 = context;
            if (v372 != 1026)
            {
              goto LABEL_557;
            }

            v307 = @"METRO_UPGRADE_TRANSACTION_LIST_FARE_ADJUSTMENT";
            goto LABEL_556;
          }

          v307 = @"GREEN_CAR_TRANSACTION_LIST_FARE_ADJUSTMENT";
        }

        else
        {
          if (v372 != 260)
          {
            v135 = v402;
            displayTransactionSourceCopy19 = displayTransactionSource;
            v86 = selfCopy;
            contextCopy15 = context;
            if (v372 != 261)
            {
              goto LABEL_557;
            }

            v307 = @"BIKE_TRANSACTION_LIST_FARE_ADJUSTMENT";
            goto LABEL_556;
          }

          v307 = @"FERRY_TRANSACTION_LIST_FARE_ADJUSTMENT";
        }

        goto LABEL_555;
      }

      if (v372 == 257)
      {
        v307 = @"SHINKANSEN_TRANSACTION_LIST_FARE_ADJUSTMENT";
      }

      else
      {
        if (v372 != 258)
        {
          v135 = v402;
          displayTransactionSourceCopy19 = displayTransactionSource;
          v86 = selfCopy;
          contextCopy15 = context;
          v307 = @"TAXI_TRANSACTION_LIST_FARE_ADJUSTMENT";
          goto LABEL_556;
        }

        v307 = @"MAGLEV_TRANSACTION_LIST_FARE_ADJUSTMENT";
      }
    }

    goto LABEL_555;
  }

  if ((transitModifiers & 0x10) != 0)
  {
    v273 = 0;
    if (v372 <= 256)
    {
      if (v372 > 3)
      {
        if (v372 == 4)
        {
          v307 = @"TRAIN_TRANSACTION_LIST_FARE_REBATE";
        }

        else
        {
          if (v372 != 7)
          {
            v135 = v402;
            displayTransactionSourceCopy19 = displayTransactionSource;
            v86 = selfCopy;
            contextCopy15 = context;
            if (v372 != 8)
            {
              goto LABEL_557;
            }

            v307 = @"CABLE_CAR_TRANSACTION_LIST_FARE_REBATE";
            goto LABEL_556;
          }

          v307 = @"LIGHT_RAIL_TRANSACTION_LIST_FARE_REBATE";
        }
      }

      else if (v372 == 1)
      {
        v307 = @"TRANSIT_TRANSACTION_LIST_FARE_REBATE";
      }

      else
      {
        if (v372 != 2)
        {
          v135 = v402;
          displayTransactionSourceCopy19 = displayTransactionSource;
          v86 = selfCopy;
          contextCopy15 = context;
          if (v372 != 3)
          {
            goto LABEL_557;
          }

          v307 = @"BUS_TRANSACTION_LIST_FARE_REBATE";
          goto LABEL_556;
        }

        v307 = @"METRO_TRANSACTION_LIST_FARE_REBATE";
      }
    }

    else if (v372 <= 259)
    {
      if (v372 == 257)
      {
        v307 = @"SHINKANSEN_TRANSACTION_LIST_FARE_REBATE";
      }

      else
      {
        if (v372 != 258)
        {
          v135 = v402;
          displayTransactionSourceCopy19 = displayTransactionSource;
          v86 = selfCopy;
          contextCopy15 = context;
          v307 = @"TAXI_TRANSACTION_LIST_FARE_REBATE";
          goto LABEL_556;
        }

        v307 = @"MAGLEV_TRANSACTION_LIST_FARE_REBATE";
      }
    }

    else
    {
      if (v372 <= 1024)
      {
        if (v372 != 260)
        {
          v135 = v402;
          displayTransactionSourceCopy19 = displayTransactionSource;
          v86 = selfCopy;
          contextCopy15 = context;
          if (v372 != 261)
          {
            goto LABEL_557;
          }

          v307 = @"BIKE_TRANSACTION_LIST_FARE_REBATE";
          goto LABEL_556;
        }

        v307 = @"FERRY_TRANSACTION_LIST_FARE_REBATE";
        goto LABEL_555;
      }

      if (v372 != 1025)
      {
        v135 = v402;
        displayTransactionSourceCopy19 = displayTransactionSource;
        v86 = selfCopy;
        contextCopy15 = context;
        if (v372 != 1026)
        {
          goto LABEL_557;
        }

        v307 = @"METRO_UPGRADE_TRANSACTION_LIST_FARE_REBATE";
LABEL_556:
        v273 = PKLocalizedPaymentString(&v307->isa, 0);
LABEL_557:
        v272 = v372;
        if (displayName2)
        {
          goto LABEL_559;
        }

        goto LABEL_558;
      }

      v307 = @"GREEN_CAR_TRANSACTION_LIST_FARE_REBATE";
    }

LABEL_555:
    v135 = v402;
    displayTransactionSourceCopy19 = displayTransactionSource;
    v86 = selfCopy;
    contextCopy15 = context;
    goto LABEL_556;
  }

  if (displayName2)
  {
    v273 = PKPaymentTransactionTransitSubtypeToLocalizedTitle(v372);
    v135 = v402;
    goto LABEL_559;
  }

  v273 = 0;
  v135 = v402;
LABEL_558:
  displayName2 = PKPaymentTransactionTransitSubtypeToLocalizedTitle(v272);
LABEL_559:
  if (*(&v381 + 1) && v381)
  {
    minimalFormattedStringValue = *(&v381 + 1);
    v352 = PKLocalizedPaymentString(&cfstr_TransitTransac_6.isa, &stru_1F2281668.isa);

    v84 = v352;
  }

  if (enRoute)
  {
    v353 = PKLocalizedPaymentString(&cfstr_TransitTransac_7.isa, 0);

    v84 = v353;
  }

  if (v273)
  {
    if (displayName2)
    {
      if (v84)
      {
        minimalFormattedStringValue = v273;
        v354 = PKLocalizedPaymentString(&cfstr_TransitTransac_8.isa, &cfstr_21.isa);

        v84 = v354;
      }

      else
      {
        v84 = v273;
      }
    }

    else
    {
      v355 = v84;
      v84 = v273;
      displayName2 = v355;
    }
  }

  else if (!displayName2)
  {
    displayName2 = v84;

    v84 = 0;
  }

  v134 = 0;
LABEL_216:
  if ((v387 - 6) > 0xFFFFFFFFFFFFFFFCLL)
  {
    v397 = v84;
    goto LABEL_222;
  }

  if ([v395 length])
  {
    if ((v415 & 1) == 0)
    {
      v174 = v395;

      goto LABEL_224;
    }

    if (v84)
    {
      minimalFormattedStringValue = v395;
      v174 = PKLocalizedPaymentString(&cfstr_PaymentPassDet.isa, &stru_1F22903C8.isa);

LABEL_224:
      v84 = v174;
      goto LABEL_225;
    }

    v84 = v395;
  }

LABEL_225:
  v397 = v84;
  if (contextCopy15 == 1)
  {
    if (v373)
    {
      goto LABEL_229;
    }

LABEL_222:
    v175 = v399;
    v176 = v404;
    v177 = v134;
    goto LABEL_231;
  }

  if (contextCopy15 != 2)
  {
LABEL_229:
    v176 = v404;
    v179 = [v86 _relativeDateForTransaction:v404];
    goto LABEL_230;
  }

  v176 = v404;
  transactionDate3 = [v404 transactionDate];
  v179 = PKMediumDateString(transactionDate3, 0);

  v134 = transactionDate3;
LABEL_230:
  v175 = v399;

  v177 = v179;
LABEL_231:
  rewards2 = [v176 rewards];
  v181 = rewards2;
  if (rewards2)
  {
    promotionalRewardsItems = [rewards2 promotionalRewardsItems];
    v182 = [promotionalRewardsItems count];
    v183 = v401;
    if (v182)
    {
      v183 = @"star.fill";
    }

    v401 = v183;
    zero3 = [MEMORY[0x1E696AB90] zero];
    v405 = 0u;
    v406 = 0u;
    v407 = 0u;
    v408 = 0u;
    rewardsItems2 = [v181 rewardsItems];
    v186 = [rewardsItems2 countByEnumeratingWithState:&v405 objects:v419 count:16];
    v187 = zero3;
    v188 = zero3;
    if (v186)
    {
      v189 = v186;
      v190 = *v406;
      v187 = zero3;
      v188 = zero3;
      do
      {
        for (i = 0; i != v189; ++i)
        {
          if (*v406 != v190)
          {
            objc_enumerationMutation(rewardsItems2);
          }

          v192 = *(*(&v405 + 1) + 8 * i);
          if ([v192 state] != 3)
          {
            eligibleValueUnit = [v192 eligibleValueUnit];
            if (eligibleValueUnit == 2)
            {
              eligibleValue = [v192 eligibleValue];
              v197 = [(NSDecimalNumber *)v188 decimalNumberByAdding:eligibleValue];
              v196 = v188;
              v188 = v197;
            }

            else
            {
              if (eligibleValueUnit != 1)
              {
                continue;
              }

              eligibleValue = [v192 eligibleValue];
              v195 = [(NSDecimalNumber *)v187 decimalNumberByAdding:eligibleValue];
              v196 = v187;
              v187 = v195;
            }
          }
        }

        v189 = [rewardsItems2 countByEnumeratingWithState:&v405 objects:v419 count:16];
      }

      while (v189);
    }

    if (([(NSDecimalNumber *)v187 isEqualToNumber:zero3]& 1) != 0)
    {
      v176 = v404;
      v175 = v399;
      if ([v404 transactionType] == 12 || (-[NSDecimalNumber isEqualToNumber:](v188, "isEqualToNumber:", zero3) & 1) != 0)
      {
        v198 = 0;
        v135 = v402;
LABEL_254:

        displayTransactionSourceCopy19 = displayTransactionSource;
        goto LABEL_255;
      }

      rewardsTotalCurrencyCode = [v404 rewardsTotalCurrencyCode];
      currencyCode2 = rewardsTotalCurrencyCode;
      if (!rewardsTotalCurrencyCode)
      {
        currencyCode2 = [v404 currencyCode];
      }

      v383 = currencyCode2;
      v229 = PKCurrencyAmountCreate(v188, currencyCode2, 0);
      minimalFormattedStringValue2 = [v229 minimalFormattedStringValue];

      if (!rewardsTotalCurrencyCode)
      {
      }

      v198 = minimalFormattedStringValue2;
      v135 = v402;
    }

    else
    {
      rewardsTotalCurrencyCode = PKFormattedStringMinimalFractionDigitsFromNumber(v187, 0);
      v198 = PKLocalizedFeatureString(@"TRANSACTION_REWARDS_PERCENT_FORMAT", 2, @"%@%%", v200, v201, v202, v203, v204, rewardsTotalCurrencyCode);
      v135 = v402;
      v175 = v399;
      v176 = v404;
    }

    goto LABEL_254;
  }

  v198 = 0;
LABEL_255:
  if ([v175 supportsFPANNotifications] && objc_msgSend(v175, "supportsDPANNotifications") && objc_msgSend(v176, "hasAssociatedPaymentApplication") && objc_msgSend(v390, "length"))
  {
    v205 = v390;
    if (v177)
    {
      v206 = v205;
    }

    else
    {
      v177 = v205;
      v206 = 0;
    }
  }

  else
  {
    v206 = 0;
  }

  if ([v396 type] != 2)
  {
    if (!displayTransactionSourceCopy19)
    {
      goto LABEL_279;
    }

LABEL_268:
    localizedDescription = [v175 localizedDescription];
    if (v135)
    {
      feature2 = [v135 feature];
      if (localizedDescription)
      {
        goto LABEL_274;
      }
    }

    else
    {
      feature2 = [v176 featureIdentifier];
      if (localizedDescription)
      {
        goto LABEL_274;
      }
    }

    if (feature2 == 5)
    {
      localizedDescription = PKLocalizedFeatureString(@"TRANSACTION_PRODUCT_NAME", 5, 0, v215, v216, v217, v218, v219, minimalFormattedStringValue);
    }

LABEL_274:
    if ([localizedDescription length])
    {
      v220 = localizedDescription;
      v221 = v220;
      if (v177)
      {

        goto LABEL_283;
      }

      v177 = v220;
    }

    v221 = v206;
LABEL_283:

    v206 = v221;
    if (!v177)
    {
      goto LABEL_286;
    }

LABEL_284:
    if (v206)
    {
      v222 = PKLocalizedPaymentString(&cfstr_TransactionTer.isa, &stru_1F22903C8.isa, v177, v206);

      v177 = v222;
    }

    goto LABEL_286;
  }

  accountUser = [v396 accountUser];
  nameComponents = [accountUser nameComponents];
  v209 = [PKContactResolver contactForFamilyMember:v394 nameComponents:nameComponents imageData:0];

  givenName = [v209 givenName];
  v211 = givenName;
  if (givenName)
  {
    if (v177)
    {
      v212 = v177;

      v177 = v211;
      v206 = v212;
      v175 = v399;
    }

    else
    {
      v177 = givenName;
    }
  }

  if (displayTransactionSource)
  {
    goto LABEL_268;
  }

LABEL_279:
  if (v177)
  {
    goto LABEL_284;
  }

LABEL_286:
  if (v385 || !PKPaymentTransactionRecategorizationEnabled(v176))
  {
    v224 = v177;
    preferredTransactionCategory = 0;
  }

  else
  {
    v223 = v176;
    v224 = v177;
    preferredTransactionCategory = [v223 preferredTransactionCategory];
  }

  v226 = objc_alloc_init(PKPaymentTransactionPresentationInformation);
  [(PKPaymentTransactionPresentationInformation *)v226 setPrimaryString:displayName2];
  [(PKPaymentTransactionPresentationInformation *)v226 setSecondaryString:v397];
  [(PKPaymentTransactionPresentationInformation *)v226 setTertiaryString:v224];
  [(PKPaymentTransactionPresentationInformation *)v226 setDestructiveSecondaryString:v392];
  [(PKPaymentTransactionPresentationInformation *)v226 setBadgeString:v198];
  [(PKPaymentTransactionPresentationInformation *)v226 setValueString:formattedBalanceAdjustmentAmount];
  [(PKPaymentTransactionPresentationInformation *)v226 setSecondaryBadgeSymbol:v401];
  [(PKPaymentTransactionPresentationInformation *)v226 setPreferredTransactionCategory:preferredTransactionCategory];
  [(PKPaymentTransactionPresentationInformation *)v226 setShouldGrayValue:v376];
  [(PKPaymentTransactionPresentationInformation *)v226 setShouldStrikeValue:v377];
  [(PKPaymentTransactionPresentationInformation *)v226 setShouldShowDisclosure:v379];
  v23 = v226;

  accountCopy = v402;
  v24 = transactionSourceCopy;
  memberCopy = v394;
  nameCopy = v390;
  transactionCopy = v404;
  sourceCopy = v396;
LABEL_291:

  return v23;
}

+ (id)_presentationInformationForBankConnectTransaction:(id)transaction paymentPass:(id)pass context:(unint64_t)context shouldDisplayTransactionSource:(BOOL)source
{
  sourceCopy = source;
  transactionCopy = transaction;
  passCopy = pass;
  bankConnectMetadata = [transactionCopy bankConnectMetadata];
  creditDebitIndicator = [bankConnectMetadata creditDebitIndicator];

  transactionType = [transactionCopy transactionType];
  transactionStatus = [transactionCopy transactionStatus];
  [transactionCopy formattedBalanceAdjustmentAmount];
  v51 = displayName = 0;
  if (transactionType <= 0x16)
  {
    if (((1 << transactionType) & 0x7F06F3) != 0)
    {
      merchant = [transactionCopy merchant];
      displayName = [merchant displayName];
    }

    else if (transactionType == 11)
    {
      if (creditDebitIndicator == 1)
      {
        v24 = @"BANK_CONNECT_INTEREST_EARNED_TRANSACTION_CELL_PRIMARY_STRING";
      }

      else
      {
        v24 = @"BANK_CONNECT_INTEREST_CHARGED_TRANSACTION_CELL_PRIMARY_STRING";
      }

      displayName = PKLocalizedBankConnectString(&v24->isa, 0);
LABEL_16:
      if ([transactionCopy isIssuerInstallmentTransaction])
      {
        uniqueID = [passCopy uniqueID];
        if (uniqueID)
        {
          v26 = +[PKPaymentService paymentService];
          paymentOffersCatalog = [v26 paymentOffersCatalog];

          v28 = [paymentOffersCatalog criteriaWithType:1 passUniqueID:uniqueID];
        }

        else
        {
          v28 = 0;
        }

        programName = [v28 programName];
        v32 = programName;
        if (v28 && programName)
        {
          v33 = programName;
        }

        else
        {
          v33 = PKLocalizedPaymentOffersString(&cfstr_PayLaterBadgeT.isa, 0);
        }

        displayLocation = v33;
      }

      else
      {
        displayLocation = 0;
      }

LABEL_41:
      if (!PKHideCardBenefitRewards())
      {
        paymentRewardsRedemption = [transactionCopy paymentRewardsRedemption];

        if (paymentRewardsRedemption)
        {
          v35 = PKLocalizedPayWithPointsString(&cfstr_TransactionRew_3.isa, 0);

          displayLocation = v35;
        }
      }

      goto LABEL_48;
    }
  }

  displayLocation = 0;
  switch(transactionType)
  {
    case 0uLL:
      displayLocation = [transactionCopy displayLocation];
      if ([transactionCopy isIssuerInstallmentTransaction])
      {
        uniqueID2 = [passCopy uniqueID];
        v52 = uniqueID2;
        if (uniqueID2)
        {
          v19 = +[PKPaymentService paymentService];
          paymentOffersCatalog2 = [v19 paymentOffersCatalog];

          uniqueID2 = [paymentOffersCatalog2 criteriaWithType:1 passUniqueID:uniqueID2];
        }

        programName2 = [uniqueID2 programName];
        v22 = programName2;
        if (uniqueID2 && programName2)
        {
          v23 = programName2;
        }

        else
        {
          v23 = PKLocalizedPaymentOffersString(&cfstr_PayLaterBadgeT.isa, 0);
        }

        v50 = v23;

        displayLocation = v50;
      }

      goto LABEL_41;
    case 1uLL:
      v29 = @"BANK_CONNECT_REFUND_TRANSACTION_CELL_SECONDARY_STRING";
      goto LABEL_46;
    case 3uLL:
    case 0xBuLL:
    case 0x10uLL:
      goto LABEL_16;
    case 4uLL:
      v29 = @"BANK_CONNECT_FEE_TRANSACTION_CELL_SECONDARY_STRING";
      goto LABEL_46;
    case 5uLL:
      v29 = @"BANK_CONNECT_WITHDRAWAL_TRANSACTION_CELL_SECONDARY_STRING";
      goto LABEL_46;
    case 6uLL:
      v29 = @"BANK_CONNECT_DEPOSIT_TRANSACTION_CELL_SECONDARY_STRING";
      goto LABEL_46;
    case 7uLL:
      v29 = @"BANK_CONNECT_ADJUSTMENT_TRANSACTION_CELL_SECONDARY_STRING";
      goto LABEL_46;
    case 9uLL:
      v29 = @"BANK_CONNECT_REWARDS_TRANSACTION_CELL_SECONDARY_STRING";
      goto LABEL_46;
    case 0xAuLL:
      displayLocation2 = [transactionCopy displayLocation];
      goto LABEL_47;
    case 0x11uLL:
      v29 = @"BANK_CONNECT_DIVIDEND_TRANSACTION_CELL_SECONDARY_STRING";
      goto LABEL_46;
    case 0x12uLL:
      if (creditDebitIndicator == 1)
      {
        v29 = @"BANK_CONNECT_LOAN_CREDIT_TRANSACTION_CELL_SECONDARY_STRING";
      }

      else
      {
        v29 = @"BANK_CONNECT_LOAN_DEBIT_TRANSACTION_CELL_SECONDARY_STRING";
      }

      goto LABEL_46;
    case 0x13uLL:
      v29 = @"BANK_CONNECT_STANDING_ORDER_TRANSACTION_CELL_SECONDARY_STRING";
      goto LABEL_46;
    case 0x14uLL:
      v29 = @"BANK_CONNECT_DIRECT_DEBIT_TRANSACTION_CELL_SECONDARY_STRING";
      goto LABEL_46;
    case 0x15uLL:
      v29 = @"BANK_CONNECT_TRANSFER_TRANSACTION_CELL_SECONDARY_STRING";
      goto LABEL_46;
    case 0x16uLL:
      if (creditDebitIndicator == 1)
      {
        v29 = @"BANK_CONNECT_CHECK_CREDIT_TRANSACTION_CELL_SECONDARY_STRING";
      }

      else
      {
        v29 = @"BANK_CONNECT_CHECK_DEBIT_TRANSACTION_CELL_SECONDARY_STRING";
      }

LABEL_46:
      displayLocation2 = PKLocalizedBankConnectString(&v29->isa, 0);
LABEL_47:
      displayLocation = displayLocation2;
      break;
    default:
      break;
  }

LABEL_48:
  if (!displayName || ![displayName length])
  {
    if (displayLocation)
    {
      localizedTypeDescription = [displayLocation copy];

      displayName = displayLocation;
    }

    else
    {
      localizedTypeDescription = [transactionCopy localizedTypeDescription];
    }

    displayLocation = 0;
    displayName = localizedTypeDescription;
  }

  v54 = 1;
  v37 = [self _statusAnnotationForTransaction:transactionCopy overloadAnnotation:&v54];
  if ([v37 length])
  {
    if ((v54 & 1) == 0)
    {
      v38 = v37;
      goto LABEL_59;
    }

    if (displayLocation)
    {
      v38 = PKLocalizedPaymentString(&cfstr_PaymentPassDet.isa, &stru_1F22903C8.isa, v37, displayLocation);
LABEL_59:
      v39 = v38;

      displayLocation = v39;
      goto LABEL_60;
    }

    displayLocation = v37;
  }

LABEL_60:
  v40 = [self _relativeDateForTransaction:transactionCopy];
  v53 = passCopy;
  if (sourceCopy)
  {
    localizedDescription = [passCopy localizedDescription];
    if ([localizedDescription length])
    {
      v42 = localizedDescription;
      v43 = v42;
      if (v40 && v42)
      {
        v44 = PKLocalizedPaymentString(&cfstr_TransactionTer.isa, &stru_1F22903C8.isa, v40, v42);

        v40 = v44;
      }

      else if (!v40 && v42)
      {
        v43 = v42;
        v40 = v43;
      }
    }

    else
    {
      v43 = 0;
    }
  }

  if (!displayLocation)
  {
    displayLocation = [v40 copy];

    v40 = 0;
  }

  v45 = transactionStatus < 8;
  v46 = 0xF8u >> transactionStatus;
  v47 = 4u >> transactionStatus;
  v48 = objc_alloc_init(PKPaymentTransactionPresentationInformation);
  [(PKPaymentTransactionPresentationInformation *)v48 setValueString:v51];
  [(PKPaymentTransactionPresentationInformation *)v48 setPrimaryString:displayName];
  [(PKPaymentTransactionPresentationInformation *)v48 setSecondaryString:displayLocation];
  [(PKPaymentTransactionPresentationInformation *)v48 setDestructiveSecondaryString:v45 & v47];
  [(PKPaymentTransactionPresentationInformation *)v48 setTertiaryString:v40];
  [(PKPaymentTransactionPresentationInformation *)v48 setBadgeString:0];
  [(PKPaymentTransactionPresentationInformation *)v48 setSecondaryBadgeSymbol:0];
  [(PKPaymentTransactionPresentationInformation *)v48 setShouldGrayValue:v45 & v46];
  [(PKPaymentTransactionPresentationInformation *)v48 setShouldStrikeValue:v45 & v46];
  [(PKPaymentTransactionPresentationInformation *)v48 setShouldShowDisclosure:1];

  return v48;
}

+ (id)_relativeDateForTransaction:(id)transaction
{
  transactionCopy = transaction;
  transactionDate = [transactionCopy transactionDate];
  v5 = PKRelativeDateStringWithFullDateForUnits(transactionDate, 8206, 0);
  transactionType = [transactionCopy transactionType];
  v7 = transactionType;
  if (transactionType != 9)
  {
    if (transactionType != 5)
    {
      goto LABEL_7;
    }

    transfers = [transactionCopy transfers];
    if (![transfers count])
    {
      isBankConnectTransaction = [transactionCopy isBankConnectTransaction];

      if (isBankConnectTransaction)
      {
        goto LABEL_7;
      }

      PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_6.isa, &stru_1F2281668.isa, v5);
      v5 = transfers = v5;
    }

LABEL_7:
    bankConnectMetadata = [transactionCopy bankConnectMetadata];
    roundTransactionDate = [bankConnectMetadata roundTransactionDate];

    if (!roundTransactionDate)
    {
      goto LABEL_11;
    }
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  if ([currentCalendar isDateInToday:transactionDate])
  {
    v13 = PKLocalizedString(&cfstr_RelativeDateTo_0.isa, 0);

    v5 = v13;
  }

LABEL_11:
  if (v7 == 2 && ([transactionCopy shouldSuppressDate] & 1) != 0)
  {
    pk_uppercaseFirstStringForPreferredLocale = 0;
  }

  else
  {
    pk_uppercaseFirstStringForPreferredLocale = [v5 pk_uppercaseFirstStringForPreferredLocale];
  }

  return pk_uppercaseFirstStringForPreferredLocale;
}

+ (id)_statusAnnotationForTransaction:(id)transaction overloadAnnotation:(BOOL *)annotation
{
  transactionCopy = transaction;
  transactionType = [transactionCopy transactionType];
  featureIdentifier = [transactionCopy featureIdentifier];
  switch(transactionType)
  {
    case 9:
      v14 = @"TRANSACTION_REWARDS_CASH_BACK";
LABEL_7:
      v15 = PKLocalizedFeatureString(v14, 2, 0, v8, v9, v10, v11, v12, v26);
LABEL_14:
      v13 = v15;
      goto LABEL_15;
    case 2:
LABEL_5:
      v13 = 0;
LABEL_15:
      v18 = 1;
      goto LABEL_16;
    case 1:
      if ([transactionCopy isBankConnectTransaction])
      {
        goto LABEL_5;
      }

      v19 = @"PAYMENT_TRANSACTION_REFUND";
      goto LABEL_13;
  }

  v16 = featureIdentifier;
  transactionStatus = [transactionCopy transactionStatus];
  v13 = 0;
  v18 = 1;
  if (transactionStatus <= 4)
  {
    if (!transactionStatus)
    {
      goto LABEL_27;
    }

    if (transactionStatus == 2)
    {
      v13 = PKLocalizedPaymentString(&cfstr_PaymentTransac_0.isa, 0);
      v18 = [transactionCopy accountType] != 3;
      goto LABEL_16;
    }

    if (transactionStatus != 4)
    {
      goto LABEL_16;
    }

    v19 = @"PAYMENT_TRANSACTION_FAILED";
LABEL_13:
    v15 = PKLocalizedPaymentString(&v19->isa, 0);
    goto LABEL_14;
  }

  if (transactionStatus <= 6)
  {
    if (transactionStatus == 5)
    {
      v19 = @"PAYMENT_TRANSACTION_CANCELED";
    }

    else
    {
      v19 = @"PAYMENT_TRANSACTION_REJECTED";
    }

    goto LABEL_13;
  }

  if (transactionStatus == 7)
  {
    v19 = @"PAYMENT_TRANSACTION_EXPIRED";
    goto LABEL_13;
  }

  if (transactionStatus == 8)
  {
LABEL_27:
    if (v16 != 2 || transactionType != 10)
    {
      transfers = [transactionCopy transfers];
      firstObject = [transfers firstObject];

      if (firstObject && ([firstObject externalAccount], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "type"), v24, v25 == 2))
      {
        v13 = 0;
      }

      else
      {
        v13 = PKLocalizedPaymentString(&cfstr_PaymentTransac.isa, 0);
      }

      goto LABEL_15;
    }

    v14 = @"PAYMENT_TRANSACTION_PENDING_PAYMENT";
    goto LABEL_7;
  }

LABEL_16:
  if (annotation)
  {
    *annotation = v18;
  }

  pk_uppercaseFirstStringForPreferredLocale = [v13 pk_uppercaseFirstStringForPreferredLocale];

  return pk_uppercaseFirstStringForPreferredLocale;
}

+ (id)secondaryFundingSourceDescriptionForTransaction:(id)transaction secondarySource:(id)source includeBankAccountSuffix:(BOOL)suffix useGenericNameIfNoDescriptionAvailable:(BOOL)available
{
  availableCopy = available;
  transactionCopy = transaction;
  sourceCopy = source;
  transactionType = [transactionCopy transactionType];
  if (transactionType == 10)
  {
    localizedDescription = [self _billPaymentFundingSourceForTransaction:transactionCopy];
    goto LABEL_36;
  }

  if (transactionType != 5)
  {
    secondaryFundingSourceFPANIdentifier = [transactionCopy secondaryFundingSourceFPANIdentifier];
    if ([secondaryFundingSourceFPANIdentifier length])
    {
      paymentPass = [sourceCopy paymentPass];
      localizedDescription = [paymentPass localizedDescription];
    }

    else
    {
      localizedDescription = 0;
    }

    if (![localizedDescription length])
    {
      secondaryFundingSourceDescription = [transactionCopy secondaryFundingSourceDescription];

      localizedDescription = secondaryFundingSourceDescription;
    }

    if ([localizedDescription length])
    {
      goto LABEL_35;
    }

    v18 = PKDisplayablePaymentNetworkNameForPaymentCredentialType([transactionCopy secondaryFundingSourceNetwork]);
    secondaryFundingSourceDPANSuffix = [transactionCopy secondaryFundingSourceDPANSuffix];
    if ([v18 length] && objc_msgSend(secondaryFundingSourceDPANSuffix, "length"))
    {
      PKLocalizedPeerPaymentString(&cfstr_TransactionSec_5.isa, &stru_1F22903C8.isa, v18, secondaryFundingSourceDPANSuffix);
      goto LABEL_32;
    }

    if ([v18 length])
    {
      v25 = v18;
      v21 = @"TRANSACTION_SECONDARY_FUNDING_SOURCE_CARD_DESCRIPTION_NETWORK_FORMAT_STRING";
    }

    else
    {
      if (![secondaryFundingSourceDPANSuffix length])
      {
        if ([transactionCopy isBankConnectTransaction])
        {
          v22 = PKLocalizedBankConnectString(&cfstr_BankConnectOth.isa, 0);
          goto LABEL_33;
        }

        if (!availableCopy)
        {
          goto LABEL_34;
        }

        PKLocalizedPeerPaymentString(&cfstr_TransactionSec_8.isa, 0);
        v22 = LABEL_32:;
LABEL_33:
        v23 = v22;

        localizedDescription = v23;
LABEL_34:

        goto LABEL_35;
      }

      v25 = secondaryFundingSourceDPANSuffix;
      v21 = @"TRANSACTION_SECONDARY_FUNDING_SOURCE_CARD_DESCRIPTION_DPAN_SUFFIX_FORMAT_STRING";
    }

    PKLocalizedPeerPaymentString(&v21->isa, &stru_1F2281668.isa, v25);
    goto LABEL_32;
  }

  secondaryFundingSourceFPANIdentifier = [transactionCopy secondaryFundingSourceDescription];
  secondaryFundingSourceType = [transactionCopy secondaryFundingSourceType];
  if (!secondaryFundingSourceType)
  {
    if (![secondaryFundingSourceFPANIdentifier length])
    {
      goto LABEL_26;
    }

LABEL_24:
    v20 = secondaryFundingSourceFPANIdentifier;
    goto LABEL_25;
  }

  if (secondaryFundingSourceType == 1)
  {
    if ([secondaryFundingSourceFPANIdentifier length])
    {
      goto LABEL_24;
    }

    if (availableCopy)
    {
      v14 = @"TRANSACTION_SECONDARY_FUNDING_SOURCE_BANK_ACCOUNT_DESCRIPTION_GENERIC";
      goto LABEL_22;
    }

LABEL_26:
    localizedDescription = 0;
    goto LABEL_35;
  }

  if (secondaryFundingSourceType != 2)
  {
    goto LABEL_26;
  }

  if ([secondaryFundingSourceFPANIdentifier length])
  {
    goto LABEL_24;
  }

  if (!availableCopy)
  {
    goto LABEL_26;
  }

  v14 = @"TRANSACTION_SECONDARY_FUNDING_SOURCE_DEBIT_DESCRIPTION_GENERIC";
LABEL_22:
  v20 = PKLocalizedPeerPaymentString(&v14->isa, 0);
LABEL_25:
  localizedDescription = v20;
LABEL_35:

LABEL_36:

  return localizedDescription;
}

+ (id)_billPaymentFundingSourceForTransaction:(id)transaction
{
  payments = [transaction payments];
  firstObject = [payments firstObject];

  fundingSource = [firstObject fundingSource];
  type = [fundingSource type];
  v12 = 0;
  if (type <= 2)
  {
    if (type != 1)
    {
      if (type != 2)
      {
        goto LABEL_10;
      }

      v13 = @"ACCOUNT_SERVICE_SCHEDULE_PAYMENT_APC_ITEM";
      goto LABEL_9;
    }

LABEL_7:
    displayDescription = [fundingSource displayDescription];
    v12 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SCHEDULE_PAYMENT_ACH_ITEM_FORMAT", 2, @"%@", v15, v16, v17, v18, v19, displayDescription);

    goto LABEL_10;
  }

  if (type != 3)
  {
    if (type != 5)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v13 = @"ACCOUNT_SERVICE_PAYMENT_DETAILS_OFFLINE_PAYMENT";
LABEL_9:
  v12 = PKLocalizedFeatureString(v13, 2, 0, v7, v8, v9, v10, v11, v21);
LABEL_10:

  return v12;
}

+ (void)_transferFundingSourceInformationForTransaction:(id)transaction primaryString:(id *)string secondaryString:(id *)secondaryString
{
  transactionCopy = transaction;
  transfers = [transactionCopy transfers];
  firstObject = [transfers firstObject];

  externalAccount = [firstObject externalAccount];
  associatedFeatureIdentifier = [transactionCopy associatedFeatureIdentifier];
  type = [externalAccount type];
  v12 = 0;
  if (type > 2)
  {
    if (type == 3)
    {
      featureIdentifier = [transactionCopy featureIdentifier];
      v36 = PKLocalizedFeatureString(@"TRANSACTION_TYPE_OFFLINE_TRANSFER", featureIdentifier, 0, v31, v32, v33, v34, v35, v52);
      goto LABEL_18;
    }

    displayDescription = 0;
    if (type != 5)
    {
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  if (type == 1)
  {
LABEL_10:
    displayDescription = [externalAccount displayDescription];
    if ([firstObject type] == 2)
    {
      goto LABEL_11;
    }

    v29 = @"TRANSACTION_TYPE_WITHDRAWAL_GENERIC";
LABEL_14:
    v28 = PKLocalizedPaymentString(&v29->isa, 0);
LABEL_15:
    v12 = v28;
    if (!string)
    {
      goto LABEL_21;
    }

LABEL_19:
    if (displayDescription)
    {
      v37 = displayDescription;
      *string = displayDescription;
    }

    goto LABEL_21;
  }

  displayDescription = 0;
  if (type != 2)
  {
    goto LABEL_24;
  }

  type2 = [firstObject type];
  featureIdentifier2 = [transactionCopy featureIdentifier];
  if (type2 == 2)
  {
    if (featureIdentifier2 == 1)
    {
      if (associatedFeatureIdentifier)
      {
        displayDescription = PKLocalizedFeatureString(@"TRANSACTION_PRODUCT_NAME", associatedFeatureIdentifier, 0, v16, v17, v18, v19, v20, v52);
        v26 = @"TRANSACTION_TYPE_WITHDRAWAL_ACCOUNT";
        featureIdentifier4 = associatedFeatureIdentifier;
LABEL_12:
        v28 = PKLocalizedFeatureString(v26, featureIdentifier4, 0, v21, v22, v23, v24, v25, v52);
        goto LABEL_15;
      }

      v51 = @"TRANSACTION_TYPE_WITHDRAWAL_GENERIC";
      goto LABEL_34;
    }

    featureIdentifier3 = [transactionCopy featureIdentifier];
    displayDescription = PKLocalizedFeatureString(@"TRANSACTION_TYPE_TOPUP_CASH", featureIdentifier3, 0, v40, v41, v42, v43, v44, v52);
LABEL_11:
    featureIdentifier4 = [transactionCopy featureIdentifier];
    v26 = @"TRANSACTION_TYPE_TOP_UP";
    goto LABEL_12;
  }

  if (featureIdentifier2 != 1)
  {
    featureIdentifier5 = [transactionCopy featureIdentifier];
    displayDescription = PKLocalizedFeatureString(@"TRANSACTION_TYPE_TOPUP_CASH", featureIdentifier5, 0, v46, v47, v48, v49, v50, v52);
    featureIdentifier4 = [transactionCopy featureIdentifier];
    v26 = @"TRANSACTION_TYPE_WITHDRAWAL_CASH";
    goto LABEL_12;
  }

  if (associatedFeatureIdentifier)
  {
    displayDescription = PKLocalizedFeatureString(@"TRANSACTION_PRODUCT_NAME", associatedFeatureIdentifier, 0, v16, v17, v18, v19, v20, v52);
    v29 = @"TRANSACTION_TYPE_TOP_UP";
    goto LABEL_14;
  }

  v51 = @"TRANSACTION_TYPE_TOP_UP";
LABEL_34:
  v36 = PKLocalizedPaymentString(&v51->isa, 0);
LABEL_18:
  displayDescription = v36;
  v12 = 0;
  if (string)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (secondaryString && v12)
  {
    v38 = v12;
    *secondaryString = v12;
  }

LABEL_24:
}

+ (unint64_t)iconTypeForTransaction:(id)transaction ignoreLogoURL:(BOOL)l
{
  transactionCopy = transaction;
  v7 = [self staticIconNameForTransaction:transactionCopy];

  if (!v7)
  {
    merchant = [transactionCopy merchant];
    v10 = merchant;
    if (l || ([merchant logoImageURL], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      if ([transactionCopy transactionType] == 2)
      {
        v8 = 1;
LABEL_12:

        goto LABEL_13;
      }

      if ([transactionCopy transactionType] == 15)
      {
        if ([transactionCopy transactionSource] == 2)
        {
          v8 = 3;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_12;
      }
    }

    v8 = 0;
    goto LABEL_12;
  }

  v8 = 2;
LABEL_13:

  return v8;
}

+ (id)staticIconNameForTransaction:(id)transaction
{
  transactionCopy = transaction;
  if ([transactionCopy isBankConnectTransaction])
  {
    transactionType = [transactionCopy transactionType];
    if (transactionType > 10)
    {
      if ((transactionType - 18) >= 5)
      {
        v5 = @"SAVINGS_Interest";
        v6 = transactionType == 17;
        v7 = @"BANK_CONNECT_Dividend";
LABEL_34:
        if (!v6)
        {
          v7 = 0;
        }

        if (transactionType == 11)
        {
          v9 = v5;
        }

        else
        {
          v9 = v7;
        }

        goto LABEL_71;
      }

      goto LABEL_40;
    }

    if (transactionType > 8)
    {
      if (transactionType == 9)
      {
        v9 = @"DailyCashIcon";
        goto LABEL_71;
      }

      goto LABEL_40;
    }

    if ((transactionType - 5) < 3)
    {
LABEL_40:
      currencyCode = [transactionCopy currencyCode];
      v27 = [currencyCode isEqual:@"GBP"];

      if (v27)
      {
        v9 = @"IconGBP";
      }

      else
      {
        currencyCode2 = [transactionCopy currencyCode];
        v29 = [currencyCode2 isEqual:@"USD"];

        if (v29)
        {
          v9 = @"SAVINGS_Bank";
        }

        else
        {
          v9 = 0;
        }
      }

      goto LABEL_71;
    }

    v10 = transactionType == 4;
    v11 = @"BANK_CONNECT_Fee";
LABEL_47:
    if (v10)
    {
      v9 = v11;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_71;
  }

  accountType = [transactionCopy accountType];
  transactionType = [transactionCopy transactionType];
  if (transactionType <= 8)
  {
    if (transactionType > 4)
    {
      if ((transactionType - 5) < 2)
      {
LABEL_25:
        transfers = [transactionCopy transfers];
        v22 = [transfers count];

        if (v22)
        {
          transfers2 = [transactionCopy transfers];
          firstObject = [transfers2 firstObject];

          externalAccount = [firstObject externalAccount];
          if ([externalAccount type] == 2)
          {
            if ([transactionCopy associatedFeatureIdentifier] == 5)
            {
              v9 = @"SAVINGS_Icon";
            }

            else
            {
              v9 = @"SAVINGS_Cash";
            }
          }

          else
          {
            v9 = @"SAVINGS_Bank";
          }

          goto LABEL_71;
        }

LABEL_58:
        v9 = @"SAVINGS_Bank";
        goto LABEL_71;
      }

      if (transactionType == 7)
      {
        if (accountType != 3 || ([transactionCopy transfers], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "count"), v30, !v31))
        {
          v9 = @"AdjustmentsIcon";
          goto LABEL_71;
        }

        goto LABEL_58;
      }

      v9 = 0;
      if (transactionType != 8)
      {
        goto LABEL_71;
      }

      redemptionEvent = [transactionCopy redemptionEvent];

      v18 = @"AppleCardIcon";
      v19 = @"CashBackIcon";
      v20 = redemptionEvent == 0;
    }

    else
    {
      if (transactionType < 3)
      {
        goto LABEL_15;
      }

      if (transactionType != 3)
      {
        v10 = transactionType == 4;
        v11 = @"CashBackIcon";
        goto LABEL_47;
      }

      peerPaymentType = [transactionCopy peerPaymentType];
      v18 = @"CashBackIcon";
      v19 = @"SAVINGS_Cash";
      v20 = peerPaymentType == 6;
    }

    if (v20)
    {
      v9 = v19;
    }

    else
    {
      v9 = v18;
    }

    goto LABEL_71;
  }

  if (transactionType <= 12)
  {
    if ((transactionType - 9) < 2)
    {
      if ([transactionCopy isBankConnectTransaction])
      {
        v9 = 0;
      }

      else
      {
        v9 = @"AppleCardIcon";
      }

      goto LABEL_71;
    }

    v5 = @"InterestIcon";
    if (accountType == 3)
    {
      v5 = @"SAVINGS_Interest";
    }

    v6 = transactionType == 12;
    v7 = @"DailyCashIcon";
    goto LABEL_34;
  }

  if ((transactionType - 19) < 4)
  {
    goto LABEL_25;
  }

  v9 = 0;
  if ((transactionType - 13) > 2)
  {
    goto LABEL_71;
  }

LABEL_15:
  releasedData = [transactionCopy releasedData];
  application = [releasedData application];
  client = [application client];

  if (client == 1)
  {
    v9 = @"IdentityFirstPartyMerchant";
  }

  else
  {
    v9 = 0;
  }

  if (![transactionCopy transactionType])
  {
    payments = [transactionCopy payments];
    v16 = [payments count];

    if (v16)
    {
      v9 = @"AppleCardIcon";
    }

    else
    {
      transfers3 = [transactionCopy transfers];
      if ([transfers3 count])
      {
        associatedFeatureIdentifier = [transactionCopy associatedFeatureIdentifier];

        if (associatedFeatureIdentifier == 5)
        {
          v9 = @"SAVINGS_Icon";
          goto LABEL_71;
        }
      }

      else
      {
      }

      if ([transactionCopy associatedFeatureIdentifier] == 1)
      {
        merchant = [transactionCopy merchant];
        hasMapsMatch = [merchant hasMapsMatch];

        if (!hasMapsMatch)
        {
          v9 = @"SAVINGS_Cash";
        }
      }
    }
  }

LABEL_71:

  return v9;
}

@end