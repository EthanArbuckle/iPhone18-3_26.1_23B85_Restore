@interface FinHealthRecurringHelper
+ (id)histogramKeysForCardPurchaseTransaction:(id)transaction transactionAmount:(id)amount transactionSourceIdentifier:(id)identifier transactionType:(int64_t)type accountType:(int64_t)accountType amountFromDatabase:(int64_t)database receiptIdentifier:(id)receiptIdentifier;
+ (id)histogramKeysForMerchantDetailedCategoryTransaction:(id)transaction transactionSourceIdentifier:(id)identifier transactionAmount:(id)amount transactionType:(int64_t)type amountFromDatabase:(int64_t)database;
+ (id)histogramKeysForPeerPaymentTransaction:(id)transaction transactionAmount:(id)amount transactionPeerPaymentSubtype:(int64_t)subtype amountFromDatabase:(int64_t)database;
+ (id)histogramKeysForTopUpTransaction:(id)transaction amountFromDatabase:(int64_t)database;
+ (id)histogramKeysForTransaction:(id)transaction;
+ (id)mean:(id)mean;
+ (id)mean:(id)mean startIndex:(unint64_t)index arrayLength:(unint64_t)length;
+ (id)rootMeanSquareError:(id)error;
+ (id)rootMeanSquareError:(id)error decimalKey:(id)key startIndex:(unint64_t)index arrayLength:(unint64_t)length decimalDenominator:(id)denominator;
+ (id)rootMeanSquareError:(id)error startIndex:(unint64_t)index arrayLength:(unint64_t)length;
+ (void)rootMeanSquareErrorForSlidingWindowWithCompletion:(id)completion slidingWindowWidth:(unint64_t)width decimalThreshold:(id)threshold decimalDenominator:(id)denominator decimalKeyEntry:(id)entry completion:(id)a8;
@end

@implementation FinHealthRecurringHelper

+ (void)rootMeanSquareErrorForSlidingWindowWithCompletion:(id)completion slidingWindowWidth:(unint64_t)width decimalThreshold:(id)threshold decimalDenominator:(id)denominator decimalKeyEntry:(id)entry completion:(id)a8
{
  completionCopy = completion;
  thresholdCopy = threshold;
  denominatorCopy = denominator;
  entryCopy = entry;
  v17 = a8;
  if (1 - width + [completionCopy count])
  {
    v18 = 0;
    do
    {
      v19 = [self rootMeanSquareError:completionCopy decimalKey:entryCopy startIndex:v18 arrayLength:width decimalDenominator:denominatorCopy];
      if ([v19 lessThan:thresholdCopy])
      {
        v17[2](v17, v18, v19);
      }

      ++v18;
    }

    while (v18 < 1 - width + [completionCopy count]);
  }
}

+ (id)histogramKeysForTransaction:(id)transaction
{
  transactionCopy = transaction;
  transactionType = [transactionCopy transactionType];
  v6 = 0;
  if (transactionType <= 0x15)
  {
    if (((1 << transactionType) & 0x380401) != 0)
    {
      displayName = [transactionCopy displayName];
      amount = [transactionCopy amount];
      transactionSourceIdentifier = [transactionCopy transactionSourceIdentifier];
      transactionType2 = [transactionCopy transactionType];
      amountFromDatabase = [transactionCopy amountFromDatabase];
      receiptIdentifier = [transactionCopy receiptIdentifier];
      v6 = [self histogramKeysForCardPurchaseTransaction:displayName transactionAmount:amount transactionSourceIdentifier:transactionSourceIdentifier transactionType:transactionType2 amountFromDatabase:amountFromDatabase receiptIdentifier:receiptIdentifier];

LABEL_4:
LABEL_5:

      goto LABEL_6;
    }

    if (transactionType == 3)
    {
      displayName = [transactionCopy peerPaymentCounterpartHandle];
      amount = [transactionCopy amount];
      v6 = [self histogramKeysForPeerPaymentTransaction:displayName transactionAmount:amount transactionPeerPaymentSubtype:objc_msgSend(transactionCopy amountFromDatabase:{"peerPaymentType"), objc_msgSend(transactionCopy, "amountFromDatabase")}];
      goto LABEL_4;
    }

    if (transactionType == 6)
    {
      displayName = [transactionCopy amount];
      v6 = [self histogramKeysForTopUpTransaction:displayName amountFromDatabase:{objc_msgSend(transactionCopy, "amountFromDatabase")}];
      goto LABEL_5;
    }
  }

LABEL_6:

  return v6;
}

+ (id)histogramKeysForCardPurchaseTransaction:(id)transaction transactionAmount:(id)amount transactionSourceIdentifier:(id)identifier transactionType:(int64_t)type accountType:(int64_t)accountType amountFromDatabase:(int64_t)database receiptIdentifier:(id)receiptIdentifier
{
  transactionCopy = transaction;
  amountCopy = amount;
  identifierCopy = identifier;
  receiptIdentifierCopy = receiptIdentifier;
  v19 = receiptIdentifierCopy;
  if (receiptIdentifierCopy)
  {
    v35 = amountCopy;
    v37 = transactionCopy;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __179__FinHealthRecurringHelper_histogramKeysForCardPurchaseTransaction_transactionAmount_transactionSourceIdentifier_transactionType_accountType_amountFromDatabase_receiptIdentifier___block_invoke;
    v49[3] = &unk_2785CB058;
    v50 = receiptIdentifierCopy;
    v20 = [FHDatabaseClauseFromBuilder initWithBuilder:v49];
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__0;
    v47 = __Block_byref_object_dispose__0;
    v48 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v21 = [[FHDatabaseEntity alloc] initWithEntity:@"fh_receipt_data"];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __179__FinHealthRecurringHelper_histogramKeysForCardPurchaseTransaction_transactionAmount_transactionSourceIdentifier_transactionType_accountType_amountFromDatabase_receiptIdentifier___block_invoke_451;
    v38[3] = &unk_2785CB5A8;
    v40 = &v43;
    selfCopy = self;
    v22 = identifierCopy;
    v39 = v22;
    typeCopy = type;
    [(FHDatabaseEntity *)v21 queryDataWithBlock:v20 logicalOperator:@"AND" selectFields:&unk_283A88170 usingBlock:v38];
    if ([v44[5] count])
    {
      v23 = [v44[5] copy];
    }

    else
    {
      v23 = [self histogramKeysForCardPurchaseTransaction:v37 transactionAmount:v35 transactionSourceIdentifier:v22 transactionType:type accountType:accountType amountFromDatabase:database receiptIdentifier:0];
    }

    v33 = v23;

    _Block_object_dispose(&v43, 8);
    amountCopy = v35;
    v31 = v37;
  }

  else
  {
    [amountCopy doubleValue];
    accountType = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%ld_%.2f_%ld", transactionCopy, identifierCopy, type, log(fabs(v24) + 1.0), accountType];
    [MEMORY[0x277CCACA8] stringWithFormat:@"%ld%@", objc_msgSend(accountType, "hash"), @"_4bd92d83a"];
    v26 = v25 = identifierCopy;
    accountType2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%ld_%ld_%ld", transactionCopy, v25, type, 14 * database, accountType];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(accountType2, "hash")];
    v29 = MEMORY[0x277CBEB98];
    v30 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndIntegerRank:v26 featureRank:0];
    v31 = transactionCopy;
    v32 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndIntegerRank:v28 featureRank:0];
    v33 = [v29 setWithObjects:{v30, v32, 0}];

    identifierCopy = v25;
    v19 = 0;
  }

  return v33;
}

void __179__FinHealthRecurringHelper_histogramKeysForCardPurchaseTransaction_transactionAmount_transactionSourceIdentifier_transactionType_accountType_amountFromDatabase_receiptIdentifier___block_invoke_451(void *a1, void *a2)
{
  v3 = a2;
  v16 = [v3 stringAtIndex:0];
  v4 = [v3 stringAtIndex:1];
  v5 = [v3 intAtIndex:2];

  v6 = [objc_alloc(MEMORY[0x277CCA980]) initWithInteger:v5];
  v7 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v8 = [v6 decimalNumberByDividingBy:v7];

  v9 = a1[6];
  v10 = *(*(a1[5] + 8) + 40);
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v16, v4];
  v12 = [v9 histogramKeysForCardPurchaseTransaction:v11 transactionAmount:v8 transactionSourceIdentifier:a1[4] transactionType:a1[7] amountFromDatabase:v5 receiptIdentifier:0];
  v13 = [v10 setByAddingObjectsFromSet:v12];
  v14 = *(a1[5] + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

+ (id)histogramKeysForPeerPaymentTransaction:(id)transaction transactionAmount:(id)amount transactionPeerPaymentSubtype:(int64_t)subtype amountFromDatabase:(int64_t)database
{
  transactionCopy = transaction;
  [amount doubleValue];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%ld_%.2f", transactionCopy, subtype, log(fabs(v10) + 1.0)];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld%@", objc_msgSend(v11, "hash"), @"_4bd92d83a"];
  database = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%ld_%ld", transactionCopy, subtype, 14 * database];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(database, "hash")];
  subtype = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%ld", transactionCopy, subtype];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(subtype, "hash")];
  v17 = MEMORY[0x277CBEB98];
  v18 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndIntegerRank:v12 featureRank:3];
  v19 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndIntegerRank:v14 featureRank:3];
  v20 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndIntegerRank:v16 featureRank:4];
  v21 = [v17 setWithObjects:{v18, v19, v20, 0}];

  return v21;
}

+ (id)histogramKeysForTopUpTransaction:(id)transaction amountFromDatabase:(int64_t)database
{
  [transaction doubleValue];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.2f", log(fabs(v5) + 1.0)];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld%@", objc_msgSend(v6, "hash"), @"_4bd92d83a"];
  database = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", 14 * database];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(database, "hash")];
  v10 = MEMORY[0x277CBEB98];
  v11 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndIntegerRank:v7 featureRank:5];
  v12 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndIntegerRank:v9 featureRank:5];
  v13 = [v10 setWithObjects:{v11, v12, 0}];

  return v13;
}

+ (id)histogramKeysForMerchantDetailedCategoryTransaction:(id)transaction transactionSourceIdentifier:(id)identifier transactionAmount:(id)amount transactionType:(int64_t)type amountFromDatabase:(int64_t)database
{
  identifierCopy = identifier;
  transactionCopy = transaction;
  [amount doubleValue];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%ld_%.2f", transactionCopy, identifierCopy, type, log(fabs(v13) + 1.0)];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld%@", objc_msgSend(v14, "hash"), @"_4bd92d83a"];
  database = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%ld_%ld", transactionCopy, identifierCopy, type, 14 * database];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(database, "hash")];
  v18 = MEMORY[0x277CBEB98];
  v19 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndIntegerRank:v15 featureRank:9];
  v20 = [[FHSmartCompoundFeatureRankedValue alloc] initWithLabelAndIntegerRank:v17 featureRank:9];
  v21 = [v18 setWithObjects:{v19, v20, 0}];

  return v21;
}

+ (id)rootMeanSquareError:(id)error startIndex:(unint64_t)index arrayLength:(unint64_t)length
{
  errorCopy = error;
  if (length + index > index)
  {
    v8 = 0.0;
    lengthCopy = length;
    indexCopy = index;
    do
    {
      v11 = [errorCopy objectAtIndex:indexCopy];
      [v11 doubleValue];
      v8 = v8 + v12;

      ++indexCopy;
      --lengthCopy;
    }

    while (lengthCopy);
    lengthCopy3 = length;
    v14 = v8 / length;
    if (v14 >= 7.0 - 2.0)
    {
      v15 = 0.0;
      if (length + index > index)
      {
        do
        {
          v16 = [errorCopy objectAtIndex:index];
          [v16 doubleValue];
          v18 = v17;

          v15 = v15 + (v18 - v14) * (v18 - v14);
          ++index;
          --length;
        }

        while (length);
      }

      goto LABEL_10;
    }

LABEL_9:
    v19 = objc_alloc(MEMORY[0x277CCA980]);
    v20 = 2.0 + 1.0;
    goto LABEL_11;
  }

  lengthCopy3 = length;
  v15 = 0.0;
  if (0.0 / length < 7.0 - 2.0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v19 = objc_alloc(MEMORY[0x277CCA980]);
  v20 = sqrt(v15 / lengthCopy3);
LABEL_11:
  v21 = [v19 initWithDouble:v20];

  return v21;
}

+ (id)rootMeanSquareError:(id)error
{
  errorCopy = error;
  v5 = [self rootMeanSquareError:errorCopy startIndex:0 arrayLength:{objc_msgSend(errorCopy, "count")}];

  return v5;
}

+ (id)mean:(id)mean startIndex:(unint64_t)index arrayLength:(unint64_t)length
{
  v6 = 0.0;
  if (length + index > index)
  {
    indexCopy = index;
    lengthCopy = length;
    do
    {
      v10 = [mean objectAtIndex:indexCopy];
      [v10 doubleValue];
      v6 = v6 + v11;

      ++indexCopy;
      --lengthCopy;
    }

    while (lengthCopy);
  }

  v12 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v6 / length];

  return v12;
}

+ (id)mean:(id)mean
{
  meanCopy = mean;
  v5 = [self mean:meanCopy startIndex:0 arrayLength:{objc_msgSend(meanCopy, "count")}];

  return v5;
}

+ (id)rootMeanSquareError:(id)error decimalKey:(id)key startIndex:(unint64_t)index arrayLength:(unint64_t)length decimalDenominator:(id)denominator
{
  errorCopy = error;
  keyCopy = key;
  [denominator doubleValue];
  v14 = v13;
  v15 = 0.0;
  if (index + 1 < length + index)
  {
    v16 = length - 1;
    indexCopy = index;
    do
    {
      v18 = indexCopy + 1;
      v19 = [errorCopy objectAtIndex:?];
      v20 = [v19 objectForKey:keyCopy];

      v21 = [errorCopy objectAtIndex:v18];
      v22 = [v21 objectForKey:keyCopy];

      v23 = [v20 decimalNumberBySubtracting:v22];
      [v23 doubleValue];
      v15 = v15 + v24 / v14;

      indexCopy = v18;
      --v16;
    }

    while (v16);
  }

  v25 = length - 1;
  v26 = (length - 1);
  v27 = v15 / v26;
  if (v27 >= 7.0 - 2.0)
  {
    v30 = 0.0;
    if (index + 1 < length + index)
    {
      do
      {
        v31 = index + 1;
        v32 = [errorCopy objectAtIndex:index];
        v33 = [v32 objectForKey:keyCopy];

        v34 = [errorCopy objectAtIndex:v31];
        v35 = [v34 objectForKey:keyCopy];

        v36 = [v33 decimalNumberBySubtracting:v35];
        [v36 doubleValue];
        v38 = v37 / v14;

        v30 = v30 + (v38 - v27) * (v38 - v27);
        index = v31;
        --v25;
      }

      while (v25);
    }

    v28 = objc_alloc(MEMORY[0x277CCA980]);
    v29 = sqrt(v30 / v26);
  }

  else
  {
    v28 = objc_alloc(MEMORY[0x277CCA980]);
    v29 = 2.0 + 1.0;
  }

  v39 = [v28 initWithDouble:v29];

  return v39;
}

@end