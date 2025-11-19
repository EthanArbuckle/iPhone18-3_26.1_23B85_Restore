@interface SGDefaultAssets
+ (id)_filesystemPathForFilename:(id)a3 isFault:(BOOL)a4;
+ (id)dictionaryWithPlistAssetPath:(id)a3;
+ (id)dictionaryWithPlistFilename:(id)a3;
+ (id)vocabWithTrieAssetPath:(id)a3;
@end

@implementation SGDefaultAssets

+ (id)vocabWithTrieAssetPath:(id)a3
{
  v3 = MEMORY[0x277D41F90];
  v4 = a3;
  v5 = [[v3 alloc] initWithPath:v4];

  return v5;
}

+ (id)dictionaryWithPlistAssetPath:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v8 = 0;
    goto LABEL_18;
  }

  v13 = 0;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v3 options:1 error:&v13];
  v5 = v13;
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = v3;
      v16 = 2112;
      v17 = v5;
      _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error loading model plist %@: %@", buf, 0x16u);
    }

    v8 = 0;
    goto LABEL_17;
  }

  if ([v4 length] >= 0x400 && (objc_msgSend(MEMORY[0x277D425E0], "dictionaryWithData:error:", v4, 0), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
  }

  else
  {
    v12 = 0;
    v7 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:&v12];
    v9 = v12;

    if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v15 = v4;
        v16 = 2112;
        v17 = v9;
        _os_log_error_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error deserializing model plist %@: %@", buf, 0x16u);
      }

      v8 = 0;
      goto LABEL_16;
    }

    v5 = 0;
  }

  v7 = v7;
  v9 = v5;
  v8 = v7;
LABEL_16:

  v5 = v9;
LABEL_17:

LABEL_18:
  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)dictionaryWithPlistFilename:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 pathForResource:v4 ofType:@"plist"];

  v7 = [SGDefaultAssets dictionaryWithPlistAssetPath:v6];

  return v7;
}

+ (id)_filesystemPathForFilename:(id)a3 isFault:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = [v7 stringByDeletingPathExtension];
  v9 = [v7 pathExtension];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 pathForResource:v8 ofType:v9];

  if (v4 && !v11)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"SGDefaultAssets.m" lineNumber:38 description:{@"no path for filename %@", v7}];
  }

  return v11;
}

@end