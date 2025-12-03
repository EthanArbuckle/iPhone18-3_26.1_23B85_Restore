@interface _HDDeleteSourcesWithUUIDsEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (_HDDeleteSourcesWithUUIDsEntry)initWithCoder:(id)coder;
- (_HDDeleteSourcesWithUUIDsEntry)initWithUUIDs:(id)ds bundleIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HDDeleteSourcesWithUUIDsEntry

- (_HDDeleteSourcesWithUUIDsEntry)initWithUUIDs:(id)ds bundleIdentifier:(id)identifier
{
  dsCopy = ds;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = _HDDeleteSourcesWithUUIDsEntry;
  v8 = [(_HDDeleteSourcesWithUUIDsEntry *)&v14 init];
  if (v8)
  {
    v9 = [dsCopy copy];
    UUIDs = v8->_UUIDs;
    v8->_UUIDs = v9;

    v11 = [identifierCopy copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v11;
  }

  return v8;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  v36 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  profileCopy = profile;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = entriesCopy;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v30;
    *&v8 = 138543362;
    v22 = v8;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        uUIDs = [v12 UUIDs];
        bundleIdentifier = [v12 bundleIdentifier];
        database = [profileCopy database];
        v28 = 0;
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __59___HDDeleteSourcesWithUUIDsEntry_applyEntries_withProfile___block_invoke;
        v24[3] = &unk_278615D40;
        v25 = profileCopy;
        v16 = uUIDs;
        v26 = v16;
        v17 = bundleIdentifier;
        v27 = v17;
        v18 = [(HDHealthEntity *)HDSampleEntity performWriteTransactionWithHealthDatabase:database error:&v28 block:v24];
        v19 = v28;

        if (!v18)
        {
          _HKInitializeLogging();
          v20 = *MEMORY[0x277CCC2A0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
          {
            *buf = v22;
            v34 = v19;
            _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "Unable to delete source/samples for journaled source: %{public}@", buf, 0xCu);
          }

          if ([v19 hk_isTransactionInterruptedError])
          {

            goto LABEL_14;
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
}

- (_HDDeleteSourcesWithUUIDsEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"UUIDs"];

  if (v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BundleIdentifier"];
    self = [(_HDDeleteSourcesWithUUIDsEntry *)self initWithUUIDs:v8 bundleIdentifier:v9];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  UUIDs = self->_UUIDs;
  coderCopy = coder;
  [coderCopy encodeObject:UUIDs forKey:@"UUIDs"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"BundleIdentifier"];
}

@end