@interface ICLUninstallRecord
+ (id)uninstallRecordArrayToDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (ICLUninstallRecord)init;
- (ICLUninstallRecord)initWithCoder:(id)coder;
- (NSDictionary)legacyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICLUninstallRecord

- (ICLUninstallRecord)init
{
  v3.receiver = self;
  v3.super_class = ICLUninstallRecord;
  return [(ICLUninstallRecord *)&v3 init];
}

- (ICLUninstallRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ICLUninstallRecord;
  v5 = [(ICLUninstallRecord *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v5->_isPlaceholder = [coderCopy decodeBoolForKey:@"isPlaceholder"];
    v5->_hasParallelPlaceholder = [coderCopy decodeBoolForKey:@"hasParallelPlaceholder"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(ICLUninstallRecord *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  [coderCopy encodeBool:-[ICLUninstallRecord isPlaceholder](self forKey:{"isPlaceholder"), @"isPlaceholder"}];
  [coderCopy encodeBool:-[ICLUninstallRecord hasParallelPlaceholder](self forKey:{"hasParallelPlaceholder"), @"hasParallelPlaceholder"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  bundleIdentifier = [(ICLUninstallRecord *)self bundleIdentifier];
  v7 = [bundleIdentifier copyWithZone:zone];
  [v5 setBundleIdentifier:v7];

  [v5 setIsPlaceholder:{-[ICLUninstallRecord isPlaceholder](self, "isPlaceholder")}];
  [v5 setHasParallelPlaceholder:{-[ICLUninstallRecord hasParallelPlaceholder](self, "hasParallelPlaceholder")}];
  return v5;
}

- (NSDictionary)legacyDictionary
{
  v3 = objc_opt_new();
  bundleIdentifier = [(ICLUninstallRecord *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    [v3 setObject:bundleIdentifier forKeyedSubscript:*MEMORY[0x1E695E4F0]];
  }

  isPlaceholder = [(ICLUninstallRecord *)self isPlaceholder];
  v6 = MEMORY[0x1E695E110];
  v7 = MEMORY[0x1E695E118];
  if (isPlaceholder)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      bundleIdentifier = [(ICLUninstallRecord *)self bundleIdentifier];
      bundleIdentifier2 = [(ICLUninstallRecord *)v5 bundleIdentifier];
      v8 = MICompareObjects(bundleIdentifier, bundleIdentifier2);

      if (v8)
      {
        isPlaceholder = [(ICLUninstallRecord *)self isPlaceholder];
        if (isPlaceholder == [(ICLUninstallRecord *)v5 isPlaceholder])
        {
          hasParallelPlaceholder = [(ICLUninstallRecord *)self hasParallelPlaceholder];
          if (hasParallelPlaceholder == [(ICLUninstallRecord *)v5 hasParallelPlaceholder])
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
  isPlaceholder = [(ICLUninstallRecord *)self isPlaceholder];
  hasParallelPlaceholder = [(ICLUninstallRecord *)self hasParallelPlaceholder];
  v5 = 2;
  if (!hasParallelPlaceholder)
  {
    v5 = 0;
  }

  v6 = v5 | isPlaceholder;
  bundleIdentifier = [(ICLUninstallRecord *)self bundleIdentifier];
  v8 = [bundleIdentifier hash];

  return v8 ^ v6;
}

+ (id)uninstallRecordArrayToDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = dictionaryCopy;
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

          legacyDictionary = [*(*(&v14 + 1) + 8 * i) legacyDictionary];
          [v4 addObject:legacyDictionary];
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