@interface PKPaymentTransactionPresentation
+ (id)_billPaymentFundingSourceForTransaction:(id)a3;
+ (id)_presentationInformationForBankConnectTransaction:(id)a3 paymentPass:(id)a4 context:(unint64_t)a5 shouldDisplayTransactionSource:(BOOL)a6;
+ (id)_relativeDateForTransaction:(id)a3;
+ (id)_statusAnnotationForTransaction:(id)a3 overloadAnnotation:(BOOL *)a4;
+ (id)presentationInformationForTransaction:(id)a3 transactionSource:(id)a4 secondaryTransactionSource:(id)a5 familyMember:(id)a6 account:(id)a7 deviceName:(id)a8 context:(unint64_t)a9 shouldDisplayTransactionSource:(BOOL)a10;
+ (id)secondaryFundingSourceDescriptionForTransaction:(id)a3 secondarySource:(id)a4 includeBankAccountSuffix:(BOOL)a5 useGenericNameIfNoDescriptionAvailable:(BOOL)a6;
+ (id)staticIconNameForTransaction:(id)a3;
+ (unint64_t)iconTypeForTransaction:(id)a3 ignoreLogoURL:(BOOL)a4;
+ (void)_transferFundingSourceInformationForTransaction:(id)a3 primaryString:(id *)a4 secondaryString:(id *)a5;
@end

@implementation PKPaymentTransactionPresentation

+ (id)presentationInformationForTransaction:(id)a3 transactionSource:(id)a4 secondaryTransactionSource:(id)a5 familyMember:(id)a6 account:(id)a7 deviceName:(id)a8 context:(unint64_t)a9 shouldDisplayTransactionSource:(BOOL)a10
{
  v420 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v403 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  LODWORD(a8) = [v16 isBankConnectTransaction];
  v21 = [v17 paymentPass];
  v22 = v21;
  if (a8)
  {
    v23 = [a1 _presentationInformationForBankConnectTransaction:v16 paymentPass:v21 context:a9 shouldDisplayTransactionSource:a10];

    v24 = v403;
    goto LABEL_291;
  }

  v399 = v21;
  v382 = a1;
  v390 = v20;
  v402 = v19;
  v394 = v18;
  v25 = [v16 transactionType];
  v375 = [v16 transactionStatus];
  v26 = [v16 transitType];
  v371 = [v16 transitModifiers];
  v372 = v26;
  v27 = v25 != 2 || v26 == 0;
  v28 = !v27;
  if ([v16 hasNotificationServiceData])
  {
    v29 = 1;
  }

  else if ([v16 processedForLocation])
  {
    v29 = [v16 processedForStations];
  }

  else
  {
    v29 = 0;
  }

  v374 = [v16 enRoute];
  v30 = [v16 featureIdentifier];
  if ((v28 & v29) == 1)
  {
    *(&v381 + 1) = [v16 startStation];
    *&v381 = [v16 endStation];
  }

  else
  {
    v381 = 0uLL;
  }

  v31 = [v16 transactionType];
  v33 = a9 != 5 && v31 != 12;
  v379 = v33;
  if ([v16 isRecurring])
  {
    v34 = [v16 transactionType];
    v35 = @"arrow.triangle.2.circlepath";
    if (v34 == 6)
    {
      v35 = 0;
    }

    v401 = v35;
  }

  else
  {
    v401 = 0;
  }

  v36 = [v16 peerPaymentType];
  v391 = [v16 peerPaymentCounterpartHandle];
  if (v25 == 3)
  {
    v37 = [v16 peerPaymentPaymentMode];
    if (v37 == 3)
    {
      if ([v16 peerPaymentType] == 2)
      {
        v38 = [v16 peerPaymentRequestToken];

        v39 = v401;
        if (v38)
        {
          v39 = @"person.3.fill";
        }

        v401 = v39;
      }
    }

    else if (v37 == 2)
    {
      v401 = @"apple.cash.tap";
    }
  }

  v40 = [v16 amount];
  if (v40)
  {
    v41 = v40;
    v42 = v28 ^ 1;
    if (v25 == 3)
    {
      v42 = 0;
    }

    if (v42)
    {
      v400 = [v16 formattedBalanceAdjustmentAmount];
    }

    else
    {
      v43 = [v16 formattedBalanceAdjustmentSubtotalAmount];
      v44 = v43;
      if (v43)
      {
        v400 = v43;
      }

      else
      {
        v400 = [v16 formattedBalanceAdjustmentAmount];
      }
    }

    v393 = [v16 currencyCode];
    if (v29)
    {
      goto LABEL_51;
    }

LABEL_47:
    v380 = 0;
    v386 = 0;
    goto LABEL_52;
  }

  v45 = [v16 amounts];
  if (v45)
  {
  }

  else
  {
    v46 = [v16 plans];

    if (!v46)
    {
      v41 = 0;
      v393 = 0;
      v400 = 0;
      if (!v29)
      {
        goto LABEL_47;
      }

      goto LABEL_51;
    }
  }

  v400 = [v16 formattedStringForMultipleAmountsForPass:v399];
  v47 = [v16 transactionAmountsForMultipleAmounts];
  v48 = [v47 firstObject];

  v49 = [v48 amount];
  v41 = [v49 amount];
  v393 = [v49 currency];

  if (!v29)
  {
    goto LABEL_47;
  }

LABEL_51:
  v50 = [v16 merchant];
  v386 = [v50 displayName];

  v380 = [v16 displayLocation];

LABEL_52:
  v404 = v16;
  v51 = [v16 transactionStatus];
  v396 = v17;
  v57 = v403;
  v378 = v41;
  v58 = a9;
  v387 = v36;
  if (v51 == 3)
  {
    v59 = PKLocalizedPaymentString(&cfstr_PaymentTransac_6.isa, 0);

    v60 = 0;
    v61 = 0;
    v62 = 1;
    v400 = v59;
    goto LABEL_109;
  }

  if (v28 && (!v41 || !v393))
  {
    if (!((v375 != 0) | v374 & 1))
    {
      v72 = PKLocalizedPeerPaymentString(&cfstr_TransactionDet_1.isa, 0);
LABEL_132:
      v95 = v72;

      v61 = 0;
      v62 = 0;
      v60 = 0;
      v400 = v95;
      goto LABEL_133;
    }

    v61 = 0;
    if (v372 > 256)
    {
      if ((v372 - 257) >= 5)
      {
        if (v372 == 1025)
        {
          if (v374)
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

        if (v375)
        {
          if ([v399 shouldSuppressNoChargeAmount])
          {
            goto LABEL_77;
          }

          v93 = [v399 devicePrimaryPaymentApplication];
          v94 = [v93 paymentNetworkIdentifier];

          if (v94 == 131)
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

    if (v374)
    {
      goto LABEL_77;
    }

    if (v371)
    {
      v75 = @"TRANSIT_TRANSACTION_FARE_PAID";
LABEL_131:
      v72 = PKLocalizedPaymentString(&v75->isa, 0);
      goto LABEL_132;
    }

    if ((v371 & 6) != 0)
    {
      v72 = _zeroCurrencyAmount(v399);
      goto LABEL_132;
    }

    if (v375)
    {
      v61 = 0;
      if (([v399 shouldSuppressNoChargeAmount] & 1) == 0)
      {
        v62 = 0;
        v60 = 0;
        if (v400)
        {
          goto LABEL_133;
        }

        v400 = PKLocalizedPaymentString(&cfstr_TransitTransac_0.isa, 0);
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
  if (!v41 || !v393)
  {
    goto LABEL_108;
  }

  if (a9 == 4)
  {
    if ([v404 transactionType] == 8)
    {
      v64 = [v404 currencyAmount];
      if (v402)
      {
        v73 = [v402 feature];
      }

      else
      {
        v73 = [v404 featureIdentifier];
      }

      v74 = v73 == 5;
    }

    else
    {
      v64 = [v404 rewardsTotalCurrencyAmount];
      v74 = [v404 redemptionType] == 3;
    }

    v76 = !v74;
    if (!v64)
    {
      goto LABEL_94;
    }

    v71 = [v64 formattedStringValue];

    v77 = [v64 amount];
    v78 = [MEMORY[0x1E696AB90] zero];
    v79 = [v77 compare:v78] != -1;

    if ((v79 & v76) != 1)
    {
      v400 = v71;
      v57 = v403;
      v58 = 4;
      v36 = v387;
      goto LABEL_94;
    }

    v369 = v71;
    v69 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F2281668.isa);
    v57 = v403;
    v58 = 4;
    v36 = v387;
    goto LABEL_92;
  }

  if (a9 != 3)
  {
    goto LABEL_95;
  }

  v63 = [v404 rewardsTotalCurrencyAmount];
  v64 = v63;
  if (v63)
  {
    v65 = [v63 amount];
    v66 = [MEMORY[0x1E696AB90] zero];
    v67 = [v65 compare:v66];

    v68 = [v64 formattedStringValue];
    v69 = v68;
    if (v67 == -1)
    {
      v71 = v400;
    }

    else
    {
      v369 = v68;
      v70 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F2281668.isa);

      v71 = v69;
      v69 = v70;
    }

    v58 = 3;
    v57 = v403;
LABEL_92:

    v400 = v69;
  }

LABEL_94:

LABEL_95:
  v60 = 0;
  if (v375 > 2)
  {
    if ((v375 - 3) < 5)
    {
LABEL_97:
      v62 = 1;
      v61 = 1;
      goto LABEL_109;
    }

    if (v375 == 8)
    {
      goto LABEL_102;
    }

LABEL_108:
    v62 = 0;
    v61 = 0;
    goto LABEL_109;
  }

  if (v375)
  {
    if (v375 == 2)
    {
      v60 = 1;
      goto LABEL_97;
    }

    goto LABEL_108;
  }

LABEL_102:
  v60 = 0;
  v61 = 0;
  v62 = v25 == 3 && v36 == 2;
LABEL_109:
  if (v25 == 11)
  {
    v392 = v60;
    v376 = v62;
    v377 = v61;
    v81 = [v404 accountType];
    if (v58 == 1 && v81 != 3)
    {
      v82 = v404;
      v83 = [v404 transactionDate];
      v389 = PKMonthAndYearStringFromDate(v83);

      v385 = 0;
      v373 = 0;
      v84 = 0;
      v85 = 1;
      v86 = v382;
      goto LABEL_167;
    }

    v373 = v81 == 3;
    v385 = v58 != 1;
    v86 = v382;
    if ([v402 type] != 1 && objc_msgSend(v404, "accountType") != 2)
    {
      v82 = v404;
      v87 = [v404 featureIdentifier];
      v389 = PKLocalizedFeatureString(@"TRANSACTION_TYPE_INTEREST_PAID", v87, 0, v88, v89, v90, v91, v92, v369);
      v84 = 0;
      v85 = 1;
      goto LABEL_167;
    }

    v389 = PKLocalizedPaymentString(&cfstr_TransactionTyp_5.isa, 0);
    v84 = 0;
    v85 = 1;
    goto LABEL_166;
  }

LABEL_133:
  v376 = v62;
  v377 = v61;
  v392 = v60;
  if (v58 == 1)
  {
    v86 = v382;
    v82 = v404;
    v389 = [v382 _relativeDateForTransaction:v404];
    v385 = 0;
    v373 = 0;
    v85 = 0;
    v84 = 0;
    goto LABEL_167;
  }

  if (v25 == 3)
  {
    if ([v391 length])
    {
      v86 = v382;
      if ([v404 peerPaymentPaymentMode] != 2)
      {
        v101 = [PKPeerPaymentCounterpartHandleFormatter displayNameForCounterpartHandle:v391 contact:0];
        goto LABEL_163;
      }

      v96 = v391;
      goto LABEL_153;
    }

    v27 = v36 == 1;
    v102 = v36;
    v86 = v382;
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
    if ((v25 - 5) <= 1)
    {
      v86 = v382;
      v97 = objc_opt_class();
      v98 = v57;
      v82 = v404;
      v99 = [v97 secondaryFundingSourceDescriptionForTransaction:v404 secondarySource:v98 includeBankAccountSuffix:0 useGenericNameIfNoDescriptionAvailable:0];
LABEL_141:
      v389 = v99;
LABEL_142:
      v373 = 0;
      v85 = 0;
      v84 = 0;
LABEL_143:
      v385 = 1;
      goto LABEL_167;
    }

    v86 = v382;
    if (v25 == 10)
    {
      v100 = @"TRANSACTION_DETAIL_BILL_PAYMENT_TITLE";
      goto LABEL_146;
    }
  }

  v82 = v404;
  if (![v404 transactionType])
  {
    v107 = [v404 payments];
    v108 = [v107 count];

    if (v108)
    {
      v389 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_DISPLAY_NAME", 2, 0, v109, v110, v111, v112, v113, v369);
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
    v96 = v386;
    if (v386)
    {
LABEL_153:
      v101 = v96;
      goto LABEL_163;
    }

    v82 = v404;
    v250 = [v404 releasedData];
    v251 = [v250 verificationType];

    v99 = PKTransactionReleasedDataVerificationTypeToLocalizedTitle(v251);
    goto LABEL_141;
  }

  if (![v404 transactionType])
  {
    v252 = [v404 transfers];
    v253 = [v252 count];

    if (v253)
    {
      v417 = 0;
      v418 = 0;
      [v86 _transferFundingSourceInformationForTransaction:v404 primaryString:&v418 secondaryString:&v417];
      v389 = v418;
      v119 = v417;
      goto LABEL_327;
    }
  }

  if ([v404 transactionType] == 7)
  {
    v104 = [v404 transfers];
    v105 = [v104 count];

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
    v245 = [v404 referenceIdentifier];
    v246 = [v245 length];

    if (v246)
    {
      v99 = PKLocalizedPaymentString(&cfstr_TransactionTyp_0.isa, 0);
      goto LABEL_141;
    }
  }

  if (![v404 transactionType])
  {
    v274 = [v404 recurringPeerPayment];

    if (v274)
    {
      v275 = [v404 merchant];
      v276 = [v275 hasMapsMatch];

      if (v276)
      {
        v277 = [v404 merchant];
        v389 = [v277 displayName];
      }

      else
      {
        v389 = PKLocalizedPeerPaymentString(&cfstr_AppleCash_0.isa, 0);
      }

      v299 = [v404 recurringPeerPayment];
      v300 = [v299 type];

      if (v300 == 1)
      {
        v301 = @"TRANSACTION_DEBIT_RECURRING_PAYMENT";
      }

      else
      {
        if (v300 != 3)
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
    v106 = v386;
    goto LABEL_321;
  }

  if ([v404 transactionType] == 14)
  {
    v268 = [v404 installmentPlan];
    v269 = [v268 product];
    v389 = [v269 model];

    goto LABEL_142;
  }

  if (v30 == 4)
  {
    v280 = 1;
  }

  else
  {
    v280 = v28;
  }

  if ((v280 & 1) == 0 && [v386 length])
  {
    v96 = v386;
    goto LABEL_153;
  }

  if (v25 <= 7)
  {
    if (v25 != 4)
    {
      if (v25 == 7)
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

  if (v25 == 8)
  {
    v316 = [v404 redemptionEvent];

    if (v316)
    {
      v100 = @"TRANSACTION_REWARDS_TITLE";
      goto LABEL_146;
    }

    v317 = @"TRANSACTION_TYPE_DISBURSEMENT";
LABEL_486:
    v101 = PKLocalizedPaymentString(&v317->isa, 0);
    goto LABEL_163;
  }

  if (v25 != 9)
  {
    if (v25 == 12)
    {
      v289 = [v404 rewards];
      v290 = [v289 rewardsItems];
      v291 = [v290 firstObject];
      v292 = [v291 type];

      if (v292 == 6)
      {
        v298 = @"TRANSACTION_REWARDS_REASON_ACTIVATION_OFFER";
      }

      else
      {
        v298 = @"TRANSACTION_REWARDS_REASON_OTHER";
      }

      v389 = PKLocalizedFeatureString(v298, 2, 0, v293, v294, v295, v296, v297, v369);
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

      if ([v380 length])
      {
        v318 = v380;
LABEL_536:
        v324 = v318;
        goto LABEL_537;
      }

      if ([v386 length])
      {
LABEL_535:
        v318 = v386;
        goto LABEL_536;
      }

      if ([v404 transactionSource] || v372 != 516 && v372 != 513)
      {
        v373 = 0;
        v85 = 0;
        v84 = 0;
        v389 = 0;
        goto LABEL_538;
      }

      v324 = [v399 organizationName];
    }

    else
    {
      if (v30 == 4 && [v386 length])
      {
        goto LABEL_535;
      }

      v324 = PKLocalizedPaymentString(&cfstr_PaymentSummary_1.isa, 0);
    }

LABEL_537:
    v389 = v324;
    v373 = 0;
    v85 = 0;
    v84 = 0;
LABEL_538:
    v385 = 1;
    v86 = v382;
LABEL_539:
    v58 = a9;
    goto LABEL_166;
  }

  v100 = @"ACCOUNT_SERVICE_DISPLAY_NAME";
LABEL_146:
  v101 = PKLocalizedFeatureString(v100, 2, 0, v52, v53, v54, v55, v56, v369);
LABEL_163:
  v389 = v101;
LABEL_164:
  v373 = 0;
  v85 = 0;
  v84 = 0;
LABEL_165:
  v385 = 1;
LABEL_166:
  v82 = v404;
LABEL_167:
  v120 = [v82 disputeStatus];
  v415 = 1;
  v395 = [v86 _statusAnnotationForTransaction:v82 overloadAnnotation:&v415];
  if ((v120 - 1) <= 4)
  {
    v126 = [v82 transactionType];
    v127 = [v82 disputeType];
    if ((v120 - 1) < 3)
    {
      v133 = PKLocalizedFeatureString(@"TRANSACTION_DISPUTE_STATUS_IN_REVIEW", 2, 0, v128, v129, v130, v131, v132, v369);

      v134 = 0;
      v392 = 1;
LABEL_213:
      v84 = v133;
LABEL_214:
      v135 = v402;
LABEL_215:
      v136 = a10;
      goto LABEL_216;
    }

    v136 = a10;
    if (v120 == 4)
    {
      if (v126 || v127 != 1)
      {
        v146 = @"TRANSACTION_DISPUTE_STATUS_APPROVED";
      }

      else
      {
        v146 = @"TRANSACTION_DISPUTE_STATUS_CREDIT_APPLIED";
      }

      v168 = PKLocalizedFeatureString(v146, 2, 0, v128, v129, v130, v131, v132, v369);

      goto LABEL_203;
    }

    if (!v126 && v127 == 1)
    {
      v147 = [v404 disputeStatusDetails];
      v148 = [v147 statusReasons];
      v149 = [v148 containsObject:@"splitLiability"];

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
      v161 = [v404 featureIdentifier];
      v167 = PKLocalizedFeatureString(@"TRANSACTION_TYPE_TOP_UP", v161, 0, v162, v163, v164, v165, v166, v369);

      v134 = 0;
      v84 = v167;
    }

    goto LABEL_215;
  }

  if (v25 == 14)
  {
    v150 = @"APPLE_CARD_INSTALLMENTS";
LABEL_212:
    v133 = PKLocalizedFeatureString(v150, 2, 0, v121, v122, v123, v124, v125, v369);

    v134 = 0;
    goto LABEL_213;
  }

  v136 = a10;
  switch(v25)
  {
    case 13:
      v137 = [v404 installmentPayment];
      v138 = [v137 localizedDisplay];
      v144 = v138;
      if (v138)
      {
        v145 = v138;
      }

      else
      {
        v145 = PKLocalizedFeatureString(@"APPLE_CARD_INSTALLMENTS", 2, 0, v139, v140, v141, v142, v143, v369);

        v84 = v145;
      }

      v134 = 0;
      v84 = v145;
      goto LABEL_214;
    case 3:
      v151 = [v404 peerPaymentType];
      v152 = v151;
      v134 = 0;
      if (v151 <= 3)
      {
        v135 = v402;
        switch(v151)
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

            v154 = [v404 expirationDate];
            v155 = [MEMORY[0x1E695DEE8] currentCalendar];
            v156 = [MEMORY[0x1E695DF00] date];
            v157 = PKStartOfDay(v156);
            v158 = [v155 components:16 fromDate:v157 toDate:v154 options:0];

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

            PKLocalizedPeerPaymentString(&v160->isa, 0, v369);
            v84 = LABEL_403:;
            v58 = a9;

            v134 = 0;
LABEL_404:
            v135 = v402;
            goto LABEL_405;
          default:
            goto LABEL_406;
        }

        PKLocalizedPeerPaymentString(&v254->isa, 0);
        v134 = 0;
        v84 = v154 = v84;
LABEL_405:

LABEL_406:
        v302 = [v404 peerPaymentMemo];
        if (!v302)
        {
          v303 = [v404 recurringPeerPayment];
          v304 = [v303 memo];
          v302 = [v304 text];
        }

        if (![v302 length])
        {
          goto LABEL_416;
        }

        if (v152 == 3)
        {
          if (v385)
          {
            v305 = v84;

            v84 = v302;
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
          v369 = v84;
          v306 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@"];

          v84 = v306;
        }

        else
        {
          v84 = v302;
        }

        goto LABEL_416;
      }

      if ((v151 - 4) >= 2)
      {
        if (v151 != 6)
        {
          v135 = v402;
          goto LABEL_406;
        }

        v154 = [v404 recurringPeerPayment];
        v247 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadEntr.isa, 0);

        v248 = [v154 currencyThreshold];
        v369 = [v248 minimalFormattedStringValue];
        v249 = PKLocalizedPeerPaymentRecurringString(&cfstr_AutoReloadEntr_0.isa, &stru_1F2281668.isa);

        v134 = 0;
        v84 = v249;
        v389 = v247;
        goto LABEL_404;
      }

      v154 = [v404 recurringPeerPayment];
      v231 = [v154 frequency];
      v232 = [v154 startDate];
      v233 = PKPeerPaymentRecurringPaymentFrequencyToLocalizedWeekdayString(v231, v232);

      v234 = [v404 transactionDate];
      v235 = [v154 memo];
      v398 = [v235 text];

      if (v58 != 6 && v58)
      {
        v267 = v233;

        if (!v234)
        {
          v134 = 0;
          v135 = v402;
          v84 = v398;
          goto LABEL_364;
        }

        v384 = v234;
        v240 = PKMediumDateString(v234, 0);
        v369 = v240;
        v134 = PKLocalizedPeerPaymentRecurringString(&cfstr_TransactionNex.isa, &stru_1F2281668.isa);
        v389 = v267;
        v135 = v402;
      }

      else
      {
        if (v152 != 4)
        {
          v134 = v233;
          v263 = [v154 status];
          v135 = v402;
          if ((v263 - 3) >= 2)
          {
            v84 = v398;
            if (v263 == 2)
            {
              v384 = v234;
              v278 = PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringPayme_1.isa, 0);
              v240 = v278;
              if (v134)
              {
                v369 = v134;
                v279 = PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringPayme_2.isa, &stru_1F22903C8.isa);

                v134 = v279;
              }

              else
              {
                v240 = v278;
                v134 = v240;
              }

              goto LABEL_363;
            }
          }

          else
          {
            v84 = v398;
            if (([v154 lastExecutedTransactionAppearsInHistory] & 1) == 0)
            {
              v384 = v234;
              v264 = [v154 lastExecutedTransaction];
              v265 = [v264 errorCode];

              if (v265 == 40311)
              {
                v266 = [v154 fundingSource];
                v240 = [v266 name];

                if ([v240 length])
                {
                  PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringPayme_3.isa, &stru_1F2281668.isa, v240);
                }

                else
                {
                  PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringPayme_4.isa, 0, v369);
                }
                v319 = ;

                v392 = 1;
                v84 = v319;
              }

              else
              {
                PKLocalizedPeerPaymentRecurringString(&cfstr_RecurringPayme_5.isa, 0);
                v240 = v398;
                v84 = v392 = 1;
              }

              goto LABEL_363;
            }
          }

          v267 = v389;
          goto LABEL_364;
        }

        v236 = v233;
        v237 = [MEMORY[0x1E695DEE8] currentCalendar];
        v238 = [MEMORY[0x1E695DF00] date];
        v239 = PKStartOfDay(v238);
        v384 = v234;
        v240 = [v237 components:16 fromDate:v239 toDate:v234 options:0];

        v241 = [v240 day];
        if (v241 == 1)
        {
          PKLocalizedPeerPaymentRecurringString(&cfstr_SendingTomorro.isa, 0, v369);
        }

        else
        {
          PKLocalizedPeerPaymentRecurringString(&cfstr_SendingInDays.isa, &cfstr_Ld_2.isa, v241);
        }
        v134 = ;
        v135 = v402;
        v233 = v236;
      }

      v84 = v398;
LABEL_363:

      v267 = v389;
      v234 = v384;
LABEL_364:

      v389 = v267;
      goto LABEL_405;
    case 5:
      v242 = [v404 transfers];
      v243 = [v242 count];

      if (v243)
      {
        v411 = v84;
        v412 = v389;
        [v86 _transferFundingSourceInformationForTransaction:v404 primaryString:&v412 secondaryString:&v411];
        v168 = v412;

        v173 = v411;
        goto LABEL_308;
      }

      v256 = [v404 secondaryFundingSourceType];
      if (v256 == 1)
      {
        v258 = @"TRANSACTION_TYPE_WITHDRAWAL_BANK_ACCOUNT";
        v135 = v402;
        v257 = v389;
      }

      else
      {
        v257 = v389;
        if (v256 != 2)
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

      v389 = v283;
      v284 = v281;

      v134 = 0;
      v86 = v382;
      goto LABEL_216;
    case 6:
      v171 = [v404 transfers];
      v172 = [v171 count];

      if (!v172)
      {
        v255 = [v389 length];
        v168 = PKLocalizedPaymentString(&cfstr_TransactionTyp_1.isa, 0);
        if (v255)
        {
          goto LABEL_202;
        }

        v134 = 0;
LABEL_309:
        v389 = v168;
        goto LABEL_204;
      }

      v413 = v84;
      v414 = v389;
      [v86 _transferFundingSourceInformationForTransaction:v404 primaryString:&v414 secondaryString:&v413];
      v168 = v414;

      v173 = v413;
LABEL_308:
      v244 = v173;

      v134 = 0;
      v84 = v244;
      v136 = a10;
      goto LABEL_309;
  }

  if (![v404 transactionType])
  {
    v259 = [v404 transfers];
    v260 = [v259 count];

    if (v260)
    {
      v409 = v84;
      v410 = v389;
      [v86 _transferFundingSourceInformationForTransaction:v404 primaryString:&v410 secondaryString:&v409];
      v261 = v410;

      v262 = v409;
      v134 = 0;
      v84 = v262;
      v389 = v261;
      goto LABEL_214;
    }
  }

  if (v25 == 8)
  {
    v270 = v404;
    v271 = [v404 redemptionEvent];

    v136 = a10;
    if (v271)
    {
      v169 = @"TRANSACTION_REWARDS_CASH_BACK";
LABEL_200:
      v170 = PKLocalizedFeatureString(v169, 2, 0, v128, v129, v130, v131, v132, v369);
LABEL_201:
      v168 = v170;
LABEL_202:

LABEL_203:
      v134 = 0;
      v84 = v168;
LABEL_204:
      v135 = v402;
      goto LABEL_216;
    }

    v285 = [v404 merchantProvidedDescription];
    v286 = [v285 length];

    if (v286)
    {
      v170 = [v404 merchantProvidedDescription];
      goto LABEL_201;
    }

LABEL_387:
    v287 = [v270 unansweredQuestions];
    v288 = [v287 count];

    if (v375 == 2)
    {
      if (v288)
      {
        v169 = @"TRANSACTION_VERIFICATION_REQUIRED";
      }

      else
      {
        v309 = [v404 questions];
        v310 = [v309 count];

        if (!v310)
        {
          v325 = [v404 transactionDeclinedReason];
          v170 = PKPaymentTransactionDeclinedReasonLocalizedString(v325, v326, v327, v328, v329, v330, v331, v332);
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
      v308 = PKLocalizedFeatureString(@"TRANSACTION_VERIFICATION_REQUIRED", 2, 0, v128, v129, v130, v131, v132, v369);

      v134 = 0;
      v392 = 1;
LABEL_439:
      v84 = v308;
      goto LABEL_216;
    }

    if ([v404 reviewed])
    {
      v308 = PKLocalizedFeatureString(@"TRANSACTION_REVIEWED", 2, 0, v311, v312, v313, v314, v315, v369);

      v134 = 0;
      goto LABEL_439;
    }

    if ([v404 isIssuerInstallmentTransaction])
    {
      v320 = [v399 uniqueID];
      if (v320)
      {
        v321 = +[PKPaymentService paymentService];
        v322 = [v321 paymentOffersCatalog];

        v323 = [v322 criteriaWithType:1 passUniqueID:v320];
      }

      else
      {
        v323 = 0;
      }

      v344 = [v323 programName];
      v342 = v344;
      if (!v323 || !v344)
      {
        v345 = PKLocalizedPaymentOffersString(&cfstr_PayLaterBadgeT.isa, 0);
        goto LABEL_526;
      }

LABEL_524:
      v345 = v342;
LABEL_526:
      v343 = v345;
      goto LABEL_527;
    }

    if (!PKHideCardBenefitRewards())
    {
      v333 = [v404 paymentRewardsRedemption];

      if (v333)
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

    v336 = [v404 effectiveTransactionSource];
    v134 = 0;
    if (v336 > 4)
    {
      if ((v336 - 7) >= 2)
      {
        if (v336 == 5)
        {
          if (v380)
          {
            v334 = v380;
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
          if (v336 != 6)
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

        v335 = PKLocalizedFeatureString(v346, 2, 0, v337, v338, v339, v340, v341, v369);

        goto LABEL_494;
      }

      goto LABEL_540;
    }

    if (v336 != 1)
    {
      if (v336 != 2)
      {
        if (v336 == 3)
        {
          v320 = [v404 merchant];
          v323 = [v320 originURL];
          v342 = [v323 absoluteString];
          if (!v342)
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
        v136 = a10;
        v86 = v382;
        v58 = a9;
        goto LABEL_216;
      }

LABEL_540:
      if (v25 == 15)
      {
        v347 = [v404 releasedData];
        v348 = [v347 application];
        v349 = v348;
        if (v347 && v348)
        {
          v350 = [v348 client];
          if (!v350)
          {
            v366 = [v404 releasedData];
            v367 = PKTransactionReleasedDataVerificationTypeToLocalizedTitle([v366 verificationType]);

            v84 = v366;
LABEL_602:

            v84 = v367;
            goto LABEL_603;
          }

          if (v350 != 2)
          {
            if (v350 != 1)
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
            v365 = PKLocalizedIdentityString(&v351->isa, 0);
            goto LABEL_601;
          }

          v365 = [v404 displayLocation];
        }

        else
        {
          v363 = [v404 releasedData];
          v364 = [v363 verificationType];

          v365 = PKTransactionReleasedDataVerificationTypeToLocalizedTitle(v364);
        }

LABEL_601:
        v367 = v365;
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

    v335 = v380;

    if (v335)
    {
      goto LABEL_494;
    }

    if (v25 != 15)
    {
      v84 = PKLocalizedPaymentString(&cfstr_TransactionSou.isa, 0);
      goto LABEL_604;
    }

    v356 = [v404 releasedData];
    v357 = [v356 verificationType];

    v358 = PKTransactionReleasedDataVerificationTypeToLocalizedTitle(v357);
    v359 = v389;
    v360 = v358;
    v361 = v360;
    v389 = v359;
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

  v136 = a10;
  if (v25 == 7)
  {
    v170 = PKLocalizedSubtitleForTransactionWithAdjustment(v404);
    goto LABEL_201;
  }

  if (!v28)
  {
    v270 = v404;
    if (v25 == 10)
    {
      v170 = [v86 _billPaymentFundingSourceForTransaction:v404];
      goto LABEL_201;
    }

    goto LABEL_387;
  }

  if ((v371 & 2) != 0)
  {
    v307 = @"TRANSIT_TRANSACTION_TRANSFER";
    v135 = v402;
    goto LABEL_556;
  }

  v272 = v372;
  if ((v371 & 8) != 0)
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
            v136 = a10;
            v86 = v382;
            v58 = a9;
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
          v136 = a10;
          v86 = v382;
          v58 = a9;
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
            v136 = a10;
            v86 = v382;
            v58 = a9;
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
            v136 = a10;
            v86 = v382;
            v58 = a9;
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
          v136 = a10;
          v86 = v382;
          v58 = a9;
          v307 = @"TAXI_TRANSACTION_LIST_FARE_ADJUSTMENT";
          goto LABEL_556;
        }

        v307 = @"MAGLEV_TRANSACTION_LIST_FARE_ADJUSTMENT";
      }
    }

    goto LABEL_555;
  }

  if ((v371 & 0x10) != 0)
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
            v136 = a10;
            v86 = v382;
            v58 = a9;
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
          v136 = a10;
          v86 = v382;
          v58 = a9;
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
          v136 = a10;
          v86 = v382;
          v58 = a9;
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
          v136 = a10;
          v86 = v382;
          v58 = a9;
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
        v136 = a10;
        v86 = v382;
        v58 = a9;
        if (v372 != 1026)
        {
          goto LABEL_557;
        }

        v307 = @"METRO_UPGRADE_TRANSACTION_LIST_FARE_REBATE";
LABEL_556:
        v273 = PKLocalizedPaymentString(&v307->isa, 0);
LABEL_557:
        v272 = v372;
        if (v389)
        {
          goto LABEL_559;
        }

        goto LABEL_558;
      }

      v307 = @"GREEN_CAR_TRANSACTION_LIST_FARE_REBATE";
    }

LABEL_555:
    v135 = v402;
    v136 = a10;
    v86 = v382;
    v58 = a9;
    goto LABEL_556;
  }

  if (v389)
  {
    v273 = PKPaymentTransactionTransitSubtypeToLocalizedTitle(v372);
    v135 = v402;
    goto LABEL_559;
  }

  v273 = 0;
  v135 = v402;
LABEL_558:
  v389 = PKPaymentTransactionTransitSubtypeToLocalizedTitle(v272);
LABEL_559:
  if (*(&v381 + 1) && v381)
  {
    v369 = *(&v381 + 1);
    v352 = PKLocalizedPaymentString(&cfstr_TransitTransac_6.isa, &stru_1F2281668.isa);

    v84 = v352;
  }

  if (v374)
  {
    v353 = PKLocalizedPaymentString(&cfstr_TransitTransac_7.isa, 0);

    v84 = v353;
  }

  if (v273)
  {
    if (v389)
    {
      if (v84)
      {
        v369 = v273;
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
      v389 = v355;
    }
  }

  else if (!v389)
  {
    v389 = v84;

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
      v369 = v395;
      v174 = PKLocalizedPaymentString(&cfstr_PaymentPassDet.isa, &stru_1F22903C8.isa);

LABEL_224:
      v84 = v174;
      goto LABEL_225;
    }

    v84 = v395;
  }

LABEL_225:
  v397 = v84;
  if (v58 == 1)
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

  if (v58 != 2)
  {
LABEL_229:
    v176 = v404;
    v179 = [v86 _relativeDateForTransaction:v404];
    goto LABEL_230;
  }

  v176 = v404;
  v178 = [v404 transactionDate];
  v179 = PKMediumDateString(v178, 0);

  v134 = v178;
LABEL_230:
  v175 = v399;

  v177 = v179;
LABEL_231:
  v180 = [v176 rewards];
  v181 = v180;
  if (v180)
  {
    v388 = [v180 promotionalRewardsItems];
    v182 = [v388 count];
    v183 = v401;
    if (v182)
    {
      v183 = @"star.fill";
    }

    v401 = v183;
    v184 = [MEMORY[0x1E696AB90] zero];
    v405 = 0u;
    v406 = 0u;
    v407 = 0u;
    v408 = 0u;
    v185 = [v181 rewardsItems];
    v186 = [v185 countByEnumeratingWithState:&v405 objects:v419 count:16];
    v187 = v184;
    v188 = v184;
    if (v186)
    {
      v189 = v186;
      v190 = *v406;
      v187 = v184;
      v188 = v184;
      do
      {
        for (i = 0; i != v189; ++i)
        {
          if (*v406 != v190)
          {
            objc_enumerationMutation(v185);
          }

          v192 = *(*(&v405 + 1) + 8 * i);
          if ([v192 state] != 3)
          {
            v193 = [v192 eligibleValueUnit];
            if (v193 == 2)
            {
              v194 = [v192 eligibleValue];
              v197 = [(NSDecimalNumber *)v188 decimalNumberByAdding:v194];
              v196 = v188;
              v188 = v197;
            }

            else
            {
              if (v193 != 1)
              {
                continue;
              }

              v194 = [v192 eligibleValue];
              v195 = [(NSDecimalNumber *)v187 decimalNumberByAdding:v194];
              v196 = v187;
              v187 = v195;
            }
          }
        }

        v189 = [v185 countByEnumeratingWithState:&v405 objects:v419 count:16];
      }

      while (v189);
    }

    if (([(NSDecimalNumber *)v187 isEqualToNumber:v184]& 1) != 0)
    {
      v176 = v404;
      v175 = v399;
      if ([v404 transactionType] == 12 || (-[NSDecimalNumber isEqualToNumber:](v188, "isEqualToNumber:", v184) & 1) != 0)
      {
        v198 = 0;
        v135 = v402;
LABEL_254:

        v136 = a10;
        goto LABEL_255;
      }

      v199 = [v404 rewardsTotalCurrencyCode];
      v228 = v199;
      if (!v199)
      {
        v228 = [v404 currencyCode];
      }

      v383 = v228;
      v229 = PKCurrencyAmountCreate(v188, v228, 0);
      v230 = [v229 minimalFormattedStringValue];

      if (!v199)
      {
      }

      v198 = v230;
      v135 = v402;
    }

    else
    {
      v199 = PKFormattedStringMinimalFractionDigitsFromNumber(v187, 0);
      v198 = PKLocalizedFeatureString(@"TRANSACTION_REWARDS_PERCENT_FORMAT", 2, @"%@%%", v200, v201, v202, v203, v204, v199);
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
    if (!v136)
    {
      goto LABEL_279;
    }

LABEL_268:
    v213 = [v175 localizedDescription];
    if (v135)
    {
      v214 = [v135 feature];
      if (v213)
      {
        goto LABEL_274;
      }
    }

    else
    {
      v214 = [v176 featureIdentifier];
      if (v213)
      {
        goto LABEL_274;
      }
    }

    if (v214 == 5)
    {
      v213 = PKLocalizedFeatureString(@"TRANSACTION_PRODUCT_NAME", 5, 0, v215, v216, v217, v218, v219, v369);
    }

LABEL_274:
    if ([v213 length])
    {
      v220 = v213;
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

  v207 = [v396 accountUser];
  v208 = [v207 nameComponents];
  v209 = [PKContactResolver contactForFamilyMember:v394 nameComponents:v208 imageData:0];

  v210 = [v209 givenName];
  v211 = v210;
  if (v210)
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
      v177 = v210;
    }
  }

  if (a10)
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
    v225 = 0;
  }

  else
  {
    v223 = v176;
    v224 = v177;
    v225 = [v223 preferredTransactionCategory];
  }

  v226 = objc_alloc_init(PKPaymentTransactionPresentationInformation);
  [(PKPaymentTransactionPresentationInformation *)v226 setPrimaryString:v389];
  [(PKPaymentTransactionPresentationInformation *)v226 setSecondaryString:v397];
  [(PKPaymentTransactionPresentationInformation *)v226 setTertiaryString:v224];
  [(PKPaymentTransactionPresentationInformation *)v226 setDestructiveSecondaryString:v392];
  [(PKPaymentTransactionPresentationInformation *)v226 setBadgeString:v198];
  [(PKPaymentTransactionPresentationInformation *)v226 setValueString:v400];
  [(PKPaymentTransactionPresentationInformation *)v226 setSecondaryBadgeSymbol:v401];
  [(PKPaymentTransactionPresentationInformation *)v226 setPreferredTransactionCategory:v225];
  [(PKPaymentTransactionPresentationInformation *)v226 setShouldGrayValue:v376];
  [(PKPaymentTransactionPresentationInformation *)v226 setShouldStrikeValue:v377];
  [(PKPaymentTransactionPresentationInformation *)v226 setShouldShowDisclosure:v379];
  v23 = v226;

  v19 = v402;
  v24 = v403;
  v18 = v394;
  v20 = v390;
  v16 = v404;
  v17 = v396;
LABEL_291:

  return v23;
}

+ (id)_presentationInformationForBankConnectTransaction:(id)a3 paymentPass:(id)a4 context:(unint64_t)a5 shouldDisplayTransactionSource:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = [v9 bankConnectMetadata];
  v12 = [v11 creditDebitIndicator];

  v13 = [v9 transactionType];
  v14 = [v9 transactionStatus];
  [v9 formattedBalanceAdjustmentAmount];
  v51 = v15 = 0;
  if (v13 <= 0x16)
  {
    if (((1 << v13) & 0x7F06F3) != 0)
    {
      v16 = [v9 merchant];
      v15 = [v16 displayName];
    }

    else if (v13 == 11)
    {
      if (v12 == 1)
      {
        v24 = @"BANK_CONNECT_INTEREST_EARNED_TRANSACTION_CELL_PRIMARY_STRING";
      }

      else
      {
        v24 = @"BANK_CONNECT_INTEREST_CHARGED_TRANSACTION_CELL_PRIMARY_STRING";
      }

      v15 = PKLocalizedBankConnectString(&v24->isa, 0);
LABEL_16:
      if ([v9 isIssuerInstallmentTransaction])
      {
        v25 = [v10 uniqueID];
        if (v25)
        {
          v26 = +[PKPaymentService paymentService];
          v27 = [v26 paymentOffersCatalog];

          v28 = [v27 criteriaWithType:1 passUniqueID:v25];
        }

        else
        {
          v28 = 0;
        }

        v31 = [v28 programName];
        v32 = v31;
        if (v28 && v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = PKLocalizedPaymentOffersString(&cfstr_PayLaterBadgeT.isa, 0);
        }

        v17 = v33;
      }

      else
      {
        v17 = 0;
      }

LABEL_41:
      if (!PKHideCardBenefitRewards())
      {
        v34 = [v9 paymentRewardsRedemption];

        if (v34)
        {
          v35 = PKLocalizedPayWithPointsString(&cfstr_TransactionRew_3.isa, 0);

          v17 = v35;
        }
      }

      goto LABEL_48;
    }
  }

  v17 = 0;
  switch(v13)
  {
    case 0uLL:
      v17 = [v9 displayLocation];
      if ([v9 isIssuerInstallmentTransaction])
      {
        v18 = [v10 uniqueID];
        v52 = v18;
        if (v18)
        {
          v19 = +[PKPaymentService paymentService];
          v20 = [v19 paymentOffersCatalog];

          v18 = [v20 criteriaWithType:1 passUniqueID:v18];
        }

        v21 = [v18 programName];
        v22 = v21;
        if (v18 && v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = PKLocalizedPaymentOffersString(&cfstr_PayLaterBadgeT.isa, 0);
        }

        v50 = v23;

        v17 = v50;
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
      v30 = [v9 displayLocation];
      goto LABEL_47;
    case 0x11uLL:
      v29 = @"BANK_CONNECT_DIVIDEND_TRANSACTION_CELL_SECONDARY_STRING";
      goto LABEL_46;
    case 0x12uLL:
      if (v12 == 1)
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
      if (v12 == 1)
      {
        v29 = @"BANK_CONNECT_CHECK_CREDIT_TRANSACTION_CELL_SECONDARY_STRING";
      }

      else
      {
        v29 = @"BANK_CONNECT_CHECK_DEBIT_TRANSACTION_CELL_SECONDARY_STRING";
      }

LABEL_46:
      v30 = PKLocalizedBankConnectString(&v29->isa, 0);
LABEL_47:
      v17 = v30;
      break;
    default:
      break;
  }

LABEL_48:
  if (!v15 || ![v15 length])
  {
    if (v17)
    {
      v36 = [v17 copy];

      v15 = v17;
    }

    else
    {
      v36 = [v9 localizedTypeDescription];
    }

    v17 = 0;
    v15 = v36;
  }

  v54 = 1;
  v37 = [a1 _statusAnnotationForTransaction:v9 overloadAnnotation:&v54];
  if ([v37 length])
  {
    if ((v54 & 1) == 0)
    {
      v38 = v37;
      goto LABEL_59;
    }

    if (v17)
    {
      v38 = PKLocalizedPaymentString(&cfstr_PaymentPassDet.isa, &stru_1F22903C8.isa, v37, v17);
LABEL_59:
      v39 = v38;

      v17 = v39;
      goto LABEL_60;
    }

    v17 = v37;
  }

LABEL_60:
  v40 = [a1 _relativeDateForTransaction:v9];
  v53 = v10;
  if (v6)
  {
    v41 = [v10 localizedDescription];
    if ([v41 length])
    {
      v42 = v41;
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

  if (!v17)
  {
    v17 = [v40 copy];

    v40 = 0;
  }

  v45 = v14 < 8;
  v46 = 0xF8u >> v14;
  v47 = 4u >> v14;
  v48 = objc_alloc_init(PKPaymentTransactionPresentationInformation);
  [(PKPaymentTransactionPresentationInformation *)v48 setValueString:v51];
  [(PKPaymentTransactionPresentationInformation *)v48 setPrimaryString:v15];
  [(PKPaymentTransactionPresentationInformation *)v48 setSecondaryString:v17];
  [(PKPaymentTransactionPresentationInformation *)v48 setDestructiveSecondaryString:v45 & v47];
  [(PKPaymentTransactionPresentationInformation *)v48 setTertiaryString:v40];
  [(PKPaymentTransactionPresentationInformation *)v48 setBadgeString:0];
  [(PKPaymentTransactionPresentationInformation *)v48 setSecondaryBadgeSymbol:0];
  [(PKPaymentTransactionPresentationInformation *)v48 setShouldGrayValue:v45 & v46];
  [(PKPaymentTransactionPresentationInformation *)v48 setShouldStrikeValue:v45 & v46];
  [(PKPaymentTransactionPresentationInformation *)v48 setShouldShowDisclosure:1];

  return v48;
}

+ (id)_relativeDateForTransaction:(id)a3
{
  v3 = a3;
  v4 = [v3 transactionDate];
  v5 = PKRelativeDateStringWithFullDateForUnits(v4, 8206, 0);
  v6 = [v3 transactionType];
  v7 = v6;
  if (v6 != 9)
  {
    if (v6 != 5)
    {
      goto LABEL_7;
    }

    v8 = [v3 transfers];
    if (![v8 count])
    {
      v9 = [v3 isBankConnectTransaction];

      if (v9)
      {
        goto LABEL_7;
      }

      PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_6.isa, &stru_1F2281668.isa, v5);
      v5 = v8 = v5;
    }

LABEL_7:
    v10 = [v3 bankConnectMetadata];
    v11 = [v10 roundTransactionDate];

    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = [MEMORY[0x1E695DEE8] currentCalendar];
  if ([v12 isDateInToday:v4])
  {
    v13 = PKLocalizedString(&cfstr_RelativeDateTo_0.isa, 0);

    v5 = v13;
  }

LABEL_11:
  if (v7 == 2 && ([v3 shouldSuppressDate] & 1) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = [v5 pk_uppercaseFirstStringForPreferredLocale];
  }

  return v14;
}

+ (id)_statusAnnotationForTransaction:(id)a3 overloadAnnotation:(BOOL *)a4
{
  v5 = a3;
  v6 = [v5 transactionType];
  v7 = [v5 featureIdentifier];
  switch(v6)
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
      if ([v5 isBankConnectTransaction])
      {
        goto LABEL_5;
      }

      v19 = @"PAYMENT_TRANSACTION_REFUND";
      goto LABEL_13;
  }

  v16 = v7;
  v17 = [v5 transactionStatus];
  v13 = 0;
  v18 = 1;
  if (v17 <= 4)
  {
    if (!v17)
    {
      goto LABEL_27;
    }

    if (v17 == 2)
    {
      v13 = PKLocalizedPaymentString(&cfstr_PaymentTransac_0.isa, 0);
      v18 = [v5 accountType] != 3;
      goto LABEL_16;
    }

    if (v17 != 4)
    {
      goto LABEL_16;
    }

    v19 = @"PAYMENT_TRANSACTION_FAILED";
LABEL_13:
    v15 = PKLocalizedPaymentString(&v19->isa, 0);
    goto LABEL_14;
  }

  if (v17 <= 6)
  {
    if (v17 == 5)
    {
      v19 = @"PAYMENT_TRANSACTION_CANCELED";
    }

    else
    {
      v19 = @"PAYMENT_TRANSACTION_REJECTED";
    }

    goto LABEL_13;
  }

  if (v17 == 7)
  {
    v19 = @"PAYMENT_TRANSACTION_EXPIRED";
    goto LABEL_13;
  }

  if (v17 == 8)
  {
LABEL_27:
    if (v16 != 2 || v6 != 10)
    {
      v22 = [v5 transfers];
      v23 = [v22 firstObject];

      if (v23 && ([v23 externalAccount], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "type"), v24, v25 == 2))
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
  if (a4)
  {
    *a4 = v18;
  }

  v20 = [v13 pk_uppercaseFirstStringForPreferredLocale];

  return v20;
}

+ (id)secondaryFundingSourceDescriptionForTransaction:(id)a3 secondarySource:(id)a4 includeBankAccountSuffix:(BOOL)a5 useGenericNameIfNoDescriptionAvailable:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = [v9 transactionType];
  if (v11 == 10)
  {
    v15 = [a1 _billPaymentFundingSourceForTransaction:v9];
    goto LABEL_36;
  }

  if (v11 != 5)
  {
    v12 = [v9 secondaryFundingSourceFPANIdentifier];
    if ([v12 length])
    {
      v16 = [v10 paymentPass];
      v15 = [v16 localizedDescription];
    }

    else
    {
      v15 = 0;
    }

    if (![v15 length])
    {
      v17 = [v9 secondaryFundingSourceDescription];

      v15 = v17;
    }

    if ([v15 length])
    {
      goto LABEL_35;
    }

    v18 = PKDisplayablePaymentNetworkNameForPaymentCredentialType([v9 secondaryFundingSourceNetwork]);
    v19 = [v9 secondaryFundingSourceDPANSuffix];
    if ([v18 length] && objc_msgSend(v19, "length"))
    {
      PKLocalizedPeerPaymentString(&cfstr_TransactionSec_5.isa, &stru_1F22903C8.isa, v18, v19);
      goto LABEL_32;
    }

    if ([v18 length])
    {
      v25 = v18;
      v21 = @"TRANSACTION_SECONDARY_FUNDING_SOURCE_CARD_DESCRIPTION_NETWORK_FORMAT_STRING";
    }

    else
    {
      if (![v19 length])
      {
        if ([v9 isBankConnectTransaction])
        {
          v22 = PKLocalizedBankConnectString(&cfstr_BankConnectOth.isa, 0);
          goto LABEL_33;
        }

        if (!v6)
        {
          goto LABEL_34;
        }

        PKLocalizedPeerPaymentString(&cfstr_TransactionSec_8.isa, 0);
        v22 = LABEL_32:;
LABEL_33:
        v23 = v22;

        v15 = v23;
LABEL_34:

        goto LABEL_35;
      }

      v25 = v19;
      v21 = @"TRANSACTION_SECONDARY_FUNDING_SOURCE_CARD_DESCRIPTION_DPAN_SUFFIX_FORMAT_STRING";
    }

    PKLocalizedPeerPaymentString(&v21->isa, &stru_1F2281668.isa, v25);
    goto LABEL_32;
  }

  v12 = [v9 secondaryFundingSourceDescription];
  v13 = [v9 secondaryFundingSourceType];
  if (!v13)
  {
    if (![v12 length])
    {
      goto LABEL_26;
    }

LABEL_24:
    v20 = v12;
    goto LABEL_25;
  }

  if (v13 == 1)
  {
    if ([v12 length])
    {
      goto LABEL_24;
    }

    if (v6)
    {
      v14 = @"TRANSACTION_SECONDARY_FUNDING_SOURCE_BANK_ACCOUNT_DESCRIPTION_GENERIC";
      goto LABEL_22;
    }

LABEL_26:
    v15 = 0;
    goto LABEL_35;
  }

  if (v13 != 2)
  {
    goto LABEL_26;
  }

  if ([v12 length])
  {
    goto LABEL_24;
  }

  if (!v6)
  {
    goto LABEL_26;
  }

  v14 = @"TRANSACTION_SECONDARY_FUNDING_SOURCE_DEBIT_DESCRIPTION_GENERIC";
LABEL_22:
  v20 = PKLocalizedPeerPaymentString(&v14->isa, 0);
LABEL_25:
  v15 = v20;
LABEL_35:

LABEL_36:

  return v15;
}

+ (id)_billPaymentFundingSourceForTransaction:(id)a3
{
  v3 = [a3 payments];
  v4 = [v3 firstObject];

  v5 = [v4 fundingSource];
  v6 = [v5 type];
  v12 = 0;
  if (v6 <= 2)
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_10;
      }

      v13 = @"ACCOUNT_SERVICE_SCHEDULE_PAYMENT_APC_ITEM";
      goto LABEL_9;
    }

LABEL_7:
    v14 = [v5 displayDescription];
    v12 = PKLocalizedFeatureString(@"ACCOUNT_SERVICE_SCHEDULE_PAYMENT_ACH_ITEM_FORMAT", 2, @"%@", v15, v16, v17, v18, v19, v14);

    goto LABEL_10;
  }

  if (v6 != 3)
  {
    if (v6 != 5)
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

+ (void)_transferFundingSourceInformationForTransaction:(id)a3 primaryString:(id *)a4 secondaryString:(id *)a5
{
  v53 = a3;
  v7 = [v53 transfers];
  v8 = [v7 firstObject];

  v9 = [v8 externalAccount];
  v10 = [v53 associatedFeatureIdentifier];
  v11 = [v9 type];
  v12 = 0;
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      v30 = [v53 featureIdentifier];
      v36 = PKLocalizedFeatureString(@"TRANSACTION_TYPE_OFFLINE_TRANSFER", v30, 0, v31, v32, v33, v34, v35, v52);
      goto LABEL_18;
    }

    v13 = 0;
    if (v11 != 5)
    {
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  if (v11 == 1)
  {
LABEL_10:
    v13 = [v9 displayDescription];
    if ([v8 type] == 2)
    {
      goto LABEL_11;
    }

    v29 = @"TRANSACTION_TYPE_WITHDRAWAL_GENERIC";
LABEL_14:
    v28 = PKLocalizedPaymentString(&v29->isa, 0);
LABEL_15:
    v12 = v28;
    if (!a4)
    {
      goto LABEL_21;
    }

LABEL_19:
    if (v13)
    {
      v37 = v13;
      *a4 = v13;
    }

    goto LABEL_21;
  }

  v13 = 0;
  if (v11 != 2)
  {
    goto LABEL_24;
  }

  v14 = [v8 type];
  v15 = [v53 featureIdentifier];
  if (v14 == 2)
  {
    if (v15 == 1)
    {
      if (v10)
      {
        v13 = PKLocalizedFeatureString(@"TRANSACTION_PRODUCT_NAME", v10, 0, v16, v17, v18, v19, v20, v52);
        v26 = @"TRANSACTION_TYPE_WITHDRAWAL_ACCOUNT";
        v27 = v10;
LABEL_12:
        v28 = PKLocalizedFeatureString(v26, v27, 0, v21, v22, v23, v24, v25, v52);
        goto LABEL_15;
      }

      v51 = @"TRANSACTION_TYPE_WITHDRAWAL_GENERIC";
      goto LABEL_34;
    }

    v39 = [v53 featureIdentifier];
    v13 = PKLocalizedFeatureString(@"TRANSACTION_TYPE_TOPUP_CASH", v39, 0, v40, v41, v42, v43, v44, v52);
LABEL_11:
    v27 = [v53 featureIdentifier];
    v26 = @"TRANSACTION_TYPE_TOP_UP";
    goto LABEL_12;
  }

  if (v15 != 1)
  {
    v45 = [v53 featureIdentifier];
    v13 = PKLocalizedFeatureString(@"TRANSACTION_TYPE_TOPUP_CASH", v45, 0, v46, v47, v48, v49, v50, v52);
    v27 = [v53 featureIdentifier];
    v26 = @"TRANSACTION_TYPE_WITHDRAWAL_CASH";
    goto LABEL_12;
  }

  if (v10)
  {
    v13 = PKLocalizedFeatureString(@"TRANSACTION_PRODUCT_NAME", v10, 0, v16, v17, v18, v19, v20, v52);
    v29 = @"TRANSACTION_TYPE_TOP_UP";
    goto LABEL_14;
  }

  v51 = @"TRANSACTION_TYPE_TOP_UP";
LABEL_34:
  v36 = PKLocalizedPaymentString(&v51->isa, 0);
LABEL_18:
  v13 = v36;
  v12 = 0;
  if (a4)
  {
    goto LABEL_19;
  }

LABEL_21:
  if (a5 && v12)
  {
    v38 = v12;
    *a5 = v12;
  }

LABEL_24:
}

+ (unint64_t)iconTypeForTransaction:(id)a3 ignoreLogoURL:(BOOL)a4
{
  v6 = a3;
  v7 = [a1 staticIconNameForTransaction:v6];

  if (!v7)
  {
    v9 = [v6 merchant];
    v10 = v9;
    if (a4 || ([v9 logoImageURL], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
    {
      if ([v6 transactionType] == 2)
      {
        v8 = 1;
LABEL_12:

        goto LABEL_13;
      }

      if ([v6 transactionType] == 15)
      {
        if ([v6 transactionSource] == 2)
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

+ (id)staticIconNameForTransaction:(id)a3
{
  v3 = a3;
  if ([v3 isBankConnectTransaction])
  {
    v4 = [v3 transactionType];
    if (v4 > 10)
    {
      if ((v4 - 18) >= 5)
      {
        v5 = @"SAVINGS_Interest";
        v6 = v4 == 17;
        v7 = @"BANK_CONNECT_Dividend";
LABEL_34:
        if (!v6)
        {
          v7 = 0;
        }

        if (v4 == 11)
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

    if (v4 > 8)
    {
      if (v4 == 9)
      {
        v9 = @"DailyCashIcon";
        goto LABEL_71;
      }

      goto LABEL_40;
    }

    if ((v4 - 5) < 3)
    {
LABEL_40:
      v26 = [v3 currencyCode];
      v27 = [v26 isEqual:@"GBP"];

      if (v27)
      {
        v9 = @"IconGBP";
      }

      else
      {
        v28 = [v3 currencyCode];
        v29 = [v28 isEqual:@"USD"];

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

    v10 = v4 == 4;
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

  v8 = [v3 accountType];
  v4 = [v3 transactionType];
  if (v4 <= 8)
  {
    if (v4 > 4)
    {
      if ((v4 - 5) < 2)
      {
LABEL_25:
        v21 = [v3 transfers];
        v22 = [v21 count];

        if (v22)
        {
          v23 = [v3 transfers];
          v24 = [v23 firstObject];

          v25 = [v24 externalAccount];
          if ([v25 type] == 2)
          {
            if ([v3 associatedFeatureIdentifier] == 5)
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

      if (v4 == 7)
      {
        if (v8 != 3 || ([v3 transfers], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "count"), v30, !v31))
        {
          v9 = @"AdjustmentsIcon";
          goto LABEL_71;
        }

        goto LABEL_58;
      }

      v9 = 0;
      if (v4 != 8)
      {
        goto LABEL_71;
      }

      v17 = [v3 redemptionEvent];

      v18 = @"AppleCardIcon";
      v19 = @"CashBackIcon";
      v20 = v17 == 0;
    }

    else
    {
      if (v4 < 3)
      {
        goto LABEL_15;
      }

      if (v4 != 3)
      {
        v10 = v4 == 4;
        v11 = @"CashBackIcon";
        goto LABEL_47;
      }

      v32 = [v3 peerPaymentType];
      v18 = @"CashBackIcon";
      v19 = @"SAVINGS_Cash";
      v20 = v32 == 6;
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

  if (v4 <= 12)
  {
    if ((v4 - 9) < 2)
    {
      if ([v3 isBankConnectTransaction])
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
    if (v8 == 3)
    {
      v5 = @"SAVINGS_Interest";
    }

    v6 = v4 == 12;
    v7 = @"DailyCashIcon";
    goto LABEL_34;
  }

  if ((v4 - 19) < 4)
  {
    goto LABEL_25;
  }

  v9 = 0;
  if ((v4 - 13) > 2)
  {
    goto LABEL_71;
  }

LABEL_15:
  v12 = [v3 releasedData];
  v13 = [v12 application];
  v14 = [v13 client];

  if (v14 == 1)
  {
    v9 = @"IdentityFirstPartyMerchant";
  }

  else
  {
    v9 = 0;
  }

  if (![v3 transactionType])
  {
    v15 = [v3 payments];
    v16 = [v15 count];

    if (v16)
    {
      v9 = @"AppleCardIcon";
    }

    else
    {
      v33 = [v3 transfers];
      if ([v33 count])
      {
        v34 = [v3 associatedFeatureIdentifier];

        if (v34 == 5)
        {
          v9 = @"SAVINGS_Icon";
          goto LABEL_71;
        }
      }

      else
      {
      }

      if ([v3 associatedFeatureIdentifier] == 1)
      {
        v35 = [v3 merchant];
        v36 = [v35 hasMapsMatch];

        if (!v36)
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