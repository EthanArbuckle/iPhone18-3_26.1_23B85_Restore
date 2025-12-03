@interface FHBankConnectDescriptionCleaner
- (FHBankConnectDescriptionCleaner)init;
- (id)_aspspDescriptionCleaning:(id)cleaning;
- (id)_cleanDescriptionForTransaction:(id)transaction;
- (id)_furtherRbsCleaning:(id)cleaning;
- (id)_genericDescriptionCleaning:(id)cleaning;
- (id)_homogenizeMerchantPattern:(id)pattern;
- (id)_initializeRegexPatterns;
- (id)_paymentDescriptionCleaning:(id)cleaning;
- (id)_paypalDescriptionCleaning:(id)cleaning;
- (id)_rbsCleaning:(id)cleaning;
- (id)_serviceRemovePatternsFromDescription:(id)description;
- (id)_topMerchantPatternsFromDescription:(id)description;
- (id)cleanDescriptionForTransaction:(id)transaction;
- (id)cleanTransactionDescription:(id)description;
- (id)fpDescriptionCleaning:(id)cleaning;
- (id)getTransactionGroupingProperty:(id)property;
@end

@implementation FHBankConnectDescriptionCleaner

- (FHBankConnectDescriptionCleaner)init
{
  v29.receiver = self;
  v29.super_class = FHBankConnectDescriptionCleaner;
  v2 = [(FHBankConnectDescriptionCleaner *)&v29 init];
  v3 = v2;
  if (v2)
  {
    intlPatternKey = v2->_intlPatternKey;
    v2->_intlPatternKey = @"INTL_PATTERN";

    rbsHeaderPatternKey = v3->_rbsHeaderPatternKey;
    v3->_rbsHeaderPatternKey = @"RBS_HEADER_PATTERN";

    twoCommaPatternKey = v3->_twoCommaPatternKey;
    v3->_twoCommaPatternKey = @"TWO_COMMA_PATTERN";

    threeCommaPatternKey = v3->_threeCommaPatternKey;
    v3->_threeCommaPatternKey = @"THREE_COMMA_PATTERN";

    rbsDatePatternKey = v3->_rbsDatePatternKey;
    v3->_rbsDatePatternKey = @"RBS_DATE_PATTERN";

    fpPatternKey = v3->_fpPatternKey;
    v3->_fpPatternKey = @"FP_PATTERN";

    paypalPatternKey = v3->_paypalPatternKey;
    v3->_paypalPatternKey = @"PAYPAL_PATTERN";

    aspspPatternKey = v3->_aspspPatternKey;
    v3->_aspspPatternKey = @"ASPSP_PATTERN";

    serviceMatchKey = v3->_serviceMatchKey;
    v3->_serviceMatchKey = @"SERVICE_MATCH";

    serviceRemoveKey = v3->_serviceRemoveKey;
    v3->_serviceRemoveKey = @"SERVICE_REMOVE_MATCH";

    topMerchantMatchPatternsKey = v3->_topMerchantMatchPatternsKey;
    v3->_topMerchantMatchPatternsKey = @"MATCH_PATTERNS";

    topMerchantHomogenizeKey = v3->_topMerchantHomogenizeKey;
    v3->_topMerchantHomogenizeKey = @"HOMOGENIZE_PATTERNS";

    grouperKey = v3->_grouperKey;
    v3->_grouperKey = @"GROUPER";

    _createRegexMappingDict = [(FHBankConnectDescriptionCleaner *)v3 _createRegexMappingDict];
    v18 = [_createRegexMappingDict objectForKey:@"GENERAL_DESCRIPTION_CLEANING_REGEX_PATTERNS"];
    generalRegexPatterns = v3->_generalRegexPatterns;
    v3->_generalRegexPatterns = v18;

    v20 = [_createRegexMappingDict objectForKey:@"SERVICE_PAYMENT_MATCH_PATTERNS"];
    serviceMatchPatterns = v3->_serviceMatchPatterns;
    v3->_serviceMatchPatterns = v20;

    v22 = [_createRegexMappingDict objectForKey:@"SERVICE_REMOVE_PATTERNS"];
    serviceRemovePatterns = v3->_serviceRemovePatterns;
    v3->_serviceRemovePatterns = v22;

    v24 = [_createRegexMappingDict objectForKey:@"TOP_MERCHANT_PATTERNS"];
    topMerchantPatterns = v3->_topMerchantPatterns;
    v3->_topMerchantPatterns = v24;

    _initializeRegexPatterns = [(FHBankConnectDescriptionCleaner *)v3 _initializeRegexPatterns];
    descriptionCleaningPatterns = v3->_descriptionCleaningPatterns;
    v3->_descriptionCleaningPatterns = _initializeRegexPatterns;
  }

  return v3;
}

- (id)_initializeRegexPatterns
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(NSDictionary *)self->_generalRegexPatterns objectForKey:self->_intlPatternKey];
  v73 = v4;
  if (v4)
  {
    v85 = 0;
    v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v4 options:0 error:&v85];
    v6 = v85;
    v7 = v6;
    if (v5)
    {
      [v3 setObject:v5 forKey:self->_intlPatternKey];
    }

    else if (v6)
    {
      v8 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v7 localizedDescription];
        *buf = 138412290;
        v87 = localizedDescription;
        _os_log_impl(&dword_226DD4000, v8, OS_LOG_TYPE_ERROR, "Error initializing INTL regex pattern: %@", buf, 0xCu);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = [(NSDictionary *)self->_generalRegexPatterns objectForKey:self->_rbsHeaderPatternKey];
  v72 = v10;
  if (v10)
  {
    v84 = v7;
    v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v10 options:0 error:&v84];
    v12 = v84;

    if (v11)
    {
      [v3 setObject:v11 forKey:self->_rbsHeaderPatternKey];
    }

    else if (v12)
    {
      v13 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        localizedDescription2 = [v12 localizedDescription];
        *buf = 138412290;
        v87 = localizedDescription2;
        _os_log_impl(&dword_226DD4000, v13, OS_LOG_TYPE_ERROR, "Error initializing RBS Header regex pattern: %@", buf, 0xCu);
      }

      v12 = 0;
    }

    v7 = v12;
  }

  v15 = [(NSDictionary *)self->_generalRegexPatterns objectForKey:self->_twoCommaPatternKey];
  v71 = v15;
  if (v15)
  {
    v83 = v7;
    v16 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v15 options:0 error:&v83];
    v17 = v83;

    if (v16)
    {
      [v3 setObject:v16 forKey:self->_twoCommaPatternKey];
    }

    else if (v17)
    {
      v18 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        localizedDescription3 = [v17 localizedDescription];
        *buf = 138412290;
        v87 = localizedDescription3;
        _os_log_impl(&dword_226DD4000, v18, OS_LOG_TYPE_ERROR, "Error initializing Two Comma regex pattern: %@", buf, 0xCu);
      }

      v17 = 0;
    }

    v7 = v17;
  }

  v20 = [(NSDictionary *)self->_generalRegexPatterns objectForKey:self->_threeCommaPatternKey];
  v70 = v20;
  if (v20)
  {
    v82 = v7;
    v21 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v20 options:0 error:&v82];
    v22 = v82;

    if (v21)
    {
      [v3 setObject:v21 forKey:self->_threeCommaPatternKey];
    }

    else if (v22)
    {
      v23 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        localizedDescription4 = [v22 localizedDescription];
        *buf = 138412290;
        v87 = localizedDescription4;
        _os_log_impl(&dword_226DD4000, v23, OS_LOG_TYPE_ERROR, "Error initializing Three Comma regex pattern: %@", buf, 0xCu);
      }

      v22 = 0;
    }

    v7 = v22;
  }

  v25 = [(NSDictionary *)self->_generalRegexPatterns objectForKey:self->_rbsDatePatternKey];
  v69 = v25;
  if (v25)
  {
    v81 = v7;
    v26 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v25 options:0 error:&v81];
    v27 = v81;

    if (v26)
    {
      [v3 setObject:v26 forKey:self->_rbsDatePatternKey];
    }

    else if (v27)
    {
      v28 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        localizedDescription5 = [v27 localizedDescription];
        *buf = 138412290;
        v87 = localizedDescription5;
        _os_log_impl(&dword_226DD4000, v28, OS_LOG_TYPE_ERROR, "Error initializing RBS Date regex pattern: %@", buf, 0xCu);
      }

      v27 = 0;
    }

    v7 = v27;
  }

  v30 = [(NSDictionary *)self->_generalRegexPatterns objectForKey:self->_fpPatternKey];
  v68 = v30;
  if (v30)
  {
    v80 = v7;
    v31 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v30 options:0 error:&v80];
    v32 = v80;

    if (v31)
    {
      [v3 setObject:v31 forKey:self->_fpPatternKey];
    }

    else if (v32)
    {
      v33 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        localizedDescription6 = [v32 localizedDescription];
        *buf = 138412290;
        v87 = localizedDescription6;
        _os_log_impl(&dword_226DD4000, v33, OS_LOG_TYPE_ERROR, "Error initializing FP regex pattern: %@", buf, 0xCu);
      }

      v32 = 0;
    }

    v7 = v32;
  }

  v35 = [(NSDictionary *)self->_generalRegexPatterns objectForKey:self->_paypalPatternKey];
  v67 = v35;
  if (v35)
  {
    v79 = v7;
    v36 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v35 options:0 error:&v79];
    v37 = v79;

    if (v36)
    {
      [v3 setObject:v36 forKey:self->_paypalPatternKey];
    }

    else if (v37)
    {
      v38 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        localizedDescription7 = [v37 localizedDescription];
        *buf = 138412290;
        v87 = localizedDescription7;
        _os_log_impl(&dword_226DD4000, v38, OS_LOG_TYPE_ERROR, "Error initializing PayPal regex pattern: %@", buf, 0xCu);
      }

      v37 = 0;
    }

    v7 = v37;
  }

  v40 = [(NSDictionary *)self->_generalRegexPatterns objectForKey:self->_aspspPatternKey];
  if (v40)
  {
    v78 = v7;
    v41 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v40 options:0 error:&v78];
    v42 = v78;

    if (v41)
    {
      [v3 setObject:v41 forKey:self->_aspspPatternKey];
    }

    else if (v42)
    {
      v43 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        localizedDescription8 = [v42 localizedDescription];
        *buf = 138412290;
        v87 = localizedDescription8;
        _os_log_impl(&dword_226DD4000, v43, OS_LOG_TYPE_ERROR, "Error initializing ASPSP regex pattern: %@", buf, 0xCu);
      }

      v42 = 0;
    }

    v7 = v42;
  }

  v45 = [(NSDictionary *)self->_serviceMatchPatterns objectForKey:self->_grouperKey];
  if (v45)
  {
    v77 = v7;
    v46 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v45 options:1 error:&v77];
    v47 = v77;

    if (v46)
    {
      [v3 setObject:v46 forKey:self->_serviceMatchKey];
    }

    else if (v47)
    {
      v48 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        localizedDescription9 = [v47 localizedDescription];
        *buf = 138412290;
        v87 = localizedDescription9;
        _os_log_impl(&dword_226DD4000, v48, OS_LOG_TYPE_ERROR, "Error initializing Service Match regex pattern: %@", buf, 0xCu);
      }

      v47 = 0;
    }

    v7 = v47;
  }

  v50 = [(NSDictionary *)self->_serviceRemovePatterns objectForKey:self->_grouperKey];
  if (v50)
  {
    v76 = v7;
    v51 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v50 options:1 error:&v76];
    v52 = v76;

    if (v51)
    {
      [v3 setObject:v51 forKey:self->_serviceRemoveKey];
    }

    else if (v52)
    {
      v53 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        localizedDescription10 = [v52 localizedDescription];
        *buf = 138412290;
        v87 = localizedDescription10;
        _os_log_impl(&dword_226DD4000, v53, OS_LOG_TYPE_ERROR, "Error initializing Service Remove regex pattern: %@", buf, 0xCu);
      }

      v52 = 0;
    }

    v7 = v52;
  }

  v55 = [(NSDictionary *)self->_topMerchantPatterns objectForKey:self->_topMerchantMatchPatternsKey];
  if (v55)
  {
    v75 = v7;
    v56 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v55 options:1 error:&v75];
    v57 = v75;

    [v3 setObject:v56 forKey:self->_topMerchantMatchPatternsKey];
    v7 = v56;
LABEL_88:

    goto LABEL_89;
  }

  if (v7)
  {
    v58 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      localizedDescription11 = [v7 localizedDescription];
      *buf = 138412290;
      v87 = localizedDescription11;
      _os_log_impl(&dword_226DD4000, v58, OS_LOG_TYPE_ERROR, "Error creating top merchant match regex: %@", buf, 0xCu);
    }

    v57 = 0;
    goto LABEL_88;
  }

  v57 = 0;
LABEL_89:
  v60 = [(NSDictionary *)self->_topMerchantPatterns objectForKey:self->_topMerchantHomogenizeKey];
  if (v60)
  {
    v74 = v57;
    v61 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v60 options:1 error:&v74];
    v62 = v74;

    if (v61)
    {
      [v3 setObject:v61 forKey:self->_topMerchantHomogenizeKey];
    }
  }

  else
  {
    if (!v57)
    {
      goto LABEL_97;
    }

    v61 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      localizedDescription12 = [v57 localizedDescription];
      *buf = 138412290;
      v87 = localizedDescription12;
      _os_log_impl(&dword_226DD4000, v61, OS_LOG_TYPE_ERROR, "Error creating homogenize regex: %@", buf, 0xCu);
    }

    v62 = v57;
  }

LABEL_97:
  v64 = [v3 copy];

  v65 = *MEMORY[0x277D85DE8];

  return v64;
}

- (id)cleanDescriptionForTransaction:(id)transaction
{
  v33 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  if ([transactionCopy accountType] == 4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6 = dispatch_group_create();
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__3;
    v25 = __Block_byref_object_dispose__3;
    v26 = 0;
    dispatch_group_enter(v6);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__FHBankConnectDescriptionCleaner_cleanDescriptionForTransaction___block_invoke;
    block[3] = &unk_2785CC6D0;
    v19 = &v21;
    block[4] = self;
    v7 = transactionCopy;
    v17 = v7;
    v20 = &v27;
    v8 = v6;
    v18 = v8;
    dispatch_async(v5, block);
    v9 = dispatch_time(0, (25.0 * 1000000.0));
    if (dispatch_group_wait(v8, v9) || *(v28 + 24) != 1)
    {
      v12 = FinHealthLogObject(@"FinHealthCore");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        identifier = [v7 identifier];
        *buf = 138412290;
        v32 = identifier;
        _os_log_impl(&dword_226DD4000, v12, OS_LOG_TYPE_ERROR, "Error - Timed out cleaning transaction description with ID: %@", buf, 0xCu);
      }

      v10 = [(FHBankConnectDescriptionCleaner *)self getTransactionGroupingProperty:v7];
    }

    else
    {
      v10 = v22[5];
    }

    transactionDescription = v10;

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);
  }

  else
  {
    transactionDescription = [transactionCopy transactionDescription];
  }

  v14 = *MEMORY[0x277D85DE8];

  return transactionDescription;
}

void __66__FHBankConnectDescriptionCleaner_cleanDescriptionForTransaction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cleanDescriptionForTransaction:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(*(a1 + 64) + 8) + 24) = 1;
  v5 = *(a1 + 48);

  dispatch_group_leave(v5);
}

- (id)_cleanDescriptionForTransaction:(id)transaction
{
  transactionCopy = transaction;
  processedDescription = [transactionCopy processedDescription];
  v6 = processedDescription;
  if (processedDescription && [processedDescription length])
  {
    v7 = v6;
  }

  else
  {
    v8 = [(FHBankConnectDescriptionCleaner *)self getTransactionGroupingProperty:transactionCopy];
    v7 = [(FHBankConnectDescriptionCleaner *)self cleanTransactionDescription:v8];
  }

  return v7;
}

- (id)getTransactionGroupingProperty:(id)property
{
  propertyCopy = property;
  displayName = [propertyCopy displayName];

  if (displayName)
  {
    displayName2 = [propertyCopy displayName];
  }

  else
  {
    name = [propertyCopy name];

    if (name)
    {
      [propertyCopy name];
    }

    else
    {
      [propertyCopy transactionDescription];
    }
    displayName2 = ;
  }

  v7 = displayName2;

  return v7;
}

- (id)cleanTransactionDescription:(id)description
{
  descriptionCopy = description;
  if (descriptionCopy)
  {
    v5 = descriptionCopy;
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v7 = [v5 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    v8 = [(FHBankConnectDescriptionCleaner *)self _genericDescriptionCleaning:v7];
    v9 = [(FHBankConnectDescriptionCleaner *)self _rbsCleaning:v8];

    v10 = [(FHBankConnectDescriptionCleaner *)self _furtherRbsCleaning:v9];

    v11 = [(FHBankConnectDescriptionCleaner *)self fpDescriptionCleaning:v10];

    v12 = [(FHBankConnectDescriptionCleaner *)self _paypalDescriptionCleaning:v11];

    v13 = [(FHBankConnectDescriptionCleaner *)self _paymentDescriptionCleaning:v12];

    v14 = [(FHBankConnectDescriptionCleaner *)self _aspspDescriptionCleaning:v13];

    v15 = [(FHBankConnectDescriptionCleaner *)self _serviceRemovePatternsFromDescription:v14];

    v16 = [(FHBankConnectDescriptionCleaner *)self _topMerchantPatternsFromDescription:v15];

    v17 = 0;
    do
    {
      v18 = v17;
      v17 = v16;

      v16 = [v17 stringByReplacingOccurrencesOfString:@"  " withString:@" "];
    }

    while (![v16 isEqualToString:v17]);
    v19 = [(FHBankConnectDescriptionCleaner *)self _topMerchantPatternsFromDescription:v16];

    whitespaceAndNewlineCharacterSet2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v21 = [v19 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

    if (!v21 || (v22 = [v21 length], v23 = v21, !v22))
    {
      v23 = v7;
    }

    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)_genericDescriptionCleaning:(id)cleaning
{
  cleaningCopy = cleaning;
  v5 = [(NSDictionary *)self->_descriptionCleaningPatterns objectForKey:self->_intlPatternKey];
  v6 = cleaningCopy;
  if (v5)
  {
    v7 = [v5 firstMatchInString:cleaningCopy options:0 range:{0, objc_msgSend(cleaningCopy, "length")}];
    v6 = cleaningCopy;
    if (v7)
    {
      v8 = cleaningCopy;
      if ([cleaningCopy length] >= 0x24)
      {
        v8 = [cleaningCopy substringWithRange:{18, 18}];
      }

      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v6 = [v8 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    }
  }

  return v6;
}

- (id)_rbsCleaning:(id)cleaning
{
  cleaningCopy = cleaning;
  v5 = [(NSDictionary *)self->_descriptionCleaningPatterns objectForKey:self->_rbsHeaderPatternKey];
  v6 = cleaningCopy;
  if (v5)
  {
    v7 = [v5 firstMatchInString:cleaningCopy options:0 range:{0, objc_msgSend(cleaningCopy, "length")}];
    v6 = cleaningCopy;
    if (v7)
    {
      v6 = cleaningCopy;
      if ([cleaningCopy length])
      {
        v8 = 0;
        v9 = 0;
        do
        {
          if ([cleaningCopy characterAtIndex:v9] == 44)
          {
            ++v8;
          }

          ++v9;
        }

        while (v9 < [cleaningCopy length]);
        if (v8 == 2)
        {
          descriptionCleaningPatterns = self->_descriptionCleaningPatterns;
          twoCommaPatternKey = self->_twoCommaPatternKey;
          goto LABEL_12;
        }

        v6 = cleaningCopy;
        if (v8 == 3)
        {
          descriptionCleaningPatterns = self->_descriptionCleaningPatterns;
          twoCommaPatternKey = self->_threeCommaPatternKey;
LABEL_12:
          v12 = [(NSDictionary *)descriptionCleaningPatterns objectForKey:twoCommaPatternKey];
          if (v12)
          {
            v13 = [v12 firstMatchInString:cleaningCopy options:0 range:{0, objc_msgSend(cleaningCopy, "length")}];
            v14 = v13;
            if (v13 && [v13 numberOfRanges] >= 2 && (v15 = objc_msgSend(v14, "rangeAtIndex:", 1), v15 != 0x7FFFFFFFFFFFFFFFLL) && (v17 = v15, v18 = v16, v15 + v16 <= objc_msgSend(cleaningCopy, "length")))
            {
              v20 = [cleaningCopy substringWithRange:{v17, v18}];
              whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
              v6 = [v20 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
            }

            else
            {
              v6 = cleaningCopy;
            }
          }

          else
          {
            v6 = cleaningCopy;
          }
        }
      }
    }
  }

  return v6;
}

- (id)_furtherRbsCleaning:(id)cleaning
{
  cleaningCopy = cleaning;
  v5 = [(NSDictionary *)self->_descriptionCleaningPatterns objectForKey:self->_rbsDatePatternKey];
  v6 = cleaningCopy;
  if (v5)
  {
    v7 = [v5 firstMatchInString:cleaningCopy options:0 range:{0, objc_msgSend(cleaningCopy, "length")}];
    v6 = cleaningCopy;
    if (v7)
    {
      v8 = [cleaningCopy length];
      v9 = [cleaningCopy length];
      if (v8 < 0x36)
      {
        v6 = cleaningCopy;
        if (v9 < 0x24)
        {
          goto LABEL_10;
        }

        v11 = [cleaningCopy length];
        v10 = 18;
        v6 = cleaningCopy;
        if (v11 < 0x24)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = cleaningCopy;
        if (v9 < 0x36)
        {
          goto LABEL_10;
        }

        v6 = cleaningCopy;
        if ([cleaningCopy length] < 0x36)
        {
          goto LABEL_10;
        }

        v10 = 36;
      }

      v12 = [cleaningCopy substringWithRange:{18, v10}];
      whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v6 = [v12 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
    }

LABEL_10:
  }

  return v6;
}

- (id)fpDescriptionCleaning:(id)cleaning
{
  cleaningCopy = cleaning;
  v5 = [(NSDictionary *)self->_descriptionCleaningPatterns objectForKey:self->_fpPatternKey];
  v6 = cleaningCopy;
  if (v5)
  {
    v7 = [v5 firstMatchInString:cleaningCopy options:0 range:{0, objc_msgSend(cleaningCopy, "length")}];
    v6 = cleaningCopy;
    if (v7)
    {
      v8 = cleaningCopy;
      if ([cleaningCopy length] >= 0x12)
      {
        v8 = [cleaningCopy substringWithRange:{0, 18}];
      }

      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v6 = [v8 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    }
  }

  return v6;
}

- (id)_paypalDescriptionCleaning:(id)cleaning
{
  cleaningCopy = cleaning;
  v5 = [(NSDictionary *)self->_descriptionCleaningPatterns objectForKey:self->_paypalPatternKey];
  v6 = cleaningCopy;
  if (v5)
  {
    v7 = [v5 firstMatchInString:cleaningCopy options:0 range:{0, objc_msgSend(cleaningCopy, "length")}];
    v8 = v7;
    v6 = cleaningCopy;
    if (v7)
    {
      v6 = cleaningCopy;
      if ([v7 numberOfRanges] >= 2)
      {
        v9 = [v8 rangeAtIndex:1];
        v11 = [cleaningCopy substringWithRange:{v9, v10}];
        whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v6 = [v11 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
      }
    }
  }

  return v6;
}

- (id)_paymentDescriptionCleaning:(id)cleaning
{
  cleaningCopy = cleaning;
  v5 = [(NSDictionary *)self->_descriptionCleaningPatterns objectForKey:self->_serviceMatchKey];
  v6 = cleaningCopy;
  if (v5)
  {
    v7 = [v5 firstMatchInString:cleaningCopy options:0 range:{0, objc_msgSend(cleaningCopy, "length")}];
    v8 = v7;
    v6 = cleaningCopy;
    if (v7)
    {
      v6 = cleaningCopy;
      if ([v7 numberOfRanges] >= 2)
      {
        v9 = 1;
        v6 = cleaningCopy;
        do
        {
          v10 = [v8 rangeAtIndex:v9];
          if (v10 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v12 = v11;
            if (v11)
            {
              v13 = v10;
              if (v10 + v11 <= [v6 length])
              {
                v14 = [v6 substringWithRange:{v13, v12}];

                v6 = v14;
              }
            }
          }

          ++v9;
        }

        while (v9 < [v8 numberOfRanges]);
      }
    }
  }

  return v6;
}

- (id)_aspspDescriptionCleaning:(id)cleaning
{
  cleaningCopy = cleaning;
  v5 = cleaningCopy;
  if ([cleaningCopy length] == 40)
  {
    v6 = [(NSDictionary *)self->_descriptionCleaningPatterns objectForKey:self->_aspspPatternKey];
    v5 = cleaningCopy;
    if (v6)
    {
      v7 = [v6 firstMatchInString:cleaningCopy options:0 range:{0, objc_msgSend(cleaningCopy, "length")}];
      v5 = cleaningCopy;
      if (v7)
      {
        v5 = [cleaningCopy substringToIndex:23];
      }
    }
  }

  return v5;
}

- (id)_serviceRemovePatternsFromDescription:(id)description
{
  descriptionCopy = description;
  v5 = [(NSDictionary *)self->_descriptionCleaningPatterns objectForKey:self->_serviceRemoveKey];
  v6 = descriptionCopy;
  if (v5)
  {
    v6 = [v5 stringByReplacingMatchesInString:descriptionCopy options:0 range:0 withTemplate:{objc_msgSend(descriptionCopy, "length"), &stru_283A7B918}];
  }

  return v6;
}

- (id)_topMerchantPatternsFromDescription:(id)description
{
  descriptionCopy = description;
  v5 = [(NSDictionary *)self->_descriptionCleaningPatterns objectForKey:self->_topMerchantMatchPatternsKey];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v5 firstMatchInString:descriptionCopy options:0 range:{0, objc_msgSend(descriptionCopy, "length")}];
  v7 = v6;
  if (!v6 || [v6 numberOfRanges] < 2 || (v8 = objc_msgSend(v7, "rangeAtIndex:", 1), v8 == 0x7FFFFFFFFFFFFFFFLL) || (v10 = v9) == 0 || (v11 = v8, v8 + v9 > objc_msgSend(descriptionCopy, "length")))
  {

LABEL_8:
    v12 = descriptionCopy;
    goto LABEL_9;
  }

  v14 = [descriptionCopy substringWithRange:{v11, v10}];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v16 = [v14 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  v12 = [(FHBankConnectDescriptionCleaner *)self _homogenizeMerchantPattern:v16];

LABEL_9:

  return v12;
}

- (id)_homogenizeMerchantPattern:(id)pattern
{
  patternCopy = pattern;
  v5 = [(NSDictionary *)self->_descriptionCleaningPatterns objectForKey:self->_topMerchantHomogenizeKey];
  if (v5)
  {
    v6 = [v5 firstMatchInString:patternCopy options:0 range:{0, objc_msgSend(patternCopy, "length")}];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
      if ([v6 numberOfRanges] >= 2)
      {
        v8 = 1;
        do
        {
          v9 = [v6 rangeAtIndex:v8];
          if (v9 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v11 = v10;
            if (v10)
            {
              v12 = v9;
              if (v9 + v10 <= [patternCopy length])
              {
                v13 = [patternCopy substringWithRange:{v12, v11}];
                [v7 appendString:v13];
              }
            }
          }

          ++v8;
        }

        while (v8 < [v6 numberOfRanges]);
      }

      if ([v7 length])
      {
        v14 = [v7 copy];

        goto LABEL_15;
      }
    }
  }

  v14 = patternCopy;
LABEL_15:

  return v14;
}

@end