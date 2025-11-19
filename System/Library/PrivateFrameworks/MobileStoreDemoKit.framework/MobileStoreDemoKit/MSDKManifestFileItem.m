@interface MSDKManifestFileItem
- (MSDKManifestFileItem)initWithIdentifier:(id)a3 andDictionary:(id)a4 forComponent:(id)a5;
- (id)description;
@end

@implementation MSDKManifestFileItem

- (MSDKManifestFileItem)initWithIdentifier:(id)a3 andDictionary:(id)a4 forComponent:(id)a5
{
  v9 = a3;
  v10 = a4;
  v30.receiver = self;
  v30.super_class = MSDKManifestFileItem;
  v11 = [(MSDKManifestItem *)&v30 initWithIdentifier:v9 andDictionary:v10 forComponent:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_manifestFilePath, a3);
    v13 = [v10 objectForKey:@"MSDManifestFileAttributes" ofType:objc_opt_class()];
    fileAttributes = v12->_fileAttributes;
    v12->_fileAttributes = v13;

    v15 = v12->_fileAttributes;
    if (v15)
    {
      v16 = [(NSDictionary *)v15 objectForKey:*MEMORY[0x277CCA1E0] ofType:objc_opt_class()];
      fileType = v12->_fileType;
      v12->_fileType = v16;

      if (v12->_fileType)
      {
        v18 = [v10 objectForKey:@"MSDManifestFileHash"];
        fileHash = v12->_fileHash;
        v12->_fileHash = v18;

        v20 = [v10 objectForKey:@"MSDManifestFileExtendedAttributes"];
        fileExtendedAttributes = v12->_fileExtendedAttributes;
        v12->_fileExtendedAttributes = v20;

        v22 = [v10 objectForKey:@"MSDManifestSymbolicLinkTargetFile"];
        symbolicLinkTargetFilePath = v12->_symbolicLinkTargetFilePath;
        v12->_symbolicLinkTargetFilePath = v22;

        bundleFilePath = v12->_bundleFilePath;
        v12->_bundleFilePath = 0;

        if (v12->_fileHash)
        {
          v25 = [(MSDKManifestFileItem *)v12 fileHash];
          v26 = [MSDKCacheManager getBundleFilePathFromHash:v25];
          v27 = v12->_bundleFilePath;
          v12->_bundleFilePath = v26;
        }

        goto LABEL_6;
      }

      [MSDKManifestFileItem initWithIdentifier:andDictionary:forComponent:];
    }

    else
    {
      [MSDKManifestFileItem initWithIdentifier:andDictionary:forComponent:];
    }

    v28 = 0;
    goto LABEL_7;
  }

LABEL_6:
  v28 = v12;
LABEL_7:

  return v28;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: Path:%@>", v5, self->_manifestFilePath];

  return v6;
}

- (void)initWithIdentifier:andDictionary:forComponent:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = defaultLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_2(&dword_259B7D000, v1, v2, "%s: Failed to parse %{public}@ from file item %{public}@", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithIdentifier:andDictionary:forComponent:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = defaultLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_2(&dword_259B7D000, v1, v2, "%s: Failed to parse %{public}@ from file item %{public}@", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end