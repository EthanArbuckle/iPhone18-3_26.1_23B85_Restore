@interface PKTransitAppletHistoryRecord
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTransitAppletHistoryRecord:(id)a3;
- (PKTransitAppletHistoryRecord)initWithCoder:(id)a3;
- (PKTransitAppletHistoryRecord)initWithDictionary:(id)a3;
- (id)_transactionAmountsWithBalanceLabels:(id)a3 planLabels:(id)a4 unitDictionary:(id)a5;
- (id)_transactionCommutePlanUnitsWithPlanLabels:(id)a3;
- (id)concreteTransactionWithCurrency:(id)a3 balanceLabels:(id)a4 unitDictionary:(id)a5 planLabels:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)felicaHistoryRecord;
- (int64_t)transitTransactionSubtype;
- (unint64_t)hash;
- (void)_setTransactionHistoryDetailsFromString:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKTransitAppletHistoryRecord

- (int64_t)transitTransactionSubtype
{
  v3 = [(PKTransitAppletHistoryRecord *)self subtype];
  if (v3 > 63)
  {
    if (v3 > 127)
    {
      if ((v3 - 128) < 3)
      {
        return 513;
      }
    }

    else
    {
      if ((v3 - 64) < 2)
      {
        return 515;
      }

      if (v3 == 66)
      {
        return 514;
      }

      if (v3 == 67)
      {
        return 518;
      }
    }

    goto LABEL_34;
  }

  if (v3 <= 3)
  {
    switch(v3)
    {
      case 1:
        if ([(PKTransitAppletHistoryRecord *)self detail]== 64)
        {
          return 1026;
        }

        else
        {
          return 2;
        }

      case 2:
        return 3;
      case 3:
        v5 = [(PKTransitAppletHistoryRecord *)self detail];
        if (v5)
        {
          if (v5 == 128)
          {
            return 258;
          }

          if (v5 == 129)
          {
            return 257;
          }
        }

        return 4;
    }

LABEL_34:
    v7 = [(PKTransitAppletHistoryRecord *)self type];
    if (v7 > 4)
    {
      return 1;
    }

    else
    {
      return qword_1ADB99B10[v7];
    }
  }

  if (v3 > 5)
  {
    if (v3 == 6)
    {
      return 7;
    }

    if (v3 == 7)
    {
      return 8;
    }

    goto LABEL_34;
  }

  if (v3 == 4)
  {
    v6 = [(PKTransitAppletHistoryRecord *)self detail];
    if (v6 > 192)
    {
      if (v6 == 194)
      {
        return 261;
      }

      if (v6 == 193)
      {
        return 260;
      }
    }

    else if (v6 == 192)
    {
      return 259;
    }

    return 5;
  }

  if ([(PKTransitAppletHistoryRecord *)self detail]- 256 >= 2)
  {
    return 6;
  }

  else
  {
    return 1025;
  }
}

- (id)_transactionCommutePlanUnitsWithPlanLabels:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_plans;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) commutePlanIdentifier];
        if (v11)
        {
          v12 = [v4 objectForKeyedSubscript:v11];
          v13 = [[PKTransactionCommutePlanUnit alloc] initWithTimedPlanIdentifier:v11 label:v12];
          [v5 addObject:v13];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (id)_transactionAmountsWithBalanceLabels:(id)a3 planLabels:(id)a4 unitDictionary:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v36 = a3;
  v32 = a4;
  v35 = a5;
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = self->_amounts;
  v38 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v38)
  {
    v37 = *v40;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v40 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        v10 = [v9 balanceIdentifier];
        if (v10)
        {
          v11 = [v36 objectForKeyedSubscript:v10];
          v12 = v11;
          if (!v11 || (v13 = [v11 length], v12, !v13))
          {
            v14 = [v32 objectForKeyedSubscript:v10];

            v12 = v14;
          }

          v15 = [v35 objectForKeyedSubscript:v10];
          v16 = [v15 integerValue];
          v17 = [v9 amount];
          v18 = [v9 currency];
          v19 = [v9 exponent];
          v20 = PKLocalizedPaymentUnitKeyForType(v16);
          v21 = v18;
          v22 = v21;
          if (v21 == @"XXX")
          {

            if (!v15)
            {
              goto LABEL_18;
            }

LABEL_15:
            if (!v20)
            {
              goto LABEL_20;
            }

            v24 = [v17 pk_absoluteValue];
            v25 = PKLocalizedPaymentString(v20, &cfstr_Lu.isa, [v24 unsignedLongValue]);

            v26 = [[PKCurrencyAmount alloc] initWithAmount:v17 exponent:v19 preformattedString:v25];
          }

          else
          {
            if (@"XXX" && v21)
            {
              v23 = [(__CFString *)v21 isEqualToString:?];

              if (v23)
              {
                if (v15)
                {
                  goto LABEL_15;
                }

LABEL_18:
                v27 = PKLocalizedPaymentString(&cfstr_TransactionPen.isa, 0);
                v26 = [[PKCurrencyAmount alloc] initWithAmount:v17 exponent:v19 preformattedString:v27];

                v28 = [[PKTransactionAmount alloc] initWithPendingCurrencyAmount:v26 unitIdentifier:v10];
LABEL_22:
                v29 = v28;
                [v34 addObject:v28];

                goto LABEL_23;
              }
            }

            else
            {
            }

LABEL_20:
            v26 = [[PKCurrencyAmount alloc] initWithAmount:v17 currency:v22 exponent:v19];
          }

          v28 = [[PKTransactionAmount alloc] initWithCurrencyAmount:v26 label:v12];
          goto LABEL_22;
        }

LABEL_23:
      }

      v38 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v38);
  }

  v30 = [v34 copy];

  return v30;
}

- (PKTransitAppletHistoryRecord)initWithDictionary:(id)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v74.receiver = self;
  v74.super_class = PKTransitAppletHistoryRecord;
  v5 = [(PKTransitAppletHistoryRecord *)&v74 init];
  v6 = v5;
  if (!v4 || !v5)
  {
    goto LABEL_46;
  }

  v7 = [v4 PKNumberForKey:@"SerialNumber"];
  v8 = [v7 copy];
  historySequenceNumber = v6->_historySequenceNumber;
  v6->_historySequenceNumber = v8;

  v10 = [v4 PKDateComponentsForKey:@"TransactionTime"];
  v11 = PKDateFromDateComponents(v10);
  time = v6->_time;
  v6->_time = v11;

  v13 = [v4 PKDecimalNumberForKey:@"FinalBalance"];
  v14 = [v13 copy];
  balance = v6->_balance;
  v6->_balance = v14;

  v16 = [v4 PKNumberForKey:@"PointsBalance"];
  v17 = [v16 copy];
  loyaltyBalance = v6->_loyaltyBalance;
  v6->_loyaltyBalance = v17;

  v19 = [v4 PKNumberForKey:@"CityCode"];
  v20 = [v19 copy];
  cityCode = v6->_cityCode;
  v6->_cityCode = v20;

  v22 = [v4 PKStringForKey:@"TypeDetail"];
  v23 = [v22 copy];
  transitDetail = v6->_transitDetail;
  v6->_transitDetail = v23;

  [(PKTransitAppletHistoryRecord *)v6 _setTransactionHistoryDetailsFromString:v6->_transitDetail];
  v25 = [v4 PKDecimalNumberForKey:@"Amount"];
  v26 = [v25 copy];
  amount = v6->_amount;
  v6->_amount = v26;

  v28 = [v4 PKNumberForKey:@"PointsAmount"];
  v29 = [v28 copy];
  loyaltyAmount = v6->_loyaltyAmount;
  v6->_loyaltyAmount = v29;

  v31 = [v4 PKDataForKey:@"StartStation"];
  startStation = v6->_startStation;
  v6->_startStation = v31;

  v33 = [v4 PKDataForKey:@"EndStation"];
  endStation = v6->_endStation;
  v6->_endStation = v33;

  v6->_recordType = 0;
  v35 = [v4 PKStringForKey:@"IgnoreReason"];
  v36 = v35;
  if (v35)
  {
    if ([v35 isEqual:@"EnRoute"])
    {
      v37 = 1;
LABEL_15:
      v6->_recordType = v37;
      goto LABEL_16;
    }

    if ([v36 isEqual:@"Merged"])
    {
      v37 = 2;
      goto LABEL_15;
    }

    v38 = PKLogFacilityTypeGetObject(0xDuLL);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v78 = v36;
      v39 = "PKTransitAppletHistoryRecord: Unexpected ATL ignore reason: %@";
      v40 = v38;
      v41 = 12;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if ([(NSString *)v6->_transitDetail isEqualToString:@"PointsConversion"])
  {
    v38 = PKLogFacilityTypeGetObject(0xDuLL);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v40 = v38;
      v41 = 2;
LABEL_13:
      _os_log_impl(&dword_1AD337000, v40, OS_LOG_TYPE_DEFAULT, v39, buf, v41);
    }

LABEL_14:

    v37 = -1;
    goto LABEL_15;
  }

LABEL_16:
  v64 = v36;
  v6->_transitModifiers = 0;
  v42 = [v4 PKArrayContaining:objc_opt_class() forKey:@"TypeModifiers"];
  v43 = v42;
  if (v42)
  {
    if ([v42 containsObject:@"TransferDiscount"])
    {
      v6->_transitModifiers |= 2uLL;
    }

    if ([v43 containsObject:@"CommuteDiscount"])
    {
      v6->_transitModifiers |= 1uLL;
    }

    if ([v43 containsObject:@"FareCapped"])
    {
      v6->_transitModifiers |= 4uLL;
    }

    if ([v43 containsObject:@"FareAdjustment"])
    {
      v6->_transitModifiers |= 8uLL;
    }

    if ([v43 containsObject:@"FareRebate"])
    {
      v6->_transitModifiers |= 0x10uLL;
    }
  }

  v63 = v43;
  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45 = [v4 PKArrayContaining:objc_opt_class() forKey:@"Amounts"];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v46 = [v45 countByEnumeratingWithState:&v70 objects:v76 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v71;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v71 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [[PKTransitAppletAmount alloc] initWithDictionary:*(*(&v70 + 1) + 8 * i)];
        if (v50)
        {
          [v44 addObject:v50];
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v70 objects:v76 count:16];
    }

    while (v47);
  }

  v51 = [v44 copy];
  amounts = v6->_amounts;
  v6->_amounts = v51;

  v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v65 = v4;
  v54 = [v4 PKArrayContaining:objc_opt_class() forKey:@"CommutePlans"];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v55 = [v54 countByEnumeratingWithState:&v66 objects:v75 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v67;
    do
    {
      for (j = 0; j != v56; ++j)
      {
        if (*v67 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = [[PKTransitAppletPlan alloc] initWithDictionary:*(*(&v66 + 1) + 8 * j)];
        if (v59)
        {
          [v53 addObject:v59];
        }
      }

      v56 = [v54 countByEnumeratingWithState:&v66 objects:v75 count:16];
    }

    while (v56);
  }

  v60 = [v53 copy];
  plans = v6->_plans;
  v6->_plans = v60;

  v4 = v65;
LABEL_46:

  return v6;
}

- (void)_setTransactionHistoryDetailsFromString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    if ([v4 isEqual:@"Transit"])
    {
      v5 = 1;
LABEL_4:
      self->_subtype = 0;
      self->_detail = 0;
      self->_type = v5;
LABEL_11:
      v4 = v8;
      goto LABEL_71;
    }

    if ([v8 isEqual:@"TransitMetro"])
    {
      v6 = vdupq_n_s64(1uLL);
LABEL_7:
      *&self->_type = v6;
      self->_detail = 0;
      goto LABEL_11;
    }

    if ([v8 isEqual:@"TransitMetroUpgrade"])
    {
      *&self->_type = vdupq_n_s64(1uLL);
      v7 = 64;
LABEL_10:
      self->_detail = v7;
      goto LABEL_11;
    }

    if ([v8 isEqual:@"TransitLightRail"])
    {
      v6 = xmmword_1ADB99B00;
      goto LABEL_7;
    }

    if ([v8 isEqual:@"TransitBus"])
    {
      v6 = xmmword_1ADB78CE0;
      goto LABEL_7;
    }

    if ([v8 isEqual:@"TransitTrain"])
    {
      v6 = xmmword_1ADB789F0;
      goto LABEL_7;
    }

    if ([v8 isEqual:@"TransitTrainMaglev"])
    {
      *&self->_type = xmmword_1ADB789F0;
      v7 = 128;
      goto LABEL_10;
    }

    if ([v8 isEqual:@"TransitTrainShinkansen"])
    {
      *&self->_type = xmmword_1ADB789F0;
      v7 = 129;
      goto LABEL_10;
    }

    if ([v8 isEqual:@"TransitOther"])
    {
      v6 = xmmword_1ADB99AF0;
      goto LABEL_7;
    }

    if ([v8 isEqual:@"TransitOtherTaxi"])
    {
      *&self->_type = xmmword_1ADB99AF0;
      v7 = 192;
      goto LABEL_10;
    }

    if ([v8 isEqual:@"TransitOtherFerry"])
    {
      *&self->_type = xmmword_1ADB99AF0;
      v7 = 193;
      goto LABEL_10;
    }

    if ([v8 isEqual:@"TransitOtherBike"])
    {
      *&self->_type = xmmword_1ADB99AF0;
      v7 = 194;
      goto LABEL_10;
    }

    if ([v8 isEqual:@"TransitSpecial"])
    {
      v6 = xmmword_1ADB99AD0;
      goto LABEL_7;
    }

    if ([v8 isEqual:@"TransitSpecialGreenCarUsed"])
    {
      *&self->_type = xmmword_1ADB99AD0;
      v7 = 256;
      goto LABEL_10;
    }

    if ([v8 isEqual:@"TransitOtherCableCar"])
    {
      v6 = xmmword_1ADB99AE0;
      goto LABEL_7;
    }

    if ([v8 isEqual:@"TransitSpecialGreenCarSeated"])
    {
      *&self->_type = xmmword_1ADB99AD0;
      v7 = 257;
      goto LABEL_10;
    }

    if ([v8 isEqual:@"Purchase"])
    {
      v5 = 2;
      goto LABEL_4;
    }

    if ([v8 isEqual:@"PurchaseRetail"])
    {
      v6 = xmmword_1ADB99AC0;
      goto LABEL_7;
    }

    if ([v8 isEqual:@"PurchaseRetailMerchant"])
    {
      *&self->_type = xmmword_1ADB99AC0;
      v7 = 320;
      goto LABEL_10;
    }

    if ([v8 isEqual:@"PurchaseRetailGasStation"])
    {
      *&self->_type = xmmword_1ADB99AC0;
      v7 = 321;
      goto LABEL_10;
    }

    if ([v8 isEqual:@"PurchaseAdmission"])
    {
      v6 = xmmword_1ADB99AB0;
      goto LABEL_7;
    }

    if ([v8 isEqual:@"PurchaseAdmissionParking"])
    {
      *&self->_type = xmmword_1ADB99AB0;
      v7 = 384;
      goto LABEL_10;
    }

    if ([v8 isEqual:@"PurchaseAdmissionGarden"])
    {
      *&self->_type = xmmword_1ADB99AB0;
      v7 = 385;
      goto LABEL_10;
    }

    if ([v8 isEqual:@"PurchaseRefund"])
    {
      v6 = xmmword_1ADB99AA0;
      goto LABEL_7;
    }

    if ([v8 isEqual:@"PurchaseRefundReturn"])
    {
      *&self->_type = xmmword_1ADB99AA0;
      v7 = 448;
      goto LABEL_10;
    }

    if ([v8 isEqual:@"PurchaseRefundCancellation"])
    {
      *&self->_type = xmmword_1ADB99AA0;
      v7 = 449;
      goto LABEL_10;
    }

    if ([v8 isEqual:@"TopUp"])
    {
      goto LABEL_59;
    }

    if ([v8 isEqual:@"TopUpContactless"])
    {
      v6 = xmmword_1ADB99A90;
      goto LABEL_7;
    }

    if ([v8 isEqual:@"TopUpAuto"])
    {
      v6 = xmmword_1ADB99A80;
      goto LABEL_7;
    }

    if ([v8 isEqual:@"TopUpServer"])
    {
      v6 = xmmword_1ADB99A70;
      goto LABEL_7;
    }

    if ([v8 isEqual:@"Points"])
    {
LABEL_59:
      v5 = 3;
      goto LABEL_4;
    }

    if ([v8 isEqual:@"CardRead"])
    {
      v5 = 4;
      goto LABEL_4;
    }

    [v8 isEqual:@"Unknown"];
    v4 = v8;
  }

  self->_type = 0;
  self->_subtype = 0;
  self->_detail = 0;
LABEL_71:
}

- (PKTransitAppletHistoryRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKTransitAppletHistoryRecord *)self initWithDictionary:0];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"historySequenceNumber"];
    historySequenceNumber = v5->_historySequenceNumber;
    v5->_historySequenceNumber = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"time"];
    time = v5->_time;
    v5->_time = v8;

    v5->_type = [v4 decodeIntegerForKey:@"transactionType"];
    v5->_subtype = [v4 decodeIntegerForKey:@"transactionSubtype"];
    v5->_detail = [v4 decodeIntegerForKey:@"transactionDetail"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transitDetail"];
    transitDetail = v5->_transitDetail;
    v5->_transitDetail = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"balance"];
    balance = v5->_balance;
    v5->_balance = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"loyaltyBalance"];
    loyaltyBalance = v5->_loyaltyBalance;
    v5->_loyaltyBalance = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"loyaltyAmount"];
    loyaltyAmount = v5->_loyaltyAmount;
    v5->_loyaltyAmount = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startStation"];
    startStation = v5->_startStation;
    v5->_startStation = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endStation"];
    endStation = v5->_endStation;
    v5->_endStation = v22;

    v5->_recordType = [v4 decodeIntegerForKey:@"recordType"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cityCode"];
    cityCode = v5->_cityCode;
    v5->_cityCode = v24;

    v5->_transitModifiers = [v4 decodeIntegerForKey:@"transitModifiers"];
    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"amounts"];
    amounts = v5->_amounts;
    v5->_amounts = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"plans"];
    plans = v5->_plans;
    v5->_plans = v34;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSNumber *)self->_historySequenceNumber copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSDate *)self->_time copyWithZone:a3];
  v9 = v5[6];
  v5[6] = v8;

  v5[3] = self->_type;
  v5[4] = self->_subtype;
  v5[5] = self->_detail;
  v10 = [(NSString *)self->_transitDetail copyWithZone:a3];
  v11 = v5[16];
  v5[16] = v10;

  v12 = [(NSDecimalNumber *)self->_balance copyWithZone:a3];
  v13 = v5[7];
  v5[7] = v12;

  v14 = [(NSNumber *)self->_loyaltyBalance copyWithZone:a3];
  v15 = v5[8];
  v5[8] = v14;

  v16 = [(NSDecimalNumber *)self->_amount copyWithZone:a3];
  v17 = v5[9];
  v5[9] = v16;

  v18 = [(NSNumber *)self->_loyaltyAmount copyWithZone:a3];
  v19 = v5[10];
  v5[10] = v18;

  v20 = [(NSData *)self->_startStation copyWithZone:a3];
  v21 = v5[12];
  v5[12] = v20;

  v22 = [(NSData *)self->_endStation copyWithZone:a3];
  v23 = v5[13];
  v5[13] = v22;

  v5[17] = self->_recordType;
  v24 = [(NSNumber *)self->_cityCode copyWithZone:a3];
  v25 = v5[11];
  v5[11] = v24;

  v5[1] = self->_transitModifiers;
  v26 = [(NSArray *)self->_amounts copyWithZone:a3];
  v27 = v5[14];
  v5[14] = v26;

  v28 = [(NSArray *)self->_plans copyWithZone:a3];
  v29 = v5[15];
  v5[15] = v28;

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKTransitAppletHistoryRecord;
  [(PKTransitAppletHistoryRecord *)&v2 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  historySequenceNumber = self->_historySequenceNumber;
  v5 = a3;
  [v5 encodeObject:historySequenceNumber forKey:@"historySequenceNumber"];
  [v5 encodeObject:self->_time forKey:@"time"];
  [v5 encodeInteger:self->_type forKey:@"transactionType"];
  [v5 encodeInteger:self->_subtype forKey:@"transactionSubtype"];
  [v5 encodeInteger:self->_detail forKey:@"transactionDetail"];
  [v5 encodeObject:self->_transitDetail forKey:@"transitDetail"];
  [v5 encodeObject:self->_balance forKey:@"balance"];
  [v5 encodeObject:self->_loyaltyBalance forKey:@"loyaltyBalance"];
  [v5 encodeObject:self->_amount forKey:@"amount"];
  [v5 encodeObject:self->_loyaltyAmount forKey:@"loyaltyAmount"];
  [v5 encodeObject:self->_startStation forKey:@"startStation"];
  [v5 encodeObject:self->_endStation forKey:@"endStation"];
  [v5 encodeInteger:self->_recordType forKey:@"recordType"];
  [v5 encodeObject:self->_cityCode forKey:@"cityCode"];
  [v5 encodeInteger:self->_transitModifiers forKey:@"transitModifiers"];
  [v5 encodeObject:self->_amounts forKey:@"amounts"];
  [v5 encodeObject:self->_plans forKey:@"plans"];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKTransitAppletHistoryRecord *)self isEqualToTransitAppletHistoryRecord:v5];
  }

  return v6;
}

- (BOOL)isEqualToTransitAppletHistoryRecord:(id)a3
{
  v4 = a3;
  historySequenceNumber = self->_historySequenceNumber;
  v6 = v4[2];
  if (historySequenceNumber)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (historySequenceNumber != v6)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v8 = [(NSNumber *)historySequenceNumber isEqual:?];
    if ((v8 & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  time = self->_time;
  v10 = v4[6];
  if (time && v10)
  {
    if (([(NSDate *)time isEqual:?]& 1) == 0)
    {
      goto LABEL_68;
    }
  }

  else if (time != v10)
  {
    goto LABEL_68;
  }

  if (self->_type != v4[3] || self->_subtype != v4[4] || self->_detail != v4[5])
  {
    goto LABEL_68;
  }

  v11 = v4[16];
  v12 = self->_transitDetail;
  v13 = v11;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    if (!v12 || !v13)
    {

      goto LABEL_68;
    }

    v15 = [(NSString *)v12 isEqualToString:v13];

    if (!v15)
    {
      goto LABEL_68;
    }
  }

  balance = self->_balance;
  v17 = v4[7];
  if (balance && v17)
  {
    if (([(NSDecimalNumber *)balance isEqual:?]& 1) == 0)
    {
      goto LABEL_68;
    }
  }

  else if (balance != v17)
  {
    goto LABEL_68;
  }

  loyaltyBalance = self->_loyaltyBalance;
  v19 = v4[8];
  if (loyaltyBalance && v19)
  {
    if (([(NSNumber *)loyaltyBalance isEqual:?]& 1) == 0)
    {
      goto LABEL_68;
    }
  }

  else if (loyaltyBalance != v19)
  {
    goto LABEL_68;
  }

  amount = self->_amount;
  v21 = v4[9];
  if (amount && v21)
  {
    if (([(NSDecimalNumber *)amount isEqual:?]& 1) == 0)
    {
      goto LABEL_68;
    }
  }

  else if (amount != v21)
  {
    goto LABEL_68;
  }

  loyaltyAmount = self->_loyaltyAmount;
  v23 = v4[10];
  if (loyaltyAmount && v23)
  {
    if (([(NSNumber *)loyaltyAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_68;
    }
  }

  else if (loyaltyAmount != v23)
  {
    goto LABEL_68;
  }

  startStation = self->_startStation;
  v25 = v4[12];
  if (startStation && v25)
  {
    if (([(NSData *)startStation isEqual:?]& 1) == 0)
    {
      goto LABEL_68;
    }
  }

  else if (startStation != v25)
  {
    goto LABEL_68;
  }

  endStation = self->_endStation;
  v27 = v4[13];
  if (endStation && v27)
  {
    if (([(NSData *)endStation isEqual:?]& 1) == 0)
    {
      goto LABEL_68;
    }
  }

  else if (endStation != v27)
  {
    goto LABEL_68;
  }

  if (self->_recordType != v4[17])
  {
    goto LABEL_68;
  }

  cityCode = self->_cityCode;
  v29 = v4[11];
  if (cityCode && v29)
  {
    if (([(NSNumber *)cityCode isEqual:?]& 1) == 0)
    {
      goto LABEL_68;
    }
  }

  else if (cityCode != v29)
  {
    goto LABEL_68;
  }

  if (self->_transitModifiers != v4[1])
  {
    goto LABEL_68;
  }

  amounts = self->_amounts;
  v31 = v4[14];
  if (!amounts || !v31)
  {
    if (amounts == v31)
    {
      goto LABEL_64;
    }

LABEL_68:
    v34 = 0;
    goto LABEL_69;
  }

  if (([(NSArray *)amounts isEqual:?]& 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_64:
  plans = self->_plans;
  v33 = v4[15];
  if (plans && v33)
  {
    v34 = [(NSArray *)plans isEqual:?];
  }

  else
  {
    v34 = plans == v33;
  }

LABEL_69:

  return v34;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_historySequenceNumber];
  [v3 safelyAddObject:self->_time];
  [v3 safelyAddObject:self->_transitDetail];
  [v3 safelyAddObject:self->_balance];
  [v3 safelyAddObject:self->_loyaltyBalance];
  [v3 safelyAddObject:self->_amount];
  [v3 safelyAddObject:self->_loyaltyAmount];
  [v3 safelyAddObject:self->_startStation];
  [v3 safelyAddObject:self->_endStation];
  [v3 safelyAddObject:self->_cityCode];
  [v3 safelyAddObject:self->_amounts];
  [v3 safelyAddObject:self->_plans];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_subtype - v5 + 32 * v5;
  v7 = self->_detail - v6 + 32 * v6;
  v8 = self->_recordType - v7 + 32 * v7;
  v9 = self->_transitModifiers - v8 + 32 * v8;

  return v9;
}

- (id)concreteTransactionWithCurrency:(id)a3 balanceLabels:(id)a4 unitDictionary:(id)a5 planLabels:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [PKPaymentTransaction paymentTransactionWithSource:1];
  [v14 setOriginatedByDevice:1];
  [v14 setTransactionType:2];
  [v14 setTransitType:{-[PKTransitAppletHistoryRecord transitTransactionSubtype](self, "transitTransactionSubtype")}];
  [v14 setTransitModifiers:{-[PKTransitAppletHistoryRecord transitTransactionModifier](self, "transitTransactionModifier")}];
  v15 = [(PKTransitAppletHistoryRecord *)self startStation];
  [v14 setStartStationCode:v15];

  v16 = [(PKTransitAppletHistoryRecord *)self endStation];
  [v14 setEndStationCode:v16];

  v17 = [(PKTransitAppletHistoryRecord *)self time];
  [v14 setTransactionDate:v17];

  v18 = [(PKTransitAppletHistoryRecord *)self cityCode];
  [v14 setCityCode:v18];

  [v14 setCurrencyCode:v13];
  v19 = [(PKTransitAppletHistoryRecord *)self _transactionAmountsWithBalanceLabels:v12 planLabels:v10 unitDictionary:v11];

  [v14 setAmounts:v19];
  v20 = [(PKTransitAppletHistoryRecord *)self _transactionCommutePlanUnitsWithPlanLabels:v10];

  [v14 setPlans:v20];
  v21 = [(PKTransitAppletHistoryRecord *)self amount];
  v22 = [MEMORY[0x1E696AB90] zero];
  if ([v21 isEqualToNumber:v22])
  {
    if ([(PKTransitAppletHistoryRecord *)self recordType]== 1)
    {

      goto LABEL_9;
    }

    v23 = [(PKTransitAppletHistoryRecord *)self transitTransactionSubtype]== 1026;
  }

  else
  {
    v23 = 0;
  }

  if (v21 && !v23)
  {
    [v14 setAmount:v21];
  }

LABEL_9:

  return v14;
}

- (id)felicaHistoryRecord
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end