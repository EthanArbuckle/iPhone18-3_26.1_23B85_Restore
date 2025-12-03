@interface ICLAppRecord
- (BOOL)isEqual:(id)equal;
- (ICLAppRecord)initWithCoder:(id)coder;
- (ICLAppRecord)initWithLegacyRecordDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)legacyRecordDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICLAppRecord

- (ICLAppRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = ICLAppRecord;
  v5 = [(ICLPlaceholderRecord *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parallelPlaceholderURL"];
    parallelPlaceholderURL = v5->_parallelPlaceholderURL;
    v5->_parallelPlaceholderURL = v6;

    v5->_isUpdatedSystemApp = [coderCopy decodeBoolForKey:@"isUpdatedSystemApp"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"driverKitExtensionURLs"];
    driverKitExtensionURLs = v5->_driverKitExtensionURLs;
    v5->_driverKitExtensionURLs = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"stashedVersions"];
    stashedVersions = v5->_stashedVersions;
    v5->_stashedVersions = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = ICLAppRecord;
  coderCopy = coder;
  [(ICLPlaceholderRecord *)&v8 encodeWithCoder:coderCopy];
  v5 = [(ICLAppRecord *)self parallelPlaceholderURL:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"parallelPlaceholderURL"];

  [coderCopy encodeBool:-[ICLAppRecord isUpdatedSystemApp](self forKey:{"isUpdatedSystemApp"), @"isUpdatedSystemApp"}];
  driverKitExtensionURLs = [(ICLAppRecord *)self driverKitExtensionURLs];
  [coderCopy encodeObject:driverKitExtensionURLs forKey:@"driverKitExtensionURLs"];

  stashedVersions = [(ICLAppRecord *)self stashedVersions];
  [coderCopy encodeObject:stashedVersions forKey:@"stashedVersions"];
}

- (ICLAppRecord)initWithLegacyRecordDictionary:(id)dictionary
{
  v36 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = ICLAppRecord;
  v5 = [(ICLPlaceholderRecord *)&v33 initWithLegacyRecordDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ParallelPlaceholderPath"];
    objc_opt_class();
    v7 = v6;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:1];
      [(ICLAppRecord *)v5 setParallelPlaceholderURL:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"IsUpdatedSystemApp"];
    [(ICLAppRecord *)v5 setIsUpdatedSystemApp:MIBooleanValue(v10, 0)];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"DriverKitExtensionPaths"];
    objc_opt_class();
    v12 = v11;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      objc_opt_class();
      if (MIArrayContainsOnlyClass(v13))
      {
        v28 = v8;
        v14 = objc_opt_new();
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v15 = v13;
        v16 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v30;
          do
          {
            v19 = 0;
            do
            {
              if (*v30 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(&v29 + 1) + 8 * v19) isDirectory:1];
              [v14 addObject:v20];

              ++v19;
            }

            while (v17 != v19);
            v17 = [v15 countByEnumeratingWithState:&v29 objects:v35 count:16];
          }

          while (v17);
        }

        v21 = [v14 copy];
        [(ICLAppRecord *)v5 setDriverKitExtensionURLs:v21];

        v8 = v28;
      }
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"StashedVersionInfo"];
    objc_opt_class();
    v23 = v22;
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      v25 = [[ICLStashedAppRecord alloc] initWithLegacyRecordDictionary:v24];
      v34 = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
      [(ICLAppRecord *)v5 setStashedVersions:v26];
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = ICLAppRecord;
  v5 = [(ICLPlaceholderRecord *)&v13 copyWithZone:?];
  parallelPlaceholderURL = [(ICLAppRecord *)self parallelPlaceholderURL];
  v7 = [parallelPlaceholderURL copyWithZone:zone];
  [v5 setParallelPlaceholderURL:v7];

  [v5 setIsUpdatedSystemApp:{-[ICLAppRecord isUpdatedSystemApp](self, "isUpdatedSystemApp")}];
  driverKitExtensionURLs = [(ICLAppRecord *)self driverKitExtensionURLs];
  v9 = [driverKitExtensionURLs copyWithZone:zone];
  [v5 setDriverKitExtensionURLs:v9];

  stashedVersions = [(ICLAppRecord *)self stashedVersions];
  v11 = [stashedVersions copyWithZone:zone];
  [v5 setStashedVersions:v11];

  return v5;
}

- (id)legacyRecordDictionary
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v27.receiver = self;
  v27.super_class = ICLAppRecord;
  legacyRecordDictionary = [(ICLPlaceholderRecord *)&v27 legacyRecordDictionary];
  [v3 addEntriesFromDictionary:legacyRecordDictionary];

  parallelPlaceholderURL = [(ICLAppRecord *)self parallelPlaceholderURL];
  path = [parallelPlaceholderURL path];

  if (path)
  {
    [v3 setObject:path forKeyedSubscript:@"ParallelPlaceholderPath"];
  }

  if ([(ICLAppRecord *)self isUpdatedSystemApp])
  {
    v7 = MEMORY[0x1E695E118];
  }

  else
  {
    v7 = MEMORY[0x1E695E110];
  }

  [v3 setObject:v7 forKeyedSubscript:@"IsUpdatedSystemApp"];
  driverKitExtensionURLs = [(ICLAppRecord *)self driverKitExtensionURLs];
  v9 = driverKitExtensionURLs;
  if (driverKitExtensionURLs && [driverKitExtensionURLs count])
  {
    v10 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v11);
          }

          path2 = [*(*(&v23 + 1) + 8 * i) path];
          [v10 addObject:path2];
        }

        v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v13);
    }

    v17 = [v10 copy];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"DriverKitExtensionPaths"];
    }
  }

  stashedVersions = [(ICLAppRecord *)self stashedVersions];
  firstObject = [stashedVersions firstObject];

  if (firstObject)
  {
    legacyRecordDictionary2 = [firstObject legacyRecordDictionary];
    if (legacyRecordDictionary2)
    {
      [v3 setObject:legacyRecordDictionary2 forKeyedSubscript:@"StashedVersionInfo"];
    }
  }

  v21 = [v3 copy];

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18.receiver = self;
      v18.super_class = ICLAppRecord;
      if ([(ICLPlaceholderRecord *)&v18 isEqual:equalCopy])
      {
        v5 = equalCopy;
        parallelPlaceholderURL = [(ICLAppRecord *)self parallelPlaceholderURL];
        parallelPlaceholderURL2 = [(ICLAppRecord *)v5 parallelPlaceholderURL];
        v8 = MICompareObjects(parallelPlaceholderURL, parallelPlaceholderURL2);

        if (v8)
        {
          isUpdatedSystemApp = [(ICLAppRecord *)self isUpdatedSystemApp];
          if (isUpdatedSystemApp == [(ICLAppRecord *)v5 isUpdatedSystemApp])
          {
            driverKitExtensionURLs = [(ICLAppRecord *)self driverKitExtensionURLs];
            driverKitExtensionURLs2 = [(ICLAppRecord *)v5 driverKitExtensionURLs];
            v14 = MICompareObjects(driverKitExtensionURLs, driverKitExtensionURLs2);

            if (v14)
            {
              stashedVersions = [(ICLAppRecord *)self stashedVersions];
              stashedVersions2 = [(ICLAppRecord *)v5 stashedVersions];
              v17 = MICompareObjects(stashedVersions, stashedVersions2);

              if (v17)
              {
                v10 = 1;
                goto LABEL_15;
              }

              if (gLogHandle && *(gLogHandle + 44) < 3)
              {
LABEL_14:
                v10 = 0;
LABEL_15:

                goto LABEL_16;
              }
            }

            else if (gLogHandle && *(gLogHandle + 44) < 3)
            {
              goto LABEL_14;
            }
          }

          else if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_14;
          }
        }

        else if (gLogHandle && *(gLogHandle + 44) < 3)
        {
          goto LABEL_14;
        }

        MOLogWrite();
        goto LABEL_14;
      }
    }

    v10 = 0;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  isUpdatedSystemApp = [(ICLAppRecord *)self isUpdatedSystemApp];
  parallelPlaceholderURL = [(ICLAppRecord *)self parallelPlaceholderURL];
  v5 = [parallelPlaceholderURL hash];

  stashedVersions = [(ICLAppRecord *)self stashedVersions];
  v7 = v5 ^ [stashedVersions hash] ^ isUpdatedSystemApp;

  driverKitExtensionURLs = [(ICLAppRecord *)self driverKitExtensionURLs];
  v9 = v7 ^ [driverKitExtensionURLs hash];

  v11.receiver = self;
  v11.super_class = ICLAppRecord;
  return v9 ^ [(ICLPlaceholderRecord *)&v11 hash];
}

@end