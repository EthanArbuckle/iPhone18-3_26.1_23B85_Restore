@interface PKDemoTransactionGenerator
+ (id)_recordSpecificKeysForConfiguration:(id)a3;
+ (id)allMerchants;
+ (id)allPeople;
+ (id)demoMerchantForType:(int64_t)a3;
+ (id)itemIdentifierForAccountUser:(id)a3;
+ (id)itemIdentifierForPass:(id)a3;
+ (id)randomAmountForMerchant:(int64_t)a3;
+ (void)demoTransactionsAndEventsForItemIdentifier:(id)a3 configuration:(id)a4 transactions:(id *)a5 events:(id *)a6;
+ (void)demoTransactionsAndEventsWithConfiguration:(id)a3 transactions:(id *)a4 events:(id *)a5;
+ (void)generateDemoFilesForPasses:(id)a3 accountUsers:(id)a4 peerPaymentPassSerialNumber:(id)a5;
+ (void)generateDemoFilesWithCompletion:(id)a3;
+ (void)insertTransactionAndEventsWithConfiguration:(id)a3 completion:(id)a4;
@end

@implementation PKDemoTransactionGenerator

+ (void)generateDemoFilesWithCompletion:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v3 = +[PKPassLibrary sharedInstance];
  v4 = [v3 passesOfType:1];
  v5 = [v3 peerPaymentPassUniqueID];
  v34 = v3;
  v6 = [v3 passWithUniqueID:v5];
  v7 = [v6 paymentPass];

  v33 = v7;
  v30 = [v7 serialNumber];
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v50;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v50 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v49 + 1) + 8 * i);
        v15 = [v14 associatedAccountServiceAccountIdentifier];

        if (v15)
        {
          v16 = [v14 associatedAccountServiceAccountIdentifier];
          [v8 addObject:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v11);
  }

  v29 = v9;

  v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v18 = dispatch_group_create();
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v8;
  v19 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v46;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v46 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v45 + 1) + 8 * j);
        dispatch_group_enter(v18);
        v24 = +[PKAccountService sharedInstance];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __62__PKDemoTransactionGenerator_generateDemoFilesWithCompletion___block_invoke;
        v42[3] = &unk_1E79E0338;
        v43 = v17;
        v44 = v18;
        [v24 accountUsersForAccountWithIdentifier:v23 completion:v42];
      }

      v20 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v20);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKDemoTransactionGenerator_generateDemoFilesWithCompletion___block_invoke_3;
  block[3] = &unk_1E79D1F80;
  v40 = v31;
  v41 = a1;
  v37 = v29;
  v38 = v17;
  v39 = v30;
  v25 = v31;
  v26 = v30;
  v27 = v17;
  v28 = v29;
  dispatch_group_notify(v18, MEMORY[0x1E69E96A0], block);
}

void __62__PKDemoTransactionGenerator_generateDemoFilesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__PKDemoTransactionGenerator_generateDemoFilesWithCompletion___block_invoke_2;
  block[3] = &unk_1E79C4E00;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __62__PKDemoTransactionGenerator_generateDemoFilesWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) unionSet:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

uint64_t __62__PKDemoTransactionGenerator_generateDemoFilesWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) copy];
  [v2 generateDemoFilesForPasses:v3 accountUsers:v4 peerPaymentPassSerialNumber:*(a1 + 48)];

  result = *(a1 + 56);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

+ (void)generateDemoFilesForPasses:(id)a3 accountUsers:(id)a4 peerPaymentPassSerialNumber:(id)a5
{
  v62 = *MEMORY[0x1E69E9840];
  obj = a3;
  v47 = a4;
  v49 = a5;
  v8 = _demoDirectory();
  v9 = [MEMORY[0x1E696AC08] defaultManager];
  [v9 removeItemAtPath:v8 error:0];

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v48 = v8;
  [v10 createDirectoryAtPath:v8 withIntermediateDirectories:0 attributes:0 error:0];

  for (i = 0; i != 18; ++i)
  {
    v12 = PKDemoMerchantToString(i);
    v13 = _demoMerchantToDictionary(i);
    v14 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v13 options:1 error:0];
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v14 encoding:4];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.json", v12];
    v17 = [v48 stringByAppendingPathComponent:v16];

    [v15 writeToFile:v17 atomically:1 encoding:4 error:0];
  }

  for (j = 0; j != 10; ++j)
  {
    v19 = PKDemoPersonToString(j);
    v20 = _demoPersonToDictionary(j);
    v21 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v20 options:1 error:0];
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v21 encoding:4];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.json", v19];
    v24 = [v48 stringByAppendingPathComponent:v23];

    [v22 writeToFile:v24 atomically:1 encoding:4 error:0];
  }

  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obja = obj;
  v26 = [obja countByEnumeratingWithState:&v56 objects:v61 count:16];
  v27 = v49;
  if (v26)
  {
    v28 = v26;
    v29 = *v57;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v57 != v29)
        {
          objc_enumerationMutation(obja);
        }

        v31 = *(*(&v56 + 1) + 8 * k);
        if (([v31 isAppleBalancePass] & 1) == 0)
        {
          v32 = [v31 serialNumber];
          v33 = v27;
          if (v32 == v33)
          {
            v34 = 1;
          }

          else
          {
            v34 = 0;
            if (v27 && v32)
            {
              v34 = [v32 isEqualToString:v33];
            }
          }

          v35 = [a1 itemIdentifierForPass:v31];
          v36 = _demoTransactionArrayForItemIdentifier(v35, v34);
          [v25 addObjectsFromArray:v36];

          v27 = v49;
        }
      }

      v28 = [obja countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v28);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v37 = v47;
  v38 = [v37 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v53;
    do
    {
      for (m = 0; m != v39; ++m)
      {
        if (*v53 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = [a1 itemIdentifierForAccountUser:*(*(&v52 + 1) + 8 * m)];
        v43 = _demoTransactionArrayForItemIdentifier(v42, 0);
        [v25 addObjectsFromArray:v43];
      }

      v39 = [v37 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v39);
  }

  v44 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v25 options:1 error:0];
  v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v44 encoding:4];
  v46 = [v48 stringByAppendingPathComponent:@"StoreDemoTransactions.json"];
  [v45 writeToFile:v46 atomically:1 encoding:4 error:0];
}

+ (id)demoMerchantForType:(int64_t)a3
{
  v3 = _demoMerchantToDictionary(a3);
  v4 = _merchantFromDictionary(v3);

  return v4;
}

+ (id)randomAmountForMerchant:(int64_t)a3
{
  v3 = _demoMerchantToDictionary(a3);
  v4 = [v3 objectForKey:@"minAmount"];
  v5 = [v3 objectForKey:@"maxAmount"];
  if ([v4 length] && objc_msgSend(v5, "length"))
  {
    [v4 floatValue];
    v7 = v6;
    [v5 floatValue];
    v9 = v8;
    v10 = v7;
  }

  else
  {
    v9 = 500.0;
    v10 = 5.0;
  }

  v11 = _randomAmount(v10, v9);

  return v11;
}

+ (void)demoTransactionsAndEventsForItemIdentifier:(id)a3 configuration:(id)a4 transactions:(id *)a5 events:(id *)a6
{
  v75[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = v12;
  if (v9)
  {
    v48 = a5;
    v49 = a6;
    v50 = v11;
    v53 = v12;
    v54 = v9;
    v14 = _demoDirectory();
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = [MEMORY[0x1E696AC08] defaultManager];
    v52 = v14;
    v17 = [MEMORY[0x1E695DFF8] URLWithString:v14];
    v18 = *MEMORY[0x1E695DB78];
    v75[0] = *MEMORY[0x1E695DB50];
    v75[1] = v18;
    v75[2] = *MEMORY[0x1E695DBC8];
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:3];
    v20 = [v16 enumeratorAtURL:v17 includingPropertiesForKeys:v19 options:0 errorHandler:0];

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v20;
    v21 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
    v55 = v15;
    if (v21)
    {
      v22 = v21;
      v56 = 0;
      v23 = *v71;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v71 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v70 + 1) + 8 * i);
          v26 = [v25 lastPathComponent];
          v27 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v25];
          v69 = 0;
          v28 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v27 options:0 error:&v69];
          v29 = v69;
          if (v26)
          {
            if ([v26 isEqual:@"StoreDemoTransactions.json"])
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v30 = v28;

                v56 = v30;
                v15 = v55;
              }
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v15 setObject:v28 forKeyedSubscript:v26];
          }
        }

        v22 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
      }

      while (v22);
    }

    else
    {
      v56 = 0;
    }

    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __107__PKDemoTransactionGenerator_demoTransactionsAndEventsForItemIdentifier_configuration_transactions_events___block_invoke;
    v65[3] = &unk_1E79E0360;
    v34 = v33;
    v66 = v34;
    v35 = v31;
    v67 = v35;
    v36 = v32;
    v37 = v15;
    v38 = v36;
    v68 = v36;
    [v37 enumerateKeysAndObjectsUsingBlock:v65];
    v9 = v54;
    v39 = [MEMORY[0x1E696AE18] predicateWithFormat:@"itemIdentifier == %@", v54];
    v40 = [v56 filteredArrayUsingPredicate:v39];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __107__PKDemoTransactionGenerator_demoTransactionsAndEventsForItemIdentifier_configuration_transactions_events___block_invoke_2;
    v58[3] = &unk_1E79E0388;
    v59 = v10;
    v60 = v34;
    v61 = v38;
    v62 = v35;
    v13 = v53;
    v41 = v53;
    v63 = v41;
    v64 = v50;
    v42 = v50;
    v51 = v35;
    v43 = v38;
    v44 = v34;
    [v40 enumerateObjectsUsingBlock:v58];
    v45 = _removeFutureTransactionsFromTransaction(v42);

    v11 = [v45 mutableCopy];
    if (v48)
    {
      v46 = v11;
      *v48 = v11;
    }

    if (v49)
    {
      v47 = v41;
      *v49 = v41;
    }
  }
}

void __107__PKDemoTransactionGenerator_demoTransactionsAndEventsForItemIdentifier_configuration_transactions_events___block_invoke(id *a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  v6 = [v9 objectForKeyedSubscript:@"counterpartHandle"];
  v7 = [v5 stringByDeletingPathExtension];

  if (v6)
  {
    [a1[4] setObject:v9 forKeyedSubscript:v7];
  }

  else
  {
    v8 = _merchantFromDictionary(v9);
    [a1[5] setObject:v8 forKeyedSubscript:v7];
    [a1[6] setObject:v9 forKeyedSubscript:v7];
  }
}

void __107__PKDemoTransactionGenerator_demoTransactionsAndEventsForItemIdentifier_configuration_transactions_events___block_invoke_2(void **a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E696AB90];
  v5 = [v3 objectForKeyedSubscript:@"amount"];
  v6 = [v4 decimalNumberWithString:v5];

  v7 = [v3 objectForKeyedSubscript:@"currencyCode"];
  v8 = _dateFormatter();
  v9 = [v3 objectForKeyedSubscript:@"date"];
  v10 = [v8 dateFromString:v9];

  v11 = _commonTransactionForAmount(v6, v7, v10, a1[4]);
  v12 = [v3 objectForKeyedSubscript:@"counterpartIdentifier"];
  if (v12)
  {
    v13 = [a1[5] objectForKeyedSubscript:v12];
    _updateTransactionWithCounterpartData(v11, v13);
  }

  else
  {
    v13 = [v3 objectForKeyedSubscript:@"merchantIdentifier"];
    v18 = [a1[6] objectForKeyedSubscript:v13];
    v14 = [a1[7] objectForKeyedSubscript:v13];
    v15 = a1[4];
    v19 = 0;
    _updateTransactionWithMerchantData(v11, v18, v14, v15, &v19);
    v16 = v6;
    v17 = v19;
    [a1[8] safelyAddObject:v17];

    v6 = v16;
  }

  [a1[9] addObject:v11];
}

+ (void)demoTransactionsAndEventsWithConfiguration:(id)a3 transactions:(id *)a4 events:(id *)a5
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [v5 transactionCount];
  v8 = [v5 demoPerson];
  v9 = [v5 demoMerchant];
  if (v7 >= 1)
  {
    v10 = v9;
    v11 = 0x1E696A000uLL;
    while (1)
    {
      v12 = [*(v11 + 2960) decimalNumberWithMantissa:arc4random_uniform(0x2710u) exponent:4294967294 isNegative:0];
      v13 = [MEMORY[0x1E695DF00] date];
      v14 = _commonTransactionForAmount(v12, @"USD", v13, v5);
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

      if ((v10 & 0x8000000000000000) == 0)
      {
        v15 = _demoMerchantToDictionary(v10);
        v28 = _merchantFromDictionary(v15);
        v29 = 0;
        _updateTransactionWithMerchantData(v14, v15, v28, v5, &v29);
        v16 = v8;
        v17 = v5;
        v18 = v6;
        v19 = v10;
        v20 = v29;
        [v27 safelyAddObject:v20];

        v10 = v19;
        v6 = v18;
        v5 = v17;
        v8 = v16;
        v11 = 0x1E696A000;

        goto LABEL_7;
      }

LABEL_8:
      [v6 safelyAddObject:v14];

      if (!--v7)
      {
        goto LABEL_9;
      }
    }

    v15 = _demoPersonToDictionary(v8);
    _updateTransactionWithCounterpartData(v14, v15);
LABEL_7:

    goto LABEL_8;
  }

LABEL_9:
  v21 = _removeFutureTransactionsFromTransaction(v6);
  v22 = [v21 mutableCopy];

  if (a4)
  {
    v23 = v22;
    *a4 = v22;
  }

  v24 = v27;
  if (a5)
  {
    v24 = v27;
    *a5 = v24;
  }
}

+ (id)itemIdentifierForPass:(id)a3
{
  v3 = [a3 paymentPass];
  v4 = [v3 serialNumber];

  return v4;
}

+ (id)itemIdentifierForAccountUser:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v4 accountIdentifier];
  v6 = [v4 altDSID];

  v7 = [v3 stringWithFormat:@"%@:%@", v5, v6];

  return v7;
}

+ (id)allMerchants
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 0; i != 18; ++i)
  {
    v4 = PKDemoMerchantToString(i);
    [v2 addObject:v4];
  }

  v5 = [v2 copy];

  return v5;
}

+ (id)allPeople
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 0; i != 10; ++i)
  {
    v4 = PKDemoPersonToString(i);
    [v2 addObject:v4];
  }

  v5 = [v2 copy];

  return v5;
}

+ (void)insertTransactionAndEventsWithConfiguration:(id)a3 completion:(id)a4
{
  v76 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v48 = a4;
  v7 = +[PKPaymentService paymentService];
  v50 = objc_alloc_init(PKCloudStoreService);
  if ([v6 codingType])
  {
    v8 = [v6 codingType];
  }

  else
  {
    v8 = 2;
  }

  v9 = dispatch_group_create();
  v10 = [v6 transactions];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __85__PKDemoTransactionGenerator_insertTransactionAndEventsWithConfiguration_completion___block_invoke;
  v70[3] = &unk_1E79E03D8;
  v11 = v9;
  v71 = v11;
  v12 = v6;
  v72 = v12;
  v47 = v7;
  v73 = v47;
  [v10 enumerateObjectsUsingBlock:v70];
  v49 = [v12 accountEvents];
  v51 = v12;
  if ([v49 count])
  {
    v13 = objc_alloc_init(PKAccountService);
    v14 = [v12 accountIdentifier];
    v15 = v14;
    v45 = v10;
    v46 = a1;
    if (v14)
    {
      v16 = v14;
      v17 = v49;
    }

    else
    {
      v17 = v49;
      v18 = [v49 firstObject];
      v16 = [v18 accountIdentifier];
    }

    dispatch_group_enter(v11);
    v19 = [MEMORY[0x1E695DFD8] setWithArray:v17];
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __85__PKDemoTransactionGenerator_insertTransactionAndEventsWithConfiguration_completion___block_invoke_3;
    v68[3] = &unk_1E79C7D08;
    v20 = v11;
    v69 = v20;
    v43 = v16;
    v44 = v13;
    [(PKAccountService *)v13 insertEvents:v19 withAccountidentifier:v16 completion:v68];

    v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v22 = v17;
    v23 = [v22 countByEnumeratingWithState:&v64 objects:v75 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v65;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v65 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [[PKCloudStoreUploadItemConfiguration alloc] initWithItem:*(*(&v64 + 1) + 8 * i)];
          [(PKCloudStoreUploadItemConfiguration *)v27 setCodingType:v8];
          [v21 addObject:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v64 objects:v75 count:16];
      }

      while (v24);
    }

    dispatch_group_enter(v20);
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __85__PKDemoTransactionGenerator_insertTransactionAndEventsWithConfiguration_completion___block_invoke_4;
    v62[3] = &unk_1E79E0400;
    v63 = v20;
    [(PKCloudStoreService *)v50 updateCloudStoreWithLocalItemsWithConfigurations:v21 completion:v62];

    v12 = v51;
    v10 = v45;
    a1 = v46;
  }

  v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v29 = [a1 _recordSpecificKeysForConfiguration:v12];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v30 = v10;
  v31 = [v30 countByEnumeratingWithState:&v58 objects:v74 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v59;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v59 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [[PKCloudStoreUploadItemConfiguration alloc] initWithItem:*(*(&v58 + 1) + 8 * j) recordSpecificKeys:v29];
        [(PKCloudStoreUploadItemConfiguration *)v35 setCodingType:v8];
        [v28 addObject:v35];
      }

      v32 = [v30 countByEnumeratingWithState:&v58 objects:v74 count:16];
    }

    while (v32);
  }

  dispatch_group_enter(v11);
  if ([v30 count] <= 0x32)
  {
    v36 = 1000000000;
  }

  else
  {
    v36 = 10;
  }

  v37 = dispatch_time(0, v36);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PKDemoTransactionGenerator_insertTransactionAndEventsWithConfiguration_completion___block_invoke_5;
  block[3] = &unk_1E79C4E00;
  v55 = v50;
  v56 = v28;
  v57 = v11;
  v38 = v11;
  v39 = v28;
  v40 = v50;
  v41 = MEMORY[0x1E69E96A0];
  dispatch_after(v37, MEMORY[0x1E69E96A0], block);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __85__PKDemoTransactionGenerator_insertTransactionAndEventsWithConfiguration_completion___block_invoke_7;
  v52[3] = &unk_1E79C4428;
  v53 = v48;
  v42 = v48;
  dispatch_group_notify(v38, v41, v52);
}

void __85__PKDemoTransactionGenerator_insertTransactionAndEventsWithConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = [*(a1 + 40) transactionSourceIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 transactionSourceIdentifier];
  }

  v7 = v6;

  v8 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__PKDemoTransactionGenerator_insertTransactionAndEventsWithConfiguration_completion___block_invoke_2;
  v9[3] = &unk_1E79E03B0;
  v10 = *(a1 + 32);
  [v8 insertOrUpdatePaymentTransaction:v3 forTransactionSourceIdentifier:v7 completion:v9];
}

void __85__PKDemoTransactionGenerator_insertTransactionAndEventsWithConfiguration_completion___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __85__PKDemoTransactionGenerator_insertTransactionAndEventsWithConfiguration_completion___block_invoke_6;
  v3[3] = &unk_1E79E0400;
  v4 = *(a1 + 48);
  [v1 updateCloudStoreWithLocalItemsWithConfigurations:v2 completion:v3];
}

uint64_t __85__PKDemoTransactionGenerator_insertTransactionAndEventsWithConfiguration_completion___block_invoke_7(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (id)_recordSpecificKeysForConfiguration:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 paymentPass];
  v7 = [v4 accountIdentifier];
  v8 = [v4 accountType];

  v9 = [v6 serialNumber];
  v10 = [v6 passTypeIdentifier];
  v11 = [v6 primaryAccountIdentifier];
  v12 = [v6 devicePrimaryPaymentApplication];
  v13 = [v12 dpanIdentifier];

  v14 = +[PKSecureElement primarySecureElementIdentifier];
  if (!v7)
  {
    if ([v6 hasAssociatedPeerPaymentAccount])
    {
      v15 = +[PKPeerPaymentService sharedInstance];
      v16 = [v15 account];
      v7 = [v16 identifier];

      v8 = 1;
    }

    else
    {
      v7 = [v6 associatedAccountServiceAccountIdentifier];

      if (v7)
      {
        v7 = [v6 associatedAccountServiceAccountIdentifier];
        v8 = 2;
      }
    }
  }

  if ([v7 length])
  {
    v17 = &PKCloudTransactionAccountIdentifierKey;
    v18 = v7;
LABEL_12:
    [v5 setObject:v18 forKey:*v17];
    goto LABEL_13;
  }

  if ([v9 length])
  {
    [v5 setObject:v9 forKey:@"passSerialNumber"];
  }

  if ([v10 length])
  {
    v17 = &PKCloudTransactionPassTypeIdentifierKey;
    v18 = v10;
    goto LABEL_12;
  }

LABEL_13:
  if ([v11 length])
  {
    [v5 setObject:v11 forKey:@"fpanIdentifier"];
  }

  if ([v13 length])
  {
    [v5 setObject:v13 forKey:@"dpanIdentifier"];
  }

  if (v14)
  {
    [v5 setObject:v14 forKey:@"originDeviceID"];
  }

  v19 = PKPaymentTransactionAccountTypeToString(v8);
  [v5 setObject:v19 forKey:@"feature"];

  [v5 setObject:&unk_1F23B5678 forKey:@"cloudVersion"];
  v20 = [v5 copy];

  return v20;
}

@end