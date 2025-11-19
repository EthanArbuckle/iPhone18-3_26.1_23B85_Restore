@interface FMInternalKeychainItem
- (FMInternalKeychainItem)initWithResults:(id)a3;
@end

@implementation FMInternalKeychainItem

- (FMInternalKeychainItem)initWithResults:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = FMInternalKeychainItem;
  v5 = [(FMInternalKeychainItem *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CDBFB8]];
    v7 = objc_opt_new();
    v8 = [v6 isEqualToData:v7];

    v9 = [v6 length];
    v10 = *MEMORY[0x277CDC5E8];
    v11 = [v4 objectForKeyedSubscript:*MEMORY[0x277CDC5E8]];
    v12 = objc_opt_new();
    v13 = [v11 isEqualToData:v12];

    v14 = [v11 length];
    if (v6 && (v8 & 1) == 0 && v9)
    {
      v15 = v6;
    }

    else if ((v11 == 0) | v13 & 1 || !v14 || ([v4 objectForKeyedSubscript:v10], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
    {

      v19 = 0;
      goto LABEL_12;
    }

    v16 = [v4 objectForKeyedSubscript:*MEMORY[0x277CDBF90]];
    [(FMInternalKeychainItem *)v5 setCreationDate:v16];

    v17 = [v4 objectForKeyedSubscript:*MEMORY[0x277CDC088]];
    [(FMInternalKeychainItem *)v5 setLastModifyDate:v17];

    [(FMInternalKeychainItem *)v5 setRawData:v15];
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v15 encoding:4];
    [(FMInternalKeychainItem *)v5 setPassword:v18];
  }

  v19 = v5;
LABEL_12:

  return v19;
}

@end