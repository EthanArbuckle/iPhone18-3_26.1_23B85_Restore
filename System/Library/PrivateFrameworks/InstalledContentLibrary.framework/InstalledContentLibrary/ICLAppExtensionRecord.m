@interface ICLAppExtensionRecord
- (BOOL)isEqual:(id)a3;
- (ICLAppExtensionRecord)initWithCoder:(id)a3;
- (ICLAppExtensionRecord)initWithLegacyRecordDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)legacyRecordDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICLAppExtensionRecord

- (ICLAppExtensionRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICLAppExtensionRecord;
  v5 = [(ICLBundleRecord *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionOwnerBundleID"];
    extensionOwnerBundleID = v5->_extensionOwnerBundleID;
    v5->_extensionOwnerBundleID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICLAppExtensionRecord;
  v4 = a3;
  [(ICLBundleRecord *)&v6 encodeWithCoder:v4];
  v5 = [(ICLAppExtensionRecord *)self extensionOwnerBundleID:v6.receiver];
  [v4 encodeObject:v5 forKey:@"extensionOwnerBundleID"];
}

- (ICLAppExtensionRecord)initWithLegacyRecordDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ICLAppExtensionRecord;
  v5 = [(ICLBundleRecord *)&v10 initWithLegacyRecordDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"PluginOwnerBundleID"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = ICLAppExtensionRecord;
  v5 = [(ICLBundleRecord *)&v9 copyWithZone:?];
  v6 = [(ICLAppExtensionRecord *)self extensionOwnerBundleID];
  v7 = [v6 copyWithZone:a3];
  [v5 setExtensionOwnerBundleID:v7];

  return v5;
}

- (id)legacyRecordDictionary
{
  v3 = objc_opt_new();
  v8.receiver = self;
  v8.super_class = ICLAppExtensionRecord;
  v4 = [(ICLBundleRecord *)&v8 legacyRecordDictionary];
  [v3 addEntriesFromDictionary:v4];

  [v3 setObject:@"PluginKitPlugin" forKeyedSubscript:@"ApplicationType"];
  v5 = [(ICLAppExtensionRecord *)self extensionOwnerBundleID];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"PluginOwnerBundleID"];
  }

  v6 = [v3 copy];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v10.receiver = self, v10.super_class = ICLAppExtensionRecord, [(ICLBundleRecord *)&v10 isEqual:v4]))
    {
      v5 = v4;
      v6 = [(ICLAppExtensionRecord *)self extensionOwnerBundleID];
      v7 = [(ICLAppExtensionRecord *)v5 extensionOwnerBundleID];
      v8 = MICompareObjects(v6, v7);

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
  v4 = [(ICLAppExtensionRecord *)self extensionOwnerBundleID];
  v5 = [v4 hash];

  return v5 ^ v3;
}

@end