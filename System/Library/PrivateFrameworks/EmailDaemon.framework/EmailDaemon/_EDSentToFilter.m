@interface _EDSentToFilter
- (_EDSentToFilter)init;
- (unint64_t)mayHaveSentToSimpleAddress:(id)a3;
- (void)loadFromDisk;
- (void)updateWithSentToSimpleAddresses:(id)a3 recentNotSentToSimpleAddresses:(id)a4;
@end

@implementation _EDSentToFilter

- (_EDSentToFilter)init
{
  v8.receiver = self;
  v8.super_class = _EDSentToFilter;
  v2 = [(_EDSentToFilter *)&v8 init];
  v3 = v2;
  if (v2)
  {
    firstFilter = v2->_firstFilter;
    v2->_firstFilter = 0;

    secondFilter = v3->_secondFilter;
    v3->_secondFilter = 0;

    thirdFilter = v3->_thirdFilter;
    v3->_thirdFilter = 0;
  }

  return v3;
}

- (void)loadFromDisk
{
  v3 = __31___EDSentToFilter_loadFromDisk__block_invoke(self, @"SentToFilter", &unk_1F45E6A60);
  firstFilter = self->_firstFilter;
  self->_firstFilter = v3;

  v6 = __31___EDSentToFilter_loadFromDisk__block_invoke(v5, @"SentToFilter2", &unk_1F45E6A78);
  secondFilter = self->_secondFilter;
  self->_secondFilter = v6;

  v9 = __31___EDSentToFilter_loadFromDisk__block_invoke(v8, @"SentToFilter3", &unk_1F45E6A90);
  thirdFilter = self->_thirdFilter;
  self->_thirdFilter = v9;
}

- (unint64_t)mayHaveSentToSimpleAddress:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_firstFilter)
  {
    v6 = [v4 lowercaseString];

    if (([(EFBloomFilter *)self->_firstFilter mayContainString:v6]& 1) != 0)
    {
      secondFilter = self->_secondFilter;
      if (!secondFilter || ![(EFBloomFilter *)secondFilter mayContainString:v6])
      {
        v9 = 2;
        goto LABEL_12;
      }

      thirdFilter = self->_thirdFilter;
      if (thirdFilter)
      {
        if ([(EFBloomFilter *)thirdFilter mayContainString:v6])
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }

        goto LABEL_12;
      }
    }

    v9 = 1;
LABEL_12:
    v5 = v6;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (void)updateWithSentToSimpleAddresses:(id)a3 recentNotSentToSimpleAddresses:(id)a4
{
  v92 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (_os_feature_enabled_impl())
  {
    v67 = [MEMORY[0x1E696AAA8] currentHandler];
    [v67 handleFailureInMethod:a2 object:self file:@"EDSenderPersistence.m" lineNumber:1964 description:@"No sent to address filter needed when all data is class C."];
  }

  v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v82 objects:v91 count:16];
  if (v11)
  {
    v12 = *v83;
    do
    {
      v13 = 0;
      do
      {
        if (*v83 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v82 + 1) + 8 * v13) lowercaseString];
        [v9 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v82 objects:v91 count:16];
    }

    while (v11);
  }

  v15 = [v9 allObjects];

  v16 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v78 objects:v90 count:16];
  if (v18)
  {
    v19 = *v79;
    do
    {
      v20 = 0;
      do
      {
        if (*v79 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = [*(*(&v78 + 1) + 8 * v20) lowercaseString];
        if (([v9 containsObject:v21] & 1) == 0)
        {
          [v16 addObject:v21];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v17 countByEnumeratingWithState:&v78 objects:v90 count:16];
    }

    while (v18);
  }

  v68 = [v16 allObjects];

  v22 = EDSenderLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [v15 count];
    [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
  }

  v23 = EDSenderLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [v68 count];
    [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
  }

  v77 = 0;
  v24 = [MEMORY[0x1E699B788] bestBloomFilterForValues:v15 excludingValues:v68 falsePositiveRate:&v77 knownFalsePositives:0.1];
  v69 = v77;
  firstFilter = self->_firstFilter;
  self->_firstFilter = v24;

  if ([v69 count])
  {
    v26 = EDSenderLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [v69 count];
      [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
    }

    v27 = EDSenderLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [v15 count];
      [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
    }

    v76 = 0;
    v28 = [MEMORY[0x1E699B788] bestBloomFilterForValues:v69 excludingValues:v15 falsePositiveRate:&v76 knownFalsePositives:0.01];
    v29 = v76;
    secondFilter = self->_secondFilter;
    self->_secondFilter = v28;

    if ([(EFBloomFilter *)v29 count])
    {
      v31 = EDSenderLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [(EFBloomFilter *)v29 count];
        [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
      }

      v32 = EDSenderLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [v69 count];
        [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
      }

      v75 = 0;
      v33 = [MEMORY[0x1E699B788] bestBloomFilterForValues:v29 excludingValues:v69 falsePositiveRate:&v75 knownFalsePositives:0.1];
      v34 = v75;
      thirdFilter = self->_thirdFilter;
      self->_thirdFilter = v33;

      if ([(EFBloomFilter *)v34 count])
      {
        v36 = EDSenderLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = [(EFBloomFilter *)v34 count];
          v38 = [(EFBloomFilter *)v34 ef_map:&__block_literal_global_503];
          *buf = 134218242;
          v87 = v37;
          v88 = 2114;
          v89 = v38;
          _os_log_impl(&dword_1C61EF000, v36, OS_LOG_TYPE_DEFAULT, "'Sent to' filter has %lu known false positives: %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v34 = self->_thirdFilter;
      self->_thirdFilter = 0;
    }
  }

  else
  {
    v39 = self->_secondFilter;
    self->_secondFilter = 0;

    v29 = self->_thirdFilter;
    self->_thirdFilter = 0;
  }

  v40 = self->_firstFilter;
  v41 = [MEMORY[0x1E699AE20] mailDataDirectory];
  v42 = [v41 URLByAppendingPathComponent:@"SentToFilter"];

  v74 = 0;
  v43 = [(EFBloomFilter *)v40 writeToFile:v42 options:1342177281 error:&v74];
  v44 = v74;

  if ((v43 & 1) == 0)
  {
    v45 = EDSenderLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      [v44 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
    }
  }

  v46 = self->_secondFilter;
  if (v46)
  {
    v47 = [MEMORY[0x1E699AE20] mailDataDirectory];
    v48 = [v47 URLByAppendingPathComponent:@"SentToFilter2"];

    v73 = v44;
    LOBYTE(v47) = [(EFBloomFilter *)v46 writeToFile:v48 options:1342177281 error:&v73];
    v49 = v73;

    if (v47)
    {
      goto LABEL_51;
    }

    v50 = EDSenderLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [v49 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
    }

    goto LABEL_50;
  }

  v50 = [MEMORY[0x1E696AC08] defaultManager];
  v51 = [MEMORY[0x1E699AE20] mailDataDirectory];
  v52 = [v51 URLByAppendingPathComponent:@"SentToFilter2"];

  v72 = v44;
  v53 = [v50 removeItemAtURL:v52 error:&v72];
  v49 = v72;

  if (v53)
  {

LABEL_50:
    goto LABEL_51;
  }

  v65 = isNoSuchFileError(v49);

  if (!v65)
  {
    v50 = EDSenderLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [v49 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
    }

    goto LABEL_50;
  }

LABEL_51:
  v54 = v49;
  v55 = self->_thirdFilter;
  if (!v55)
  {
    v60 = [MEMORY[0x1E696AC08] defaultManager];
    v61 = [MEMORY[0x1E699AE20] mailDataDirectory];
    v62 = [v61 URLByAppendingPathComponent:@"SentToFilter3"];

    v70 = v54;
    v63 = [v60 removeItemAtURL:v62 error:&v70];
    v59 = v70;

    if (v63)
    {
    }

    else
    {
      v66 = isNoSuchFileError(v59);

      if (v66)
      {
        goto LABEL_58;
      }

      v60 = EDSenderLog();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        [v59 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
      }
    }

    goto LABEL_57;
  }

  v56 = [MEMORY[0x1E699AE20] mailDataDirectory];
  v57 = [v56 URLByAppendingPathComponent:@"SentToFilter3"];

  v71 = v54;
  v58 = [(EFBloomFilter *)v55 writeToFile:v57 options:1342177281 error:&v71];
  v59 = v71;

  if ((v58 & 1) == 0)
  {
    v60 = EDSenderLog();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      [v59 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [_EDSentToFilter updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:];
    }

LABEL_57:
  }

LABEL_58:

  v64 = *MEMORY[0x1E69E9840];
}

- (void)updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:.cold.1()
{
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_4_2(&dword_1C61EF000, "Building filter with addresses (%lu): %@", v3, v4);
}

- (void)updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:.cold.2()
{
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_4_2(&dword_1C61EF000, "ignoring addresses (%lu): %@", v3, v4);
}

- (void)updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:.cold.3()
{
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_4_2(&dword_1C61EF000, "Building second filter with addresses (%lu): %@", v3, v4);
}

- (void)updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:.cold.5()
{
  OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_0_7(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_4_2(&dword_1C61EF000, "Building third filter with addresses (%lu): %@", v3, v4);
}

- (void)updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to write sent to addresses filter 1: %{public}@", v5);
}

- (void)updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to write sent to addresses filter 2: %{public}@", v5);
}

- (void)updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:.cold.9()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to delete sent to addresses filter 2: %{public}@", v5);
}

- (void)updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:.cold.10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to write sent to addresses filter 3: %{public}@", v5);
}

- (void)updateWithSentToSimpleAddresses:recentNotSentToSimpleAddresses:.cold.11()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Unable to delete sent to addresses filter 3: %{public}@", v5);
}

@end