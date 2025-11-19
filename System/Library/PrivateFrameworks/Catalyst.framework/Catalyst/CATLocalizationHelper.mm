@interface CATLocalizationHelper
+ (id)helperForBundle:(id)a3;
- (CATLocalizationHelper)initWithBundle:(id)a3;
- (NSBundle)bundle;
- (id)stringByKeyForTableName:(id)a3;
- (id)stringsForKey:(id)a3 value:(id)a4 table:(id)a5;
@end

@implementation CATLocalizationHelper

+ (id)helperForBundle:(id)a3
{
  v5 = a3;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __41__CATLocalizationHelper_helperForBundle___block_invoke;
  v11 = &__block_descriptor_48_e5_v8__0l;
  v12 = a1;
  v13 = a2;
  if (helperForBundle__onceToken != -1)
  {
    dispatch_once(&helperForBundle__onceToken, &v8);
  }

  [helperForBundle__lock lock];
  v6 = [helperForBundle__helperByBundle objectForKey:v5];
  if (!v6)
  {
    v6 = [[CATLocalizationHelper alloc] initWithBundle:v5];
    [helperForBundle__helperByBundle setObject:v6 forKey:v5];
  }

  [helperForBundle__lock unlock];

  return v6;
}

void __41__CATLocalizationHelper_helperForBundle___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  v3 = helperForBundle__helperByBundle;
  helperForBundle__helperByBundle = v2;

  v4 = objc_opt_new();
  v5 = helperForBundle__lock;
  helperForBundle__lock = v4;

  v6 = MEMORY[0x277CCACA8];
  v7 = *(a1 + 32);
  v9 = NSStringFromSelector(*(a1 + 40));
  v8 = [v6 stringWithFormat:@"%@.%@", v7, v9];
  [helperForBundle__lock setName:v8];
}

- (CATLocalizationHelper)initWithBundle:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CATLocalizationHelper;
  v5 = [(CATLocalizationHelper *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_bundle, v4);
    v7 = objc_opt_new();
    mLock = v6->mLock;
    v6->mLock = v7;

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%p", objc_opt_class(), v6];
    [(NSLock *)v6->mLock setName:v9];

    v10 = objc_opt_new();
    mStringByKeyByTableName = v6->mStringByKeyByTableName;
    v6->mStringByKeyByTableName = v10;
  }

  return v6;
}

- (id)stringByKeyForTableName:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(CATLocalizationHelper *)a2 stringByKeyForTableName:?];
  }

  [(NSLock *)self->mLock lock];
  v6 = [(NSMutableDictionary *)self->mStringByKeyByTableName objectForKeyedSubscript:v5];
  if (!v6)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 URLForResource:v5 withExtension:@"strings" subdirectory:@"/" localization:@"en"];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v10 URLForResource:v5 withExtension:@"strings" subdirectory:@"/" localization:@"English"];

      if (!v9)
      {
        v6 = 0;
LABEL_15:
        if (v6)
        {
          v15 = v6;
        }

        else
        {
          v15 = MEMORY[0x277CBEC10];
        }

        [(NSMutableDictionary *)self->mStringByKeyByTableName setObject:v15 forKeyedSubscript:v5];

        goto LABEL_19;
      }
    }

    v18 = 0;
    v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v9 options:2 error:&v18];
    v12 = v18;
    if (!v11 || (v17 = 0, [MEMORY[0x277CCAC58] propertyListWithData:v11 options:0 format:0 error:&v17], v6 = objc_claimAutoreleasedReturnValue(), v13 = v17, v12, v12 = v13, !v6))
    {
      if (_CATLogGeneral_onceToken_1 != -1)
      {
        [CATLocalizationHelper stringByKeyForTableName:];
      }

      v14 = _CATLogGeneral_logObj_1;
      if (os_log_type_enabled(_CATLogGeneral_logObj_1, OS_LOG_TYPE_ERROR))
      {
        [(CATLocalizationHelper *)v9 stringByKeyForTableName:v14, v12];
      }

      v6 = 0;
    }

    goto LABEL_15;
  }

LABEL_19:
  [(NSLock *)self->mLock unlock];

  return v6;
}

- (id)stringsForKey:(id)a3 value:(id)a4 table:(id)a5
{
  v24[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [CATLocalizationHelper stringsForKey:a2 value:self table:?];
  }

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"Localizable";
  }

  v13 = [(CATLocalizationHelper *)self stringByKeyForTableName:v12];
  WeakRetained = objc_loadWeakRetained(&self->_bundle);
  v15 = [WeakRetained localizedStringForKey:v9 value:v10 table:v11];

  v16 = [v13 objectForKey:v9];
  v17 = v16;
  if (v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = v9;
  }

  if (v16)
  {
    v18 = v16;
  }

  v19 = v18;

  v23[0] = @"NSLocalizedDescription";
  v23[1] = @"NSDescription";
  v24[0] = v15;
  v24[1] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (NSBundle)bundle
{
  WeakRetained = objc_loadWeakRetained(&self->_bundle);

  return WeakRetained;
}

- (void)stringByKeyForTableName:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATLocalizationHelper.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"tableName"}];
}

- (void)stringByKeyForTableName:(void *)a3 .cold.3(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 verboseDescription];
  v8 = 138412546;
  v9 = a1;
  v10 = 2112;
  v11 = v6;
  _os_log_error_impl(&dword_24329F000, v5, OS_LOG_TYPE_ERROR, "There was an error reading %@: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stringsForKey:(uint64_t)a1 value:(uint64_t)a2 table:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATLocalizationHelper.m" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"key"}];
}

@end