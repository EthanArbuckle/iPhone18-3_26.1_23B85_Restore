@interface PKPaymentTransaction
+ (BOOL)isPositiveBalanceAdjustmentForCurrencyAmount:(id)a3 transactionType:(int64_t)a4 adjustmentType:(int64_t)a5 peerPaymentType:(int64_t)a6 isBankConnectTransaction:(BOOL)a7 bankConnectCreditDebitIndicator:(int64_t)a8 featureIdentifier:(unint64_t)a9;
+ (PKPaymentTransaction)paymentTransactionWithSource:(unint64_t)a3;
+ (PKPaymentTransaction)paymentTransactionWithSource:(unint64_t)a3 dictionary:(id)a4 unitDictionary:(id)a5 balanceLabelDictionary:(id)a6 planLabelDictionary:(id)a7 hasNotificationServiceData:(BOOL)a8;
+ (id)formattedBalanceAdjustmentForCurrencyAmount:(id)a3 transactionType:(int64_t)a4 adjustmentType:(int64_t)a5 peerPaymentType:(int64_t)a6 featureIdentifier:(unint64_t)a7 isBankConnectTransaction:(BOOL)a8 bankConnectCreditDebitIndicator:(int64_t)a9 pending:(BOOL)a10;
+ (id)formattedBalanceAdjustmentForTransactionAmount:(id)a3 transactionType:(int64_t)a4 adjustmentType:(int64_t)a5 peerPaymentType:(int64_t)a6 isBankConnectTransaction:(BOOL)a7 bankConnectCreditDebitIndicator:(int64_t)a8 featureIdentifier:(unint64_t)a9;
+ (id)recordTypesAndNamesForCodingType:(unint64_t)a3 serviceIdentifier:(id)a4;
+ (id)transactionFromFKPaymentTransaction:(id)a3;
+ (id)transactionFromFKPaymentTransaction:(id)a3 institution:(id)a4;
+ (id)transactionNotificationStatusStringForTransaction:(id)a3 personContact:(id)a4;
+ (void)augmentTransactionsIfNeeded:(id)a3 transactionSourceIdentifiers:(id)a4 passUniqueID:(id)a5 usingDataProvider:(id)a6 completion:(id)a7;
- (BOOL)hasBackingData;
- (BOOL)hasCloudArchivableDeviceData;
- (BOOL)hasPendingAmounts;
- (BOOL)impactsPromotionProgress;
- (BOOL)isCloudArchivableDeviceDataEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPaymentTransaction:(id)a3;
- (BOOL)isZeroTransaction;
- (BOOL)reviewed;
- (BOOL)supportsFuzzyMatching;
- (BOOL)updateReasonIsInitialDownload;
- (CLLocation)endStationLocation;
- (CLLocation)location;
- (CLLocation)preferredLocation;
- (CLLocation)startStationLocation;
- (FKPaymentTransaction)fkPaymentTransaction;
- (NSDate)disputeLastUpdatedDate;
- (NSDate)disputeOpenDate;
- (NSDecimalNumber)rewardsTotalAmount;
- (NSSet)answeredQuestionsOnThisDevice;
- (NSSet)unansweredQuestions;
- (NSString)associatedReceiptUniqueID;
- (NSString)displayLocation;
- (NSString)formattedBalanceAdjustmentAbsoluteAmount;
- (NSString)formattedBalanceAdjustmentAmount;
- (NSString)formattedBalanceAdjustmentSubtotalAmount;
- (PKAccountServicingEvent)latestDisputeEvent;
- (PKAccountServicingEventStatusDetails)disputeStatusDetails;
- (PKCurrencyAmount)currencyAmount;
- (PKCurrencyAmount)nominalCurrencyAmount;
- (PKCurrencyAmount)primaryFundingSourceCurrencyAmount;
- (PKCurrencyAmount)rewardsTotalCurrencyAmount;
- (PKCurrencyAmount)secondaryFundingSourceCurrencyAmount;
- (PKCurrencyAmount)subtotalCurrencyAmount;
- (PKPaymentTransaction)init;
- (PKPaymentTransaction)initWithCloudStoreCoder:(id)a3;
- (PKPaymentTransaction)initWithCoder:(id)a3;
- (id)_commutePlanInformationForPass:(id)a3;
- (id)_fkActions;
- (id)_fkAmount;
- (id)_fkApplePayTransactionInsight;
- (id)_fkContactTransactionInsight;
- (id)_fkMapsTransactionInsight;
- (id)_fkTransactionInsights;
- (id)_fkUserTransactionInsight;
- (id)_formatBalanceAdjustmentAmount:(id)a3;
- (id)_formatBalanceAdjustmentTransactionAmount:(id)a3;
- (id)_preformattedStringForMultipleAmounts;
- (id)_preformattedStringForMultiplePlans;
- (id)_transactionSourceString;
- (id)_transactionTypeString;
- (id)_transitSubtypeString;
- (id)description;
- (id)dictionaryOfFormattedMultipleAmountTotalsByRealCurrency;
- (id)dictionaryRepresentation;
- (id)formattedAwards;
- (id)formattedStringForMultipleAmountsForPass:(id)a3;
- (id)formattedTransitTransactionMessageForPass:(id)a3 suppressNoChargeAmount:(BOOL)a4;
- (id)recordTypesAndNamesForCodingType:(unint64_t)a3;
- (id)transactionAmountsForMultipleAmounts;
- (id)updateReasonsDescription;
- (int64_t)_fkPaymentTransactionCategory;
- (int64_t)_fkPaymentTransactionStatus;
- (int64_t)effectiveTransactionCategory;
- (unint64_t)_fkCreditDebitIndicator;
- (unint64_t)_fkMerchantCategoryFromPKMerchantCategory:(int64_t)a3;
- (unint64_t)_fkPaymentTransactionType;
- (unint64_t)disputeStatus;
- (unint64_t)disputeType;
- (unint64_t)effectiveTransactionSource;
- (unint64_t)featureIdentifier;
- (unint64_t)hash;
- (void)_applyTransactionCategoryFromRecord:(id)a3;
- (void)_encodeDeviceDataWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4;
- (void)_encodeServerDataWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4;
- (void)answeredQuestion:(unint64_t)a3;
- (void)applyPropertiesFromCloudStoreRecord:(id)a3;
- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setEndStationLocation:(id)a3;
- (void)setLocation:(id)a3;
- (void)setPaymentHash:(id)a3;
- (void)setStartStationLocation:(id)a3;
@end

@implementation PKPaymentTransaction

+ (PKPaymentTransaction)paymentTransactionWithSource:(unint64_t)a3
{
  v4 = objc_alloc_init(PKPaymentTransaction);
  [(PKPaymentTransaction *)v4 setTransactionSource:a3];

  return v4;
}

+ (PKPaymentTransaction)paymentTransactionWithSource:(unint64_t)a3 dictionary:(id)a4 unitDictionary:(id)a5 balanceLabelDictionary:(id)a6 planLabelDictionary:(id)a7 hasNotificationServiceData:(BOOL)a8
{
  v8 = a8;
  v144 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v124 = a5;
  v121 = a6;
  v123 = a7;
  v119 = [a1 paymentTransactionWithSource:a3];
  v15 = v14;
  v16 = [v15 mutableCopy];
  v17 = [v15 valueForKey:@"identifier"];
  v18 = [v15 valueForKey:@"transactionIdentifier"];
  if (v17)
  {
    [v16 removeObjectForKey:@"identifier"];
    [v16 setObject:v17 forKey:@"serviceIdentifier"];
    v19 = v119;
  }

  else
  {
    v20 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AD337000, v20, OS_LOG_TYPE_ERROR, "Transaction payload received from a provider without an 'identifier'. Please file a Radar.", buf, 2u);
    }

    v19 = v119;
    if (PKTransactionDebugDetailsEnabled())
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v143 = v15;
        _os_log_error_impl(&dword_1AD337000, v20, OS_LOG_TYPE_ERROR, "Invalid Transaction Payload: %{public}@", buf, 0xCu);
      }
    }
  }

  if (v18)
  {
    [v16 removeObjectForKey:@"transactionIdentifier"];
    [v16 setObject:v18 forKey:@"paymentHash"];
  }

  v21 = [v16 copy];

  v22 = [v21 PKStringForKey:@"serviceIdentifier"];
  v23 = [v21 PKStringForKey:@"paymentHash"];
  v114 = v22;
  v24 = [v22 uppercaseString];
  [v19 setServiceIdentifier:v24];

  v113 = v23;
  [v19 setPaymentHash:v23];
  v25 = [v21 PKStringForKey:@"currencyCode"];
  [v19 setCurrencyCode:v25];

  v26 = [v21 PKDateForKey:@"transactionDate"];
  [v19 setTransactionDate:v26];

  v27 = [v21 PKDateForKey:@"transactionStatusChangedDate"];
  [v19 setTransactionStatusChangedDate:v27];

  [v19 setHasNotificationServiceData:v8];
  v28 = [v21 PKStringForKey:@"panIdentifier"];
  [v19 setPANIdentifier:v28];

  v29 = [v21 PKStringForKey:@"merchantName"];
  v30 = [v21 PKStringForKey:@"rawMerchantName"];
  v115 = [v21 PKStringForKey:@"industryCategory"];
  v120 = v21;
  v31 = [v21 PKNumberForKey:@"industryCode"];
  v116 = v30;
  if (v29 | v30)
  {
    v32 = objc_alloc_init(PKMerchant);
    [(PKMerchant *)v32 setName:v29];
    [(PKMerchant *)v32 setRawName:v116];
    [(PKMerchant *)v32 setIndustryCategory:v115];
    if (v31)
    {
      -[PKMerchant setIndustryCode:](v32, "setIndustryCode:", [v31 integerValue]);
    }

    [v19 setMerchant:v32];
  }

  v33 = [v21 PKStringForKey:@"transactionType"];
  v118 = [v21 PKStringForKey:@"transactionStatus"];
  if (v33)
  {
    [v19 setTransactionType:PKPaymentTransactionTypeFromString(v33)];
  }

  v110 = v33;
  if (v118)
  {
    [v19 setTransactionStatus:PKPaymentTransactionStatusFromString(v118)];
  }

  v111 = v31;
  if ([v19 transactionType] == 2)
  {
    v34 = [v21 PKStringForKey:@"transitSubtype"];
    [v19 setTransitType:PKPaymentTransactionTransitSubtypeFromString(v34)];

    v35 = [v21 PKStringForKey:@"stationCodeProvider"];
    [v19 setStationCodeProvider:v35];

    v36 = [v21 PKNumberForKey:@"cityCode"];
    [v19 setCityCode:v36];

    v37 = [v21 PKStringForKey:@"startStationCode"];
    v38 = [v37 pk_decodeHexadecimal];
    [v19 setStartStationCode:v38];

    v39 = [v21 PKStringForKey:@"endStationCode"];
    v40 = [v39 pk_decodeHexadecimal];
    [v19 setEndStationCode:v40];

    v41 = [v21 PKStringForKey:@"startStation"];
    [v19 setStartStation:v41];

    v42 = [v21 PKStringForKey:@"endStation"];
    [v19 setEndStation:v42];

    v43 = [v19 startStation];
    if (v43)
    {
      v44 = [v19 endStation];
      if (v44)
      {
        goto LABEL_26;
      }

      v40 = [v19 endStationCode];
      if (!v40)
      {
        goto LABEL_26;
      }
    }

    v45 = [v19 endStation];
    if (!v45)
    {
      if (v43)
      {
      }

      goto LABEL_29;
    }

    v46 = v45;
    v47 = [v19 startStation];
    if (!v47)
    {
      v108 = [v19 startStationCode];

      if (v43)
      {
      }

      if (v108)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v44 = v40;
    if (v43)
    {
LABEL_26:
    }

LABEL_28:
    [v19 setProcessedForStations:1];
LABEL_29:
    [v19 setEnRoute:{objc_msgSend(v21, "PKBoolForKey:", @"isInStation"}];
    v48 = [v21 PKArrayContaining:objc_opt_class() forKey:@"transitModifiers"];
    v49 = v48;
    if (v48)
    {
      if ([v48 containsObject:@"TransferDiscount"])
      {
        v50 = 2;
      }

      else
      {
        v50 = 0;
      }

      v51 = v50 | [v49 containsObject:@"CommuteDiscount"];
      if ([v49 containsObject:@"FareCapped"])
      {
        v51 |= 4uLL;
      }

      if ([v49 containsObject:@"FareAdjustment"])
      {
        v51 |= 8uLL;
      }

      if ([v49 containsObject:@"FareRebate"])
      {
        v52 = v51 | 0x10;
      }

      else
      {
        v52 = v51;
      }
    }

    else
    {
      v52 = 0;
    }

    [v19 setTransitModifiers:v52];
  }

  v53 = [v21 PKDecimalNumberForKey:@"amount"];
  v117 = [v21 PKDecimalNumberForKey:@"amountAddedToAuth"];
  if (v53)
  {
    v54 = PKCurrencyDecimalAmountRound(v53);
    [v19 setAmount:v54];
  }

  v109 = v53;
  v112 = v29;
  if (v117)
  {
    v55 = PKCurrencyDecimalAmountRound(v117);
    [v19 setAmountAddedToAuth:v55];
  }

  v56 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v21 PKArrayForKey:@"amounts"];
  obj = v122 = v56;
  if (obj)
  {
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v57 = [obj countByEnumeratingWithState:&v136 objects:v141 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v137;
      v126 = *v137;
      do
      {
        for (i = 0; i != v58; ++i)
        {
          if (*v137 != v59)
          {
            objc_enumerationMutation(obj);
          }

          v61 = *(*(&v136 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v62 = [v61 PKDecimalNumberForKey:@"amount"];
            if (!v62)
            {
              v62 = [v61 PKDecimalNumberForKey:@"value"];
            }

            v63 = [v61 PKStringForKey:@"currency"];
            if (!v63)
            {
              v63 = [v61 PKStringForKey:@"currencyCode"];
              if (!v63)
              {
                v63 = @"XXX";
              }
            }

            v64 = v63;
            v65 = [v61 PKIntegerForKey:@"exponent"];
            v66 = [v61 PKStringForKey:@"identifier"];
            v67 = [v61 PKStringForKey:@"label"];
            if (v67)
            {
              v68 = v67;
              goto LABEL_60;
            }

            v68 = [v61 PKStringForKey:@"localizedTitle"];
            if (v68 || !v66)
            {
LABEL_60:
              if (v66)
              {
                goto LABEL_61;
              }
            }

            else
            {
              v68 = [v121 objectForKeyedSubscript:v66];
              if (!v68)
              {
                v68 = [v123 objectForKeyedSubscript:v66];
              }

LABEL_61:
              v69 = [v124 objectForKeyedSubscript:v66];
              if (v69)
              {
                v70 = v69;
                PKLocalizedPaymentUnitKeyForType([v69 integerValue]);
                v71 = v125 = v65;
                [(NSDecimalNumber *)v62 pk_absoluteValue];
                v73 = v72 = v58;
                v74 = PKLocalizedPaymentString(v71, &cfstr_Lu.isa, [v73 unsignedLongValue]);

                v58 = v72;
                v75 = [[PKCurrencyAmount alloc] initWithAmount:v62 exponent:v125 preformattedString:v74];

                v56 = v122;
                if (!v75)
                {
LABEL_72:
                  v76 = 0;
                  goto LABEL_73;
                }

LABEL_66:
                v76 = [[PKTransactionAmount alloc] initWithCurrencyAmount:v75 label:v68];
LABEL_73:
                [v56 safelyAddObject:v76];

                v59 = v126;
                continue;
              }
            }

            if (!v62)
            {
              v75 = 0;
              v70 = 0;
              goto LABEL_72;
            }

            v75 = PKCurrencyAmountCreate(v62, &v64->isa, v65);
            v70 = 0;
            if (!v75)
            {
              goto LABEL_72;
            }

            goto LABEL_66;
          }
        }

        v58 = [obj countByEnumeratingWithState:&v136 objects:v141 count:16];
      }

      while (v58);
    }
  }

  v77 = [v56 copy];
  [v119 setAmounts:v77];

  v78 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v79 = [v120 PKArrayForKey:@"plans"];
  v80 = v79;
  if (v79)
  {
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v81 = [v79 countByEnumeratingWithState:&v132 objects:v140 count:16];
    if (v81)
    {
      v82 = v81;
      v83 = *v133;
      do
      {
        for (j = 0; j != v82; ++j)
        {
          if (*v133 != v83)
          {
            objc_enumerationMutation(v80);
          }

          v85 = *(*(&v132 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v86 = [[PKTransactionCommutePlanUnit alloc] initWithDictionary:v85];
            v87 = [(PKTransactionCommutePlanUnit *)v86 label];

            if (!v87)
            {
              v88 = [(PKTransactionCommutePlanUnit *)v86 identifier];
              v89 = [v123 objectForKeyedSubscript:v88];

              if (v89)
              {
                [(PKTransactionCommutePlanUnit *)v86 setLabel:v89];
              }
            }

            [v78 safelyAddObject:v86];
          }
        }

        v82 = [v80 countByEnumeratingWithState:&v132 objects:v140 count:16];
      }

      while (v82);
    }
  }

  v90 = [v78 copy];
  [v119 setPlans:v90];

  v91 = [v120 PKStringForKey:@"barcodeIdentifier"];
  [v119 setBarcodeIdentifier:v91];

  v92 = [PKTransactionAuthenticationContext alloc];
  v93 = [v120 PKDictionaryForKey:@"authenticationDetails"];
  v94 = [(PKTransactionAuthenticationContext *)v92 initWithDictionary:v93];
  [v119 setAuthenticationContext:v94];

  v95 = [v120 PKStringForKey:@"primaryFundingSourceDescription"];
  [v119 setPrimaryFundingSourceDescription:v95];

  v96 = [v120 PKDecimalNumberForKey:@"nominalAmount"];
  v97 = v96;
  if (v96)
  {
    v98 = PKCurrencyDecimalAmountRound(v96);
    [v119 setNominalAmount:v98];
  }

  [v119 setHasAdditionalOffers:{objc_msgSend(v120, "PKBoolForKey:", @"hasAdditionalOffers"}];
  v99 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v100 = [v120 PKArrayForKey:@"awards"];
  if (v100)
  {
    v130[0] = MEMORY[0x1E69E9820];
    v130[1] = 3221225472;
    v130[2] = __149__PKPaymentTransaction_paymentTransactionWithSource_dictionary_unitDictionary_balanceLabelDictionary_planLabelDictionary_hasNotificationServiceData___block_invoke;
    v130[3] = &unk_1E79DBD50;
    v101 = v99;
    v131 = v101;
    [v100 enumerateObjectsUsingBlock:v130];
    v102 = [v101 copy];
    [v119 setAwards:v102];
  }

  v103 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v104 = [v120 PKArrayForKey:@"amountModifiers"];
  if (v104)
  {
    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = __149__PKPaymentTransaction_paymentTransactionWithSource_dictionary_unitDictionary_balanceLabelDictionary_planLabelDictionary_hasNotificationServiceData___block_invoke_2;
    v128[3] = &unk_1E79DBD50;
    v105 = v103;
    v129 = v105;
    [v104 enumerateObjectsUsingBlock:v128];
    v106 = [v105 copy];
    [v119 setAmountModifiers:v106];
  }

  return v119;
}

void __149__PKPaymentTransaction_paymentTransactionWithSource_dictionary_unitDictionary_balanceLabelDictionary_planLabelDictionary_hasNotificationServiceData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKPaymentTransactionAward alloc] initWithDictionary:v3];

  [*(a1 + 32) safelyAddObject:v4];
}

void __149__PKPaymentTransaction_paymentTransactionWithSource_dictionary_unitDictionary_balanceLabelDictionary_planLabelDictionary_hasNotificationServiceData___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKPaymentTransactionAmountModifier alloc] initWithDictionary:v3];

  [*(a1 + 32) safelyAddObject:v4];
}

- (PKPaymentTransaction)init
{
  v7.receiver = self;
  v7.super_class = PKPaymentTransaction;
  v2 = [(PKPaymentTransaction *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v4;
  }

  return v2;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  [v3 setObject:self->_serviceIdentifier forKeyedSubscript:@"serviceIdentifier"];
  [v3 setObject:self->_paymentHash forKeyedSubscript:@"paymentHash"];
  v4 = [(NSDecimalNumber *)self->_amount stringValue];
  [v3 setObject:v4 forKeyedSubscript:@"amount"];

  v5 = [(NSDecimalNumber *)self->_subtotalAmount stringValue];
  [v3 setObject:v5 forKeyedSubscript:@"subtotalAmount"];

  v6 = [(NSDecimalNumber *)self->_amountAddedToAuth stringValue];
  [v3 setObject:v6 forKeyedSubscript:@"amountAddedToAuth"];

  [v3 setObject:self->_currencyCode forKeyedSubscript:@"currencyCode"];
  v7 = [(NSArray *)self->_amounts pk_arrayByApplyingBlock:&__block_literal_global_211];
  [v3 setObject:v7 forKeyedSubscript:@"amounts"];

  v8 = [(NSArray *)self->_plans pk_arrayByApplyingBlock:&__block_literal_global_977];
  [v3 setObject:v8 forKeyedSubscript:@"plans"];

  transactionDate = self->_transactionDate;
  if (transactionDate)
  {
    v10 = PKW3CDateStringFromDate(transactionDate);
    [v3 setObject:v10 forKeyedSubscript:@"transactionDate"];
  }

  transactionStatusChangedDate = self->_transactionStatusChangedDate;
  if (transactionStatusChangedDate)
  {
    v12 = PKW3CDateStringFromDate(transactionStatusChangedDate);
    [v3 setObject:v12 forKeyedSubscript:@"transactionStatusChangedDate"];
  }

  v13 = PKW3CDateStringFromDate(self->_expirationDate);
  [v3 setObject:v13 forKeyedSubscript:@"expirationDate"];

  v14 = [(PKMerchant *)self->_merchant jsonDictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"merchant"];

  if (self->_transitType)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v3 setObject:v15 forKeyedSubscript:@"transitType"];
  }

  if (self->_transitModifiers)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [v3 setObject:v16 forKeyedSubscript:@"transitModifiers"];
  }

  if (self->_enRoute)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v3 setObject:v17 forKeyedSubscript:@"enRoute"];
  }

  if (self->_shouldSuppressDate)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v3 setObject:v18 forKeyedSubscript:@"shouldSuppressDate"];
  }

  [v3 setObject:self->_stationCodeProvider forKeyedSubscript:@"stationCodeProvider"];
  v19 = [(NSData *)self->_startStationCode hexEncoding];
  [v3 setObject:v19 forKeyedSubscript:@"startStationCode"];

  [v3 setObject:self->_startStation forKeyedSubscript:@"startStation"];
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startStationLatitude];
  [v3 setObject:v20 forKeyedSubscript:@"startStationLatitude"];

  v21 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startStationLongitude];
  [v3 setObject:v21 forKeyedSubscript:@"startStationLongitude"];

  v22 = [(NSData *)self->_endStationCode hexEncoding];
  [v3 setObject:v22 forKeyedSubscript:@"endStationCode"];

  [v3 setObject:self->_endStation forKeyedSubscript:@"endStation"];
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endStationLatitude];
  [v3 setObject:v23 forKeyedSubscript:@"endStationLatitude"];

  v24 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endStationLongitude];
  [v3 setObject:v24 forKeyedSubscript:@"endStationLongitude"];

  [v3 setObject:self->_cityCode forKeyedSubscript:@"cityCode"];
  switch(self->_adjustmentType)
  {
    case 0:
      v25 = v3;
      v26 = 0;
      goto LABEL_37;
    case 1:
      v26 = @"provisionalDispute";
      goto LABEL_36;
    case 2:
      v26 = @"provisionalDisputeReversal";
      goto LABEL_36;
    case 3:
      v26 = @"disputeFinal";
      goto LABEL_36;
    case 4:
      v26 = @"chargebackCredit";
      goto LABEL_36;
    case 5:
      v26 = @"merchantAdjustment";
      goto LABEL_36;
    case 6:
      v26 = @"balanceWriteoff";
      goto LABEL_36;
    case 7:
      v26 = @"courtesy";
      goto LABEL_36;
    case 8:
      v26 = @"forfeiture";
      goto LABEL_36;
    case 9:
      v26 = @"withdrawalReversal";
      goto LABEL_36;
    case 0xALL:
      v26 = @"checkIssued";
      goto LABEL_36;
    case 0xBLL:
      v26 = @"feeReversal";
      goto LABEL_36;
    case 0xCLL:
      v26 = @"interestReversal";
      goto LABEL_36;
    case 0xDLL:
      v26 = @"credit";
      goto LABEL_36;
    case 0xELL:
      v26 = @"creditReversal";
      goto LABEL_36;
    case 0xFLL:
      v26 = @"refund";
      goto LABEL_36;
    case 0x10:
      v26 = @"refundReversal";
      goto LABEL_36;
    case 0x11:
      v26 = @"other";
      goto LABEL_36;
    case 0x12:
      v26 = @"debitReversal";
      goto LABEL_36;
    case 0x13:
      v26 = @"redemptionReversal";
      goto LABEL_36;
    case 0x14:
      v26 = @"debit";
      goto LABEL_36;
    default:
      v26 = @"unknown";
LABEL_36:
      v25 = v3;
LABEL_37:
      [v25 setObject:v26 forKeyedSubscript:@"adjustmentType"];
      accountType = self->_accountType;
      v28 = @"unknown";
      if (accountType <= 4)
      {
        v28 = off_1E79E1C18[accountType];
      }

      [v3 setObject:v28 forKeyedSubscript:@"accountType"];
      peerPaymentType = self->_peerPaymentType;
      if (peerPaymentType)
      {
        v30 = PKPaymentTransactionPeerPaymentSubtypeToString(peerPaymentType);
        [v3 setObject:v30 forKeyedSubscript:@"peerPaymentType"];
      }

      else
      {
        [v3 setObject:0 forKeyedSubscript:@"peerPaymentType"];
      }

      [v3 setObject:self->_peerPaymentCounterpartHandle forKeyedSubscript:@"peerPaymentCounterpartHandle"];
      [v3 setObject:self->_peerPaymentMemo forKeyedSubscript:@"peerPaymentMemo"];
      v31 = PKW3CDateStringFromDate(self->_peerPaymentMessageReceivedDate);
      [v3 setObject:v31 forKeyedSubscript:@"peerPaymentMessageReceivedDate"];

      v32 = [(PKPaymentTransactionForeignExchangeInformation *)self->_foreignExchangeInformation jsonDictionaryRepresentation];
      [v3 setObject:v32 forKeyedSubscript:@"foreignExchangeInformation"];

      v33 = [(PKPaymentTransactionFees *)self->_fees jsonArrayRepresentation];
      [v3 setObject:v33 forKeyedSubscript:@"fees"];

      v34 = [(NSDecimalNumber *)self->_primaryFundingSourceAmount stringValue];
      [v3 setObject:v34 forKeyedSubscript:@"primaryFundingSourceAmount"];

      [v3 setObject:self->_primaryFundingSourceCurrencyCode forKeyedSubscript:@"primaryFundingSourceCurrencyCode"];
      v35 = [(NSDecimalNumber *)self->_secondaryFundingSourceAmount stringValue];
      [v3 setObject:v35 forKeyedSubscript:@"secondaryFundingSourceAmount"];

      [v3 setObject:self->_secondaryFundingSourceCurrencyCode forKeyedSubscript:@"secondaryFundingSourceCurrencyCode"];
      v36 = PKPaymentNetworkNameForPaymentCredentialType(self->_secondaryFundingSourceNetwork);
      [v3 setObject:v36 forKeyedSubscript:@"secondaryFundingSourceNetwork"];

      [v3 setObject:self->_secondaryFundingSourceDPANSuffix forKeyedSubscript:@"secondaryFundingSourceDPANSuffix"];
      [v3 setObject:self->_secondaryFundingSourceFPANIdentifier forKeyedSubscript:@"secondaryFundingSourceFPANIdentifier"];
      [v3 setObject:self->_secondaryFundingSourceDescription forKeyedSubscript:@"secondaryFundingSourceDescription"];
      secondaryFundingSourceType = self->_secondaryFundingSourceType;
      v38 = @"bankAccount";
      if (secondaryFundingSourceType == 2)
      {
        v38 = @"debit";
      }

      if (secondaryFundingSourceType)
      {
        v39 = v38;
      }

      else
      {
        v39 = @"unknown";
      }

      [v3 setObject:v39 forKeyedSubscript:@"secondaryFundingSourceType"];
      v40 = [(NSUUID *)self->_requestDeviceScoreIdentifier UUIDString];
      [v3 setObject:v40 forKeyedSubscript:@"requestDeviceScoreIdentifier"];

      v41 = [(NSUUID *)self->_sendDeviceScoreIdentifier UUIDString];
      [v3 setObject:v41 forKeyedSubscript:@"sendDeviceScoreIdentifier"];

      if (self->_deviceScoreIdentifiersRequired)
      {
        v42 = [MEMORY[0x1E696AD98] numberWithBool:1];
        [v3 setObject:v42 forKeyedSubscript:@"deviceScoreIdentifiersRequired"];
      }

      if (self->_deviceScoreIdentifiersSubmitted)
      {
        v43 = [MEMORY[0x1E696AD98] numberWithBool:1];
        [v3 setObject:v43 forKeyedSubscript:@"deviceScoreIdentifiersSubmitted"];
      }

      [v3 setObject:self->_merchantProvidedDescription forKeyedSubscript:@"merchantProvidedDescription"];
      [v3 setObject:self->_merchantProvidedTitle forKeyedSubscript:@"merchantProvidedTitle"];
      [v3 setObject:self->_metadata forKeyedSubscript:@"metadata"];
      v44 = [MEMORY[0x1E696AD98] numberWithBool:self->_processedForLocation];
      [v3 setObject:v44 forKeyedSubscript:@"processedForLocation"];

      v45 = [MEMORY[0x1E696AD98] numberWithBool:self->_processedForMerchantCleanup];
      [v3 setObject:v45 forKeyedSubscript:@"processedForMerchantCleanup"];

      v46 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiresMerchantReprocessing];
      [v3 setObject:v46 forKeyedSubscript:@"requiresMerchantReprocessing"];

      v47 = PKW3CDateStringFromDate(self->_lastMerchantReprocessingDate);
      [v3 setObject:v47 forKeyedSubscript:@"lastMerchantReprocessingDate"];

      v48 = [MEMORY[0x1E696AD98] numberWithBool:self->_processedForStations];
      [v3 setObject:v48 forKeyedSubscript:@"processedForStations"];

      v49 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasAssociatedPaymentApplication];
      [v3 setObject:v49 forKeyedSubscript:@"hasAssociatedPaymentApplication"];

      v50 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasNotificationServiceData];
      [v3 setObject:v50 forKeyedSubscript:@"hasNotificationServiceData"];

      v51 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPaymentTransaction hasBackingData](self, "hasBackingData")}];
      [v3 setObject:v51 forKeyedSubscript:@"hasBackingData"];

      v52 = PKPaymentTransactionStatusToString(self->_transactionStatus);
      [v3 setObject:v52 forKeyedSubscript:@"transactionStatus"];

      v53 = PKPaymentTransactionDeclinedReasonToString(self->_transactionDeclinedReason);
      [v3 setObject:v53 forKeyedSubscript:@"transactionDeclinedReason"];

      v54 = PKPaymentTransactionTypeToString(self->_transactionType);
      [v3 setObject:v54 forKeyedSubscript:@"transactionType"];

      if (self->_technologyType)
      {
        v55 = [MEMORY[0x1E696AD98] numberWithInteger:?];
        [v3 setObject:v55 forKeyedSubscript:@"technologyType"];
      }

      if (self->_transactionSource)
      {
        v56 = [(PKPaymentTransaction *)self _transactionSourceString];
        [v3 setObject:v56 forKeyedSubscript:@"transactionSource"];
      }

      v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_updateReasons];
      [v3 setObject:v57 forKeyedSubscript:@"updateReasons"];

      [v3 setObject:self->_localizedTypeDescription forKeyedSubscript:@"localizedTypeDescription"];
      v58 = [MEMORY[0x1E696AD98] numberWithBool:self->_bankConnectRoundTransactionDate];
      [v3 setObject:v58 forKeyedSubscript:@"bankConnectRoundTransactionDate"];

      v59 = PKMerchantCategoryToString(self->_preferredTransactionCategory);
      [v3 setObject:v59 forKeyedSubscript:@"preferredTransactionCategory"];

      if (self->_locationLatitude != 0.0 || self->_locationLongitude != 0.0 || self->_locationDate || self->_administrativeArea || self->_locality || self->_locationHorizontalAccuracy != 0.0 || self->_locationVerticalAccuracy != 0.0 || self->_timeZone)
      {
        v60 = objc_alloc_init(MEMORY[0x1E695DF90]);
        locationDate = self->_locationDate;
        if (locationDate)
        {
          v62 = PKW3CDateStringFromDate(locationDate);
          [v60 setObject:v62 forKeyedSubscript:@"locationDate"];
        }

        v63 = [MEMORY[0x1E696AD98] numberWithDouble:self->_locationLatitude];
        [v60 setObject:v63 forKeyedSubscript:@"locationLatitude"];

        v64 = [MEMORY[0x1E696AD98] numberWithDouble:self->_locationLongitude];
        [v60 setObject:v64 forKeyedSubscript:@"locationLongitude"];

        v65 = [MEMORY[0x1E696AD98] numberWithDouble:self->_locationAltitude];
        [v60 setObject:v65 forKeyedSubscript:@"locationAltitude"];

        v66 = [MEMORY[0x1E696AD98] numberWithDouble:self->_locationHorizontalAccuracy];
        [v60 setObject:v66 forKeyedSubscript:@"locationHorizontalAccuracy"];

        v67 = [MEMORY[0x1E696AD98] numberWithDouble:self->_locationVerticalAccuracy];
        [v60 setObject:v67 forKeyedSubscript:@"locationVerticalAccuracy"];

        [v60 setObject:self->_administrativeArea forKeyedSubscript:@"administrativeArea"];
        [v60 setObject:self->_locality forKeyedSubscript:@"locality"];
        v68 = [(NSTimeZone *)self->_timeZone name];
        [v60 setObject:v68 forKeyedSubscript:@"timeZone"];

        v69 = [MEMORY[0x1E696AD98] numberWithBool:self->_coarseLocation];
        [v60 setObject:v69 forKeyedSubscript:@"isCoarseLocation"];

        v70 = [v60 copy];
        [v3 setObject:v70 forKeyedSubscript:@"location"];
      }

      if (self->_requiresLocation)
      {
        v71 = @"YES";
      }

      else
      {
        v71 = @"NO";
      }

      [v3 setObject:v71 forKeyedSubscript:@"requiresLocation"];
      v72 = [(PKPaymentTransactionRewards *)self->_rewards jsonArrayRepresentation];
      [v3 setObject:v72 forKeyedSubscript:@"rewards"];

      v73 = [(NSDecimalNumber *)self->_rewardsTotalAmount stringValue];
      [v3 setObject:v73 forKeyedSubscript:@"rewardsTotalAmount"];

      [v3 setObject:self->_rewardsTotalCurrencyCode forKeyedSubscript:@"rewardsTotalCurrencyCode"];
      rewardsEligibilityReason = self->_rewardsEligibilityReason;
      if (rewardsEligibilityReason > 2)
      {
        v75 = @"unknown";
      }

      else
      {
        v75 = off_1E79E1B80[rewardsEligibilityReason];
      }

      [v3 setObject:v75 forKeyedSubscript:@"rewardsEligibilityReason"];
      v76 = PKAccountRewardRedemptionTypeToString(self->_redemptionType);
      [v3 setObject:v76 forKeyedSubscript:@"redemptionType"];

      v77 = [(PKPaymentTransactionRewards *)self->_rewardsInProgress jsonArrayRepresentation];
      v78 = v77;
      if (v77)
      {
        v79 = v77;
      }

      else
      {
        v79 = MEMORY[0x1E695E0F0];
      }

      [v3 setObject:v79 forKeyedSubscript:@"rewardsInProgress"];

      v80 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_cardType];
      [v3 setObject:v80 forKeyedSubscript:@"cardType"];

      [v3 setObject:self->_accountIdentifier forKeyedSubscript:@"accountIdentifier"];
      [v3 setObject:self->_altDSID forKeyedSubscript:@"altDSID"];
      v81 = [MEMORY[0x1E696AD98] numberWithBool:self->_originatedByDevice];
      [v3 setObject:v81 forKeyedSubscript:@"originatedByDevice"];

      v82 = [MEMORY[0x1E696AD98] numberWithBool:self->_fuzzyMatched];
      [v3 setObject:v82 forKeyedSubscript:@"isFuzzyMatched"];

      [v3 setObject:self->_receiptProviderIdentifier forKeyedSubscript:@"receiptProviderIdentifier"];
      [v3 setObject:self->_receiptIdentifier forKeyedSubscript:@"receiptIdentifier"];
      v83 = [(NSURL *)self->_receiptProviderURL absoluteString];
      [v3 setObject:v83 forKeyedSubscript:@"receiptProviderURL"];

      [v3 setObject:self->_issueReportIdentifier forKeyedSubscript:@"issueReportIdentifier"];
      [v3 setObject:self->_lifecycleIdentifier forKeyedSubscript:@"lifecycleIdentifier"];
      [v3 setObject:self->_authNetworkData forKeyedSubscript:@"authNetworkData"];
      [v3 setObject:self->_clearingNetworkData forKeyedSubscript:@"clearingNetworkData"];
      v84 = [(NSSet *)self->_questions pk_setByApplyingBlock:&__block_literal_global_1008];
      v85 = [v84 allObjects];
      [v3 setObject:v85 forKeyedSubscript:@"questions"];

      [v3 setObject:self->_cardIdentifier forKeyedSubscript:@"cardIdentifier"];
      [v3 setObject:self->_dpanIdentifier forKeyedSubscript:@"dpanIdentifier"];
      [v3 setObject:self->_panIdentifier forKeyedSubscript:@"panIdentifier"];
      [v3 setObject:self->_isMerchantTokenTransaction forKeyedSubscript:@"isMerchantTokenTransaction"];
      [v3 setObject:self->_cardNumberSuffix forKeyedSubscript:@"cardNumberSuffix"];
      v86 = PKPaymentTransactionAdjustmentSubtypeReasonToString(self->_adjustmentTypeReason);
      [v3 setObject:v86 forKeyedSubscript:@"adjustmentTypeReason"];

      v87 = PKPaymentTransactionTopUpSubtypeToString(self->_topUpType);
      [v3 setObject:v87 forKeyedSubscript:@"topUpType"];

      [v3 setObject:self->_referenceIdentifier forKeyedSubscript:@"referenceIdentifier"];
      v88 = PKFeatureIdentifierToString(self->_associatedFeatureIdentifier);
      [v3 setObject:v88 forKeyedSubscript:@"associatedFeatureIdentifier"];

      v89 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_suppressBehavior];
      [v3 setObject:v89 forKeyedSubscript:@"suppressBehavior"];

      if (self->_suppressNotifications)
      {
        v90 = @"YES";
      }

      else
      {
        v90 = @"NO";
      }

      [v3 setObject:v90 forKeyedSubscript:@"suppressNotifications"];
      if (self->_recurring)
      {
        v91 = @"YES";
      }

      else
      {
        v91 = @"NO";
      }

      [v3 setObject:v91 forKeyedSubscript:@"recurring"];
      [v3 setObject:self->_transactionSourceIdentifier forKeyedSubscript:@"transactionSourceIdentifier"];
      [v3 setObject:self->_barcodeIdentifier forKeyedSubscript:@"barcodeIdentifier"];
      v92 = [(PKTransactionAuthenticationContext *)self->_authenticationContext dictionaryRepresentation];
      [v3 setObject:v92 forKeyedSubscript:@"authenticationContext"];

      [v3 setObject:self->_primaryFundingSourceDescription forKeyedSubscript:@"primaryFundingSourceDescription"];
      v93 = [(NSDecimalNumber *)self->_nominalAmount stringValue];
      [v3 setObject:v93 forKeyedSubscript:@"nominalAmount"];

      v94 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasAdditionalOffers];
      [v3 setObject:v94 forKeyedSubscript:@"hasAdditionalOffers"];

      v95 = [(NSArray *)self->_awards pk_arrayByApplyingBlock:&__block_literal_global_1029];
      [v3 setObject:v95 forKeyedSubscript:@"awards"];

      v96 = [(NSArray *)self->_amountModifiers pk_arrayByApplyingBlock:&__block_literal_global_1032];
      [v3 setObject:v96 forKeyedSubscript:@"amountModifiers"];

      topUpType = self->_topUpType;
      if (topUpType)
      {
        v98 = PKPaymentTransactionTopUpSubtypeToString(topUpType);
        [v3 setObject:v98 forKeyedSubscript:@"topUpType"];
      }

      v99 = [(PKTransactionReleasedData *)self->_releasedData dictionaryRepresentation];
      [v3 setObject:v99 forKeyedSubscript:@"releasedData"];

      v100 = [(NSArray *)self->_transfers pk_arrayByApplyingBlock:&__block_literal_global_1035_0];
      [v3 setObject:v100 forKeyedSubscript:@"transfers"];

      v101 = [(PKPeerPaymentRecurringPayment *)self->_recurringPeerPayment description];
      [v3 setObject:v101 forKeyedSubscript:@"recurringPeerPayment"];

      v102 = [MEMORY[0x1E696AD98] numberWithBool:self->_isIssuerInstallmentTransaction];
      [v3 setObject:v102 forKeyedSubscript:@"isIssuerInstallmentTransaction"];

      issuerInstallmentManagementURL = self->_issuerInstallmentManagementURL;
      if (issuerInstallmentManagementURL)
      {
        v104 = [(NSURL *)issuerInstallmentManagementURL absoluteString];
        [v3 setObject:v104 forKeyedSubscript:@"issuerInstallmentManagementURL"];
      }

      paymentRewardsRedemption = self->_paymentRewardsRedemption;
      if (paymentRewardsRedemption)
      {
        v106 = [(PKPaymentRewardsRedemption *)paymentRewardsRedemption dictionaryRepresentation];
        [v3 setObject:v106 forKeyedSubscript:@"paymentRewardsRedemption"];
      }

      v107 = [MEMORY[0x1E696AD98] numberWithBool:self->_interestReassessment];
      [v3 setObject:v107 forKeyedSubscript:@"interestReassessment"];

      associatedStatementIdentifiers = self->_associatedStatementIdentifiers;
      if (associatedStatementIdentifiers)
      {
        v109 = [(NSArray *)associatedStatementIdentifiers componentsJoinedByString:@", "];
        [v3 setObject:v109 forKeyedSubscript:@"associatedStatementIdentifiers"];
      }

      paymentNetworkIdentifier = self->_paymentNetworkIdentifier;
      if (paymentNetworkIdentifier)
      {
        v111 = PKPaymentNetworkNameForPaymentCredentialType(paymentNetworkIdentifier);
        [v3 setObject:v111 forKeyedSubscript:@"paymentNetworkIdentifier"];
      }

      else
      {
        [v3 setObject:0 forKeyedSubscript:@"paymentNetworkIdentifier"];
      }

      v112 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_peerPaymentPaymentMode];
      [v3 setObject:v112 forKeyedSubscript:@"peerPaymentPaymentMode"];

      [v3 setObject:self->_peerPaymentCounterpartImageRecordIdentifier forKeyedSubscript:@"peerPaymentCounterpartImageRecordIdentifier"];
      [v3 setObject:self->_peerPaymentRequestToken forKeyedSubscript:@"peerPaymentRequestToken"];
      v113 = [v3 copy];

      return v113;
  }
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_serviceIdentifier];
  [v3 safelyAddObject:self->_paymentHash];
  [v3 safelyAddObject:self->_currencyCode];
  [v3 safelyAddObject:self->_amount];
  [v3 safelyAddObject:self->_subtotalAmount];
  [v3 safelyAddObject:self->_amountAddedToAuth];
  [v3 safelyAddObject:self->_amounts];
  [v3 safelyAddObject:self->_plans];
  [v3 safelyAddObject:self->_transactionDate];
  [v3 safelyAddObject:self->_transactionStatusChangedDate];
  [v3 safelyAddObject:self->_expirationDate];
  [v3 safelyAddObject:self->_locationDate];
  [v3 safelyAddObject:self->_merchant];
  [v3 safelyAddObject:self->_locality];
  [v3 safelyAddObject:self->_administrativeArea];
  [v3 safelyAddObject:self->_timeZone];
  [v3 safelyAddObject:self->_startStationCode];
  [v3 safelyAddObject:self->_endStationCode];
  [v3 safelyAddObject:self->_startStation];
  [v3 safelyAddObject:self->_endStation];
  [v3 safelyAddObject:self->_cityCode];
  [v3 safelyAddObject:self->_peerPaymentCounterpartHandle];
  [v3 safelyAddObject:self->_peerPaymentMemo];
  [v3 safelyAddObject:self->_peerPaymentMessageReceivedDate];
  [v3 safelyAddObject:self->_fees];
  [v3 safelyAddObject:self->_foreignExchangeInformation];
  [v3 safelyAddObject:self->_primaryFundingSourceAmount];
  [v3 safelyAddObject:self->_primaryFundingSourceCurrencyCode];
  [v3 safelyAddObject:self->_secondaryFundingSourceAmount];
  [v3 safelyAddObject:self->_secondaryFundingSourceCurrencyCode];
  [v3 safelyAddObject:self->_secondaryFundingSourceDPANSuffix];
  [v3 safelyAddObject:self->_secondaryFundingSourceFPANIdentifier];
  [v3 safelyAddObject:self->_secondaryFundingSourceDescription];
  [v3 safelyAddObject:self->_requestDeviceScoreIdentifier];
  [v3 safelyAddObject:self->_sendDeviceScoreIdentifier];
  [v3 safelyAddObject:self->_merchantProvidedDescription];
  [v3 safelyAddObject:self->_merchantProvidedTitle];
  [v3 safelyAddObject:self->_metadata];
  [v3 safelyAddObject:self->_lastMerchantReprocessingDate];
  [v3 safelyAddObject:self->_issueReportIdentifier];
  [v3 safelyAddObject:self->_rewards];
  [v3 safelyAddObject:self->_rewardsTotalAmount];
  [v3 safelyAddObject:self->_rewardsTotalCurrencyCode];
  [v3 safelyAddObject:self->_rewardsInProgress];
  [v3 safelyAddObject:self->_localizedTypeDescription];
  [v3 safelyAddObject:self->_bankConnectMetadata];
  [v3 safelyAddObject:self->_accountIdentifier];
  [v3 safelyAddObject:self->_altDSID];
  [v3 safelyAddObject:self->_lifecycleIdentifier];
  [v3 safelyAddObject:self->_transactionSourceIdentifier];
  [v3 safelyAddObject:self->_authNetworkData];
  [v3 safelyAddObject:self->_clearingNetworkData];
  [v3 safelyAddObject:self->_questions];
  [v3 safelyAddObject:self->_cardIdentifier];
  [v3 safelyAddObject:self->_dpanIdentifier];
  [v3 safelyAddObject:self->_panIdentifier];
  [v3 safelyAddObject:self->_isMerchantTokenTransaction];
  [v3 safelyAddObject:self->_cardNumberSuffix];
  [v3 safelyAddObject:self->_referenceIdentifier];
  [v3 safelyAddObject:self->_receiptProviderURL];
  [v3 safelyAddObject:self->_receiptProviderIdentifier];
  [v3 safelyAddObject:self->_receiptIdentifier];
  [v3 safelyAddObject:self->_barcodeIdentifier];
  [v3 safelyAddObject:self->_authenticationContext];
  [v3 safelyAddObject:self->_primaryFundingSourceDescription];
  [v3 safelyAddObject:self->_nominalAmount];
  [v3 safelyAddObject:self->_awards];
  [v3 safelyAddObject:self->_amountModifiers];
  [v3 safelyAddObject:self->_releasedData];
  [v3 safelyAddObject:self->_issuerInstallmentManagementURL];
  [v3 safelyAddObject:self->_paymentRewardsRedemption];
  [v3 safelyAddObject:self->_associatedStatementIdentifiers];
  [v3 safelyAddObject:self->_peerPaymentCounterpartImageRecordIdentifier];
  [v3 safelyAddObject:self->_peerPaymentRequestToken];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_transactionType - v4 + 32 * v4;
  v6 = self->_transactionSource - v5 + 32 * v5;
  v7 = self->_transactionStatus - v6 + 32 * v6;
  v8 = self->_transactionDeclinedReason - v7 + 32 * v7;
  v9 = self->_technologyType - v8 + 32 * v8;
  v10 = self->_hasAssociatedPaymentApplication - v9 + 32 * v9;
  v11 = self->_processedForLocation - v10 + 32 * v10;
  v12 = self->_processedForStations - v11 + 32 * v11;
  v13 = self->_processedForMerchantCleanup - v12 + 32 * v12;
  v14 = self->_requiresMerchantReprocessing - v13 + 32 * v13;
  v15 = self->_locationLatitude - v14 + 32 * v14;
  v16 = self->_locationLongitude - v15 + 32 * v15;
  v17 = self->_locationAltitude - v16 + 32 * v16;
  v18 = self->_locationHorizontalAccuracy - v17 + 32 * v17;
  v19 = self->_locationVerticalAccuracy - v18 + 32 * v18;
  v20 = self->_coarseLocation - v19 + 32 * v19;
  v21 = self->_transitType - v20 + 32 * v20;
  v22 = self->_transitModifiers - v21 + 32 * v21;
  v23 = self->_enRoute - v22 + 32 * v22;
  v24 = self->_peerPaymentType - v23 + 32 * v23;
  v25 = self->_secondaryFundingSourceNetwork - v24 + 32 * v24;
  v26 = self->_deviceScoreIdentifiersRequired - v25 + 32 * v25;
  v27 = self->_deviceScoreIdentifiersSubmitted - v26 + 32 * v26;
  v28 = self->_originatedByDevice - v27 + 32 * v27;
  v29 = self->_fuzzyMatched - v28 + 32 * v28;
  v30 = self->_secondaryFundingSourceType - v29 + 32 * v29;
  v31 = self->_cardType - v30 + 32 * v30;
  v32 = self->_rewardsEligibilityReason - v31 + 32 * v31;
  v33 = self->_adjustmentTypeReason - v32 + 32 * v32;
  v34 = self->_topUpType - v33 + 32 * v33;
  v35 = self->_suppressBehavior - v34 + 32 * v34;
  v36 = self->_accountType - v35 + 32 * v35;
  v37 = self->_associatedFeatureIdentifier - v36 + 32 * v36;
  v38 = self->_hasAdditionalOffers - v37 + 32 * v37;
  v39 = self->_recurring - v38 + 32 * v38;
  v40 = self->_preferredTransactionCategory - v39 + 32 * v39;
  v41 = self->_bankConnectRoundTransactionDate - v40 + 32 * v40;
  v42 = self->_interestReassessment - v41 + 32 * v41;
  v43 = self->_paymentNetworkIdentifier - v42 + 32 * v42;
  v44 = self->_isIssuerInstallmentTransaction - v43 + 32 * v43;
  v45 = self->_peerPaymentPaymentMode - v44 + 32 * v44;

  return v45;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentTransaction *)self isEqualToPaymentTransaction:v5];
  }

  return v6;
}

- (BOOL)isEqualToPaymentTransaction:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v6 = v4[4];
  if (identifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (identifier != v6)
    {
      goto LABEL_312;
    }
  }

  else
  {
    v8 = [(NSString *)identifier isEqual:?];
    if ((v8 & 1) == 0)
    {
      goto LABEL_312;
    }
  }

  serviceIdentifier = self->_serviceIdentifier;
  v10 = v4[5];
  if (serviceIdentifier && v10)
  {
    if (([(NSString *)serviceIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (serviceIdentifier != v10)
  {
    goto LABEL_312;
  }

  paymentHash = self->_paymentHash;
  v12 = v4[6];
  if (paymentHash && v12)
  {
    if (([(NSString *)paymentHash isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (paymentHash != v12)
  {
    goto LABEL_312;
  }

  amount = self->_amount;
  v14 = v4[7];
  if (amount && v14)
  {
    if (([(NSDecimalNumber *)amount isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (amount != v14)
  {
    goto LABEL_312;
  }

  subtotalAmount = self->_subtotalAmount;
  v16 = v4[8];
  if (subtotalAmount && v16)
  {
    if (([(NSDecimalNumber *)subtotalAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (subtotalAmount != v16)
  {
    goto LABEL_312;
  }

  amountAddedToAuth = self->_amountAddedToAuth;
  v18 = v4[10];
  if (amountAddedToAuth && v18)
  {
    if (([(NSDecimalNumber *)amountAddedToAuth isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (amountAddedToAuth != v18)
  {
    goto LABEL_312;
  }

  amounts = self->_amounts;
  v20 = v4[11];
  if (amounts && v20)
  {
    if (([(NSArray *)amounts isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (amounts != v20)
  {
    goto LABEL_312;
  }

  plans = self->_plans;
  v22 = v4[12];
  if (plans && v22)
  {
    if (([(NSArray *)plans isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (plans != v22)
  {
    goto LABEL_312;
  }

  currencyCode = self->_currencyCode;
  v24 = v4[9];
  if (currencyCode && v24)
  {
    if (([(NSString *)currencyCode isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (currencyCode != v24)
  {
    goto LABEL_312;
  }

  transactionDate = self->_transactionDate;
  v26 = v4[13];
  if (transactionDate && v26)
  {
    if (([(NSDate *)transactionDate isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (transactionDate != v26)
  {
    goto LABEL_312;
  }

  transactionStatusChangedDate = self->_transactionStatusChangedDate;
  v28 = v4[14];
  if (transactionStatusChangedDate && v28)
  {
    if (([(NSDate *)transactionStatusChangedDate isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (transactionStatusChangedDate != v28)
  {
    goto LABEL_312;
  }

  expirationDate = self->_expirationDate;
  v30 = v4[15];
  if (expirationDate && v30)
  {
    if (([(NSDate *)expirationDate isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (expirationDate != v30)
  {
    goto LABEL_312;
  }

  merchant = self->_merchant;
  v32 = v4[16];
  if (merchant && v32)
  {
    if (![(PKMerchant *)merchant isEqual:?])
    {
      goto LABEL_312;
    }
  }

  else if (merchant != v32)
  {
    goto LABEL_312;
  }

  if (self->_transactionStatus != v4[109] || self->_transactionDeclinedReason != v4[113] || self->_transactionType != v4[110] || self->_hasNotificationServiceData != *(v4 + 20) || self->_processedForStations != *(v4 + 18) || self->_transitType != v4[26] || self->_transitModifiers != v4[27] || self->_enRoute != *(v4 + 9) || self->_shouldSuppressDate != *(v4 + 10))
  {
    goto LABEL_312;
  }

  startStationCode = self->_startStationCode;
  v34 = v4[30];
  if (startStationCode && v34)
  {
    if (([(NSData *)startStationCode isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (startStationCode != v34)
  {
    goto LABEL_312;
  }

  endStationCode = self->_endStationCode;
  v36 = v4[34];
  if (endStationCode && v36)
  {
    if (([(NSData *)endStationCode isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (endStationCode != v36)
  {
    goto LABEL_312;
  }

  startStation = self->_startStation;
  v38 = v4[31];
  if (startStation && v38)
  {
    if (([(NSString *)startStation isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (startStation != v38)
  {
    goto LABEL_312;
  }

  endStation = self->_endStation;
  v40 = v4[35];
  if (endStation && v40)
  {
    if (([(NSString *)endStation isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (endStation != v40)
  {
    goto LABEL_312;
  }

  cityCode = self->_cityCode;
  v42 = v4[29];
  if (cityCode && v42)
  {
    if (([(NSNumber *)cityCode isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (cityCode != v42)
  {
    goto LABEL_312;
  }

  if (self->_peerPaymentType != v4[41])
  {
    goto LABEL_312;
  }

  peerPaymentCounterpartHandle = self->_peerPaymentCounterpartHandle;
  v44 = v4[43];
  if (peerPaymentCounterpartHandle && v44)
  {
    if (([(NSString *)peerPaymentCounterpartHandle isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (peerPaymentCounterpartHandle != v44)
  {
    goto LABEL_312;
  }

  peerPaymentMessageReceivedDate = self->_peerPaymentMessageReceivedDate;
  v46 = v4[45];
  if (peerPaymentMessageReceivedDate && v46)
  {
    if (([(NSDate *)peerPaymentMessageReceivedDate isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (peerPaymentMessageReceivedDate != v46)
  {
    goto LABEL_312;
  }

  foreignExchangeInformation = self->_foreignExchangeInformation;
  v48 = v4[47];
  if (foreignExchangeInformation && v48)
  {
    if (![(PKPaymentTransactionForeignExchangeInformation *)foreignExchangeInformation isEqual:?])
    {
      goto LABEL_312;
    }
  }

  else if (foreignExchangeInformation != v48)
  {
    goto LABEL_312;
  }

  fees = self->_fees;
  v50 = v4[48];
  if (fees && v50)
  {
    if (![(PKPaymentTransactionFees *)fees isEqual:?])
    {
      goto LABEL_312;
    }
  }

  else if (fees != v50)
  {
    goto LABEL_312;
  }

  primaryFundingSourceAmount = self->_primaryFundingSourceAmount;
  v52 = v4[52];
  if (primaryFundingSourceAmount && v52)
  {
    if (([(NSDecimalNumber *)primaryFundingSourceAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (primaryFundingSourceAmount != v52)
  {
    goto LABEL_312;
  }

  primaryFundingSourceCurrencyCode = self->_primaryFundingSourceCurrencyCode;
  v54 = v4[53];
  if (primaryFundingSourceCurrencyCode && v54)
  {
    if (([(NSString *)primaryFundingSourceCurrencyCode isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (primaryFundingSourceCurrencyCode != v54)
  {
    goto LABEL_312;
  }

  secondaryFundingSourceAmount = self->_secondaryFundingSourceAmount;
  v56 = v4[54];
  if (secondaryFundingSourceAmount && v56)
  {
    if (([(NSDecimalNumber *)secondaryFundingSourceAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (secondaryFundingSourceAmount != v56)
  {
    goto LABEL_312;
  }

  secondaryFundingSourceCurrencyCode = self->_secondaryFundingSourceCurrencyCode;
  v58 = v4[55];
  if (secondaryFundingSourceCurrencyCode && v58)
  {
    if (([(NSString *)secondaryFundingSourceCurrencyCode isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (secondaryFundingSourceCurrencyCode != v58)
  {
    goto LABEL_312;
  }

  if (self->_secondaryFundingSourceNetwork != v4[56])
  {
    goto LABEL_312;
  }

  secondaryFundingSourceDPANSuffix = self->_secondaryFundingSourceDPANSuffix;
  v60 = v4[57];
  if (secondaryFundingSourceDPANSuffix && v60)
  {
    if (([(NSString *)secondaryFundingSourceDPANSuffix isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (secondaryFundingSourceDPANSuffix != v60)
  {
    goto LABEL_312;
  }

  merchantProvidedDescription = self->_merchantProvidedDescription;
  v62 = v4[64];
  if (merchantProvidedDescription && v62)
  {
    if (([(NSString *)merchantProvidedDescription isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (merchantProvidedDescription != v62)
  {
    goto LABEL_312;
  }

  merchantProvidedTitle = self->_merchantProvidedTitle;
  v64 = v4[63];
  if (merchantProvidedTitle && v64)
  {
    if (([(NSString *)merchantProvidedTitle isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (merchantProvidedTitle != v64)
  {
    goto LABEL_312;
  }

  if (self->_originatedByDevice != *(v4 + 21) || self->_fuzzyMatched != *(v4 + 22))
  {
    goto LABEL_312;
  }

  v65 = v4[99];
  v66 = self->_receiptProviderIdentifier;
  v67 = v65;
  v68 = v67;
  if (v66 == v67)
  {
  }

  else
  {
    if (!v66 || !v67)
    {
      goto LABEL_311;
    }

    v69 = [(NSString *)v66 isEqualToString:v67];

    if (!v69)
    {
      goto LABEL_312;
    }
  }

  v70 = v4[100];
  v66 = self->_receiptIdentifier;
  v71 = v70;
  v68 = v71;
  if (v66 == v71)
  {
  }

  else
  {
    if (!v66 || !v71)
    {
      goto LABEL_311;
    }

    v72 = [(NSString *)v66 isEqualToString:v71];

    if (!v72)
    {
      goto LABEL_312;
    }
  }

  receiptProviderURL = self->_receiptProviderURL;
  v74 = v4[101];
  if (receiptProviderURL && v74)
  {
    if (([(NSURL *)receiptProviderURL isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (receiptProviderURL != v74)
  {
    goto LABEL_312;
  }

  localizedTypeDescription = self->_localizedTypeDescription;
  v76 = v4[49];
  if (localizedTypeDescription && v76)
  {
    if (([(NSString *)localizedTypeDescription isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (localizedTypeDescription != v76)
  {
    goto LABEL_312;
  }

  if (self->_bankConnectRoundTransactionDate != *(v4 + 12))
  {
    goto LABEL_312;
  }

  bankConnectMetadata = self->_bankConnectMetadata;
  v78 = v4[50];
  if (bankConnectMetadata && v78)
  {
    if (![(PKPaymentTransactionBankConnectMetadata *)bankConnectMetadata isEqual:?])
    {
      goto LABEL_312;
    }
  }

  else if (bankConnectMetadata != v78)
  {
    goto LABEL_312;
  }

  if (self->_preferredTransactionCategory != v4[51])
  {
    goto LABEL_312;
  }

  issueReportIdentifier = self->_issueReportIdentifier;
  v80 = v4[108];
  if (issueReportIdentifier && v80)
  {
    if (([(NSString *)issueReportIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (issueReportIdentifier != v80)
  {
    goto LABEL_312;
  }

  rewards = self->_rewards;
  v82 = v4[68];
  if (rewards && v82)
  {
    if (![(PKPaymentTransactionRewards *)rewards isEqual:?])
    {
      goto LABEL_312;
    }
  }

  else if (rewards != v82)
  {
    goto LABEL_312;
  }

  rewardsTotalAmount = self->_rewardsTotalAmount;
  v84 = v4[65];
  if (rewardsTotalAmount && v84)
  {
    if (([(NSDecimalNumber *)rewardsTotalAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (rewardsTotalAmount != v84)
  {
    goto LABEL_312;
  }

  rewardsTotalCurrencyCode = self->_rewardsTotalCurrencyCode;
  v86 = v4[66];
  if (rewardsTotalCurrencyCode && v86)
  {
    if (([(NSString *)rewardsTotalCurrencyCode isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (rewardsTotalCurrencyCode != v86)
  {
    goto LABEL_312;
  }

  if (self->_rewardsEligibilityReason != v4[67])
  {
    goto LABEL_312;
  }

  rewardsInProgress = self->_rewardsInProgress;
  v88 = v4[69];
  if (rewardsInProgress && v88)
  {
    if (![(PKPaymentTransactionRewards *)rewardsInProgress isEqual:?])
    {
      goto LABEL_312;
    }
  }

  else if (rewardsInProgress != v88)
  {
    goto LABEL_312;
  }

  if (self->_cardType != v4[70])
  {
    goto LABEL_312;
  }

  accountIdentifier = self->_accountIdentifier;
  v90 = v4[71];
  if (accountIdentifier && v90)
  {
    if (([(NSString *)accountIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (accountIdentifier != v90)
  {
    goto LABEL_312;
  }

  altDSID = self->_altDSID;
  v92 = v4[72];
  if (altDSID && v92)
  {
    if (([(NSString *)altDSID isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (altDSID != v92)
  {
    goto LABEL_312;
  }

  lifecycleIdentifier = self->_lifecycleIdentifier;
  v94 = v4[73];
  if (lifecycleIdentifier && v94)
  {
    if (([(NSString *)lifecycleIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (lifecycleIdentifier != v94)
  {
    goto LABEL_312;
  }

  authNetworkData = self->_authNetworkData;
  v96 = v4[74];
  if (authNetworkData && v96)
  {
    if (([(NSString *)authNetworkData isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (authNetworkData != v96)
  {
    goto LABEL_312;
  }

  transactionSourceIdentifier = self->_transactionSourceIdentifier;
  v98 = v4[115];
  if (transactionSourceIdentifier && v98)
  {
    if (([(NSString *)transactionSourceIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (transactionSourceIdentifier != v98)
  {
    goto LABEL_312;
  }

  clearingNetworkData = self->_clearingNetworkData;
  v100 = v4[75];
  if (clearingNetworkData && v100)
  {
    if (([(NSString *)clearingNetworkData isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (clearingNetworkData != v100)
  {
    goto LABEL_312;
  }

  questions = self->_questions;
  v102 = v4[86];
  if (questions && v102)
  {
    if (([(NSSet *)questions isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (questions != v102)
  {
    goto LABEL_312;
  }

  cardIdentifier = self->_cardIdentifier;
  v104 = v4[76];
  if (cardIdentifier && v104)
  {
    if (([(NSString *)cardIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (cardIdentifier != v104)
  {
    goto LABEL_312;
  }

  dpanIdentifier = self->_dpanIdentifier;
  v106 = v4[77];
  if (dpanIdentifier && v106)
  {
    if (([(NSString *)dpanIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (dpanIdentifier != v106)
  {
    goto LABEL_312;
  }

  panIdentifier = self->_panIdentifier;
  v108 = v4[79];
  if (panIdentifier && v108)
  {
    if (([(NSString *)panIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (panIdentifier != v108)
  {
    goto LABEL_312;
  }

  isMerchantTokenTransaction = self->_isMerchantTokenTransaction;
  v110 = v4[80];
  if (isMerchantTokenTransaction && v110)
  {
    if (([(NSNumber *)isMerchantTokenTransaction isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (isMerchantTokenTransaction != v110)
  {
    goto LABEL_312;
  }

  cardNumberSuffix = self->_cardNumberSuffix;
  v112 = v4[81];
  if (cardNumberSuffix && v112)
  {
    if (([(NSString *)cardNumberSuffix isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (cardNumberSuffix != v112)
  {
    goto LABEL_312;
  }

  if (self->_adjustmentTypeReason != v4[39] || self->_topUpType != v4[40])
  {
    goto LABEL_312;
  }

  referenceIdentifier = self->_referenceIdentifier;
  v114 = v4[82];
  if (referenceIdentifier && v114)
  {
    if (([(NSString *)referenceIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (referenceIdentifier != v114)
  {
    goto LABEL_312;
  }

  if (self->_associatedFeatureIdentifier != v4[85] || self->_suppressBehavior != v4[83] || self->_accountType != v4[42] || ![(PKPaymentTransaction *)self isCloudArchivableDeviceDataEqual:v4])
  {
    goto LABEL_312;
  }

  if ([(PKPaymentTransaction *)self _supportsServerFundingDescription])
  {
    secondaryFundingSourceDescription = self->_secondaryFundingSourceDescription;
    v116 = v4[59];
    if (secondaryFundingSourceDescription && v116)
    {
      if (([(NSString *)secondaryFundingSourceDescription isEqual:?]& 1) == 0)
      {
        goto LABEL_312;
      }
    }

    else if (secondaryFundingSourceDescription != v116)
    {
      goto LABEL_312;
    }
  }

  v117 = v4[102];
  v66 = self->_barcodeIdentifier;
  v118 = v117;
  v68 = v118;
  if (v66 == v118)
  {
  }

  else
  {
    if (!v66 || !v118)
    {
      goto LABEL_311;
    }

    v119 = [(NSString *)v66 isEqualToString:v118];

    if (!v119)
    {
      goto LABEL_312;
    }
  }

  authenticationContext = self->_authenticationContext;
  v121 = v4[103];
  if (authenticationContext && v121)
  {
    if (![(PKTransactionAuthenticationContext *)authenticationContext isEqual:?])
    {
      goto LABEL_312;
    }
  }

  else if (authenticationContext != v121)
  {
    goto LABEL_312;
  }

  v122 = v4[104];
  v66 = self->_primaryFundingSourceDescription;
  v123 = v122;
  v68 = v123;
  if (v66 != v123)
  {
    if (v66 && v123)
    {
      v124 = [(NSString *)v66 isEqualToString:v123];

      if (!v124)
      {
        goto LABEL_312;
      }

      goto LABEL_315;
    }

LABEL_311:

    goto LABEL_312;
  }

LABEL_315:
  nominalAmount = self->_nominalAmount;
  v128 = v4[105];
  if (nominalAmount && v128)
  {
    if (([(NSDecimalNumber *)nominalAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_312;
    }
  }

  else if (nominalAmount != v128)
  {
    goto LABEL_312;
  }

  if (self->_hasAdditionalOffers == *(v4 + 24))
  {
    awards = self->_awards;
    v130 = v4[106];
    if (awards && v130)
    {
      if (([(NSArray *)awards isEqual:?]& 1) == 0)
      {
        goto LABEL_312;
      }
    }

    else if (awards != v130)
    {
      goto LABEL_312;
    }

    amountModifiers = self->_amountModifiers;
    v132 = v4[107];
    if (amountModifiers && v132)
    {
      if (([(NSArray *)amountModifiers isEqual:?]& 1) == 0)
      {
        goto LABEL_312;
      }
    }

    else if (amountModifiers != v132)
    {
      goto LABEL_312;
    }

    releasedData = self->_releasedData;
    v134 = v4[116];
    if (releasedData && v134)
    {
      if (![(PKTransactionReleasedData *)releasedData isEqual:?])
      {
        goto LABEL_312;
      }
    }

    else if (releasedData != v134)
    {
      goto LABEL_312;
    }

    issuerInstallmentManagementURL = self->_issuerInstallmentManagementURL;
    v136 = v4[118];
    if (issuerInstallmentManagementURL && v136)
    {
      if (([(NSURL *)issuerInstallmentManagementURL isEqual:?]& 1) == 0)
      {
        goto LABEL_312;
      }
    }

    else if (issuerInstallmentManagementURL != v136)
    {
      goto LABEL_312;
    }

    if (self->_isIssuerInstallmentTransaction == *(v4 + 29))
    {
      paymentRewardsRedemption = self->_paymentRewardsRedemption;
      v138 = v4[119];
      if (paymentRewardsRedemption && v138)
      {
        if (![(PKPaymentRewardsRedemption *)paymentRewardsRedemption isEqual:?])
        {
          goto LABEL_312;
        }
      }

      else if (paymentRewardsRedemption != v138)
      {
        goto LABEL_312;
      }

      if (self->_recurring == *(v4 + 27))
      {
        associatedStatementIdentifiers = self->_associatedStatementIdentifiers;
        v140 = v4[98];
        if (associatedStatementIdentifiers && v140)
        {
          if (([(NSArray *)associatedStatementIdentifiers isEqual:?]& 1) == 0)
          {
            goto LABEL_312;
          }
        }

        else if (associatedStatementIdentifiers != v140)
        {
          goto LABEL_312;
        }

        if (self->_interestReassessment == *(v4 + 23))
        {
          v125 = self->_paymentNetworkIdentifier == v4[78];
          goto LABEL_313;
        }
      }
    }
  }

LABEL_312:
  v125 = 0;
LABEL_313:

  return v125;
}

- (BOOL)isCloudArchivableDeviceDataEqual:(id)a3
{
  v4 = a3;
  locationDate = self->_locationDate;
  v6 = *(v4 + 20);
  if (locationDate)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (locationDate != v6)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v8 = [(NSDate *)locationDate isEqual:?];
    if ((v8 & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  if (self->_locationLatitude != v4[21] || self->_locationLongitude != v4[22] || self->_locationAltitude != v4[23] || self->_locationHorizontalAccuracy != v4[24] || self->_locationVerticalAccuracy != v4[25] || self->_coarseLocation != *(v4 + 8))
  {
    goto LABEL_69;
  }

  locality = self->_locality;
  v10 = *(v4 + 17);
  if (locality && v10)
  {
    if (([(NSString *)locality isEqual:?]& 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (locality != v10)
  {
    goto LABEL_69;
  }

  administrativeArea = self->_administrativeArea;
  v12 = *(v4 + 18);
  if (administrativeArea && v12)
  {
    if (([(NSString *)administrativeArea isEqual:?]& 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (administrativeArea != v12)
  {
    goto LABEL_69;
  }

  timeZone = self->_timeZone;
  v14 = *(v4 + 19);
  if (timeZone && v14)
  {
    if (([(NSTimeZone *)timeZone isEqual:?]& 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else if (timeZone != v14)
  {
    goto LABEL_69;
  }

  if (self->_technologyType == *(v4 + 111))
  {
    secondaryFundingSourceFPANIdentifier = self->_secondaryFundingSourceFPANIdentifier;
    v16 = *(v4 + 58);
    if (secondaryFundingSourceFPANIdentifier && v16)
    {
      if (([(NSString *)secondaryFundingSourceFPANIdentifier isEqual:?]& 1) == 0)
      {
        goto LABEL_69;
      }
    }

    else if (secondaryFundingSourceFPANIdentifier != v16)
    {
      goto LABEL_69;
    }

    if (![(PKPaymentTransaction *)self _supportsServerFundingDescription])
    {
      secondaryFundingSourceDescription = self->_secondaryFundingSourceDescription;
      v20 = *(v4 + 59);
      if (secondaryFundingSourceDescription && v20)
      {
        if (([(NSString *)secondaryFundingSourceDescription isEqual:?]& 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else if (secondaryFundingSourceDescription != v20)
      {
        goto LABEL_69;
      }
    }

    if (self->_transactionSource == *(v4 + 112))
    {
      peerPaymentMemo = self->_peerPaymentMemo;
      v18 = *(v4 + 44);
      if (peerPaymentMemo && v18)
      {
        if (([(NSString *)peerPaymentMemo isEqual:?]& 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else if (peerPaymentMemo != v18)
      {
        goto LABEL_69;
      }

      requestDeviceScoreIdentifier = self->_requestDeviceScoreIdentifier;
      v22 = *(v4 + 61);
      if (requestDeviceScoreIdentifier && v22)
      {
        if (([(NSUUID *)requestDeviceScoreIdentifier isEqual:?]& 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else if (requestDeviceScoreIdentifier != v22)
      {
        goto LABEL_69;
      }

      sendDeviceScoreIdentifier = self->_sendDeviceScoreIdentifier;
      v24 = *(v4 + 62);
      if (sendDeviceScoreIdentifier && v24)
      {
        if (([(NSUUID *)sendDeviceScoreIdentifier isEqual:?]& 1) == 0)
        {
          goto LABEL_69;
        }
      }

      else if (sendDeviceScoreIdentifier != v24)
      {
        goto LABEL_69;
      }

      if (self->_deviceScoreIdentifiersRequired != *(v4 + 13) || self->_deviceScoreIdentifiersSubmitted != *(v4 + 14))
      {
        goto LABEL_69;
      }

      metadata = self->_metadata;
      v26 = *(v4 + 96);
      if (metadata && v26)
      {
        if (([(NSDictionary *)metadata isEqual:?]& 1) != 0)
        {
LABEL_64:
          v27 = [(PKPaymentTransaction *)self answeredQuestionsOnThisDevice];
          v28 = [v4 answeredQuestionsOnThisDevice];
          v29 = v28;
          if (v27 && v28)
          {
            if (([v27 isEqual:v28] & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          else if (v27 != v28)
          {
            goto LABEL_92;
          }

          merchant = self->_merchant;
          v33 = *(v4 + 16);
          if (merchant && v33)
          {
            if (![(PKMerchant *)merchant isEqual:?])
            {
              merchant = self->_merchant;
              v33 = *(v4 + 16);
              goto LABEL_77;
            }
          }

          else if (merchant != v33)
          {
LABEL_77:
            if (![(PKMerchant *)merchant isCloudArchivableDeviceDataEqual:v33])
            {
              goto LABEL_92;
            }
          }

          peerPaymentCounterpartImageRecordIdentifier = self->_peerPaymentCounterpartImageRecordIdentifier;
          v35 = *(v4 + 92);
          if (peerPaymentCounterpartImageRecordIdentifier && v35)
          {
            if (([(NSString *)peerPaymentCounterpartImageRecordIdentifier isEqual:?]& 1) == 0)
            {
              goto LABEL_92;
            }
          }

          else if (peerPaymentCounterpartImageRecordIdentifier != v35)
          {
            goto LABEL_92;
          }

          v36 = *(v4 + 46);
          v37 = self->_peerPaymentRequestToken;
          v38 = v36;
          v39 = v38;
          if (v37 == v38)
          {

            goto LABEL_89;
          }

          if (v37 && v38)
          {
            v40 = [(NSString *)v37 isEqualToString:v38];

            if (!v40)
            {
              goto LABEL_92;
            }

LABEL_89:
            if (_os_feature_enabled_impl())
            {
              v30 = self->_preferredTransactionCategory == *(v4 + 51);
            }

            else
            {
              v30 = 1;
            }

            goto LABEL_93;
          }

LABEL_92:
          v30 = 0;
LABEL_93:

          goto LABEL_70;
        }
      }

      else if (metadata == v26)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_69:
  v30 = 0;
LABEL_70:

  return v30;
}

- (BOOL)hasCloudArchivableDeviceData
{
  if (self->_locationDate || self->_locationLatitude != 0.0 || self->_locationLongitude != 0.0 || self->_locationAltitude != 0.0 || self->_locationHorizontalAccuracy != 0.0 || self->_locationVerticalAccuracy != 0.0 || self->_coarseLocation || self->_locality || self->_administrativeArea || self->_timeZone)
  {
    return 1;
  }

  if (self->_technologyType || self->_secondaryFundingSourceFPANIdentifier || ![(PKPaymentTransaction *)self _supportsServerFundingDescription]&& self->_secondaryFundingSourceDescription || self->_transactionSource || self->_peerPaymentMemo || self->_requestDeviceScoreIdentifier || self->_sendDeviceScoreIdentifier || self->_deviceScoreIdentifiersSubmitted || self->_metadata)
  {
    return 1;
  }

  v3 = [(PKPaymentTransaction *)self answeredQuestionsOnThisDevice];
  if ([v3 count] || -[PKMerchant hasCloudArchivableDeviceData](self->_merchant, "hasCloudArchivableDeviceData") || self->_peerPaymentCounterpartImageRecordIdentifier || self->_peerPaymentRequestToken)
  {
    v4 = 1;
  }

  else if (_os_feature_enabled_impl())
  {
    v4 = self->_preferredTransactionCategory != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PKPaymentTransaction)initWithCoder:(id)a3
{
  v4 = a3;
  v214.receiver = self;
  v214.super_class = PKPaymentTransaction;
  v5 = [(PKPaymentTransaction *)&v214 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtotalAmount"];
    subtotalAmount = v5->_subtotalAmount;
    v5->_subtotalAmount = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amountAddedToAuth"];
    amountAddedToAuth = v5->_amountAddedToAuth;
    v5->_amountAddedToAuth = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceIdentifier"];
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentHash"];
    paymentHash = v5->_paymentHash;
    v5->_paymentHash = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionDate"];
    transactionDate = v5->_transactionDate;
    v5->_transactionDate = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionStatusChangedDate"];
    transactionStatusChangedDate = v5->_transactionStatusChangedDate;
    v5->_transactionStatusChangedDate = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationDate"];
    locationDate = v5->_locationDate;
    v5->_locationDate = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchant"];
    merchant = v5->_merchant;
    v5->_merchant = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locality"];
    locality = v5->_locality;
    v5->_locality = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"administrativeArea"];
    administrativeArea = v5->_administrativeArea;
    v5->_administrativeArea = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v35;

    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [v4 decodeObjectOfClasses:v39 forKey:@"amounts"];
    amounts = v5->_amounts;
    v5->_amounts = v40;

    v42 = MEMORY[0x1E695DFD8];
    v43 = objc_opt_class();
    v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
    v45 = [v4 decodeObjectOfClasses:v44 forKey:@"plans"];
    plans = v5->_plans;
    v5->_plans = v45;

    v5->_suppressNotifications = [v4 decodeBoolForKey:@"blockNotification"];
    v5->_recurring = [v4 decodeBoolForKey:@"recurring"];
    v5->_transactionStatus = [v4 decodeIntegerForKey:@"transactionStatus"];
    v5->_transactionDeclinedReason = [v4 decodeIntegerForKey:@"transactionDeclinedReason"];
    v5->_transactionType = [v4 decodeIntegerForKey:@"transactionType"];
    v5->_technologyType = [v4 decodeIntegerForKey:@"technologyType"];
    v5->_transactionSource = [v4 decodeIntegerForKey:@"transactionSource"];
    v5->_hasNotificationServiceData = [v4 decodeBoolForKey:@"hasNotificationServiceData"];
    v5->_hasAssociatedPaymentApplication = [v4 decodeBoolForKey:@"hasAssociatedPaymentApplication"];
    v5->_processedForLocation = [v4 decodeBoolForKey:@"processedForLocation"];
    v5->_processedForMerchantCleanup = [v4 decodeBoolForKey:@"processedForMerchantCleanup"];
    v5->_requiresMerchantReprocessing = [v4 decodeBoolForKey:@"requiresClearingMerchantCleanup"];
    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastMerchantReprocessingDate"];
    lastMerchantReprocessingDate = v5->_lastMerchantReprocessingDate;
    v5->_lastMerchantReprocessingDate = v47;

    v5->_processedForStations = [v4 decodeBoolForKey:@"processedForStations"];
    [v4 decodeDoubleForKey:@"locationLatitude"];
    v5->_locationLatitude = v49;
    [v4 decodeDoubleForKey:@"locationLongitude"];
    v5->_locationLongitude = v50;
    [v4 decodeDoubleForKey:@"locationAltitude"];
    v5->_locationAltitude = v51;
    [v4 decodeDoubleForKey:@"locationHorizontalAccuracy"];
    v5->_locationHorizontalAccuracy = v52;
    [v4 decodeDoubleForKey:@"locationVerticalAccuracy"];
    v5->_locationVerticalAccuracy = v53;
    v5->_coarseLocation = [v4 decodeBoolForKey:@"isCoarseLocation"];
    v5->_transitType = [v4 decodeIntegerForKey:@"transitType"];
    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transitModifiers"];
    v5->_transitModifiers = [v54 unsignedIntegerValue];

    v5->_enRoute = [v4 decodeBoolForKey:@"enRoute"];
    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stationCodeProvider"];
    stationCodeProvider = v5->_stationCodeProvider;
    v5->_stationCodeProvider = v55;

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cityCode"];
    cityCode = v5->_cityCode;
    v5->_cityCode = v57;

    v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startStationCode"];
    startStationCode = v5->_startStationCode;
    v5->_startStationCode = v59;

    v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startStation"];
    startStation = v5->_startStation;
    v5->_startStation = v61;

    [v4 decodeDoubleForKey:@"startStationLatitude"];
    v5->_startStationLatitude = v63;
    [v4 decodeDoubleForKey:@"startStationLongitude"];
    v5->_startStationLongitude = v64;
    v65 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endStationCode"];
    endStationCode = v5->_endStationCode;
    v5->_endStationCode = v65;

    v67 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endStation"];
    endStation = v5->_endStation;
    v5->_endStation = v67;

    [v4 decodeDoubleForKey:@"endStationLatitude"];
    v5->_endStationLatitude = v69;
    [v4 decodeDoubleForKey:@"ednStationLongitude"];
    v5->_endStationLongitude = v70;
    v5->_shouldSuppressDate = [v4 decodeBoolForKey:@"shouldSuppressDate"];
    v5->_adjustmentType = [v4 decodeIntegerForKey:@"adjustmentType"];
    v5->_peerPaymentType = [v4 decodeIntegerForKey:@"peerPaymentType"];
    v71 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentCounterpartHandle"];
    peerPaymentCounterpartHandle = v5->_peerPaymentCounterpartHandle;
    v5->_peerPaymentCounterpartHandle = v71;

    v73 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentMemo"];
    peerPaymentMemo = v5->_peerPaymentMemo;
    v5->_peerPaymentMemo = v73;

    v75 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentMessageReceivedDate"];
    peerPaymentMessageReceivedDate = v5->_peerPaymentMessageReceivedDate;
    v5->_peerPaymentMessageReceivedDate = v75;

    v5->_accountType = [v4 decodeIntegerForKey:@"feature"];
    v77 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fees"];
    fees = v5->_fees;
    v5->_fees = v77;

    v79 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foreignExchangeInformation"];
    foreignExchangeInformation = v5->_foreignExchangeInformation;
    v5->_foreignExchangeInformation = v79;

    v81 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryFundingSourceAmount"];
    primaryFundingSourceAmount = v5->_primaryFundingSourceAmount;
    v5->_primaryFundingSourceAmount = v81;

    v83 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryFundingSourceCurrencyCode"];
    primaryFundingSourceCurrencyCode = v5->_primaryFundingSourceCurrencyCode;
    v5->_primaryFundingSourceCurrencyCode = v83;

    v85 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryFundingSourceAmount"];
    secondaryFundingSourceAmount = v5->_secondaryFundingSourceAmount;
    v5->_secondaryFundingSourceAmount = v85;

    v87 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryFundingSourceCurrencyCode"];
    secondaryFundingSourceCurrencyCode = v5->_secondaryFundingSourceCurrencyCode;
    v5->_secondaryFundingSourceCurrencyCode = v87;

    v5->_secondaryFundingSourceNetwork = [v4 decodeIntegerForKey:@"secondaryFundingSourceNetwork"];
    v89 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryFundingSourceDPANSuffix"];
    secondaryFundingSourceDPANSuffix = v5->_secondaryFundingSourceDPANSuffix;
    v5->_secondaryFundingSourceDPANSuffix = v89;

    v91 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryFundingSourceFPANIdentifier"];
    secondaryFundingSourceFPANIdentifier = v5->_secondaryFundingSourceFPANIdentifier;
    v5->_secondaryFundingSourceFPANIdentifier = v91;

    v93 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryFundingSourceDescription"];
    secondaryFundingSourceDescription = v5->_secondaryFundingSourceDescription;
    v5->_secondaryFundingSourceDescription = v93;

    v95 = [v4 containsValueForKey:@"secondaryFundingSourceType"];
    if (v5->_transactionType != 5 || v95)
    {
      v96 = [v4 decodeIntegerForKey:@"secondaryFundingSourceType"];
    }

    else
    {
      v96 = 1;
    }

    v5->_secondaryFundingSourceType = v96;
    v97 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestDeviceScoreIdentifier"];
    requestDeviceScoreIdentifier = v5->_requestDeviceScoreIdentifier;
    v5->_requestDeviceScoreIdentifier = v97;

    v99 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sendDeviceScoreIdentifier"];
    sendDeviceScoreIdentifier = v5->_sendDeviceScoreIdentifier;
    v5->_sendDeviceScoreIdentifier = v99;

    v5->_deviceScoreIdentifiersRequired = [v4 decodeBoolForKey:@"deviceScoreIdentifiersRequired"];
    v5->_deviceScoreIdentifiersSubmitted = [v4 decodeBoolForKey:@"deviceScoreIdentifiersSubmitted"];
    v101 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantProvidedDescription"];
    merchantProvidedDescription = v5->_merchantProvidedDescription;
    v5->_merchantProvidedDescription = v101;

    v103 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantProvidedTitle"];
    merchantProvidedTitle = v5->_merchantProvidedTitle;
    v5->_merchantProvidedTitle = v103;

    v105 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewards"];
    rewards = v5->_rewards;
    v5->_rewards = v105;

    v107 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewardsTotalAmount"];
    rewardsTotalAmount = v5->_rewardsTotalAmount;
    v5->_rewardsTotalAmount = v107;

    v109 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewardsTotalCurrencyCode"];
    rewardsTotalCurrencyCode = v5->_rewardsTotalCurrencyCode;
    v5->_rewardsTotalCurrencyCode = v109;

    v5->_redemptionType = [v4 decodeIntegerForKey:@"redemptionType"];
    v111 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewardsInProgress"];
    rewardsInProgress = v5->_rewardsInProgress;
    v5->_rewardsInProgress = v111;

    v5->_cardType = [v4 decodeIntegerForKey:@"cardType"];
    v5->_rewardsEligibilityReason = [v4 decodeIntegerForKey:@"rewardsEligibilityReason"];
    v113 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v113;

    v115 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v115;

    v117 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lifecycleIdentifier"];
    lifecycleIdentifier = v5->_lifecycleIdentifier;
    v5->_lifecycleIdentifier = v117;

    v119 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authNetworkData"];
    authNetworkData = v5->_authNetworkData;
    v5->_authNetworkData = v119;

    v121 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clearingNetworkData"];
    clearingNetworkData = v5->_clearingNetworkData;
    v5->_clearingNetworkData = v121;

    v123 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardIdentifier"];
    cardIdentifier = v5->_cardIdentifier;
    v5->_cardIdentifier = v123;

    v125 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dpanIdentifier"];
    dpanIdentifier = v5->_dpanIdentifier;
    v5->_dpanIdentifier = v125;

    v127 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"panIdentifier"];
    panIdentifier = v5->_panIdentifier;
    v5->_panIdentifier = v127;

    v129 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isMerchantTokenTransaction"];
    isMerchantTokenTransaction = v5->_isMerchantTokenTransaction;
    v5->_isMerchantTokenTransaction = v129;

    v131 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"last4Digits"];
    cardNumberSuffix = v5->_cardNumberSuffix;
    v5->_cardNumberSuffix = v131;

    v5->_adjustmentTypeReason = [v4 decodeIntegerForKey:@"adjustmentTypeReason"];
    v5->_topUpType = [v4 decodeIntegerForKey:@"topUpType"];
    v133 = MEMORY[0x1E695DFD8];
    v134 = objc_opt_class();
    v135 = [v133 setWithObjects:{v134, objc_opt_class(), 0}];
    v136 = [v4 decodeObjectOfClasses:v135 forKey:@"issuerQuestions"];
    questions = v5->_questions;
    v5->_questions = v136;

    v5->_associatedFeatureIdentifier = [v4 decodeIntegerForKey:@"associatedFeatureIdentifier"];
    v138 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"referenceIdentifier"];
    referenceIdentifier = v5->_referenceIdentifier;
    v5->_referenceIdentifier = v138;

    v5->_suppressBehavior = [v4 decodeIntegerForKey:@"supressBehavior"];
    v140 = MEMORY[0x1E695DFD8];
    v141 = objc_opt_class();
    v142 = [v140 setWithObjects:{v141, objc_opt_class(), 0}];
    v143 = [v4 decodeObjectOfClasses:v142 forKey:@"servicingEvents"];
    servicingEvents = v5->_servicingEvents;
    v5->_servicingEvents = v143;

    v145 = MEMORY[0x1E695DFD8];
    v146 = objc_opt_class();
    v147 = [v145 setWithObjects:{v146, objc_opt_class(), 0}];
    v148 = [v4 decodeObjectOfClasses:v147 forKey:@"payments"];
    payments = v5->_payments;
    v5->_payments = v148;

    v150 = MEMORY[0x1E695DFD8];
    v151 = objc_opt_class();
    v152 = [v150 setWithObjects:{v151, objc_opt_class(), 0}];
    v153 = [v4 decodeObjectOfClasses:v152 forKey:@"transfers"];
    transfers = v5->_transfers;
    v5->_transfers = v153;

    v155 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recurringPeerPayment"];
    recurringPeerPayment = v5->_recurringPeerPayment;
    v5->_recurringPeerPayment = v155;

    v157 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v158 = [v4 decodeObjectOfClasses:v157 forKey:@"redemptionEvent"];
    redemptionEvent = v5->_redemptionEvent;
    v5->_redemptionEvent = v158;

    v160 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installmentPayment"];
    installmentPayment = v5->_installmentPayment;
    v5->_installmentPayment = v160;

    v162 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installment"];
    installmentPlan = v5->_installmentPlan;
    v5->_installmentPlan = v162;

    v164 = [v4 decodePropertyListForKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v164;

    v5->_updateReasons = [v4 decodeIntegerForKey:@"updateReasons"];
    v166 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionSourceIdentifier"];
    transactionSourceIdentifier = v5->_transactionSourceIdentifier;
    v5->_transactionSourceIdentifier = v166;

    v5->_originatedByDevice = [v4 decodeBoolForKey:@"originatedByDevice"];
    v5->_fuzzyMatched = [v4 decodeBoolForKey:@"fuzzyMatched"];
    v168 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receiptProviderURL"];
    receiptProviderURL = v5->_receiptProviderURL;
    v5->_receiptProviderURL = v168;

    v170 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receiptProviderIdentifier"];
    receiptProviderIdentifier = v5->_receiptProviderIdentifier;
    v5->_receiptProviderIdentifier = v170;

    v172 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receiptIdentifier"];
    receiptIdentifier = v5->_receiptIdentifier;
    v5->_receiptIdentifier = v172;

    v174 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"issueReportIdentifier"];
    issueReportIdentifier = v5->_issueReportIdentifier;
    v5->_issueReportIdentifier = v174;

    v5->_requiresLocation = [v4 decodeBoolForKey:@"requiresLocation"];
    v176 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTypeDescription"];
    localizedTypeDescription = v5->_localizedTypeDescription;
    v5->_localizedTypeDescription = v176;

    v5->_bankConnectRoundTransactionDate = [v4 decodeBoolForKey:@"bankConnectRoundTransactionDate"];
    v178 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bankConnectMetadata"];
    bankConnectMetadata = v5->_bankConnectMetadata;
    v5->_bankConnectMetadata = v178;

    v5->_preferredTransactionCategory = [v4 decodeIntegerForKey:@"preferredTransactionCategory"];
    v180 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"barcodeIdentifier"];
    barcodeIdentifier = v5->_barcodeIdentifier;
    v5->_barcodeIdentifier = v180;

    v182 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authenticationDetails"];
    authenticationContext = v5->_authenticationContext;
    v5->_authenticationContext = v182;

    v184 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryFundingSourceDescription"];
    primaryFundingSourceDescription = v5->_primaryFundingSourceDescription;
    v5->_primaryFundingSourceDescription = v184;

    v186 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nominalAmount"];
    nominalAmount = v5->_nominalAmount;
    v5->_nominalAmount = v186;

    v5->_hasAdditionalOffers = [v4 decodeBoolForKey:@"hasAdditionalOffers"];
    v188 = MEMORY[0x1E695DFD8];
    v189 = objc_opt_class();
    v190 = [v188 setWithObjects:{v189, objc_opt_class(), 0}];
    v191 = [v4 decodeObjectOfClasses:v190 forKey:@"awards"];
    awards = v5->_awards;
    v5->_awards = v191;

    v193 = MEMORY[0x1E695DFD8];
    v194 = objc_opt_class();
    v195 = [v193 setWithObjects:{v194, objc_opt_class(), 0}];
    v196 = [v4 decodeObjectOfClasses:v195 forKey:@"amountModifiers"];
    amountModifiers = v5->_amountModifiers;
    v5->_amountModifiers = v196;

    v198 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"releasedData"];
    releasedData = v5->_releasedData;
    v5->_releasedData = v198;

    v5->_isIssuerInstallmentTransaction = [v4 decodeBoolForKey:@"isIssuerInstallmentTransaction"];
    v200 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"issuerInstallmentManagementURL"];
    issuerInstallmentManagementURL = v5->_issuerInstallmentManagementURL;
    v5->_issuerInstallmentManagementURL = v200;

    v202 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentRewardsRedemption"];
    paymentRewardsRedemption = v5->_paymentRewardsRedemption;
    v5->_paymentRewardsRedemption = v202;

    v204 = MEMORY[0x1E695DFD8];
    v205 = objc_opt_class();
    v206 = [v204 setWithObjects:{v205, objc_opt_class(), 0}];
    v207 = [v4 decodeObjectOfClasses:v206 forKey:@"associatedStatementIdentifiers"];
    associatedStatementIdentifiers = v5->_associatedStatementIdentifiers;
    v5->_associatedStatementIdentifiers = v207;

    v5->_interestReassessment = [v4 decodeBoolForKey:@"interestReassessment"];
    v5->_paymentNetworkIdentifier = [v4 decodeIntegerForKey:@"paymentNetworkIdentifier"];
    v5->_peerPaymentPaymentMode = [v4 decodeIntegerForKey:@"peerPaymentPaymentMode"];
    v209 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentCounterpartImageRecordIdentifier"];
    peerPaymentCounterpartImageRecordIdentifier = v5->_peerPaymentCounterpartImageRecordIdentifier;
    v5->_peerPaymentCounterpartImageRecordIdentifier = v209;

    v211 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentRequestToken"];
    peerPaymentRequestToken = v5->_peerPaymentRequestToken;
    v5->_peerPaymentRequestToken = v211;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  amount = self->_amount;
  v6 = a3;
  [v6 encodeObject:amount forKey:@"amount"];
  [v6 encodeObject:self->_subtotalAmount forKey:@"subtotalAmount"];
  [v6 encodeObject:self->_amountAddedToAuth forKey:@"amountAddedToAuth"];
  [v6 encodeObject:self->_identifier forKey:@"identifier"];
  [v6 encodeObject:self->_serviceIdentifier forKey:@"serviceIdentifier"];
  [v6 encodeObject:self->_paymentHash forKey:@"paymentHash"];
  [v6 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [v6 encodeObject:self->_amounts forKey:@"amounts"];
  [v6 encodeObject:self->_plans forKey:@"plans"];
  [v6 encodeObject:self->_transactionDate forKey:@"transactionDate"];
  [v6 encodeObject:self->_transactionStatusChangedDate forKey:@"transactionStatusChangedDate"];
  [v6 encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [v6 encodeObject:self->_locationDate forKey:@"locationDate"];
  [v6 encodeObject:self->_merchant forKey:@"merchant"];
  [v6 encodeObject:self->_locality forKey:@"locality"];
  [v6 encodeObject:self->_administrativeArea forKey:@"administrativeArea"];
  [v6 encodeObject:self->_timeZone forKey:@"timeZone"];
  [v6 encodeBool:self->_suppressNotifications forKey:@"blockNotification"];
  [v6 encodeBool:self->_recurring forKey:@"recurring"];
  [v6 encodeInteger:self->_transactionStatus forKey:@"transactionStatus"];
  [v6 encodeInteger:self->_transactionDeclinedReason forKey:@"transactionDeclinedReason"];
  [v6 encodeInteger:self->_transactionType forKey:@"transactionType"];
  [v6 encodeInteger:self->_technologyType forKey:@"technologyType"];
  [v6 encodeInteger:self->_transactionSource forKey:@"transactionSource"];
  [v6 encodeBool:self->_hasNotificationServiceData forKey:@"hasNotificationServiceData"];
  [v6 encodeBool:self->_hasAssociatedPaymentApplication forKey:@"hasAssociatedPaymentApplication"];
  [v6 encodeBool:self->_processedForLocation forKey:@"processedForLocation"];
  [v6 encodeBool:self->_processedForMerchantCleanup forKey:@"processedForMerchantCleanup"];
  [v6 encodeBool:self->_requiresMerchantReprocessing forKey:@"requiresClearingMerchantCleanup"];
  [v6 encodeObject:self->_lastMerchantReprocessingDate forKey:@"lastMerchantReprocessingDate"];
  [v6 encodeBool:self->_processedForStations forKey:@"processedForStations"];
  [v6 encodeDouble:@"locationLatitude" forKey:self->_locationLatitude];
  [v6 encodeDouble:@"locationLongitude" forKey:self->_locationLongitude];
  [v6 encodeDouble:@"locationAltitude" forKey:self->_locationAltitude];
  [v6 encodeDouble:@"locationHorizontalAccuracy" forKey:self->_locationHorizontalAccuracy];
  [v6 encodeDouble:@"locationVerticalAccuracy" forKey:self->_locationVerticalAccuracy];
  [v6 encodeBool:self->_coarseLocation forKey:@"isCoarseLocation"];
  [v6 encodeInteger:self->_transitType forKey:@"transitType"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_transitModifiers];
  [v6 encodeObject:v5 forKey:@"transitModifiers"];

  [v6 encodeBool:self->_enRoute forKey:@"enRoute"];
  [v6 encodeObject:self->_stationCodeProvider forKey:@"stationCodeProvider"];
  [v6 encodeObject:self->_cityCode forKey:@"cityCode"];
  [v6 encodeObject:self->_startStationCode forKey:@"startStationCode"];
  [v6 encodeObject:self->_startStation forKey:@"startStation"];
  [v6 encodeDouble:@"startStationLatitude" forKey:self->_startStationLatitude];
  [v6 encodeDouble:@"startStationLongitude" forKey:self->_startStationLongitude];
  [v6 encodeObject:self->_endStationCode forKey:@"endStationCode"];
  [v6 encodeObject:self->_endStation forKey:@"endStation"];
  [v6 encodeDouble:@"endStationLatitude" forKey:self->_endStationLatitude];
  [v6 encodeDouble:@"ednStationLongitude" forKey:self->_endStationLongitude];
  [v6 encodeBool:self->_shouldSuppressDate forKey:@"shouldSuppressDate"];
  [v6 encodeInteger:self->_adjustmentType forKey:@"adjustmentType"];
  [v6 encodeInteger:self->_accountType forKey:@"feature"];
  [v6 encodeInteger:self->_peerPaymentType forKey:@"peerPaymentType"];
  [v6 encodeObject:self->_peerPaymentCounterpartHandle forKey:@"peerPaymentCounterpartHandle"];
  [v6 encodeObject:self->_peerPaymentMemo forKey:@"peerPaymentMemo"];
  [v6 encodeObject:self->_peerPaymentMessageReceivedDate forKey:@"peerPaymentMessageReceivedDate"];
  [v6 encodeObject:self->_fees forKey:@"fees"];
  [v6 encodeObject:self->_foreignExchangeInformation forKey:@"foreignExchangeInformation"];
  [v6 encodeObject:self->_primaryFundingSourceAmount forKey:@"primaryFundingSourceAmount"];
  [v6 encodeObject:self->_primaryFundingSourceCurrencyCode forKey:@"primaryFundingSourceCurrencyCode"];
  [v6 encodeObject:self->_secondaryFundingSourceAmount forKey:@"secondaryFundingSourceAmount"];
  [v6 encodeObject:self->_secondaryFundingSourceCurrencyCode forKey:@"secondaryFundingSourceCurrencyCode"];
  [v6 encodeInteger:self->_secondaryFundingSourceNetwork forKey:@"secondaryFundingSourceNetwork"];
  [v6 encodeObject:self->_secondaryFundingSourceDPANSuffix forKey:@"secondaryFundingSourceDPANSuffix"];
  [v6 encodeObject:self->_secondaryFundingSourceFPANIdentifier forKey:@"secondaryFundingSourceFPANIdentifier"];
  [v6 encodeObject:self->_secondaryFundingSourceDescription forKey:@"secondaryFundingSourceDescription"];
  [v6 encodeInteger:self->_secondaryFundingSourceType forKey:@"secondaryFundingSourceType"];
  [v6 encodeObject:self->_requestDeviceScoreIdentifier forKey:@"requestDeviceScoreIdentifier"];
  [v6 encodeObject:self->_sendDeviceScoreIdentifier forKey:@"sendDeviceScoreIdentifier"];
  [v6 encodeBool:self->_deviceScoreIdentifiersRequired forKey:@"deviceScoreIdentifiersRequired"];
  [v6 encodeBool:self->_deviceScoreIdentifiersSubmitted forKey:@"deviceScoreIdentifiersSubmitted"];
  [v6 encodeObject:self->_merchantProvidedDescription forKey:@"merchantProvidedDescription"];
  [v6 encodeObject:self->_merchantProvidedTitle forKey:@"merchantProvidedTitle"];
  [v6 encodeObject:self->_rewards forKey:@"rewards"];
  [v6 encodeObject:self->_rewardsTotalAmount forKey:@"rewardsTotalAmount"];
  [v6 encodeObject:self->_rewardsTotalCurrencyCode forKey:@"rewardsTotalCurrencyCode"];
  [v6 encodeInteger:self->_rewardsEligibilityReason forKey:@"rewardsEligibilityReason"];
  [v6 encodeInteger:self->_redemptionType forKey:@"redemptionType"];
  [v6 encodeObject:self->_rewardsInProgress forKey:@"rewardsInProgress"];
  [v6 encodeInteger:self->_cardType forKey:@"cardType"];
  [v6 encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [v6 encodeObject:self->_altDSID forKey:@"altDSID"];
  [v6 encodeObject:self->_lifecycleIdentifier forKey:@"lifecycleIdentifier"];
  [v6 encodeObject:self->_authNetworkData forKey:@"authNetworkData"];
  [v6 encodeObject:self->_clearingNetworkData forKey:@"clearingNetworkData"];
  [v6 encodeObject:self->_cardIdentifier forKey:@"cardIdentifier"];
  [v6 encodeObject:self->_dpanIdentifier forKey:@"dpanIdentifier"];
  [v6 encodeObject:self->_panIdentifier forKey:@"panIdentifier"];
  [v6 encodeObject:self->_isMerchantTokenTransaction forKey:@"isMerchantTokenTransaction"];
  [v6 encodeInteger:self->_preferredTransactionCategory forKey:@"preferredTransactionCategory"];
  [v6 encodeObject:self->_cardNumberSuffix forKey:@"last4Digits"];
  [v6 encodeInteger:self->_adjustmentTypeReason forKey:@"adjustmentTypeReason"];
  [v6 encodeInteger:self->_topUpType forKey:@"topUpType"];
  [v6 encodeObject:self->_questions forKey:@"issuerQuestions"];
  [v6 encodeObject:self->_referenceIdentifier forKey:@"referenceIdentifier"];
  [v6 encodeInteger:self->_associatedFeatureIdentifier forKey:@"associatedFeatureIdentifier"];
  [v6 encodeInteger:self->_suppressBehavior forKey:@"supressBehavior"];
  [v6 encodeObject:self->_servicingEvents forKey:@"servicingEvents"];
  [v6 encodeObject:self->_redemptionEvent forKey:@"redemptionEvent"];
  [v6 encodeObject:self->_payments forKey:@"payments"];
  [v6 encodeObject:self->_transfers forKey:@"transfers"];
  [v6 encodeObject:self->_recurringPeerPayment forKey:@"recurringPeerPayment"];
  [v6 encodeObject:self->_installmentPayment forKey:@"installmentPayment"];
  [v6 encodeObject:self->_installmentPlan forKey:@"installment"];
  [v6 encodeObject:self->_metadata forKey:@"metadata"];
  [v6 encodeInteger:self->_updateReasons forKey:@"updateReasons"];
  [v6 encodeBool:self->_originatedByDevice forKey:@"originatedByDevice"];
  [v6 encodeBool:self->_fuzzyMatched forKey:@"fuzzyMatched"];
  [v6 encodeObject:self->_issueReportIdentifier forKey:@"issueReportIdentifier"];
  [v6 encodeObject:self->_receiptProviderURL forKey:@"receiptProviderURL"];
  [v6 encodeObject:self->_receiptIdentifier forKey:@"receiptIdentifier"];
  [v6 encodeObject:self->_receiptProviderIdentifier forKey:@"receiptProviderIdentifier"];
  [v6 encodeObject:self->_transactionSourceIdentifier forKey:@"transactionSourceIdentifier"];
  [v6 encodeBool:self->_requiresLocation forKey:@"requiresLocation"];
  [v6 encodeObject:self->_localizedTypeDescription forKey:@"localizedTypeDescription"];
  [v6 encodeBool:self->_bankConnectRoundTransactionDate forKey:@"bankConnectRoundTransactionDate"];
  [v6 encodeObject:self->_bankConnectMetadata forKey:@"bankConnectMetadata"];
  [v6 encodeObject:self->_barcodeIdentifier forKey:@"barcodeIdentifier"];
  [v6 encodeObject:self->_authenticationContext forKey:@"authenticationDetails"];
  [v6 encodeObject:self->_primaryFundingSourceDescription forKey:@"primaryFundingSourceDescription"];
  [v6 encodeObject:self->_nominalAmount forKey:@"nominalAmount"];
  [v6 encodeBool:self->_hasAdditionalOffers forKey:@"hasAdditionalOffers"];
  [v6 encodeObject:self->_awards forKey:@"awards"];
  [v6 encodeObject:self->_amountModifiers forKey:@"amountModifiers"];
  [v6 encodeObject:self->_releasedData forKey:@"releasedData"];
  [v6 encodeObject:self->_issuerInstallmentManagementURL forKey:@"issuerInstallmentManagementURL"];
  [v6 encodeBool:self->_isIssuerInstallmentTransaction forKey:@"isIssuerInstallmentTransaction"];
  [v6 encodeObject:self->_paymentRewardsRedemption forKey:@"paymentRewardsRedemption"];
  [v6 encodeObject:self->_associatedStatementIdentifiers forKey:@"associatedStatementIdentifiers"];
  [v6 encodeBool:self->_interestReassessment forKey:@"interestReassessment"];
  [v6 encodeInteger:self->_paymentNetworkIdentifier forKey:@"paymentNetworkIdentifier"];
  [v6 encodeInteger:self->_peerPaymentPaymentMode forKey:@"peerPaymentPaymentMode"];
  [v6 encodeObject:self->_peerPaymentCounterpartImageRecordIdentifier forKey:@"peerPaymentCounterpartImageRecordIdentifier"];
  [v6 encodeObject:self->_peerPaymentRequestToken forKey:@"peerPaymentRequestToken"];
}

- (PKPaymentTransaction)initWithCloudStoreCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentTransaction *)self init];
  if (v5)
  {
    v6 = [[PKMerchant alloc] initWithCloudStoreCoder:v4];
    merchant = v5->_merchant;
    v5->_merchant = v6;

    v8 = [[PKPaymentTransactionFees alloc] initWithCloudStoreCoder:v4];
    fees = v5->_fees;
    v5->_fees = v8;

    v10 = [[PKPaymentTransactionForeignExchangeInformation alloc] initWithCloudStoreCoder:v4];
    foreignExchangeInformation = v5->_foreignExchangeInformation;
    v5->_foreignExchangeInformation = v10;

    v12 = [[PKPaymentTransactionRewards alloc] initWithCloudStoreCoder:v4 property:0];
    rewards = v5->_rewards;
    v5->_rewards = v12;

    v14 = [[PKPaymentTransactionRewards alloc] initWithCloudStoreCoder:v4 property:1];
    rewardsInProgress = v5->_rewardsInProgress;
    v5->_rewardsInProgress = v14;

    [(PKPaymentTransaction *)v5 applyPropertiesFromCloudStoreRecord:v4];
  }

  return v5;
}

- (void)applyPropertiesFromCloudStoreRecord:(id)a3
{
  v191 = *MEMORY[0x1E69E9840];
  v4 = a3;
  merchant = self->_merchant;
  if (merchant)
  {
    [(PKMerchant *)merchant applyPropertiesFromCloudStoreRecord:v4];
  }

  else
  {
    v6 = [[PKMerchant alloc] initWithCloudStoreCoder:v4];
    v7 = self->_merchant;
    self->_merchant = v6;
  }

  fees = self->_fees;
  if (fees)
  {
    [(PKPaymentTransactionFees *)fees applyPropertiesFromCloudStoreRecord:v4];
  }

  else
  {
    v9 = [[PKPaymentTransactionFees alloc] initWithCloudStoreCoder:v4];
    v10 = self->_fees;
    self->_fees = v9;
  }

  foreignExchangeInformation = self->_foreignExchangeInformation;
  if (foreignExchangeInformation)
  {
    [(PKPaymentTransactionForeignExchangeInformation *)foreignExchangeInformation applyPropertiesFromCloudStoreRecord:v4];
  }

  else
  {
    v12 = [[PKPaymentTransactionForeignExchangeInformation alloc] initWithCloudStoreCoder:v4];
    v13 = self->_foreignExchangeInformation;
    self->_foreignExchangeInformation = v12;
  }

  rewards = self->_rewards;
  if (rewards)
  {
    [(PKPaymentTransactionRewards *)rewards applyPropertiesFromCloudStoreRecord:v4 property:0];
  }

  else
  {
    v15 = [[PKPaymentTransactionRewards alloc] initWithCloudStoreCoder:v4 property:0];
    v16 = self->_rewards;
    self->_rewards = v15;
  }

  rewardsInProgress = self->_rewardsInProgress;
  if (rewardsInProgress)
  {
    [(PKPaymentTransactionRewards *)rewardsInProgress applyPropertiesFromCloudStoreRecord:v4 property:1];
  }

  else
  {
    v18 = [[PKPaymentTransactionRewards alloc] initWithCloudStoreCoder:v4 property:1];
    v19 = self->_rewardsInProgress;
    self->_rewardsInProgress = v18;
  }

  v20 = [v4 recordsWithRecordType:@"Transaction"];
  v21 = [v20 firstObject];

  if (v21)
  {
    v22 = [v21 pk_encryptedStringForKey:@"identifier"];
    serviceIdentifier = self->_serviceIdentifier;
    self->_serviceIdentifier = v22;

    v24 = [v21 pk_encryptedStringForKey:@"paymentHash"];
    v25 = [v24 uppercaseString];
    paymentHash = self->_paymentHash;
    self->_paymentHash = v25;

    v27 = [v21 pk_encryptedDecimalNumberForKey:@"amount"];
    amount = self->_amount;
    self->_amount = v27;

    v29 = [v21 pk_encryptedDecimalNumberForKey:@"subtotalAmount"];
    subtotalAmount = self->_subtotalAmount;
    self->_subtotalAmount = v29;

    v31 = [v21 pk_encryptedStringForKey:@"currencyCode"];
    currencyCode = self->_currencyCode;
    self->_currencyCode = v31;

    v33 = [v21 pk_encryptedDateForKey:@"transactionDate"];
    transactionDate = self->_transactionDate;
    self->_transactionDate = v33;

    v35 = [v21 pk_encryptedDateForKey:@"transactionStatusChangedDate"];
    transactionStatusChangedDate = self->_transactionStatusChangedDate;
    self->_transactionStatusChangedDate = v35;

    v37 = [v21 pk_encryptedDateForKey:@"expirationDate"];
    expirationDate = self->_expirationDate;
    self->_expirationDate = v37;

    v39 = [v21 pk_encryptedStringForKey:@"transactionStatus"];
    self->_transactionStatus = PKPaymentTransactionStatusFromString(v39);

    v40 = [v21 pk_encryptedStringForKey:@"transactionDeclinedReason"];
    self->_transactionDeclinedReason = PKPaymentTransactionDeclinedReasonFromString(v40);

    v41 = [v21 pk_encryptedStringForKey:@"transactionType"];
    self->_transactionType = PKPaymentTransactionTypeFromString(v41);

    v42 = [v21 pk_encryptedStringForKey:@"adjustmentType"];
    self->_adjustmentType = PKPaymentTransactionAdjustmentSubtypeFromString(v42);

    self->_suppressNotifications = [v21 pk_encryptedBoolForKey:@"blockNotification"];
    self->_recurring = [v21 pk_encryptedBoolForKey:@"recurring"];
    v43 = [v21 pk_stringForKey:@"feature"];
    self->_accountType = PKPaymentTransactionAccountTypeFromString(v43);

    v44 = [v21 pk_encryptedStringForKey:@"peerPaymentType"];
    self->_peerPaymentType = PKPaymentTransactionPeerPaymentSubtypeFromString(v44);

    v45 = [v21 pk_encryptedStringForKey:@"peerPaymentCounterpartHandle"];
    peerPaymentCounterpartHandle = self->_peerPaymentCounterpartHandle;
    self->_peerPaymentCounterpartHandle = v45;

    v47 = [v21 pk_encryptedDecimalNumberForKey:@"primaryFundingSourceAmount"];
    primaryFundingSourceAmount = self->_primaryFundingSourceAmount;
    self->_primaryFundingSourceAmount = v47;

    v49 = [v21 pk_encryptedStringForKey:@"primaryFundingSourceCurrencyCode"];
    primaryFundingSourceCurrencyCode = self->_primaryFundingSourceCurrencyCode;
    self->_primaryFundingSourceCurrencyCode = v49;

    v51 = [v21 pk_encryptedDecimalNumberForKey:@"secondaryFundingSourceAmount"];
    secondaryFundingSourceAmount = self->_secondaryFundingSourceAmount;
    self->_secondaryFundingSourceAmount = v51;

    v53 = [v21 pk_encryptedStringForKey:@"secondaryFundingSourceCurrencyCode"];
    secondaryFundingSourceCurrencyCode = self->_secondaryFundingSourceCurrencyCode;
    self->_secondaryFundingSourceCurrencyCode = v53;

    v55 = [v21 pk_encryptedStringForKey:@"secondaryFundingSourceNetwork"];
    self->_secondaryFundingSourceNetwork = PKPaymentCredentialTypeForPaymentNetworkName(v55);

    v56 = [v21 pk_encryptedStringForKey:@"secondaryFundingSourceDPANSuffix"];
    secondaryFundingSourceDPANSuffix = self->_secondaryFundingSourceDPANSuffix;
    self->_secondaryFundingSourceDPANSuffix = v56;

    self->_deviceScoreIdentifiersRequired = [v21 pk_BOOLForKey:@"deviceScoreIdentifiersRequired"];
    v58 = [v21 pk_encryptedStringForKey:@"secondaryFundingSourceType"];
    if ([@"bankAccount" isEqualToString:v58])
    {
      v59 = 1;
    }

    else
    {
      v62 = [@"debit" isEqualToString:v58];
      v59 = 2;
      if (!v62)
      {
        v59 = 0;
      }
    }

    self->_secondaryFundingSourceType = v59;
    if (self->_transactionType == 5 && !v58 && !v59)
    {
      self->_secondaryFundingSourceType = 1;
    }

    if ([(PKPaymentTransaction *)self _supportsServerFundingDescription])
    {
      v60 = [v21 pk_encryptedStringForKey:@"secondaryFundingSourceDescription"];
    }

    else
    {
      v60 = 0;
    }

    v63 = [v21 pk_encryptedDecimalNumberForKey:@"rewardsTotalAmount"];
    rewardsTotalAmount = self->_rewardsTotalAmount;
    self->_rewardsTotalAmount = v63;

    v65 = [v21 pk_encryptedStringForKey:@"rewardsTotalCurrencyCode"];
    rewardsTotalCurrencyCode = self->_rewardsTotalCurrencyCode;
    self->_rewardsTotalCurrencyCode = v65;

    v67 = [v21 pk_encryptedStringForKey:@"cardType"];
    self->_cardType = PKPaymentTransactionSourceFromString(v67);

    v68 = [v21 pk_encryptedStringForKey:@"merchantProvidedDescription"];
    merchantProvidedDescription = self->_merchantProvidedDescription;
    self->_merchantProvidedDescription = v68;

    v70 = [v21 pk_encryptedStringForKey:@"merchantProvidedTitle"];
    merchantProvidedTitle = self->_merchantProvidedTitle;
    self->_merchantProvidedTitle = v70;

    v72 = [v21 pk_encryptedStringForKey:@"altDSID"];
    altDSID = self->_altDSID;
    self->_altDSID = v72;

    v74 = [v21 pk_encryptedStringForKey:@"accountIdentifier"];
    accountIdentifier = self->_accountIdentifier;
    self->_accountIdentifier = v74;

    if (!self->_accountIdentifier)
    {
      v76 = [v21 pk_encryptedStringForKey:@"peerPaymentAccountIdentifier"];
      v77 = self->_accountIdentifier;
      self->_accountIdentifier = v76;
    }

    v78 = [v21 pk_encryptedStringForKey:@"lifecycleIdentifier"];
    lifecycleIdentifier = self->_lifecycleIdentifier;
    self->_lifecycleIdentifier = v78;

    v80 = [v21 pk_encryptedStringForKey:@"authNetworkData"];
    authNetworkData = self->_authNetworkData;
    self->_authNetworkData = v80;

    v82 = [v21 pk_encryptedStringForKey:@"clearingNetworkData"];
    clearingNetworkData = self->_clearingNetworkData;
    self->_clearingNetworkData = v82;

    v84 = [v21 pk_encryptedStringForKey:@"cardIdentifier"];
    cardIdentifier = self->_cardIdentifier;
    self->_cardIdentifier = v84;

    v86 = [v21 pk_encryptedStringForKey:@"dpanIdentifier"];
    dpanIdentifier = self->_dpanIdentifier;
    self->_dpanIdentifier = v86;

    v88 = [v21 pk_encryptedStringForKey:@"panIdentifier"];
    panIdentifier = self->_panIdentifier;
    self->_panIdentifier = v88;

    v90 = [v21 pk_encryptedObjectForKey:@"isMerchantTokenTransaction" ofClass:objc_opt_class()];
    isMerchantTokenTransaction = self->_isMerchantTokenTransaction;
    self->_isMerchantTokenTransaction = v90;

    v92 = [v21 pk_encryptedStringForKey:@"last4Digits"];
    cardNumberSuffix = self->_cardNumberSuffix;
    self->_cardNumberSuffix = v92;

    v94 = [v21 pk_encryptedStringForKey:@"adjustmentTypeReason"];
    self->_adjustmentTypeReason = PKPaymentTransactionAdjustmentSubtypeReasonFromString(v94);

    v95 = [v21 pk_encryptedStringForKey:@"topUpType"];
    self->_topUpType = PKPaymentTransactionTopUpSubtypeFromString(v95);

    v96 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v61 = [v21 pk_encryptedArrayOfClasses:v96 forKey:@"issuerQuestions"];

    v97 = [v21 pk_encryptedStringForKey:@"referenceIdentifier"];
    referenceIdentifier = self->_referenceIdentifier;
    self->_referenceIdentifier = v97;

    v99 = [v21 pk_encryptedStringForKey:@"associatedFeatureIdentifier"];
    self->_associatedFeatureIdentifier = PKFeatureIdentifierFromString(v99);

    v100 = [v21 pk_encryptedUrlForKey:@"receiptProviderURL"];
    receiptProviderURL = self->_receiptProviderURL;
    self->_receiptProviderURL = v100;

    v102 = [v21 pk_encryptedStringForKey:@"receiptProviderIdentifier"];
    receiptProviderIdentifier = self->_receiptProviderIdentifier;
    self->_receiptProviderIdentifier = v102;

    v104 = [v21 pk_encryptedStringForKey:@"receiptIdentifier"];
    receiptIdentifier = self->_receiptIdentifier;
    self->_receiptIdentifier = v104;

    v106 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v107 = [v21 pk_encryptedArrayOfClasses:v106 forKey:@"associatedStatementIdentifiers"];
    associatedStatementIdentifiers = self->_associatedStatementIdentifiers;
    self->_associatedStatementIdentifiers = v107;

    self->_interestReassessment = [v21 pk_encryptedBoolForKey:@"interestReassessment"];
    v109 = [v21 pk_encryptedStringForKey:@"peerPaymentPaymentMode"];
    self->_peerPaymentPaymentMode = PKPeerPaymentPaymentModeFromString(v109);

    v110 = [v21 pk_encryptedStringForKey:@"peerPaymentRequestToken"];
    peerPaymentRequestToken = self->_peerPaymentRequestToken;
    self->_peerPaymentRequestToken = v110;
  }

  else
  {
    v60 = 0;
    v61 = 0;
  }

  v112 = [v4 recordsWithRecordType:@"TransactionDeviceData"];
  v113 = [v112 firstObject];

  v175 = self;
  v172 = v113;
  if (v113)
  {
    v114 = [v113 pk_encryptedDecimalNumberForKey:@"amountAddedToAuth"];
    amountAddedToAuth = self->_amountAddedToAuth;
    self->_amountAddedToAuth = v114;

    v116 = [v113 pk_encryptedLocationForKey:@"location"];
    [v116 coordinate];
    self->_locationLatitude = v117;
    [v116 coordinate];
    self->_locationLongitude = v118;
    [v116 altitude];
    self->_locationAltitude = v119;
    [v116 horizontalAccuracy];
    self->_locationHorizontalAccuracy = v120;
    [v116 verticalAccuracy];
    self->_locationVerticalAccuracy = v121;
    v122 = [v116 timestamp];
    locationDate = self->_locationDate;
    self->_locationDate = v122;

    self->_coarseLocation = [v113 pk_encryptedBoolForKey:@"isCoarseLocation"];
    v124 = [v113 pk_encryptedStringForKey:@"placemarkLocality"];
    locality = self->_locality;
    self->_locality = v124;

    v126 = [v113 pk_encryptedStringForKey:@"placemarkAdministrativeArea"];
    administrativeArea = self->_administrativeArea;
    self->_administrativeArea = v126;

    [v113 pk_encryptedStringForKey:@"timeZone"];
    v129 = v128 = self;
    if (v129)
    {
      v130 = [MEMORY[0x1E695DFE8] timeZoneWithName:v129];
      timeZone = v128->_timeZone;
      v128->_timeZone = v130;
    }

    v128->_processedForLocation = [v113 pk_encryptedBoolForKey:@"processedForLocation"];
    v128->_processedForMerchantCleanup = [v113 pk_encryptedBoolForKey:@"processedForMerchantCleanup"];
    v128->_technologyType = [v113 pk_encryptedUnsignedIntegerForKey:@"technologyType"];
    v132 = [v113 pk_encryptedStringForKey:@"secondaryFundingSourceFPANIdentifier"];
    secondaryFundingSourceFPANIdentifier = v128->_secondaryFundingSourceFPANIdentifier;
    v128->_secondaryFundingSourceFPANIdentifier = v132;

    if (![v60 length])
    {
      v134 = [v113 pk_encryptedStringForKey:@"secondaryFundingSourceDescription"];

      v60 = v134;
    }

    v135 = [v113 pk_encryptedUnsignedIntegerForKey:@"transactionSource"];
    v175->_transactionSource = v135;
    if (!v135)
    {
      transactionType = v175->_transactionType;
      if (transactionType == 8 || transactionType == 1)
      {
        v175->_transactionSource = 4;
      }
    }

    v137 = [v113 pk_encryptedStringForKey:@"peerPaymentMemo"];
    peerPaymentMemo = v175->_peerPaymentMemo;
    v175->_peerPaymentMemo = v137;

    v139 = [v113 pk_encryptedUUIDForKey:@"requestDeviceScoreIdentifier"];
    requestDeviceScoreIdentifier = v175->_requestDeviceScoreIdentifier;
    v175->_requestDeviceScoreIdentifier = v139;

    v141 = [v113 pk_encryptedUUIDForKey:@"sendDeviceScoreIdentifier"];
    sendDeviceScoreIdentifier = v175->_sendDeviceScoreIdentifier;
    v175->_sendDeviceScoreIdentifier = v141;

    v175->_deviceScoreIdentifiersSubmitted = [v113 pk_encryptedBoolForKey:@"deviceScoreIdentifiersSubmitted"];
    v143 = [v113 pk_encryptedDictionaryForKey:@"metadata"];
    metadata = v175->_metadata;
    v175->_metadata = v143;

    v145 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v146 = [v113 pk_encryptedArrayOfClasses:v145 forKey:@"issuerQuestionsAnswered"];

    v147 = [v113 pk_encryptedStringForKey:@"peerPaymentCounterpartImageRecordIdentifier"];
    peerPaymentCounterpartImageRecordIdentifier = v175->_peerPaymentCounterpartImageRecordIdentifier;
    v175->_peerPaymentCounterpartImageRecordIdentifier = v147;

    [(PKPaymentTransaction *)v175 _applyTransactionCategoryFromRecord:v113];
  }

  else
  {
    v146 = 0;
  }

  if ([v60 length])
  {
    objc_storeStrong(&v175->_secondaryFundingSourceDescription, v60);
  }

  v171 = v4;
  v149 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  obj = v61;
  v150 = [obj countByEnumeratingWithState:&v184 objects:v190 count:16];
  if (v150)
  {
    v151 = v150;
    v152 = *v185;
    do
    {
      for (i = 0; i != v151; ++i)
      {
        if (*v185 != v152)
        {
          objc_enumerationMutation(obj);
        }

        v154 = [[PKPaymentTransactionQuestion alloc] initWithDictionary:*(*(&v184 + 1) + 8 * i)];
        [v149 addObject:v154];
      }

      v151 = [obj countByEnumeratingWithState:&v184 objects:v190 count:16];
    }

    while (v151);
  }

  v170 = v60;

  v155 = v175;
  if ([v149 count])
  {
    v156 = [v149 copy];
    questions = v175->_questions;
    v175->_questions = v156;
  }

  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v173 = v146;
  v158 = [v173 countByEnumeratingWithState:&v180 objects:v189 count:16];
  if (v158)
  {
    v159 = v158;
    v160 = *v181;
    do
    {
      for (j = 0; j != v159; ++j)
      {
        if (*v181 != v160)
        {
          objc_enumerationMutation(v173);
        }

        v162 = PKPaymentTransactionQuestionTypeFromString(*(*(&v180 + 1) + 8 * j));
        v176 = 0u;
        v177 = 0u;
        v178 = 0u;
        v179 = 0u;
        v163 = v155->_questions;
        v164 = [(NSSet *)v163 countByEnumeratingWithState:&v176 objects:v188 count:16];
        if (v164)
        {
          v165 = v164;
          v166 = *v177;
LABEL_61:
          v167 = 0;
          while (1)
          {
            if (*v177 != v166)
            {
              objc_enumerationMutation(v163);
            }

            v168 = *(*(&v176 + 1) + 8 * v167);
            if ([v168 type] == v162)
            {
              break;
            }

            if (v165 == ++v167)
            {
              v165 = [(NSSet *)v163 countByEnumeratingWithState:&v176 objects:v188 count:16];
              if (v165)
              {
                goto LABEL_61;
              }

              v155 = v175;
              goto LABEL_70;
            }
          }

          v169 = v168;

          v155 = v175;
          if (!v169)
          {
            continue;
          }

          [(NSSet *)v169 setAnswered:1];
          v163 = v169;
        }

LABEL_70:
      }

      v159 = [v173 countByEnumeratingWithState:&v180 objects:v189 count:16];
    }

    while (v159);
  }
}

- (void)_applyTransactionCategoryFromRecord:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [v4 pk_encryptedStringForKey:@"preferredTransactionCategory"];
    v6 = v5;
    if (v5)
    {
      self->_preferredTransactionCategory = PKMerchantCategoryFromString(v5);
      v7 = PKLogFacilityTypeGetObject(0xAuLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        identifier = self->_identifier;
        v12 = 138412546;
        v13 = identifier;
        v14 = 2112;
        v15 = v6;
        v9 = "Updated local transaction category for %@ to %@";
LABEL_9:
        _os_log_impl(&dword_1AD337000, v7, OS_LOG_TYPE_DEFAULT, v9, &v12, 0x16u);
      }
    }

    else
    {
      v7 = PKLogFacilityTypeGetObject(0xAuLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_identifier;
        v12 = 138412546;
        v13 = v11;
        v14 = 2112;
        v15 = 0;
        v9 = "Skipped updating local transaction category for %@ to %@";
        goto LABEL_9;
      }
    }

    goto LABEL_11;
  }

  v6 = PKLogFacilityTypeGetObject(0xAuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_identifier;
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_1AD337000, v6, OS_LOG_TYPE_DEFAULT, "Skipped updating local transaction category for %@. Recategorization is switched off.", &v12, 0xCu);
  }

LABEL_11:
}

- (void)encodeWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4
{
  v6 = a3;
  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v7 = v6;
    [(PKPaymentTransaction *)self _encodeDeviceDataWithCloudStoreCoder:v6 codingType:a4];
    v6 = v7;
  }

  if (a4 - 1 <= 1)
  {
    v8 = v6;
    [(PKPaymentTransaction *)self _encodeServerDataWithCloudStoreCoder:v6 codingType:a4];
    v6 = v8;
  }
}

- (void)_encodeDeviceDataWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(PKMerchant *)self->_merchant encodeWithCloudStoreCoder:v6 codingType:a4];
  [(PKPaymentTransactionFees *)self->_fees encodeWithCloudStoreCoder:v6 codingType:a4];
  [(PKPaymentTransactionRewards *)self->_rewards encodeWithCloudStoreCoder:v6 codingType:a4 property:0];
  [(PKPaymentTransactionRewards *)self->_rewardsInProgress encodeWithCloudStoreCoder:v6 codingType:a4 property:1];
  [(PKPaymentTransactionForeignExchangeInformation *)self->_foreignExchangeInformation encodeWithCloudStoreCoder:v6 codingType:a4];
  v7 = [v6 recordsWithRecordType:@"TransactionDeviceData"];
  v8 = [v7 firstObject];

  v9 = [v8 encryptedValues];
  v10 = objc_alloc(MEMORY[0x1E695BA70]);
  serviceIdentifier = self->_serviceIdentifier;
  v12 = [v8 recordID];
  v13 = [v12 zoneID];
  v14 = [v10 initWithRecordName:serviceIdentifier zoneID:v13];

  v46 = v14;
  v45 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"Transaction" recordID:v14];
  v44 = [objc_alloc(MEMORY[0x1E695BAB0]) initWithRecord:v45 action:0];
  [v8 setObject:v44 forKey:@"transactionRecord"];
  v15 = [(NSDecimalNumber *)self->_amountAddedToAuth description];
  [v9 setObject:v15 forKey:@"amountAddedToAuth"];

  v16 = [(PKPaymentTransaction *)self location];
  [v9 setObject:v16 forKey:@"location"];

  [v9 setObject:self->_locality forKey:@"placemarkLocality"];
  [v9 setObject:self->_administrativeArea forKey:@"placemarkAdministrativeArea"];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:self->_processedForLocation];
  [v9 setObject:v17 forKey:@"processedForLocation"];

  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_processedForMerchantCleanup];
  [v9 setObject:v18 forKey:@"processedForMerchantCleanup"];

  v19 = [(NSTimeZone *)self->_timeZone name];
  [v9 setObject:v19 forKey:@"timeZone"];

  v20 = [MEMORY[0x1E696AD98] numberWithInteger:self->_technologyType];
  [v9 setObject:v20 forKey:@"technologyType"];

  [v9 setObject:self->_secondaryFundingSourceFPANIdentifier forKey:@"secondaryFundingSourceFPANIdentifier"];
  if (![(PKPaymentTransaction *)self _supportsServerFundingDescription])
  {
    [v9 setObject:self->_secondaryFundingSourceDescription forKey:@"secondaryFundingSourceDescription"];
  }

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_transactionSource];
  [v9 setObject:v21 forKey:@"transactionSource"];

  [v9 setObject:self->_peerPaymentMemo forKey:@"peerPaymentMemo"];
  v22 = [(NSUUID *)self->_requestDeviceScoreIdentifier UUIDString];
  [v9 setObject:v22 forKey:@"requestDeviceScoreIdentifier"];

  v23 = [(NSUUID *)self->_sendDeviceScoreIdentifier UUIDString];
  [v9 setObject:v23 forKey:@"sendDeviceScoreIdentifier"];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_deviceScoreIdentifiersSubmitted];
  [v9 setObject:v24 forKey:@"deviceScoreIdentifiersSubmitted"];

  v25 = [(NSTimeZone *)self->_timeZone name];
  [v9 setObject:v25 forKey:@"timeZone"];

  v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_coarseLocation];
  [v9 setObject:v26 forKey:@"isCoarseLocation"];

  [v9 setObject:self->_peerPaymentCounterpartImageRecordIdentifier forKey:@"peerPaymentCounterpartImageRecordIdentifier"];
  if (_os_feature_enabled_impl())
  {
    preferredTransactionCategory = self->_preferredTransactionCategory;
    if (preferredTransactionCategory)
    {
      v28 = PKMerchantCategoryToString(preferredTransactionCategory);
      [v9 setObject:v28 forKey:@"preferredTransactionCategory"];
    }
  }

  v29 = [v6 cloudStoreSpecificKeys];
  v30 = [v29 objectForKey:@"originDeviceID"];
  [v9 setObject:v30 forKey:@"originDeviceID"];

  metadata = self->_metadata;
  if (metadata)
  {
    v32 = [MEMORY[0x1E696ACB0] dataWithJSONObject:metadata options:0 error:0];
    v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v32 encoding:4];
  }

  else
  {
    v33 = 0;
  }

  [v9 setObject:v33 forKey:@"metadata"];
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v35 = self->_questions;
  v36 = [(NSSet *)v35 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v48;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v48 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v47 + 1) + 8 * i);
        if ([v40 answered])
        {
          v41 = PKPaymentTransactionQuestionTypeToString([v40 type]);
          [v34 addObject:v41];
        }
      }

      v37 = [(NSSet *)v35 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v37);
  }

  if ([v34 count])
  {
    v42 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v34 options:0 error:0];
    v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v42 encoding:4];
    [v9 setObject:v43 forKey:@"issuerQuestionsAnswered"];
  }
}

- (void)_encodeServerDataWithCloudStoreCoder:(id)a3 codingType:(unint64_t)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(PKMerchant *)self->_merchant encodeWithCloudStoreCoder:v6 codingType:a4];
  [(PKPaymentTransactionFees *)self->_fees encodeWithCloudStoreCoder:v6 codingType:a4];
  [(PKPaymentTransactionForeignExchangeInformation *)self->_foreignExchangeInformation encodeWithCloudStoreCoder:v6 codingType:a4];
  [(PKPaymentTransactionRewards *)self->_rewards encodeWithCloudStoreCoder:v6 codingType:a4 property:0];
  [(PKPaymentTransactionRewards *)self->_rewardsInProgress encodeWithCloudStoreCoder:v6 codingType:a4 property:1];
  v7 = [v6 recordsWithRecordType:@"Transaction"];
  v8 = [v7 firstObject];

  v9 = [v8 encryptedValues];
  [v9 setObject:self->_serviceIdentifier forKey:@"identifier"];
  v10 = [(NSString *)self->_paymentHash uppercaseString];
  [v9 setObject:v10 forKey:@"paymentHash"];

  v11 = PKPaymentTransactionTypeToString(self->_transactionType);
  [v9 setObject:v11 forKey:@"transactionType"];

  v12 = [(NSDecimalNumber *)self->_amount description];
  [v9 setObject:v12 forKey:@"amount"];

  v13 = [(NSDecimalNumber *)self->_subtotalAmount description];
  [v9 setObject:v13 forKey:@"subtotalAmount"];

  [v9 setObject:self->_currencyCode forKey:@"currencyCode"];
  [v9 setObject:self->_transactionDate forKey:@"transactionDate"];
  [v9 setObject:self->_transactionStatusChangedDate forKey:@"transactionStatusChangedDate"];
  [v9 setObject:self->_expirationDate forKey:@"expirationDate"];
  v14 = PKPaymentTransactionStatusToString(self->_transactionStatus);
  [v9 setObject:v14 forKey:@"transactionStatus"];

  v15 = PKPaymentTransactionTypeToString(self->_transactionType);
  [v9 setObject:v15 forKey:@"transactionType"];

  v16 = PKPaymentTransactionPeerPaymentSubtypeToString(self->_peerPaymentType);
  [v9 setObject:v16 forKey:@"peerPaymentType"];

  [v9 setObject:self->_peerPaymentCounterpartHandle forKey:@"peerPaymentCounterpartHandle"];
  v17 = [(NSDecimalNumber *)self->_primaryFundingSourceAmount description];
  [v9 setObject:v17 forKey:@"primaryFundingSourceAmount"];

  [v9 setObject:self->_primaryFundingSourceCurrencyCode forKey:@"primaryFundingSourceCurrencyCode"];
  v18 = [(NSDecimalNumber *)self->_secondaryFundingSourceAmount description];
  [v9 setObject:v18 forKey:@"secondaryFundingSourceAmount"];

  [v9 setObject:self->_secondaryFundingSourceCurrencyCode forKey:@"secondaryFundingSourceCurrencyCode"];
  v19 = PKPaymentNetworkNameForPaymentCredentialType(self->_secondaryFundingSourceNetwork);
  [v9 setObject:v19 forKey:@"secondaryFundingSourceNetwork"];

  [v9 setObject:self->_secondaryFundingSourceDPANSuffix forKey:@"secondaryFundingSourceDPANSuffix"];
  [v9 setObject:self->_merchantProvidedDescription forKey:@"merchantProvidedDescription"];
  [v9 setObject:self->_merchantProvidedTitle forKey:@"merchantProvidedTitle"];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_suppressNotifications];
  [v9 setObject:v20 forKey:@"blockNotification"];

  secondaryFundingSourceType = self->_secondaryFundingSourceType;
  v22 = @"bankAccount";
  if (secondaryFundingSourceType == 2)
  {
    v22 = @"debit";
  }

  if (secondaryFundingSourceType)
  {
    v23 = v22;
  }

  else
  {
    v23 = @"unknown";
  }

  [v9 setObject:v23 forKey:@"secondaryFundingSourceType"];
  [v9 setObject:self->_peerPaymentRequestToken forKey:@"peerPaymentRequestToken"];
  v24 = [(NSDecimalNumber *)self->_rewardsTotalAmount description];
  [v9 setObject:v24 forKey:@"rewardsTotalAmount"];

  [v9 setObject:self->_rewardsTotalCurrencyCode forKey:@"rewardsTotalCurrencyCode"];
  v25 = PKPaymentTransactionSourceToString(self->_cardType);
  [v9 setObject:v25 forKey:@"cardType"];

  [v9 setObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [v9 setObject:self->_altDSID forKey:@"altDSID"];
  [v9 setObject:self->_lifecycleIdentifier forKey:@"lifecycleIdentifier"];
  [v9 setObject:self->_authNetworkData forKey:@"authNetworkData"];
  [v9 setObject:self->_clearingNetworkData forKey:@"clearingNetworkData"];
  [v9 setObject:self->_cardIdentifier forKey:@"cardIdentifier"];
  [v9 setObject:self->_cardNumberSuffix forKey:@"last4Digits"];
  v26 = PKPaymentTransactionAdjustmentSubtypeReasonToString(self->_adjustmentTypeReason);
  [v9 setObject:v26 forKey:@"adjustmentTypeReason"];

  v27 = PKPaymentTransactionTopUpSubtypeToString(self->_topUpType);
  [v9 setObject:v27 forKey:@"topUpType"];

  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v29 = self->_questions;
  v30 = [(NSSet *)v29 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v62;
    do
    {
      v33 = 0;
      do
      {
        if (*v62 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v61 + 1) + 8 * v33) dictionaryRepresentation];
        [v28 addObject:v34];

        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSSet *)v29 countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v31);
  }

  if ([v28 count])
  {
    v35 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v28 options:0 error:0];
    v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v35 encoding:4];
    [v9 setObject:v36 forKey:@"issuerQuestions"];
  }

  [v9 setObject:self->_referenceIdentifier forKey:{@"referenceIdentifier", v61}];
  v37 = PKFeatureIdentifierToString(self->_associatedFeatureIdentifier);
  [v9 setObject:v37 forKey:@"associatedFeatureIdentifier"];

  v38 = [(NSURL *)self->_receiptProviderURL absoluteString];
  [v9 setObject:v38 forKey:@"receiptProviderURL"];

  [v9 setObject:self->_receiptIdentifier forKey:@"receiptIdentifier"];
  [v9 setObject:self->_receiptProviderIdentifier forKey:@"receiptProviderIdentifier"];
  v39 = [MEMORY[0x1E696AD98] numberWithBool:self->_deviceScoreIdentifiersRequired];
  [v8 setObject:v39 forKey:@"deviceScoreIdentifiersRequired"];

  accountType = self->_accountType;
  if (accountType > 4)
  {
    v41 = @"unknown";
  }

  else
  {
    v41 = off_1E79E1C18[accountType];
  }

  [v8 setObject:v41 forKey:@"feature"];
  v42 = [v6 cloudStoreSpecificKeys];
  v43 = [v42 objectForKey:@"cloudVersion"];
  [v9 setObject:v43 forKey:@"cloudVersion"];

  v44 = [v6 cloudStoreSpecificKeys];
  v45 = [v44 objectForKey:@"dpanIdentifier"];
  [v9 setObject:v45 forKey:@"dpanIdentifier"];

  v46 = [v6 cloudStoreSpecificKeys];
  v47 = [v46 objectForKey:@"panIdentifier"];
  [v9 setObject:v47 forKey:@"panIdentifier"];

  v48 = [v6 cloudStoreSpecificKeys];
  v49 = [v48 objectForKey:@"isMerchantTokenTransaction"];
  [v9 setObject:v49 forKey:@"isMerchantTokenTransaction"];

  v50 = [v6 cloudStoreSpecificKeys];
  v51 = [v50 objectForKey:@"fpanIdentifier"];
  [v9 setObject:v51 forKey:@"fpanIdentifier"];

  v52 = [v6 cloudStoreSpecificKeys];
  v53 = [v52 objectForKey:@"passSerialNumber"];
  [v9 setObject:v53 forKey:@"passSerialNumber"];

  v54 = [v6 cloudStoreSpecificKeys];
  v55 = [v54 objectForKey:@"passTypeIdentifier"];
  [v9 setObject:v55 forKey:@"passTypeIdentifier"];

  if (PKApplePayContainerEnvironment() == 2)
  {
    v56 = [MEMORY[0x1E696AD98] numberWithBool:self->_recurring];
    [v9 setObject:v56 forKey:@"recurring"];
  }

  if (self->_associatedStatementIdentifiers)
  {
    v57 = objc_alloc(MEMORY[0x1E696AEC0]);
    v58 = [MEMORY[0x1E696ACB0] dataWithJSONObject:self->_associatedStatementIdentifiers options:0 error:0];
    v59 = [v57 initWithData:v58 encoding:4];

    [v9 setObject:v59 forKey:@"associatedStatementIdentifiers"];
  }

  v60 = [MEMORY[0x1E696AD98] numberWithBool:self->_interestReassessment];
  [v9 setObject:v60 forKey:@"interestReassessment"];
}

- (id)recordTypesAndNamesForCodingType:(unint64_t)a3
{
  v5 = objc_opt_class();
  serviceIdentifier = self->_serviceIdentifier;

  return [v5 recordTypesAndNamesForCodingType:a3 serviceIdentifier:serviceIdentifier];
}

+ (id)recordTypesAndNamesForCodingType:(unint64_t)a3 serviceIdentifier:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  if ([v5 length])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = v6;
    if (a3 - 1 <= 1)
    {
      [v6 setObject:v5 forKeyedSubscript:@"Transaction"];
    }

    if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = [objc_opt_class() recordNamePrefix];
      v10 = [v8 stringWithFormat:@"%@%@", v9, v5];
      [v7 setObject:v10 forKeyedSubscript:@"TransactionDeviceData"];
    }

    v13[0] = v7;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)hasPendingAmounts
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(PKPaymentTransaction *)self amounts];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isPending])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)transactionAmountsForMultipleAmounts
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v49 = objc_alloc_init(MEMORY[0x1E696AB50]);
  v46 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = [(PKPaymentTransaction *)self amounts];
  v50 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v50)
  {
    v4 = *v59;
    v47 = *v59;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v59 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v58 + 1) + 8 * i);
        v7 = [v6 amount];
        v8 = [v7 currency];
        v51 = [v7 amount];
        v9 = [v7 exponent];
        v10 = [v6 isPending];
        v11 = v8;
        v12 = v11;
        if (v11 == @"XXX")
        {
        }

        else
        {
          v13 = 0;
          if (@"XXX" && v11)
          {
            v13 = [(__CFString *)v11 isEqualToString:@"XXX"];
          }

          if ((v13 & 1) == 0 && v12)
          {
            if ([v49 containsObject:v12])
            {
              v14 = [v46 objectForKeyedSubscript:v12];
              v15 = [v14 amount];
              v16 = [v15 amount];

              v17 = [v16 decimalNumberByAdding:v51];
              v18 = PKCurrencyAmountCreate(v17, &v12->isa, 0);
              v19 = [[PKTransactionAmount alloc] initWithCurrencyAmount:v18];
              [v46 setObject:v19 forKeyedSubscript:v12];

              v4 = v47;
            }

            else
            {
              v14 = [v6 copy];
              [v46 setObject:v14 forKeyedSubscript:v12];
            }

            [v49 addObject:v12];
            goto LABEL_21;
          }
        }

        v20 = [PKCurrencyAmount alloc];
        if (v10)
        {
          v21 = [v7 preformattedString];
          v22 = [(PKCurrencyAmount *)v20 initWithAmount:v51 exponent:v9 preformattedString:v21];

          v23 = [PKTransactionAmount alloc];
          v24 = [v6 unitIdentifier];
          v25 = [(PKTransactionAmount *)v23 initWithPendingCurrencyAmount:v22 unitIdentifier:v24];
        }

        else
        {
          v26 = [v6 amount];
          v27 = [v26 absoluteValue];
          [v27 formattedStringValue];
          v29 = v28 = v3;
          v22 = [(PKCurrencyAmount *)v20 initWithAmount:v51 exponent:v9 preformattedString:v29];

          v3 = v28;
          v30 = [PKTransactionAmount alloc];
          v24 = [v6 label];
          v31 = [v6 unitIdentifier];
          v32 = v30;
          v4 = v47;
          v25 = [(PKTransactionAmount *)v32 initWithCurrencyAmount:v22 label:v24 unitIdentifier:v31];
        }

        [v3 addObject:v25];
LABEL_21:
      }

      v50 = [obj countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v50);
  }

  v33 = [v49 allObjects];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __60__PKPaymentTransaction_transactionAmountsForMultipleAmounts__block_invoke;
  v56[3] = &unk_1E79D5FD8;
  v34 = v49;
  v57 = v34;
  v35 = [v33 sortedArrayUsingComparator:v56];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v36 = v35;
  v37 = [v36 countByEnumeratingWithState:&v52 objects:v62 count:16];
  v38 = v45;
  if (v37)
  {
    v39 = v37;
    v40 = *v53;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v53 != v40)
        {
          objc_enumerationMutation(v36);
        }

        v42 = [v46 objectForKeyedSubscript:{*(*(&v52 + 1) + 8 * j), v45}];
        if (v42)
        {
          [v38 addObject:v42];
        }
      }

      v39 = [v36 countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v39);
  }

  if ([v3 count])
  {
    [v38 addObjectsFromArray:v3];
  }

  v43 = [v38 copy];

  return v43;
}

uint64_t __60__PKPaymentTransaction_transactionAmountsForMultipleAmounts__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 countForObject:a2];
  v8 = [*(a1 + 32) countForObject:v6];

  if (v7 > v8)
  {
    return -1;
  }

  else
  {
    return v7 < v8;
  }
}

- (id)dictionaryOfFormattedMultipleAmountTotalsByRealCurrency
{
  v44 = *MEMORY[0x1E69E9840];
  v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = [(PKPaymentTransaction *)self transactionAmountsForMultipleAmounts];
  v5 = [v4 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        v10 = [v9 amount];
        v11 = [v10 currency];

        if (([v11 isEqualToString:@"XXX"] & 1) == 0)
        {
          v12 = [v9 amount];
          v13 = [v12 amount];
          [v3 setObject:v13 forKeyedSubscript:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v6);
  }

  if (self->_amount && self->_currencyCode)
  {
    v14 = [v3 objectForKeyedSubscript:?];
    v15 = v14;
    amount = self->_amount;
    if (v14)
    {
      v17 = [v14 decimalNumberByAdding:amount];
      [v3 setObject:v17 forKeyedSubscript:self->_currencyCode];
    }

    else
    {
      [v3 setObject:amount forKeyedSubscript:self->_currencyCode];
    }
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = [v3 keyEnumerator];
  v19 = [v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v34 + 1) + 8 * j);
        v24 = [v3 objectForKeyedSubscript:v23];
        v25 = PKCurrencyAmountCreate(v24, v23, 0);

        v26 = [v25 absoluteValue];
        v27 = [v26 formattedStringValue];

        v28 = [v25 amount];
        v29 = [v28 pk_isNegativeNumber];

        if (v29)
        {
          v30 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F2281668.isa, v27);

          v27 = v30;
        }

        [v33 setObject:v27 forKeyedSubscript:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v20);
  }

  v31 = [v33 copy];

  return v31;
}

- (id)formattedStringForMultipleAmountsForPass:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentTransaction *)self transactionAmountsForMultipleAmounts];
  v6 = [v5 count];
  v7 = [(NSArray *)self->_plans count];
  if (v6 | v7)
  {
    v13 = v7;
    if (v6 >= 2)
    {
      v14 = [(PKPaymentTransaction *)self _preformattedStringForMultipleAmounts];
      v20 = PKPassLocalizedStringWithFormat(@"TRANSACTION_MULTIPLE_AMOUNTS_JOIN_STRING", v4, 0, v15, v16, v17, v18, v19, 0);
      v21 = [v14 componentsJoinedByString:v20];

      if (v14 && [v14 count] >= 2)
      {
        v27 = v21;
      }

      else
      {
        if (v13)
        {
          v33 = 0;
LABEL_15:

LABEL_19:
          goto LABEL_24;
        }

        v27 = PKPassLocalizedStringWithFormat(@"TRANSACTION_MULTIPLE_AMOUNTS_PLUS_OTHER", v4, @"%@", v22, v23, v24, v25, v26, v21);
      }

      v33 = v27;
      goto LABEL_15;
    }

    if (v6 == 1)
    {
      v14 = [v5 firstObject];
      v33 = [(PKPaymentTransaction *)self _formatBalanceAdjustmentTransactionAmount:v14];
      if (v13 <= 1)
      {
        if (v13 != 1)
        {
          goto LABEL_19;
        }

        v34 = @"TRANSACTION_MULTIPLE_AMOUNTS_PLUS_COMMUTE_PLAN";
      }

      else
      {
        v34 = @"TRANSACTION_MULTIPLE_AMOUNTS_PLUS_COMMUTE_PLANS";
      }

      v35 = PKPassLocalizedStringWithFormat(v34, v4, @"%@", v28, v29, v30, v31, v32, v33);

      v33 = v35;
      goto LABEL_19;
    }

    if (v7 >= 2)
    {
      PKPassLocalizedStringWithFormat(@"TRANSACTION_COMMUTE_PLANS_USED", v4, 0, v8, v9, v10, v11, v12, 0);
      v33 = LABEL_22:;
      goto LABEL_24;
    }

    if (v7 == 1)
    {
      PKPassLocalizedStringWithFormat(@"TRANSACTION_COMMUTE_PLAN_USED", v4, 0, v8, v9, v10, v11, v12, 0);
      goto LABEL_22;
    }
  }

  v33 = 0;
LABEL_24:

  return v33;
}

- (id)_preformattedStringForMultiplePlans
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PKPaymentTransaction *)self plans];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) label];
        [v3 safelyAddObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (id)_preformattedStringForMultipleAmounts
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PKPaymentTransaction *)self transactionAmountsForMultipleAmounts];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) amount];
        v10 = [v9 formattedStringValue];

        if (v10)
        {
          v11 = v10;
          if (v11 != &stru_1F227FD28)
          {
            v12 = v11;
            v13 = [(__CFString *)v11 isEqualToString:&stru_1F227FD28];

            if ((v13 & 1) == 0)
            {
              [v3 addObject:v12];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = [v3 copy];

  return v14;
}

- (BOOL)isZeroTransaction
{
  v3 = [(PKPaymentTransaction *)self amount];
  v4 = v3;
  if (v3 && ![v3 pk_isZeroNumber])
  {
    v6 = 0;
  }

  else
  {
    v5 = [(PKPaymentTransaction *)self amounts];
    v6 = [v5 count] == 0;
  }

  return v6;
}

- (int64_t)effectiveTransactionCategory
{
  if (!PKPaymentTransactionRecategorizationEnabled(self) || (result = self->_preferredTransactionCategory) == 0)
  {
    merchant = self->_merchant;

    return [(PKMerchant *)merchant category];
  }

  return result;
}

- (NSString)displayLocation
{
  v3 = [(PKPaymentTransaction *)self effectiveTransactionSource];
  if (v3 <= 8 && (((1 << v3) & 0x1D8) != 0 || v3 == 2 && (!self->_releasedData || !self->_requiresLocation)))
  {
    v4 = 0;
  }

  else
  {
    v4 = PKMerchantFormattedLocationForTransaction(self->_merchant, self);
  }

  return v4;
}

- (CLLocation)location
{
  [(PKPaymentTransaction *)self locationLatitude];
  v4 = v3;
  [(PKPaymentTransaction *)self locationLongitude];
  v6 = CLLocationCoordinate2DMake(v4, v5);
  [(PKPaymentTransaction *)self locationAltitude];
  v8 = v7;
  [(PKPaymentTransaction *)self locationHorizontalAccuracy];
  v10 = v9;
  [(PKPaymentTransaction *)self locationVerticalAccuracy];
  v12 = v11;
  v13 = [(PKPaymentTransaction *)self locationDate];
  if (v6.latitude == 0.0 && v6.longitude == 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    if (CLLocationCoordinate2DIsValid(v6) && v10 > 0.0 && v13)
    {
      v14 = [objc_alloc(MEMORY[0x1E6985C40]) initWithCoordinate:v13 altitude:v6.latitude horizontalAccuracy:v6.longitude verticalAccuracy:v8 timestamp:{v10, v12}];
    }
  }

  return v14;
}

- (void)setLocation:(id)a3
{
  v4 = a3;
  [v4 coordinate];
  v6 = v5;
  [(PKPaymentTransaction *)self setLocationLatitude:?];
  [(PKPaymentTransaction *)self setLocationLongitude:v6];
  [v4 altitude];
  [(PKPaymentTransaction *)self setLocationAltitude:?];
  [v4 horizontalAccuracy];
  [(PKPaymentTransaction *)self setLocationHorizontalAccuracy:?];
  [v4 verticalAccuracy];
  [(PKPaymentTransaction *)self setLocationVerticalAccuracy:?];
  v7 = [v4 timestamp];

  [(PKPaymentTransaction *)self setLocationDate:v7];
}

- (NSDecimalNumber)rewardsTotalAmount
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = self->_rewardsTotalAmount;
  v4 = [(PKPaymentTransactionRewards *)self->_rewards rewardsItems];
  v5 = [v4 count] != 0;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(PKPaymentTransactionRewards *)self->_rewards rewardsItems];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v5 = ([*(*(&v15 + 1) + 8 * i) state] == 3) & v5;
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if (v5)
  {
    v11 = [MEMORY[0x1E696AB90] zero];
    v12 = [(NSDecimalNumber *)v3 compare:v11];

    if (v12 == 1)
    {
      v13 = [(NSDecimalNumber *)v3 pk_negativeValue];

      v3 = v13;
    }
  }

  return v3;
}

- (CLLocation)preferredLocation
{
  if ([(PKMerchant *)self->_merchant shouldIgnoreMapsMatches])
  {
    v3 = [(PKPaymentTransaction *)self effectiveTransactionSource];
  }

  else
  {
    v4 = [(PKMerchant *)self->_merchant mapsMerchant];
    v5 = [v4 location];

    v3 = [(PKPaymentTransaction *)self effectiveTransactionSource];
    if (v5)
    {
      goto LABEL_7;
    }
  }

  if (v3 == 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(PKPaymentTransaction *)self location];
  }

LABEL_7:

  return v5;
}

- (void)setPaymentHash:(id)a3
{
  v4 = [a3 uppercaseString];
  paymentHash = self->_paymentHash;
  self->_paymentHash = v4;
}

- (unint64_t)effectiveTransactionSource
{
  result = self->_transactionSource;
  if (!result)
  {
    return self->_cardType;
  }

  return result;
}

- (BOOL)hasBackingData
{
  transactionType = self->_transactionType;
  if (transactionType > 0xF)
  {
    return 0;
  }

  else
  {
    return ((1 << transactionType) & 0x1FFB) == 0 || self->_hasNotificationServiceData;
  }
}

- (BOOL)supportsFuzzyMatching
{
  v3 = [(PKPaymentTransaction *)self effectiveTransactionSource];
  if ((v3 == 7 || !v3) && (transactionType = self->_transactionType, transactionType - 3 >= 0x14) && (transactionType >= 3 ? (v7 = v3 == 7) : (v7 = 1), !v7 ? (v8 = v3 == 0) : (v8 = 1), v8))
  {
    return self->_hasNotificationServiceData;
  }

  else
  {
    return 0;
  }
}

- (NSString)associatedReceiptUniqueID
{
  receiptIdentifier = self->_receiptIdentifier;
  if (receiptIdentifier)
  {
    receiptProviderIdentifier = self->_receiptProviderIdentifier;
    if (receiptProviderIdentifier)
    {
      receiptProviderIdentifier = PKGenerateTransactionReceiptUniqueID(receiptProviderIdentifier, receiptIdentifier);
      v2 = vars8;
    }
  }

  else
  {
    receiptProviderIdentifier = 0;
  }

  return receiptProviderIdentifier;
}

- (BOOL)updateReasonIsInitialDownload
{
  v3 = objc_opt_class();
  updateReasons = self->_updateReasons;

  return [v3 updateReasonIsInitialDownload:updateReasons];
}

- (id)updateReasonsDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  updateReasons = self->_updateReasons;
  if (updateReasons)
  {
    v5 = 1;
    for (i = 1; i <= updateReasons; i = 1 << v5++)
    {
      if ((i & updateReasons) != 0)
      {
        if (i <= 511)
        {
          if (i <= 15)
          {
            if (i > 3)
            {
              if (i == 4)
              {
                v7 = @"InitialCloudKitSync";
                goto LABEL_48;
              }

              if (i == 8)
              {
                v7 = @"CloudKitDeviceDataRecordChange";
                goto LABEL_48;
              }
            }

            else
            {
              v7 = @"ContactlessInterfaceData";
              if (i == 1)
              {
                goto LABEL_48;
              }

              if (i == 2)
              {
                v7 = @"InAppAuthorizationData";
                goto LABEL_48;
              }
            }
          }

          else if (i <= 63)
          {
            if (i == 16)
            {
              v7 = @"CloudKitTransactionRecordChange";
              goto LABEL_48;
            }

            if (i == 32)
            {
              v7 = @"CloudKitFetchAllRecords";
              goto LABEL_48;
            }
          }

          else
          {
            switch(i)
            {
              case 64:
                v7 = @"NotificationServiceUpdate";
                goto LABEL_48;
              case 128:
                v7 = @"TransactionProcessor";
                goto LABEL_48;
              case 256:
                v7 = @"PeerPaymentMemo";
                goto LABEL_48;
            }
          }
        }

        else if (i >= 0x4000)
        {
          if (i < 0x10000)
          {
            if (i == 0x4000)
            {
              v7 = @"MapsReprocessing";
              goto LABEL_48;
            }

            if (i == 0x8000)
            {
              v7 = @"TransactionAuthentication";
              goto LABEL_48;
            }
          }

          else
          {
            switch(i)
            {
              case 0x10000:
                goto LABEL_43;
              case 0x20000:
                [v3 addObject:@"BarcodeDisplay"];
LABEL_43:
                v7 = @"UploadAfterReset";
LABEL_48:
                [v3 addObject:v7];
                updateReasons = self->_updateReasons;
                continue;
              case 0x40000:
                v7 = @"PreferredCategory";
                goto LABEL_48;
            }
          }
        }

        else if (i <= 2047)
        {
          if (i == 512)
          {
            v7 = @"PeerPaymentMessageReceivedDate";
            goto LABEL_48;
          }

          if (i == 1024)
          {
            v7 = @"FelicaAppletState";
            goto LABEL_48;
          }
        }

        else
        {
          switch(i)
          {
            case 0x800:
              v7 = @"TransitAppletState";
              goto LABEL_48;
            case 0x1000:
              v7 = @"InitialNotificationServiceUpdate";
              goto LABEL_48;
            case 0x2000:
              v7 = @"AnsweredQuestion";
              goto LABEL_48;
          }
        }
      }
    }
  }

  v8 = [v3 description];

  return v8;
}

- (id)description
{
  if (PKTransactionDetailedLoggingEnabled())
  {
    v3 = [(PKPaymentTransaction *)self dictionaryRepresentation];
    v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:2 error:0];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
    }

    else
    {
      v5 = 0;
    }

    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v16 = [v17 stringWithFormat:@"<%@: %p %@>", v19, self, v5];;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v3 appendFormat:@"<%@: %p; Identifier: %@, Service Identifier: %@, Payment Hash: %@", v8, self, self->_identifier, self->_serviceIdentifier, self->_paymentHash];

    v9 = [(PKPaymentTransaction *)self _transactionTypeString];
    v10 = v9;
    if (v9)
    {
      [v3 appendFormat:@", Type: %@", v9];
    }

    v11 = [(PKPaymentTransaction *)self _transitSubtypeString];

    if (v11)
    {
      [v3 appendFormat:@", Subtype: %@", v11];
    }

    v12 = PKPaymentTransactionStatusToString([(PKPaymentTransaction *)self transactionStatus]);

    if (v12)
    {
      [v3 appendFormat:@", Status: %@", v12];
    }

    v13 = [(PKPaymentTransaction *)self _transactionSourceString];

    if (v13)
    {
      [v3 appendFormat:@", Source: %@", v13];
    }

    if (self->_currencyCode)
    {
      [v3 appendFormat:@", Currency: %@", self->_currencyCode];
    }

    if (self->_requestDeviceScoreIdentifier)
    {
      [v3 appendFormat:@", Request Device Score Identifier: %@", self->_requestDeviceScoreIdentifier];
    }

    if (self->_sendDeviceScoreIdentifier)
    {
      [v3 appendFormat:@", Send Device Score Identifier: %@", self->_sendDeviceScoreIdentifier];
    }

    v14 = [(PKPaymentTransactionBankConnectMetadata *)self->_bankConnectMetadata transactionIdentifier];

    if (v14)
    {
      v15 = [(PKPaymentTransactionBankConnectMetadata *)self->_bankConnectMetadata transactionIdentifier];
      [v3 appendFormat:@", Bank Connect Identifier: %@", v15];
    }

    [v3 appendString:@">"];

    objc_autoreleasePoolPop(v6);
    v16 = [v3 copy];
  }

  return v16;
}

- (id)_transactionSourceString
{
  transactionSource = self->_transactionSource;
  if (transactionSource > 8)
  {
    return 0;
  }

  else
  {
    return off_1E79E1C40[transactionSource];
  }
}

- (id)_transactionTypeString
{
  v2 = [(PKPaymentTransaction *)self transactionType];
  if (v2 > 0x16)
  {
    return 0;
  }

  else
  {
    return off_1E79E1C88[v2];
  }
}

- (id)_transitSubtypeString
{
  if ([(PKPaymentTransaction *)self transactionType]!= 2)
  {
    return 0;
  }

  v3 = [(PKPaymentTransaction *)self transitType];
  if (v3 > 258)
  {
    if (v3 <= 514)
    {
      v4 = @"bike";
      v19 = @"deposit";
      v20 = @"refund";
      if (v3 != 514)
      {
        v20 = 0;
      }

      if (v3 != 513)
      {
        v19 = v20;
      }

      if (v3 != 261)
      {
        v4 = v19;
      }

      v7 = @"taxi";
      v21 = @"ferry";
      if (v3 != 260)
      {
        v21 = 0;
      }

      if (v3 != 259)
      {
        v7 = v21;
      }

      v10 = v3 <= 260;
    }

    else
    {
      v4 = @"renewal";
      v12 = @"greenCar";
      v13 = @"metroUpgrade";
      if (v3 != 1026)
      {
        v13 = 0;
      }

      if (v3 != 1025)
      {
        v12 = v13;
      }

      if (v3 != 518)
      {
        v4 = v12;
      }

      v7 = @"purchase";
      v14 = @"withdrawal";
      v15 = @"cardRead";
      if (v3 != 517)
      {
        v15 = 0;
      }

      if (v3 != 516)
      {
        v14 = v15;
      }

      if (v3 != 515)
      {
        v7 = v14;
      }

      v10 = v3 <= 517;
    }
  }

  else if (v3 <= 4)
  {
    v4 = @"metro";
    v16 = @"bus";
    v17 = @"train";
    if (v3 != 4)
    {
      v17 = 0;
    }

    if (v3 != 3)
    {
      v16 = v17;
    }

    if (v3 != 2)
    {
      v4 = v16;
    }

    v7 = @"unknown";
    v18 = @"transit";
    if (v3 != 1)
    {
      v18 = 0;
    }

    if (v3)
    {
      v7 = v18;
    }

    v10 = v3 <= 1;
  }

  else
  {
    v4 = @"cableCar";
    v5 = @"shinkansen";
    v6 = @"maglev";
    if (v3 != 258)
    {
      v6 = 0;
    }

    if (v3 != 257)
    {
      v5 = v6;
    }

    if (v3 != 8)
    {
      v4 = v5;
    }

    v7 = @"other";
    v8 = @"special";
    v9 = @"lightrail";
    if (v3 != 7)
    {
      v9 = 0;
    }

    if (v3 != 6)
    {
      v8 = v9;
    }

    if (v3 != 5)
    {
      v7 = v8;
    }

    v10 = v3 <= 7;
  }

  if (v10)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

+ (id)transactionNotificationStatusStringForTransaction:(id)a3 personContact:(id)a4
{
  v5 = a3;
  v6 = [a4 givenName];
  v7 = [v5 transactionStatus];
  if ((v7 + 1) <= 9)
  {
    if (((1 << (v7 + 1)) & 0x3E7) != 0)
    {
      v8 = [v5 transactionType];
      v9 = 0;
      v10 = v8 == 13 || v8 == 0;
      if (!v10 || !v6)
      {
        goto LABEL_12;
      }

      PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_7.isa, &stru_1F2281668.isa, v6);
      goto LABEL_10;
    }

    if (v7 == 2)
    {
      if (v6)
      {
        PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_8.isa, &stru_1F2281668.isa, v6);
        v11 = LABEL_10:;
LABEL_11:
        v9 = v11;
        goto LABEL_12;
      }

      v13 = @"PAYMENT_TRANSACTION_DECLINED";
    }

    else
    {
      if (v6)
      {
        PKLocalizedPeerPaymentString(&cfstr_PeerPaymentTra_9.isa, &stru_1F2281668.isa, v6);
        goto LABEL_10;
      }

      v13 = @"PAYMENT_TRANSACTION_REFUND";
    }

    v11 = PKLocalizedPaymentString(&v13->isa, 0);
    goto LABEL_11;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (PKCurrencyAmount)currencyAmount
{
  if (self->_amount)
  {
    v4 = [(NSString *)self->_currencyCode length];
    if (v4)
    {
      amount = self->_amount;
      v6 = [MEMORY[0x1E696AB90] notANumber];
      LOBYTE(amount) = [(NSDecimalNumber *)amount isEqualToNumber:v6];

      if (amount)
      {
        v4 = 0;
      }

      else
      {
        v4 = [[PKCurrencyAmount alloc] initWithAmount:self->_amount currency:self->_currencyCode exponent:0];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PKCurrencyAmount)nominalCurrencyAmount
{
  if (self->_nominalAmount)
  {
    v4 = [(NSString *)self->_currencyCode length];
    if (v4)
    {
      nominalAmount = self->_nominalAmount;
      v6 = [MEMORY[0x1E696AB90] notANumber];
      LOBYTE(nominalAmount) = [(NSDecimalNumber *)nominalAmount isEqualToNumber:v6];

      if (nominalAmount)
      {
        v4 = 0;
      }

      else
      {
        v4 = [[PKCurrencyAmount alloc] initWithAmount:self->_nominalAmount currency:self->_currencyCode exponent:0];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PKCurrencyAmount)subtotalCurrencyAmount
{
  if (self->_subtotalAmount)
  {
    v4 = [(NSString *)self->_currencyCode length];
    if (v4)
    {
      subtotalAmount = self->_subtotalAmount;
      v6 = [MEMORY[0x1E696AB90] notANumber];
      LOBYTE(subtotalAmount) = [(NSDecimalNumber *)subtotalAmount isEqualToNumber:v6];

      if (subtotalAmount)
      {
        v4 = 0;
      }

      else
      {
        v4 = [[PKCurrencyAmount alloc] initWithAmount:self->_subtotalAmount currency:self->_currencyCode exponent:0];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PKCurrencyAmount)primaryFundingSourceCurrencyAmount
{
  if (self->_primaryFundingSourceAmount)
  {
    v4 = [(NSString *)self->_primaryFundingSourceCurrencyCode length];
    if (v4)
    {
      primaryFundingSourceAmount = self->_primaryFundingSourceAmount;
      v6 = [MEMORY[0x1E696AB90] notANumber];
      LOBYTE(primaryFundingSourceAmount) = [(NSDecimalNumber *)primaryFundingSourceAmount isEqualToNumber:v6];

      if (primaryFundingSourceAmount)
      {
        v4 = 0;
      }

      else
      {
        v4 = [[PKCurrencyAmount alloc] initWithAmount:self->_primaryFundingSourceAmount currency:self->_primaryFundingSourceCurrencyCode exponent:0];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PKCurrencyAmount)secondaryFundingSourceCurrencyAmount
{
  if (self->_secondaryFundingSourceAmount)
  {
    v4 = [(NSString *)self->_secondaryFundingSourceCurrencyCode length];
    if (v4)
    {
      secondaryFundingSourceAmount = self->_secondaryFundingSourceAmount;
      v6 = [MEMORY[0x1E696AB90] notANumber];
      LOBYTE(secondaryFundingSourceAmount) = [(NSDecimalNumber *)secondaryFundingSourceAmount isEqualToNumber:v6];

      if (secondaryFundingSourceAmount)
      {
        v4 = 0;
      }

      else
      {
        v4 = [[PKCurrencyAmount alloc] initWithAmount:self->_secondaryFundingSourceAmount currency:self->_secondaryFundingSourceCurrencyCode exponent:0];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PKCurrencyAmount)rewardsTotalCurrencyAmount
{
  if (self->_rewardsTotalAmount)
  {
    v4 = [(NSString *)self->_rewardsTotalCurrencyCode length];
    if (v4)
    {
      rewardsTotalAmount = self->_rewardsTotalAmount;
      v6 = [MEMORY[0x1E696AB90] notANumber];
      LOBYTE(rewardsTotalAmount) = [(NSDecimalNumber *)rewardsTotalAmount isEqualToNumber:v6];

      if (rewardsTotalAmount)
      {
        v4 = 0;
      }

      else
      {
        v4 = [[PKCurrencyAmount alloc] initWithAmount:self->_rewardsTotalAmount currency:self->_rewardsTotalCurrencyCode exponent:0];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)formattedAwards
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_barcodeIdentifier && [(NSArray *)self->_awards count])
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = self->_awards;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if ([v3 length])
          {
            [v3 appendString:@"\n"];
          }

          v10 = [v9 formattedStringValue];
          [v3 appendString:v10];
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v11 = [v3 copy];
  }

  else if (self->_paymentRewardsRedemption)
  {
    v11 = PKLocalizedPayWithPointsString(&cfstr_TransactionNot_0.isa, 0);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)formattedBalanceAdjustmentAmount
{
  v3 = [(PKPaymentTransaction *)self currencyAmount];
  v4 = [(PKPaymentTransaction *)self _formatBalanceAdjustmentAmount:v3];

  return v4;
}

- (NSString)formattedBalanceAdjustmentSubtotalAmount
{
  v3 = [(PKPaymentTransaction *)self subtotalCurrencyAmount];
  v4 = [(PKPaymentTransaction *)self _formatBalanceAdjustmentAmount:v3];

  return v4;
}

- (NSString)formattedBalanceAdjustmentAbsoluteAmount
{
  v3 = [(PKPaymentTransaction *)self currencyAmount];
  v4 = [v3 amount];
  v5 = [v4 pk_absoluteValue];
  v6 = [v3 currency];
  v7 = PKCurrencyAmountCreate(v5, v6, 0);

  v8 = [(PKPaymentTransaction *)self _formatBalanceAdjustmentAmount:v7];

  return v8;
}

+ (id)formattedBalanceAdjustmentForTransactionAmount:(id)a3 transactionType:(int64_t)a4 adjustmentType:(int64_t)a5 peerPaymentType:(int64_t)a6 isBankConnectTransaction:(BOOL)a7 bankConnectCreditDebitIndicator:(int64_t)a8 featureIdentifier:(unint64_t)a9
{
  v10 = a7;
  v15 = a3;
  v16 = [v15 amount];
  v17 = [v15 isPending];

  LOBYTE(v20) = v17;
  v18 = [a1 formattedBalanceAdjustmentForCurrencyAmount:v16 transactionType:a4 adjustmentType:a5 peerPaymentType:a6 featureIdentifier:a9 isBankConnectTransaction:v10 bankConnectCreditDebitIndicator:a8 pending:v20];

  return v18;
}

+ (BOOL)isPositiveBalanceAdjustmentForCurrencyAmount:(id)a3 transactionType:(int64_t)a4 adjustmentType:(int64_t)a5 peerPaymentType:(int64_t)a6 isBankConnectTransaction:(BOOL)a7 bankConnectCreditDebitIndicator:(int64_t)a8 featureIdentifier:(unint64_t)a9
{
  v10 = a7;
  v14 = a3;
  v15 = v14;
  if (v10)
  {
    v16 = a8 == 1;
    goto LABEL_3;
  }

  v18 = [v14 amount];
  v19 = [MEMORY[0x1E696AB90] zero];
  v20 = [v18 compare:v19];

  if (v20 == -1 || a4 == 3 && a6 == 2)
  {
    LOBYTE(v17) = 1;
    goto LABEL_10;
  }

  LOBYTE(v17) = 1;
  if (a4 <= 7)
  {
    if (a4 == 6)
    {
      goto LABEL_10;
    }

    if (a4 == 7 && a5 < 0x13)
    {
      v17 = 0x43A9Au >> a5;
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  if ((a4 - 8) < 3)
  {
    goto LABEL_10;
  }

  if (a4 != 11)
  {
LABEL_19:
    LOBYTE(v17) = 0;
    goto LABEL_10;
  }

  v16 = a9 == 5;
LABEL_3:
  LOBYTE(v17) = v16;
LABEL_10:

  return v17 & 1;
}

+ (id)formattedBalanceAdjustmentForCurrencyAmount:(id)a3 transactionType:(int64_t)a4 adjustmentType:(int64_t)a5 peerPaymentType:(int64_t)a6 featureIdentifier:(unint64_t)a7 isBankConnectTransaction:(BOOL)a8 bankConnectCreditDebitIndicator:(int64_t)a9 pending:(BOOL)a10
{
  v10 = a8;
  v15 = a3;
  if (!v15)
  {
    v23 = 0;
    goto LABEL_13;
  }

  v16 = v15;
  v17 = [PKPaymentTransaction isPositiveBalanceAdjustmentForCurrencyAmount:v15 transactionType:a4 adjustmentType:a5 peerPaymentType:a6 isBankConnectTransaction:v10 bankConnectCreditDebitIndicator:a9 featureIdentifier:a7];
  v18 = [v16 amount];
  v19 = [MEMORY[0x1E696AB90] zero];
  v20 = [v18 compare:v19];

  if (v20 == -1)
  {
    v21 = [v16 negativeValue];

    v16 = v21;
  }

  v22 = [v16 formattedStringValue];
  v23 = v22;
  if (!a10)
  {
    if (v17)
    {
      if (a7 != 5)
      {
        v24 = PKLocalizedPaymentString(&cfstr_AmountFormatRe.isa, &stru_1F2281668.isa, v22);
LABEL_11:

        v23 = v24;
      }
    }

    else if (a7 == 5)
    {
      v25 = [v16 negativeValue];
      v24 = [v25 formattedStringValue];

      v23 = v25;
      goto LABEL_11;
    }
  }

LABEL_13:

  return v23;
}

- (id)_formatBalanceAdjustmentTransactionAmount:(id)a3
{
  transactionType = self->_transactionType;
  adjustmentType = self->_adjustmentType;
  peerPaymentType = self->_peerPaymentType;
  v7 = a3;
  v8 = [PKPaymentTransaction formattedBalanceAdjustmentForTransactionAmount:v7 transactionType:transactionType adjustmentType:adjustmentType peerPaymentType:peerPaymentType isBankConnectTransaction:[(PKPaymentTransaction *)self isBankConnectTransaction] bankConnectCreditDebitIndicator:[(PKPaymentTransactionBankConnectMetadata *)self->_bankConnectMetadata creditDebitIndicator] featureIdentifier:[(PKPaymentTransaction *)self featureIdentifier]];

  return v8;
}

- (id)_formatBalanceAdjustmentAmount:(id)a3
{
  transactionType = self->_transactionType;
  adjustmentType = self->_adjustmentType;
  peerPaymentType = self->_peerPaymentType;
  v7 = a3;
  LOBYTE(v10) = 0;
  v8 = [PKPaymentTransaction formattedBalanceAdjustmentForCurrencyAmount:v7 transactionType:transactionType adjustmentType:adjustmentType peerPaymentType:peerPaymentType featureIdentifier:[(PKPaymentTransaction *)self featureIdentifier] isBankConnectTransaction:[(PKPaymentTransaction *)self isBankConnectTransaction] bankConnectCreditDebitIndicator:[(PKPaymentTransactionBankConnectMetadata *)self->_bankConnectMetadata creditDebitIndicator] pending:v10];

  return v8;
}

- (CLLocation)startStationLocation
{
  if (self->_startStationCode)
  {
    if (self->_startStationLatitude == 0.0 || self->_startStationLongitude == 0.0)
    {
      v3 = 0;
    }

    else
    {
      v3 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:self->_startStationLatitude longitude:self->_startStationLongitude];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setStartStationLocation:(id)a3
{
  [a3 coordinate];
  self->_startStationLatitude = v4;
  self->_startStationLongitude = v5;
}

- (CLLocation)endStationLocation
{
  if (self->_endStationCode)
  {
    if (self->_endStationLatitude == 0.0 || self->_endStationLongitude == 0.0)
    {
      v3 = 0;
    }

    else
    {
      v3 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:self->_endStationLatitude longitude:self->_endStationLongitude];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEndStationLocation:(id)a3
{
  [a3 coordinate];
  self->_endStationLatitude = v4;
  self->_endStationLongitude = v5;
}

- (id)_commutePlanInformationForPass:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_plans)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = self->_plans;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v30 + 1) + 8 * i) label];
          if ([v11 length])
          {
            [v5 addObject:v11];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v8);
    }

    v12 = [v5 count];
    v18 = @"TRANSACTION_COMMUTE_NAMED_PLANS_USED";
    if (v12 == 1)
    {
      v18 = @"TRANSACTION_COMMUTE_NAMED_PLAN_USED";
    }

    if (v12)
    {
      v19 = v18;
    }

    else
    {
      v19 = @"TRANSACTION_COMMUTE_PLAN_USED";
    }

    v20 = PKPassLocalizedStringWithFormat(v19, v4, 0, v13, v14, v15, v16, v17, 0);
    v21 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v5];
    v28 = PKStringWithValidatedFormat(v20, @"%@", v22, v23, v24, v25, v26, v27, v21);
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)formattedTransitTransactionMessageForPass:(id)a3 suppressNoChargeAmount:(BOOL)a4
{
  v6 = a3;
  v7 = [(PKPaymentTransaction *)self isZeroTransaction];
  v8 = [(PKPaymentTransaction *)self transitType];
  v9 = [(PKPaymentTransaction *)self startStation];
  v10 = [(PKPaymentTransaction *)self endStation];
  v11 = v10;
  if (v9 && v10)
  {
    PKLocalizedPaymentString(&cfstr_TransitTransac_28.isa, &cfstr_12_0.isa, v9, v10);
    v12 = LABEL_4:;
LABEL_10:
    v14 = v12;
    goto LABEL_11;
  }

  if (v9 | v10)
  {
    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = v10;
    }

    v12 = v13;
    goto LABEL_10;
  }

  if (!v7)
  {
    goto LABEL_27;
  }

  v14 = 0;
  if (v8 <= 256)
  {
    if ((v8 - 1) >= 8)
    {
      goto LABEL_11;
    }

LABEL_17:
    v17 = [(PKPaymentTransaction *)self _commutePlanInformationForPass:v6];
    if ([(PKPaymentTransaction *)self enRoute]|| !v17)
    {
      if (self->_transactionStatus)
      {
        v14 = 0;
        if ([(PKPaymentTransaction *)self enRoute]|| a4)
        {
          goto LABEL_31;
        }

        v19 = @"TRANSIT_NOTIFICATION_NO_CHARGE";
      }

      else
      {
        v19 = @"TRANSIT_NOTIFICATION_PENDING";
      }

      v18 = PKLocalizedPaymentString(&v19->isa, 0);
    }

    else
    {
      v18 = v17;
    }

    v14 = v18;
LABEL_31:

    goto LABEL_11;
  }

  if ((v8 - 257) < 5)
  {
    goto LABEL_17;
  }

  if (v8 != 515)
  {
    if (v8 != 517)
    {
      goto LABEL_11;
    }

    if (a4)
    {
LABEL_27:
      v14 = 0;
      goto LABEL_11;
    }
  }

  if (!self->_transactionStatus)
  {
    v20 = @"TRANSIT_NOTIFICATION_PENDING";
    goto LABEL_37;
  }

  v14 = 0;
  if (![(PKPaymentTransaction *)self enRoute]&& !a4)
  {
    v20 = @"TRANSIT_NOTIFICATION_NO_CHARGE";
LABEL_37:
    PKLocalizedPaymentString(&v20->isa, 0);
    goto LABEL_4;
  }

LABEL_11:
  v15 = v14;

  return v14;
}

- (NSSet)answeredQuestionsOnThisDevice
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_questions;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 answered] && objc_msgSend(v9, "answeredOnThisDevice"))
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v10 = [v3 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSSet)unansweredQuestions
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [MEMORY[0x1E695DF00] date];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_questions;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = *v17;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v16 + 1) + 8 * i);
      if (([v10 answered] & 1) == 0)
      {
        expirationDate = self->_expirationDate;
        if (expirationDate)
        {
          [(NSDate *)expirationDate timeIntervalSinceDate:v4];
          if (v12 >= 0.0)
          {
            continue;
          }

          if (self->_expirationDate)
          {
            goto LABEL_11;
          }
        }

        [v4 timeIntervalSinceDate:self->_transactionDate];
        if (v13 <= 259200.0)
        {
LABEL_11:
          [v3 addObject:v10];
        }
      }
    }

    v7 = [(NSSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v7);
LABEL_14:

  if ([v3 count])
  {
    v14 = [v3 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)answeredQuestion:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_questions;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 type] == a3)
        {
          [v10 setAnswered:1];
          [v10 setAnsweredOnThisDevice:1];
        }
      }

      v7 = [(NSSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(PKPaymentTransaction *)self addUpdateReasons:0x2000];
}

- (BOOL)reviewed
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_questions;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) answered])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (unint64_t)disputeStatus
{
  v2 = [(PKPaymentTransaction *)self latestDisputeEvent];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 status];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PKAccountServicingEventStatusDetails)disputeStatusDetails
{
  v2 = [(PKPaymentTransaction *)self latestDisputeEvent];
  v3 = [v2 statusDetails];

  return v3;
}

- (unint64_t)disputeType
{
  v2 = [(PKPaymentTransaction *)self latestDisputeEvent];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 activityType];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)disputeOpenDate
{
  v2 = [(PKPaymentTransaction *)self latestDisputeEvent];
  v3 = [v2 openDate];

  return v3;
}

- (NSDate)disputeLastUpdatedDate
{
  v2 = [(PKPaymentTransaction *)self latestDisputeEvent];
  v3 = [v2 lastUpdatedDate];

  return v3;
}

- (PKAccountServicingEvent)latestDisputeEvent
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_servicingEvents;
  v3 = [(NSOrderedSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 type] == 4)
        {
          v7 = [v6 items];
          v3 = [v7 anyObject];

          goto LABEL_11;
        }
      }

      v3 = [(NSOrderedSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)impactsPromotionProgress
{
  transactionType = self->_transactionType;
  v4 = transactionType > 0xE;
  v5 = (1 << transactionType) & 0x4003;
  v7 = !v4 && v5 != 0 && (self->_transactionStatus & 0xFFFFFFFFFFFFFFFDLL) == 1;
  v8 = [(PKPaymentTransactionRewards *)self->_rewards promotionalRewardsItems];
  v9 = [v8 count];

  v10 = [(PKPaymentTransactionRewards *)self->_rewards rewardsItems];
  v11 = [v10 pk_containsObjectPassingTest:&__block_literal_global_1258];

  v12 = [(PKPaymentTransactionRewards *)self->_rewardsInProgress rewardsItems];
  v13 = [v12 count];

  if (v7)
  {
    v14 = (v9 != 0) | v11 | (v13 != 0);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (unint64_t)featureIdentifier
{
  v2 = self->_accountType - 1;
  if (v2 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1ADB9B348[v2];
  }
}

+ (id)transactionFromFKPaymentTransaction:(id)a3 institution:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [a1 transactionFromFKPaymentTransaction:v6];
    if (v7)
    {
      [v8 setBankConnectRoundTransactionDate:{objc_msgSend(v7, "timestampSuitableForUserDisplay") ^ 1}];
    }

    if ([v6 isBankConnectTransaction])
    {
      v9 = PKPaymentTransactionBankConnectMetadataFromTransaction(v6, v7);
      [v8 setBankConnectMetadata:v9];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)transactionFromFKPaymentTransaction:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKPaymentTransaction);
  v5 = [v3 transactionId];
  [(PKPaymentTransaction *)v4 setIdentifier:v5];

  v6 = [v3 paymentHash];
  if (v6)
  {
    [(PKPaymentTransaction *)v4 setPaymentHash:v6];
  }

  else
  {
    v7 = [v3 applePayInsight];
    v8 = [v7 paymentHash];
    [(PKPaymentTransaction *)v4 setPaymentHash:v8];
  }

  v9 = [v3 amount];
  v10 = [v9 decimal];
  [(PKPaymentTransaction *)v4 setAmount:v10];

  v11 = [v3 amount];
  v12 = [v11 currency];
  [(PKPaymentTransaction *)v4 setCurrencyCode:v12];

  v13 = [v3 transactionDate];
  [(PKPaymentTransaction *)v4 setTransactionDate:v13];

  v14 = [v3 transactionStatusChangedDate];
  [(PKPaymentTransaction *)v4 setTransactionStatusChangedDate:v14];

  [(PKPaymentTransaction *)v4 setTransactionSource:0];
  v15 = [v3 status];
  if (v15 >= 9)
  {
    v16 = -1;
  }

  else
  {
    v16 = v15;
  }

  [(PKPaymentTransaction *)v4 setTransactionStatus:v16];
  v17 = [v3 type];
  if ((v17 - 1) >= 0x16)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  [(PKPaymentTransaction *)v4 setTransactionType:v18];
  v19 = [v3 transactionDescription];
  [(PKPaymentTransaction *)v4 setMerchantProvidedDescription:v19];

  v20 = [v3 localizedTypeDescription];
  [(PKPaymentTransaction *)v4 setLocalizedTypeDescription:v20];

  v21 = [v3 applePayInsight];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 location];
    [(PKPaymentTransaction *)v4 setLocation:v23];

    v24 = [v22 isCoarseLocation];
    -[PKPaymentTransaction setCoarseLocation:](v4, "setCoarseLocation:", [v24 BOOLValue]);

    v25 = [v22 isIssuerInstallmentTransaction];
    -[PKPaymentTransaction setIsIssuerInstallmentTransaction:](v4, "setIsIssuerInstallmentTransaction:", [v25 BOOLValue]);

    v26 = [v22 issuerInstallmentManagementURL];
    [(PKPaymentTransaction *)v4 setIssuerInstallmentManagementURL:v26];
  }

  v27 = [v3 foreignAmount];
  if (v27)
  {
    v28 = objc_alloc_init(PKPaymentTransactionForeignExchangeInformation);
    v29 = [v27 decimal];
    v30 = [v27 currency];
    v31 = PKCurrencyAmountCreate(v29, v30, 0);
    [(PKPaymentTransactionForeignExchangeInformation *)v28 setDestinationCurrencyAmount:v31];

    v32 = [v3 foreignCurrencyExchangeRate];
    [(PKPaymentTransactionForeignExchangeInformation *)v28 setExchangeRate:v32];

    [(PKPaymentTransaction *)v4 setForeignExchangeInformation:v28];
  }

  v33 = v3;
  if (v33)
  {
    v34 = objc_alloc_init(PKMerchant);
    v35 = [v33 transactionDescription];
    [(PKMerchant *)v34 setName:v35];

    v36 = v33;
    v37 = [v36 mapsInsight];
    v38 = [v37 categoryAndSource];
    v39 = [v38 category];

    v40 = PKMerchantCategoryFromFKPaymentTransactionCategory(v39);
    if (!v40)
    {
      if ([v36 merchantCategoryCode] < 1)
      {
        v40 = 0;
      }

      else
      {
        v41 = objc_alloc_init(PKMerchantCategoryCodeMap);
        v40 = -[PKMerchantCategoryCodeMap categoryForIndustryCode:](v41, "categoryForIndustryCode:", [v36 merchantCategoryCode]);
      }
    }

    [(PKMerchant *)v34 setFallbackcategory:v40];
    -[PKMerchant setIndustryCode:](v34, "setIndustryCode:", [v36 merchantCategoryCode]);
    v42 = [v36 mapsInsight];
    v43 = [v36 applePayInsight];
    if (v42 | v43)
    {
      if (v42)
      {
        v44 = [v42 merchant];
        if (v44)
        {
          v45 = objc_alloc_init(PKMapsMerchant);
          -[PKMapsMerchant setIdentifier:](v45, "setIdentifier:", [v44 muid]);
          -[PKMapsMerchant setResultProviderIdentifier:](v45, "setResultProviderIdentifier:", [v44 resultProviderIdentifier]);
          v46 = [v44 name];
          [(PKMapsMerchant *)v45 setName:v46];

          v47 = [v44 phoneNumber];
          [(PKMapsMerchant *)v45 setPhoneNumber:v47];

          v48 = [v44 url];
          [(PKMapsMerchant *)v45 setURL:v48];

          v49 = [v44 heroImageURL];
          [(PKMapsMerchant *)v45 setHeroImageURL:v49];

          v50 = [v44 heroImageAttributionName];
          [(PKMapsMerchant *)v45 setHeroImageAttributionName:v50];

          -[PKMapsMerchant setCategory:](v45, "setCategory:", PKMerchantCategoryFromFKMerchantCategory([v44 category]));
          v51 = [v44 mapsCategoryIdentifier];
          [(PKMapsMerchant *)v45 setDetailedCategory:v51];

          v52 = [v44 encodedStylingInfo];
          [(PKMapsMerchant *)v45 setStylingInfoData:v52];

          v53 = [v44 businessChatURL];
          [(PKMapsMerchant *)v45 setBusinessChatURL:v53];

          v54 = [v44 lastProcessedDate];
          [(PKMapsMerchant *)v45 setLastProcessedDate:v54];

          v55 = [v44 postalAddress];
          [(PKMapsMerchant *)v45 setPostalAddress:v55];

          v56 = [v44 location];
          v57 = v56;
          if (v56)
          {
            [v56 coordinate];
            [(PKMapsMerchant *)v45 setLocationLatitude:?];
            [v57 coordinate];
            [(PKMapsMerchant *)v45 setLocationLongitude:v58];
          }
        }

        else
        {
          v45 = 0;
        }

        [(PKMerchant *)v34 setMapsMerchant:v45];
        v62 = [v42 brand];

        if (v62)
        {
          v63 = [v42 brand];
          if (v63)
          {
            v64 = objc_alloc_init(PKMapsBrand);
            -[PKMapsBrand setIdentifier:](v64, "setIdentifier:", [v63 muid]);
            -[PKMapsBrand setResultProviderIdentifier:](v64, "setResultProviderIdentifier:", [v63 resultProviderIdentifier]);
            [v63 name];
            v65 = v97 = v42;
            [(PKMapsBrand *)v64 setName:v65];

            v66 = [v63 phoneNumber];
            [(PKMapsBrand *)v64 setPhoneNumber:v66];

            v67 = [v63 url];
            [(PKMapsBrand *)v64 setURL:v67];

            v68 = [v63 heroImageURL];
            [(PKMapsBrand *)v64 setHeroImageURL:v68];

            v69 = [v63 heroImageAttributionName];
            [(PKMapsBrand *)v64 setHeroImageAttributionName:v69];

            -[PKMapsBrand setCategory:](v64, "setCategory:", PKMerchantCategoryFromFKMerchantCategory([v63 category]));
            v70 = [v63 mapsCategoryIdentifier];
            [(PKMapsBrand *)v64 setDetailedCategory:v70];

            v71 = [v63 encodedStylingInfo];
            [(PKMapsBrand *)v64 setStylingInfoData:v71];

            v72 = [v63 businessChatURL];
            [(PKMapsBrand *)v64 setBusinessChatURL:v72];

            v73 = [v63 lastProcessedDate];
            [(PKMapsBrand *)v64 setLastProcessedDate:v73];

            v74 = [v63 logoURL];
            [(PKMapsBrand *)v64 setLogoURL:v74];

            v42 = v97;
          }

          else
          {
            v64 = 0;
          }

          [(PKMerchant *)v34 setMapsBrand:v64];
        }
      }

      if (v43)
      {
        v75 = v42;
        v76 = [v43 merchantRawName];
        [(PKMerchant *)v34 setRawName:v76];

        v77 = [v43 industryCategory];
        [(PKMerchant *)v34 setIndustryCategory:v77];

        v78 = [v43 merchantIdentifier];
        [(PKMerchant *)v34 setMerchantIdentifier:v78];

        v79 = [v43 merchantRawCANL];
        [(PKMerchant *)v34 setRawCANL:v79];

        v80 = [v43 merchantRawCity];
        [(PKMerchant *)v34 setCity:v80];

        v81 = [v43 merchantRawCity];
        [(PKMerchant *)v34 setRawCity:v81];

        v82 = [v43 merchantState];
        [(PKMerchant *)v34 setState:v82];

        v83 = [v43 merchantRawState];
        [(PKMerchant *)v34 setRawState:v83];

        v84 = [v43 merchantZip];
        [(PKMerchant *)v34 setZip:v84];

        v85 = [v43 merchantRawCountry];
        [(PKMerchant *)v34 setRawCountry:v85];

        v86 = [v43 merchantCleanConfidenceLevel];
        v87 = v86;
        if (v86)
        {
          -[PKMerchant setCleanConfidenceLevel:](v34, "setCleanConfidenceLevel:", [v86 integerValue]);
        }

        v88 = [v43 adamIdentifier];
        v89 = v88;
        if (v88)
        {
          -[PKMerchant setAdamIdentifier:](v34, "setAdamIdentifier:", [v88 integerValue]);
        }

        v90 = [v43 webURL];
        [(PKMerchant *)v34 setOriginURL:v90];

        v91 = [v43 webMerchantIdentifier];
        [(PKMerchant *)v34 setWebMerchantIdentifier:v91];

        v92 = [v43 webMerchantName];
        [(PKMerchant *)v34 setWebMerchantName:v92];

        v42 = v75;
      }

      [(PKMerchant *)v34 setMapsDataIsFromLocalMatch:0];
    }

    else
    {
      v59 = [v36 transactionDescription];
      v60 = PKMerchantFormattedDisplayName(v59);

      [(PKMerchant *)v34 setRawName:v60];
      v61 = [v36 transactionDescription];
      [(PKMerchant *)v34 setRawCANL:v61];

      [(PKMerchant *)v34 setUseRawMerchantData:1];
    }
  }

  else
  {
    v34 = 0;
  }

  [(PKPaymentTransaction *)v4 setMerchant:v34];
  v93 = PKPaymentTransactionBankConnectMetadataFromTransaction(v33, 0);
  [(PKPaymentTransaction *)v4 setBankConnectMetadata:v93];

  v94 = [v33 userInsight];
  v95 = v94;
  if (v94)
  {
    -[PKPaymentTransaction setPreferredTransactionCategory:](v4, "setPreferredTransactionCategory:", PKMerchantCategoryFromFKPaymentTransactionCategory([v94 transactionCategory]));
  }

  return v4;
}

- (FKPaymentTransaction)fkPaymentTransaction
{
  v25 = objc_alloc(MEMORY[0x1E6967E30]);
  v30 = [(PKPaymentTransaction *)self identifier];
  v31 = [(PKPaymentTransaction *)self _fkAmount];
  v29 = [(PKPaymentTransaction *)self foreignExchangeInformation];
  v24 = [v29 fkForeignAmount];
  v28 = [(PKPaymentTransaction *)self foreignExchangeInformation];
  v23 = [v28 exchangeRate];
  v21 = [(PKPaymentTransaction *)self transactionDate];
  v20 = [(PKPaymentTransaction *)self transactionStatusChangedDate];
  v19 = [(PKPaymentTransaction *)self _fkPaymentTransactionType];
  v18 = [(PKPaymentTransaction *)self _fkPaymentTransactionStatus];
  v27 = [(PKPaymentTransaction *)self merchant];
  v15 = [v27 displayName];
  v22 = [(PKPaymentTransaction *)self merchant];
  v14 = [v22 displayName];
  v17 = [(PKPaymentTransaction *)self localizedTypeDescription];
  v16 = [(PKPaymentTransaction *)self _fkCreditDebitIndicator];
  v3 = [(PKPaymentTransaction *)self _fkActions];
  v4 = [(PKPaymentTransaction *)self isBankConnectTransaction];
  v5 = [(PKPaymentTransaction *)self merchant];
  v6 = [v5 industryCode];
  v7 = [(PKPaymentTransaction *)self hasNotificationServiceData];
  v8 = [(PKPaymentTransaction *)self paymentHash];
  v9 = [(PKPaymentTransaction *)self _fkTransactionInsights];
  v10 = [(PKPaymentTransaction *)self serviceIdentifier];
  LOBYTE(v13) = v7;
  LOBYTE(v12) = v4;
  v26 = [v25 initWithTransactionIdentifier:v30 amount:v31 foreignAmount:v24 foreignCurrencyExchangeRate:v23 transactionDate:v21 transactionStatusChangedDate:v20 type:v19 status:v18 transactionDescription:v15 originalTransactionDescription:v14 localizedTypeDescription:v17 creditDebitIndicator:v16 actions:v3 isBankConnectTransaction:v12 merchantCategoryCode:v6 hasNotificationServiceData:v13 paymentHash:v8 altDSID:0 insights:v9 serviceIdentifier:v10];

  return v26;
}

- (id)_fkAmount
{
  v3 = objc_alloc(MEMORY[0x1E6967D88]);
  v4 = [(PKPaymentTransaction *)self amount];
  v5 = [v4 pk_absoluteValue];
  v6 = [(PKPaymentTransaction *)self currencyCode];
  v7 = [v3 initWithDecimalNumber:v5 currency:v6];

  return v7;
}

- (id)_fkActions
{
  v3 = objc_alloc(MEMORY[0x1E6967D80]);
  v4 = [(PKPaymentTransaction *)self bankConnectMetadata];
  v5 = [v4 digitalServicingURL];
  v6 = [(PKPaymentTransaction *)self bankConnectMetadata];
  v7 = [v6 payNowURL];
  v8 = [(PKPaymentTransaction *)self bankConnectMetadata];
  v9 = [v8 postInstallmentURL];
  v10 = [(PKPaymentTransaction *)self bankConnectMetadata];
  v11 = [v10 redeemRewardsURL];
  v12 = [v3 initWithDigitalServicingURL:v5 payNowURL:v7 transferFundsURL:0 postInstallmentURL:v9 redeemRewardsURL:v11];

  return v12;
}

- (unint64_t)_fkCreditDebitIndicator
{
  v3 = [(PKPaymentTransaction *)self bankConnectMetadata];
  v4 = [v3 creditDebitIndicator];

  if (v4)
  {
    return v4 == 2;
  }

  v6 = [(PKPaymentTransaction *)self currencyAmount];
  v7 = [(PKPaymentTransaction *)self transactionType];
  v8 = [(PKPaymentTransaction *)self adjustmentType];
  v9 = [(PKPaymentTransaction *)self peerPaymentType];
  v10 = [(PKPaymentTransaction *)self isBankConnectTransaction];
  v11 = [(PKPaymentTransaction *)self bankConnectMetadata];
  v12 = +[PKPaymentTransaction isPositiveBalanceAdjustmentForCurrencyAmount:transactionType:adjustmentType:peerPaymentType:isBankConnectTransaction:bankConnectCreditDebitIndicator:featureIdentifier:](PKPaymentTransaction, "isPositiveBalanceAdjustmentForCurrencyAmount:transactionType:adjustmentType:peerPaymentType:isBankConnectTransaction:bankConnectCreditDebitIndicator:featureIdentifier:", v6, v7, v8, v9, v10, [v11 creditDebitIndicator], -[PKPaymentTransaction featureIdentifier](self, "featureIdentifier"));

  return !v12;
}

- (unint64_t)_fkMerchantCategoryFromPKMerchantCategory:(int64_t)a3
{
  if ((a3 - 1) >= 8)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (id)_fkMapsTransactionInsight
{
  v2 = self;
  v3 = [(PKPaymentTransaction *)self merchant];
  v4 = [v3 mapsMerchant];

  if (v4)
  {
    v38 = objc_alloc(MEMORY[0x1E6967E08]);
    v36 = [v4 identifier];
    v49 = [v4 resultProviderIdentifier];
    v47 = [v4 name];
    v44 = [v4 phoneNumber];
    v42 = [v4 url];
    v40 = [v4 heroImageURL];
    v34 = [v4 heroImageAttributionName];
    v5 = v2;
    v6 = -[PKPaymentTransaction _fkMerchantCategoryFromPKMerchantCategory:](v2, "_fkMerchantCategoryFromPKMerchantCategory:", [v4 category]);
    v7 = [v4 detailedCategory];
    v32 = [v4 stylingInfoData];
    v30 = [v4 businessChatURL];
    v8 = [v4 lastProcessedDate];
    v9 = objc_alloc(MEMORY[0x1E6985C40]);
    [v4 locationLatitude];
    v11 = v10;
    [v4 locationLongitude];
    v13 = [v9 initWithLatitude:v11 longitude:v12];
    v14 = [v4 postalAddress];
    v29 = v6;
    v2 = v5;
    v50 = [v38 initWithMUID:v36 resultProviderIdentifier:v49 name:v47 phoneNumber:v44 url:v42 heroImageURL:v40 heroImageAttributionName:v34 category:v29 mapsCategoryIdentifier:v7 encodedStylingInfo:v32 businessChatURL:v30 lastProcessedDate:v8 location:v13 postalAddress:v14];
  }

  else
  {
    v50 = 0;
  }

  v15 = [(PKPaymentTransaction *)v2 merchant];
  v16 = [v15 mapsBrand];

  if (v16)
  {
    v37 = objc_alloc(MEMORY[0x1E6967E00]);
    v17 = [v16 identifier];
    v45 = [v16 resultProviderIdentifier];
    v43 = [v16 name];
    v41 = [v16 phoneNumber];
    v39 = [v16 url];
    v35 = [v16 heroImageURL];
    v33 = [v16 heroImageAttributionName];
    v18 = -[PKPaymentTransaction _fkMerchantCategoryFromPKMerchantCategory:](v2, "_fkMerchantCategoryFromPKMerchantCategory:", [v16 category]);
    v31 = [v16 detailedCategory];
    [v16 stylingInfoData];
    v19 = v48 = v2;
    v20 = [v16 businessChatURL];
    v21 = [v16 lastProcessedDate];
    v22 = [v16 logoURL];
    v46 = [v37 initWithMUID:v17 resultProviderIdentifier:v45 name:v43 phoneNumber:v41 url:v39 heroImageURL:v35 heroImageAttributionName:v33 category:v18 mapsCategoryIdentifier:v31 encodedStylingInfo:v19 businessChatURL:v20 lastProcessedDate:v21 logoURL:v22];

    v2 = v48;
    v23 = v46;
  }

  else
  {
    v23 = 0;
  }

  v24 = [(PKPaymentTransaction *)v2 merchant];
  v25 = [v24 fallbackcategory];

  if (v50 || v23 || v25)
  {
    v27 = [(PKPaymentTransaction *)v2 _fkMerchantCategoryFromPKMerchantCategory:v25];
    v26 = [objc_alloc(MEMORY[0x1E6967E10]) initWithUpdatedAt:0 fallbackCategory:v27 merchant:v50 brand:v23];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)_fkTransactionInsights
{
  v3 = objc_alloc(MEMORY[0x1E6967E38]);
  v4 = [(PKPaymentTransaction *)self _fkApplePayTransactionInsight];
  v5 = [(PKPaymentTransaction *)self _fkMapsTransactionInsight];
  v6 = [(PKPaymentTransaction *)self _fkContactTransactionInsight];
  v7 = [(PKPaymentTransaction *)self _fkUserTransactionInsight];
  v8 = [v3 initWithApplePayInsight:v4 bankMerchantInformationInsight:0 mapsInsight:v5 contactInsight:v6 userInsight:v7];

  return v8;
}

- (id)_fkApplePayTransactionInsight
{
  v3 = [(PKPaymentTransaction *)self merchant];
  v4 = [(PKPaymentTransaction *)self clearingNetworkData];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACB0];
    v6 = [(PKPaymentTransaction *)self clearingNetworkData];
  }

  else
  {
    v7 = [(PKPaymentTransaction *)self authNetworkData];

    if (!v7)
    {
      v10 = 0;
      goto LABEL_6;
    }

    v5 = MEMORY[0x1E696ACB0];
    v6 = [(PKPaymentTransaction *)self authNetworkData];
  }

  v8 = v6;
  v9 = [v6 dataUsingEncoding:4];
  v10 = [v5 JSONObjectWithData:v9 options:0 error:0];

LABEL_6:
  v11 = [v10 objectForKeyedSubscript:@"DE048"];
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v11 options:0 error:0];
    v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v12 encoding:4];
  }

  else
  {
    v49 = 0;
  }

  v30 = v11;
  if ([(PKPaymentTransaction *)self paymentNetworkIdentifier])
  {
    v48 = PKPaymentNetworkNameForPaymentCredentialType([(PKPaymentTransaction *)self paymentNetworkIdentifier]);
  }

  else
  {
    v48 = 0;
  }

  v28 = objc_alloc(MEMORY[0x1E6967D98]);
  v46 = [(PKPaymentTransaction *)self paymentHash];
  v47 = [(PKPaymentTransaction *)self transactionDate];
  v45 = [v3 name];
  v44 = [v3 rawName];
  v39 = [v3 industryCategory];
  v38 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "industryCode")}];
  v43 = [v10 objectForKeyedSubscript:@"DE018"];
  v35 = [v10 objectForKeyedSubscript:@"DE019"];
  v42 = [v10 objectForKeyedSubscript:@"DE041"];
  v41 = [(PKPaymentTransaction *)self isMerchantTokenTransaction];
  v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPaymentTransaction isCoarseLocation](self, "isCoarseLocation")}];
  v37 = [(PKPaymentTransaction *)self location];
  v26 = [v3 merchantIdentifier];
  v36 = [v3 rawCANL];
  v25 = [v3 rawCity];
  v34 = [v3 rawState];
  v24 = [v3 rawCountry];
  v33 = [v3 city];
  v23 = [v3 zip];
  v32 = [v3 state];
  v31 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "cleanConfidenceLevel")}];
  v22 = [(PKPaymentTransaction *)self rewardsTotalAmount];
  [(PKPaymentTransaction *)self rewardsTotalCurrencyCode];
  v21 = v27 = v10;
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPaymentTransaction rewardsEligibilityReason](self, "rewardsEligibilityReason")}];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "adamIdentifier")}];
  v19 = [v3 originURL];
  v14 = [v3 webMerchantIdentifier];
  v15 = [v3 webMerchantName];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKPaymentTransaction isIssuerInstallmentTransaction](self, "isIssuerInstallmentTransaction")}];
  v17 = [(PKPaymentTransaction *)self issuerInstallmentManagementURL];
  v29 = [v28 initWithPaymentHash:v46 transactionDate:v47 merchantName:v45 merchantRawName:v44 industryCategory:v39 industryCode:v38 merchantType:v43 merchantCountryCode:v35 terminalIdentifier:v42 merchantAdditionalData:v49 paymentNetwork:v48 isMerchantTokenTransaction:v41 isCoarseLocation:v40 location:v37 merchantIdentifier:v26 merchantRawCANL:v36 merchantRawCity:v25 merchantRawState:v34 merchantRawCountry:v24 merchantCity:v33 merchantZip:v23 merchantState:v32 merchantCleanConfidenceLevel:v31 rewardsAmount:v22 rewardsCurrency:v21 rewardsEligibilityReason:v20 adamIdentifier:v13 webURL:v19 webMerchantIdentifier:v14 webMerchantName:v15 isIssuerInstallmentTransaction:v16 issuerInstallmentManagementURL:v17];

  return v29;
}

- (unint64_t)_fkPaymentTransactionType
{
  v2 = [(PKPaymentTransaction *)self transactionType];

  return FKPaymentTransactionTypeFromPKPaymentTransactionType(v2);
}

- (int64_t)_fkPaymentTransactionStatus
{
  v2 = [(PKPaymentTransaction *)self transactionStatus];

  return FKPaymentTransactionStatusFromPKPaymentTransactionStatus(v2);
}

- (id)_fkContactTransactionInsight
{
  v3 = [(PKPaymentTransaction *)self peerPaymentCounterpartHandle];
  if ([v3 length])
  {
    v4 = objc_alloc(MEMORY[0x1E6967DF0]);
    v5 = [(PKPaymentTransaction *)self peerPaymentCounterpartHandle];
    v6 = [v4 initWithPeerPaymentCounterpartHandle:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_fkPaymentTransactionCategory
{
  result = [(PKPaymentTransaction *)self preferredTransactionCategory];
  if (result > 4)
  {
    if (result > 6)
    {
      if (result != 7)
      {
        if (result == 8)
        {
          v6 = PKLogFacilityTypeGetObject(7uLL);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            *v7 = 0;
            _os_log_error_impl(&dword_1AD337000, v6, OS_LOG_TYPE_ERROR, "Attempting to map PKMerchantCategoryCount into FKPaymentTransactionCategory", v7, 2u);
          }
        }

        return 0;
      }
    }

    else
    {
      if (result == 6)
      {
        v5 = 6;
      }

      else
      {
        v5 = 0;
      }

      if (result != 5)
      {
        return v5;
      }
    }
  }

  else
  {
    if (result == 4)
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }

    if (result == 3)
    {
      v3 = 3;
    }

    if (result == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    if (result == 1)
    {
      v4 = 1;
    }

    if (result <= 2)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

- (id)_fkUserTransactionInsight
{
  if ([(PKPaymentTransaction *)self preferredTransactionCategory])
  {
    v3 = objc_alloc(MEMORY[0x1E6967E58]);
    v4 = [(PKPaymentTransaction *)self _fkPaymentTransactionCategory];
    v5 = [MEMORY[0x1E695DF00] now];
    v6 = [v3 initWithTransactionCategory:v4 updatedAt:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)augmentTransactionsIfNeeded:(id)a3 transactionSourceIdentifiers:(id)a4 passUniqueID:(id)a5 usingDataProvider:(id)a6 completion:(id)a7
{
  v59 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v15)
  {
    v33 = v13;
    v35 = v12;
    if (!v14)
    {
      v14 = +[PKPaymentDefaultDataProvider defaultDataProvider];
    }

    v36 = v14;
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v34 = v11;
    v18 = v11;
    v19 = [v18 countByEnumeratingWithState:&v54 objects:v58 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v55;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v55 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v54 + 1) + 8 * i);
          v24 = [v23 paymentHash];
          if ([v23 transactionType])
          {
            v25 = [v23 transactionType] != 16;
          }

          else
          {
            v25 = 0;
          }

          v26 = [v23 transactionStatus] && objc_msgSend(v23, "transactionStatus") != 1 && objc_msgSend(v23, "transactionStatus") != -1 && objc_msgSend(v23, "transactionStatus") != 8;
          if (v24 != 0 && !v25 && !v26)
          {
            [v16 addObject:v24];
            [v17 addObject:v23];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v20);
    }

    if ([v16 count])
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke;
      aBlock[3] = &unk_1E79D0058;
      v27 = v17;
      v53 = v27;
      v28 = _Block_copy(aBlock);
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke_2;
      v50[3] = &unk_1E79D0058;
      v51 = v27;
      v29 = _Block_copy(v50);
      v30 = objc_alloc_init(PKAsyncUnaryOperationComposer);
      v13 = v33;
      if (!PKHideCardBenefitPayLater())
      {
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke_3;
        v45[3] = &unk_1E79E4948;
        v46 = v36;
        v47 = v35;
        v48 = v16;
        v49 = v28;
        [(PKAsyncUnaryOperationComposer *)v30 addOperation:v45];
      }

      if (!PKHideCardBenefitRewards())
      {
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke_2_46;
        v40[3] = &unk_1E79E4948;
        v41 = v36;
        v42 = v33;
        v43 = v16;
        v44 = v29;
        [(PKAsyncUnaryOperationComposer *)v30 addOperation:v40];
      }

      v31 = [MEMORY[0x1E695DFB0] null];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke_2_54;
      v37[3] = &unk_1E79E4800;
      v39 = v15;
      v38 = v18;
      v32 = [(PKAsyncUnaryOperationComposer *)v30 evaluateWithInput:v31 completion:v37];
    }

    else
    {
      (*(v15 + 2))(v15, v18);
      v13 = v33;
    }

    v11 = v34;
    v12 = v35;
    v14 = v36;
  }
}

void __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 paymentHash];
        if (v10)
        {
          v11 = [v3 objectForKeyedSubscript:v10];
          v12 = v11;
          if (v11)
          {
            [v9 setIsIssuerInstallmentTransaction:{objc_msgSend(v11, "isIssuerInstallmentTransaction")}];
            v13 = [v12 issuerInstallmentManagementURL];
            [v9 setIssuerInstallmentManagementURL:v13];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

void __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 paymentHash];
        if (v10)
        {
          v11 = [v3 objectForKeyedSubscript:v10];
          v12 = v11;
          if (v11 && [v11 isInGoodStanding])
          {
            [v9 setPaymentRewardsRedemption:v12];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

void __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke_4;
  v13[3] = &unk_1E79E4920;
  v14 = v10;
  v16 = *(a1 + 56);
  v17 = v7;
  v15 = v6;
  v11 = v6;
  v12 = v7;
  [v8 issuerInstallmentTransactionsForTransactionSourceIdentifiers:v9 paymentHashes:v14 completion:v13];
}

void __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke_4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke_5;
  v9[3] = &unk_1E79E48F8;
  v10 = v6;
  v11 = a1[4];
  v12 = v5;
  v14 = a1[6];
  v15 = a1[7];
  v13 = a1[5];
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

uint64_t __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke_5(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) count];
      v4 = *(a1 + 32);
      v6 = 134218242;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Could not load issuer installment transactions for paymentHashes (%ld): error %@.", &v6, 0x16u);
    }
  }

  else
  {
    v2 = [*(a1 + 48) pk_indexDictionaryByApplyingBlock:&__block_literal_global_237];
    (*(*(a1 + 64) + 16))();
  }

  return (*(*(a1 + 72) + 16))();
}

void __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke_2_46(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke_3_47;
  v13[3] = &unk_1E79E4920;
  v14 = v10;
  v16 = *(a1 + 56);
  v17 = v7;
  v15 = v6;
  v11 = v6;
  v12 = v7;
  [v8 paymentRewardsRedemptionsForPassUniqueIdentifier:v9 paymentHashes:v14 completion:v13];
}

void __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke_3_47(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke_4_48;
  v9[3] = &unk_1E79E48F8;
  v10 = v6;
  v11 = a1[4];
  v12 = v5;
  v14 = a1[6];
  v15 = a1[7];
  v13 = a1[5];
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

uint64_t __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke_4_48(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 40) count];
      v4 = *(a1 + 32);
      v6 = 134218242;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_1AD337000, v2, OS_LOG_TYPE_DEFAULT, "Could not load payment rewards redemptions for paymentHashes (%ld): error %@.", &v6, 0x16u);
    }
  }

  else
  {
    v2 = [*(a1 + 48) pk_indexDictionaryByApplyingBlock:&__block_literal_global_52_5];
    (*(*(a1 + 64) + 16))();
  }

  return (*(*(a1 + 72) + 16))();
}

id __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke_49(uint64_t a1, void *a2)
{
  v2 = [a2 paymentHash];
  v3 = [v2 uppercaseString];

  return v3;
}

void __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke_2_54(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __135__PKPaymentTransaction_FinanceKit__augmentTransactionsIfNeeded_transactionSourceIdentifiers_passUniqueID_usingDataProvider_completion___block_invoke_3_55;
  v2[3] = &unk_1E79C44A0;
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

@end