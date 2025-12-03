@interface SGDefaultAssets
+ (id)_filesystemPathForFilename:(id)filename isFault:(BOOL)fault;
+ (id)dictionaryWithPlistAssetPath:(id)path;
+ (id)dictionaryWithPlistFilename:(id)filename;
+ (id)vocabWithTrieAssetPath:(id)path;
@end

@implementation SGDefaultAssets

+ (id)vocabWithTrieAssetPath:(id)path
{
  v3 = MEMORY[0x277D41F90];
  pathCopy = path;
  v5 = [[v3 alloc] initWithPath:pathCopy];

  return v5;
}

+ (id)dictionaryWithPlistAssetPath:(id)path
{
  v18 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (!pathCopy)
  {
    v8 = 0;
    goto LABEL_18;
  }

  v13 = 0;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:pathCopy options:1 error:&v13];
  v5 = v13;
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = pathCopy;
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

+ (id)dictionaryWithPlistFilename:(id)filename
{
  v3 = MEMORY[0x277CCA8D8];
  filenameCopy = filename;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [v5 pathForResource:filenameCopy ofType:@"plist"];

  v7 = [SGDefaultAssets dictionaryWithPlistAssetPath:v6];

  return v7;
}

+ (id)_filesystemPathForFilename:(id)filename isFault:(BOOL)fault
{
  faultCopy = fault;
  filenameCopy = filename;
  stringByDeletingPathExtension = [filenameCopy stringByDeletingPathExtension];
  pathExtension = [filenameCopy pathExtension];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 pathForResource:stringByDeletingPathExtension ofType:pathExtension];

  if (faultCopy && !v11)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGDefaultAssets.m" lineNumber:38 description:{@"no path for filename %@", filenameCopy}];
  }

  return v11;
}

@end