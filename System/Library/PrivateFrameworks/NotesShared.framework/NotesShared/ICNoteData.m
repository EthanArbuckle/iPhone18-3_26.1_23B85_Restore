@interface ICNoteData
- (BOOL)saveNoteDataIfNeeded;
- (void)setCryptoInitializationVector:(id)a3;
- (void)setCryptoTag:(id)a3;
- (void)willAccessValueForKey:(id)a3;
- (void)willSave;
@end

@implementation ICNoteData

- (BOOL)saveNoteDataIfNeeded
{
  if (![(ICNoteData *)self needsToBeSaved])
  {
    v3 = [(ICNoteData *)self note];
    if ([v3 needsInitialDerivedAttributesUpdate])
    {
      v4 = [(ICNoteData *)self isSettingNoteData];

      if (!v4)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }

    return 0;
  }

  if ([(ICNoteData *)self isSettingNoteData])
  {
    return 0;
  }

LABEL_6:
  [(ICNoteData *)self setSettingNoteData:1];
  if ([(ICNoteData *)self needsToBeSaved])
  {
    v5 = [(ICNoteData *)self note];
    v6 = [v5 saveNoteData];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(ICNoteData *)self note];
  [v7 updateDerivedAttributesIfNeeded];

  [(ICNoteData *)self setSettingNoteData:0];
  [(ICNoteData *)self setNeedsToBeSaved:0];
  return v6;
}

- (void)willSave
{
  v6 = [a1 ic_loggingIdentifier];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)willAccessValueForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"data"])
  {
    [(ICNoteData *)self saveNoteDataIfNeeded];
  }

  v5.receiver = self;
  v5.super_class = ICNoteData;
  [(ICNoteData *)&v5 willAccessValueForKey:v4];
}

- (void)setCryptoTag:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICNoteData *)self cryptoTag];
  [(ICNoteData *)self willChangeValueForKey:@"cryptoTag"];
  [(ICNoteData *)self setPrimitiveValue:v4 forKey:@"cryptoTag"];
  [(ICNoteData *)self didChangeValueForKey:@"cryptoTag"];
  v6 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;
  if (v6 == v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;
  if (!(v8 | v10))
  {
LABEL_15:
    v14 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(ICNoteData *)self setCryptoTag:v4];
    }

    goto LABEL_19;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
  }

  else
  {
    v13 = [v8 isEqual:v10];

    if (v13)
    {
      goto LABEL_15;
    }
  }

  v14 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    v16 = [(ICNoteData *)self note];
    v17 = [v16 identifier];
    v18 = 138412802;
    v19 = v15;
    v20 = 2112;
    v21 = v17;
    v22 = 2048;
    v23 = [v4 hash];
    _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_INFO, "Updated crypto goo for %@ (%@): cryptoTag.hash = %lu", &v18, 0x20u);
  }

LABEL_19:
}

- (void)setCryptoInitializationVector:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICNoteData *)self cryptoInitializationVector];
  [(ICNoteData *)self willChangeValueForKey:@"cryptoInitializationVector"];
  [(ICNoteData *)self setPrimitiveValue:v4 forKey:@"cryptoInitializationVector"];
  [(ICNoteData *)self didChangeValueForKey:@"cryptoInitializationVector"];
  v6 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;
  if (v6 == v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;
  if (!(v8 | v10))
  {
LABEL_15:
    v14 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(ICNoteData *)self setCryptoInitializationVector:v4];
    }

    goto LABEL_19;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
  }

  else
  {
    v13 = [v8 isEqual:v10];

    if (v13)
    {
      goto LABEL_15;
    }
  }

  v14 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    v16 = [(ICNoteData *)self note];
    v17 = [v16 identifier];
    v18 = 138412802;
    v19 = v15;
    v20 = 2112;
    v21 = v17;
    v22 = 2048;
    v23 = [v4 hash];
    _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_INFO, "Updated crypto goo for %@ (%@): cryptoInitializationVector.hash = %lu", &v18, 0x20u);
  }

LABEL_19:
}

- (void)setCryptoTag:(void *)a1 .cold.1(void *a1, void *a2)
{
  objc_opt_class();
  v4 = [a1 note];
  v5 = [v4 identifier];
  [a2 hash];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);
}

- (void)setCryptoInitializationVector:(void *)a1 .cold.1(void *a1, void *a2)
{
  objc_opt_class();
  v4 = [a1 note];
  v5 = [v4 identifier];
  [a2 hash];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x20u);
}

@end