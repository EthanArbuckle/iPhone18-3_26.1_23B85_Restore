@interface CKAttributedStringItemProviderWriter
+ (NSArray)writableTypeIdentifiersForItemProvider;
- (CKAttributedStringItemProviderWriter)initWithAttributedString:(id)a3;
- (NSArray)writableTypeIdentifiersForItemProvider;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
@end

@implementation CKAttributedStringItemProviderWriter

- (CKAttributedStringItemProviderWriter)initWithAttributedString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKAttributedStringItemProviderWriter;
  v5 = [(CKAttributedStringItemProviderWriter *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    attributedString = v5->_attributedString;
    v5->_attributedString = v6;
  }

  return v5;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  if (writableTypeIdentifiersForItemProvider_onceToken_0 != -1)
  {
    +[CKAttributedStringItemProviderWriter writableTypeIdentifiersForItemProvider];
  }

  v3 = writableTypeIdentifiersForItemProvider_sTypeIdentifiers_0;

  return v3;
}

void __78__CKAttributedStringItemProviderWriter_writableTypeIdentifiersForItemProvider__block_invoke()
{
  v0 = [MEMORY[0x1E696AAB0] writableTypeIdentifiersForItemProvider];
  v4 = [v0 mutableCopy];

  v1 = [*MEMORY[0x1E6982F98] identifier];
  [v4 removeObject:v1];

  v2 = [v4 copy];
  v3 = writableTypeIdentifiersForItemProvider_sTypeIdentifiers_0;
  writableTypeIdentifiersForItemProvider_sTypeIdentifiers_0 = v2;
}

- (NSArray)writableTypeIdentifiersForItemProvider
{
  v2 = objc_opt_class();

  return [v2 writableTypeIdentifiersForItemProvider];
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKAttributedStringItemProviderWriter *)self attributedString];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__CKAttributedStringItemProviderWriter_loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
  v13[3] = &unk_1E72F1988;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 loadDataWithTypeIdentifier:v10 forItemProviderCompletionHandler:v13];

  return v11;
}

void __100__CKAttributedStringItemProviderWriter_loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __100__CKAttributedStringItemProviderWriter_loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_1(a1, v6, v7);
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_6;
    }

    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __100__CKAttributedStringItemProviderWriter_loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_2(a1, v7);
    }
  }

LABEL_6:
  (*(*(a1 + 40) + 16))();
}

void __100__CKAttributedStringItemProviderWriter_loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "Failed to load data of type, %@, error: %@", &v4, 0x16u);
}

void __100__CKAttributedStringItemProviderWriter_loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Writing nil data to pasteboard for attributed string serialized using type %@", &v3, 0xCu);
}

@end