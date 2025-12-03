@interface ICLAppExtensionRecord
- (BOOL)isEqual:(id)equal;
- (ICLAppExtensionRecord)initWithCoder:(id)coder;
- (ICLAppExtensionRecord)initWithLegacyRecordDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)legacyRecordDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICLAppExtensionRecord

- (ICLAppExtensionRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ICLAppExtensionRecord;
  v5 = [(ICLBundleRecord *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionOwnerBundleID"];
    extensionOwnerBundleID = v5->_extensionOwnerBundleID;
    v5->_extensionOwnerBundleID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICLAppExtensionRecord;
  coderCopy = coder;
  [(ICLBundleRecord *)&v6 encodeWithCoder:coderCopy];
  v5 = [(ICLAppExtensionRecord *)self extensionOwnerBundleID:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"extensionOwnerBundleID"];
}

- (ICLAppExtensionRecord)initWithLegacyRecordDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ICLAppExtensionRecord;
  v5 = [(ICLBundleRecord *)&v10 initWithLegacyRecordDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"PluginOwnerBundleID"];
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

    [(ICLAppExtensionRecord *)v5 setExtensionOwnerBundleID:v8];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = ICLAppExtensionRecord;
  v5 = [(ICLBundleRecord *)&v9 copyWithZone:?];
  extensionOwnerBundleID = [(ICLAppExtensionRecord *)self extensionOwnerBundleID];
  v7 = [extensionOwnerBundleID copyWithZone:zone];
  [v5 setExtensionOwnerBundleID:v7];

  return v5;
}

- (id)legacyRecordDictionary
{
  v3 = objc_opt_new();
  v8.receiver = self;
  v8.super_class = ICLAppExtensionRecord;
  legacyRecordDictionary = [(ICLBundleRecord *)&v8 legacyRecordDictionary];
  [v3 addEntriesFromDictionary:legacyRecordDictionary];

  [v3 setObject:@"PluginKitPlugin" forKeyedSubscript:@"ApplicationType"];
  extensionOwnerBundleID = [(ICLAppExtensionRecord *)self extensionOwnerBundleID];
  if (extensionOwnerBundleID)
  {
    [v3 setObject:extensionOwnerBundleID forKeyedSubscript:@"PluginOwnerBundleID"];
  }

  v6 = [v3 copy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = ICLAppExtensionRecord, [(ICLBundleRecord *)&v10 isEqual:equalCopy]))
    {
      v5 = equalCopy;
      extensionOwnerBundleID = [(ICLAppExtensionRecord *)self extensionOwnerBundleID];
      extensionOwnerBundleID2 = [(ICLAppExtensionRecord *)v5 extensionOwnerBundleID];
      v8 = MICompareObjects(extensionOwnerBundleID, extensionOwnerBundleID2);

      if (!v8 && (!gLogHandle || *(gLogHandle + 44) >= 3))
      {
        MOLogWrite();
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = ICLAppExtensionRecord;
  v3 = [(ICLBundleRecord *)&v7 hash];
  extensionOwnerBundleID = [(ICLAppExtensionRecord *)self extensionOwnerBundleID];
  v5 = [extensionOwnerBundleID hash];

  return v5 ^ v3;
}

@end