@interface ICLAppRecord
- (BOOL)isEqual:(id)a3;
- (ICLAppRecord)initWithCoder:(id)a3;
- (ICLAppRecord)initWithLegacyRecordDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)legacyRecordDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICLAppRecord

- (ICLAppRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ICLAppRecord;
  v5 = [(ICLPlaceholderRecord *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parallelPlaceholderURL"];
    parallelPlaceholderURL = v5->_parallelPlaceholderURL;
    v5->_parallelPlaceholderURL = v6;

    v5->_isUpdatedSystemApp = [v4 decodeBoolForKey:@"isUpdatedSystemApp"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"driverKitExtensionURLs"];
    driverKitExtensionURLs = v5->_driverKitExtensionURLs;
    v5->_driverKitExtensionURLs = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"stashedVersions"];
    stashedVersions = v5->_stashedVersions;
    v5->_stashedVersions = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = ICLAppRecord;
  v4 = a3;
  [(ICLPlaceholderRecord *)&v8 encodeWithCoder:v4];
  v5 = [(ICLAppRecord *)self parallelPlaceholderURL:v8.receiver];
  [v4 encodeObject:v5 forKey:@"parallelPlaceholderURL"];

  [v4 encodeBool:-[ICLAppRecord isUpdatedSystemApp](self forKey:{"isUpdatedSystemApp"), @"isUpdatedSystemApp"}];
  v6 = [(ICLAppRecord *)self driverKitExtensionURLs];
  [v4 encodeObject:v6 forKey:@"driverKitExtensionURLs"];

  v7 = [(ICLAppRecord *)self stashedVersions];
  [v4 encodeObject:v7 forKey:@"stashedVersions"];
}

- (ICLAppRecord)initWithLegacyRecordDictionary:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = ICLAppRecord;
  v5 = [(ICLPlaceholderRecord *)&v33 initWithLegacyRecordDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"ParallelPlaceholderPath"];
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

    v10 = [v4 objectForKeyedSubscript:@"IsUpdatedSystemApp"];
    [(ICLAppRecord *)v5 setIsUpdatedSystemApp:MIBooleanValue(v10, 0)];

    v11 = [v4 objectForKeyedSubscript:@"DriverKitExtensionPaths"];
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

    v22 = [v4 objectForKeyedSubscript:@"StashedVersionInfo"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = ICLAppRecord;
  v5 = [(ICLPlaceholderRecord *)&v13 copyWithZone:?];
  v6 = [(ICLAppRecord *)self parallelPlaceholderURL];
  v7 = [v6 copyWithZone:a3];
  [v5 setParallelPlaceholderURL:v7];

  [v5 setIsUpdatedSystemApp:{-[ICLAppRecord isUpdatedSystemApp](self, "isUpdatedSystemApp")}];
  v8 = [(ICLAppRecord *)self driverKitExtensionURLs];
  v9 = [v8 copyWithZone:a3];
  [v5 setDriverKitExtensionURLs:v9];

  v10 = [(ICLAppRecord *)self stashedVersions];
  v11 = [v10 copyWithZone:a3];
  [v5 setStashedVersions:v11];

  return v5;
}

- (id)legacyRecordDictionary
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v27.receiver = self;
  v27.super_class = ICLAppRecord;
  v4 = [(ICLPlaceholderRecord *)&v27 legacyRecordDictionary];
  [v3 addEntriesFromDictionary:v4];

  v5 = [(ICLAppRecord *)self parallelPlaceholderURL];
  v6 = [v5 path];

  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"ParallelPlaceholderPath"];
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
  v8 = [(ICLAppRecord *)self driverKitExtensionURLs];
  v9 = v8;
  if (v8 && [v8 count])
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

          v16 = [*(*(&v23 + 1) + 8 * i) path];
          [v10 addObject:v16];
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

  v18 = [(ICLAppRecord *)self stashedVersions];
  v19 = [v18 firstObject];

  if (v19)
  {
    v20 = [v19 legacyRecordDictionary];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"StashedVersionInfo"];
    }
  }

  v21 = [v3 copy];

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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
      if ([(ICLPlaceholderRecord *)&v18 isEqual:v4])
      {
        v5 = v4;
        v6 = [(ICLAppRecord *)self parallelPlaceholderURL];
        v7 = [(ICLAppRecord *)v5 parallelPlaceholderURL];
        v8 = MICompareObjects(v6, v7);

        if (v8)
        {
          v9 = [(ICLAppRecord *)self isUpdatedSystemApp];
          if (v9 == [(ICLAppRecord *)v5 isUpdatedSystemApp])
          {
            v12 = [(ICLAppRecord *)self driverKitExtensionURLs];
            v13 = [(ICLAppRecord *)v5 driverKitExtensionURLs];
            v14 = MICompareObjects(v12, v13);

            if (v14)
            {
              v15 = [(ICLAppRecord *)self stashedVersions];
              v16 = [(ICLAppRecord *)v5 stashedVersions];
              v17 = MICompareObjects(v15, v16);

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
  v3 = [(ICLAppRecord *)self isUpdatedSystemApp];
  v4 = [(ICLAppRecord *)self parallelPlaceholderURL];
  v5 = [v4 hash];

  v6 = [(ICLAppRecord *)self stashedVersions];
  v7 = v5 ^ [v6 hash] ^ v3;

  v8 = [(ICLAppRecord *)self driverKitExtensionURLs];
  v9 = v7 ^ [v8 hash];

  v11.receiver = self;
  v11.super_class = ICLAppRecord;
  return v9 ^ [(ICLPlaceholderRecord *)&v11 hash];
}

@end