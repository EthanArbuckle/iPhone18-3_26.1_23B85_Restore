@interface MFMailMessageLibraryQueryTransformer
+ (OS_os_log)log;
- (EDMessagePersistence)messagePersistence;
- (MFMailMessageLibraryQueryTransformer)initWithMessagePersistence:(id)a3;
- (id)criterionForQuery:(id)a3;
- (id)mailAccountForIdentifier:(id)a3;
- (id)messageCriterionConverter:(id)a3 expressionForConstantValue:(id)a4 withCriterionType:(int64_t)a5;
- (int64_t)messageCriterionConverter:(id)a3 criterionTypeForKey:(id)a4;
- (unsigned)optionsForQuery:(id)a3;
@end

@implementation MFMailMessageLibraryQueryTransformer

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__MFMailMessageLibraryQueryTransformer_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_18 != -1)
  {
    dispatch_once(&log_onceToken_18, block);
  }

  v2 = log_log_18;

  return v2;
}

void __43__MFMailMessageLibraryQueryTransformer_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_18;
  log_log_18 = v1;
}

- (MFMailMessageLibraryQueryTransformer)initWithMessagePersistence:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MFMailMessageLibraryQueryTransformer;
  v5 = [(MFMailMessageLibraryQueryTransformer *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(MFMessageCriterionConverter);
    criterionConverter = v5->_criterionConverter;
    v5->_criterionConverter = v6;

    [(MFMessageCriterionConverter *)v5->_criterionConverter setDelegate:v5];
    objc_storeWeak(&v5->_messagePersistence, v4);
  }

  return v5;
}

- (int64_t)messageCriterionConverter:(id)a3 criterionTypeForKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (messageCriterionConverter_criterionTypeForKey__onceToken != -1)
  {
    [MFMailMessageLibraryQueryTransformer messageCriterionConverter:criterionTypeForKey:];
  }

  v7 = [messageCriterionConverter_criterionTypeForKey__mapping objectForKeyedSubscript:v6];
  v8 = [v7 integerValue];

  return v8;
}

void __86__MFMailMessageLibraryQueryTransformer_messageCriterionConverter_criterionTypeForKey___block_invoke()
{
  v16[24] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E699A868];
  v15[0] = *MEMORY[0x1E699AB20];
  v15[1] = v0;
  v16[0] = &unk_1F2775A48;
  v16[1] = &unk_1F2775A60;
  v1 = *MEMORY[0x1E699A880];
  v15[2] = *MEMORY[0x1E699A920];
  v15[3] = v1;
  v16[2] = &unk_1F2775A78;
  v16[3] = &unk_1F2775A90;
  v2 = *MEMORY[0x1E699A908];
  v15[4] = *MEMORY[0x1E699A888];
  v15[5] = v2;
  v16[4] = &unk_1F2775AA8;
  v16[5] = &unk_1F2775AC0;
  v3 = *MEMORY[0x1E699A938];
  v15[6] = *MEMORY[0x1E699A940];
  v15[7] = v3;
  v16[6] = &unk_1F2775AD8;
  v16[7] = &unk_1F2775AF0;
  v4 = *MEMORY[0x1E699A8E0];
  v15[8] = *MEMORY[0x1E699A948];
  v15[9] = v4;
  v16[8] = &unk_1F2775B08;
  v16[9] = &unk_1F2775B20;
  v5 = *MEMORY[0x1E699A8F0];
  v15[10] = *MEMORY[0x1E699A8F8];
  v15[11] = v5;
  v16[10] = &unk_1F2775B38;
  v16[11] = &unk_1F2775B50;
  v6 = *MEMORY[0x1E699A910];
  v15[12] = *MEMORY[0x1E699A870];
  v15[13] = v6;
  v16[12] = &unk_1F2775B68;
  v16[13] = &unk_1F2775B80;
  v7 = *MEMORY[0x1E699AB18];
  v15[14] = *MEMORY[0x1E699AB28];
  v15[15] = v7;
  v16[14] = &unk_1F2775B98;
  v16[15] = &unk_1F2775BB0;
  v8 = *MEMORY[0x1E699A960];
  v15[16] = *MEMORY[0x1E699A958];
  v15[17] = v8;
  v16[16] = &unk_1F2775BC8;
  v16[17] = &unk_1F2775BE0;
  v9 = *MEMORY[0x1E699A8B8];
  v15[18] = *MEMORY[0x1E699A978];
  v15[19] = v9;
  v16[18] = &unk_1F2775BF8;
  v16[19] = &unk_1F2775C10;
  v10 = *MEMORY[0x1E699A8A8];
  v15[20] = *MEMORY[0x1E699A8B0];
  v15[21] = v10;
  v16[20] = &unk_1F2775C28;
  v16[21] = &unk_1F2775C40;
  v11 = *MEMORY[0x1E699A850];
  v15[22] = *MEMORY[0x1E699A9C8];
  v15[23] = v11;
  v16[22] = &unk_1F2775C58;
  v16[23] = &unk_1F2775C70;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:24];
  v13 = messageCriterionConverter_criterionTypeForKey__mapping;
  messageCriterionConverter_criterionTypeForKey__mapping = v12;

  v14 = *MEMORY[0x1E69E9840];
}

- (id)messageCriterionConverter:(id)a3 expressionForConstantValue:(id)a4 withCriterionType:(int64_t)a5
{
  v7 = a4;
  if (a5 == 23)
  {
    v8 = [(MFMailMessageLibraryQueryTransformer *)self messagePersistence];
    v9 = [v8 messageObjectIDCriterionExpressionForPredicateValue:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)mailAccountForIdentifier:(id)a3
{
  v3 = [MailAccount accountWithUniqueId:a3];

  return v3;
}

- (id)criterionForQuery:(id)a3
{
  v4 = a3;
  v5 = [(MFMailMessageLibraryQueryTransformer *)self criterionConverter];
  v6 = [v4 predicate];
  v7 = [v5 messageCriterionFromPredicate:v6];

  return v7;
}

- (unsigned)optionsForQuery:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = a3;
  if (optionsForQuery__onceToken != -1)
  {
    [MFMailMessageLibraryQueryTransformer optionsForQuery:];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [v16 sortDescriptors];
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = optionsForQuery__mapping;
        v10 = [v8 key];
        v11 = [v9 objectForKeyedSubscript:v10];

        if (v11)
        {
          v12 = [v11 unsignedIntegerValue];
          if ([v8 ascending])
          {
            v13 = 1024;
          }

          else
          {
            v13 = 0;
          }

          v4 |= v13 | v12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v4;
}

void __56__MFMailMessageLibraryQueryTransformer_optionsForQuery___block_invoke()
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E699A880];
  v5[0] = *MEMORY[0x1E699A888];
  v5[1] = v0;
  v6[0] = &unk_1F2775C88;
  v6[1] = &unk_1F2775CA0;
  v1 = *MEMORY[0x1E699A978];
  v5[2] = *MEMORY[0x1E699A958];
  v5[3] = v1;
  v6[2] = &unk_1F2775CB8;
  v6[3] = &unk_1F2775CD0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = optionsForQuery__mapping;
  optionsForQuery__mapping = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (EDMessagePersistence)messagePersistence
{
  WeakRetained = objc_loadWeakRetained(&self->_messagePersistence);

  return WeakRetained;
}

@end