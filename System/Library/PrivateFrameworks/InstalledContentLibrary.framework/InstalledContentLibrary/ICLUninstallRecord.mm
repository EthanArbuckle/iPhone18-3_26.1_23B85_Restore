@interface ICLUninstallRecord
+ (id)uninstallRecordArrayToDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ICLUninstallRecord)init;
- (ICLUninstallRecord)initWithCoder:(id)a3;
- (NSDictionary)legacyDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICLUninstallRecord

- (ICLUninstallRecord)init
{
  v3.receiver = self;
  v3.super_class = ICLUninstallRecord;
  return [(ICLUninstallRecord *)&v3 init];
}

- (ICLUninstallRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICLUninstallRecord;
  v5 = [(ICLUninstallRecord *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v5->_isPlaceholder = [v4 decodeBoolForKey:@"isPlaceholder"];
    v5->_hasParallelPlaceholder = [v4 decodeBoolForKey:@"hasParallelPlaceholder"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(ICLUninstallRecord *)self bundleIdentifier];
  [v5 encodeObject:v4 forKey:@"bundleIdentifier"];

  [v5 encodeBool:-[ICLUninstallRecord isPlaceholder](self forKey:{"isPlaceholder"), @"isPlaceholder"}];
  [v5 encodeBool:-[ICLUninstallRecord hasParallelPlaceholder](self forKey:{"hasParallelPlaceholder"), @"hasParallelPlaceholder"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(ICLUninstallRecord *)self bundleIdentifier];
  v7 = [v6 copyWithZone:a3];
  [v5 setBundleIdentifier:v7];

  [v5 setIsPlaceholder:{-[ICLUninstallRecord isPlaceholder](self, "isPlaceholder")}];
  [v5 setHasParallelPlaceholder:{-[ICLUninstallRecord hasParallelPlaceholder](self, "hasParallelPlaceholder")}];
  return v5;
}

- (NSDictionary)legacyDictionary
{
  v3 = objc_opt_new();
  v4 = [(ICLUninstallRecord *)self bundleIdentifier];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E695E4F0]];
  }

  v5 = [(ICLUninstallRecord *)self isPlaceholder];
  v6 = MEMORY[0x1E695E110];
  v7 = MEMORY[0x1E695E118];
  if (v5)
  {
    v8 = MEMORY[0x1E695E118];
  }

  else
  {
    v8 = MEMORY[0x1E695E110];
  }

  [v3 setObject:v8 forKeyedSubscript:@"IsPlaceholder"];
  if ([(ICLUninstallRecord *)self hasParallelPlaceholder])
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  [v3 setObject:v9 forKeyedSubscript:@"HasParallelPlaceholder"];
  v10 = [v3 copy];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ICLUninstallRecord *)self bundleIdentifier];
      v7 = [(ICLUninstallRecord *)v5 bundleIdentifier];
      v8 = MICompareObjects(v6, v7);

      if (v8)
      {
        v9 = [(ICLUninstallRecord *)self isPlaceholder];
        if (v9 == [(ICLUninstallRecord *)v5 isPlaceholder])
        {
          v12 = [(ICLUninstallRecord *)self hasParallelPlaceholder];
          if (v12 == [(ICLUninstallRecord *)v5 hasParallelPlaceholder])
          {
            v10 = 1;
            goto LABEL_14;
          }

          if (gLogHandle && *(gLogHandle + 44) < 3)
          {
LABEL_13:
            v10 = 0;
LABEL_14:

            goto LABEL_15;
          }
        }

        else if (gLogHandle && *(gLogHandle + 44) < 3)
        {
          goto LABEL_13;
        }
      }

      else if (gLogHandle && *(gLogHandle + 44) < 3)
      {
        goto LABEL_13;
      }

      MOLogWrite();
      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(ICLUninstallRecord *)self isPlaceholder];
  v4 = [(ICLUninstallRecord *)self hasParallelPlaceholder];
  v5 = 2;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = v5 | v3;
  v7 = [(ICLUninstallRecord *)self bundleIdentifier];
  v8 = [v7 hash];

  return v8 ^ v6;
}

+ (id)uninstallRecordArrayToDictionary:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) legacyDictionary];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v7);
    }

    v18 = @"UninstalledAppInfoArray";
    v11 = [v4 copy];
    v19 = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end