@interface FCOngoingPurchaseEntry
+ (id)dummyOngoingPurchaseEntryWithTagID:(id)a3;
- (FCOngoingPurchaseEntry)initWithEntryID:(id)a3 dictionaryRepresentation:(id)a4;
- (FCOngoingPurchaseEntry)initWithEntryID:(id)a3 tagID:(id)a4 purchaseID:(id)a5 productID:(id)a6 bundleID:(id)a7 webAccessOptIn:(BOOL)a8 appAdamID:(id)a9 storeExternalVersion:(id)a10 vendorIdentifier:(id)a11 purchaseInitiatedTime:(id)a12 price:(id)a13;
- (id)dictionaryRepresentation;
@end

@implementation FCOngoingPurchaseEntry

- (FCOngoingPurchaseEntry)initWithEntryID:(id)a3 tagID:(id)a4 purchaseID:(id)a5 productID:(id)a6 bundleID:(id)a7 webAccessOptIn:(BOOL)a8 appAdamID:(id)a9 storeExternalVersion:(id)a10 vendorIdentifier:(id)a11 purchaseInitiatedTime:(id)a12 price:(id)a13
{
  v66 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v56 = a7;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  if (!v17 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ongoing purchase entry must have an identifier"];
    *buf = 136315906;
    v59 = "[FCOngoingPurchaseEntry initWithEntryID:tagID:purchaseID:productID:bundleID:webAccessOptIn:appAdamID:storeExternalVersion:vendorIdentifier:purchaseInitiatedTime:price:]";
    v60 = 2080;
    v61 = "FCOngoingPurchaseEntry.m";
    v62 = 1024;
    v63 = 53;
    v64 = 2114;
    v65 = v50;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v18)
    {
      goto LABEL_6;
    }
  }

  else if (v18)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ongoing purchase entry must have an tag ID"];
    *buf = 136315906;
    v59 = "[FCOngoingPurchaseEntry initWithEntryID:tagID:purchaseID:productID:bundleID:webAccessOptIn:appAdamID:storeExternalVersion:vendorIdentifier:purchaseInitiatedTime:price:]";
    v60 = 2080;
    v61 = "FCOngoingPurchaseEntry.m";
    v62 = 1024;
    v63 = 54;
    v64 = 2114;
    v65 = v51;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v20 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ongoing purchase entry must have an product identifier"];
    *buf = 136315906;
    v59 = "[FCOngoingPurchaseEntry initWithEntryID:tagID:purchaseID:productID:bundleID:webAccessOptIn:appAdamID:storeExternalVersion:vendorIdentifier:purchaseInitiatedTime:price:]";
    v60 = 2080;
    v61 = "FCOngoingPurchaseEntry.m";
    v62 = 1024;
    v63 = 55;
    v64 = 2114;
    v65 = v52;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v19)
    {
      goto LABEL_11;
    }
  }

  else if (v19)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ongoing purchase entry must have an purchase ID"];
    *buf = 136315906;
    v59 = "[FCOngoingPurchaseEntry initWithEntryID:tagID:purchaseID:productID:bundleID:webAccessOptIn:appAdamID:storeExternalVersion:vendorIdentifier:purchaseInitiatedTime:price:]";
    v60 = 2080;
    v61 = "FCOngoingPurchaseEntry.m";
    v62 = 1024;
    v63 = 56;
    v64 = 2114;
    v65 = v53;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_11:
  v57.receiver = self;
  v57.super_class = FCOngoingPurchaseEntry;
  v26 = [(FCOngoingPurchaseEntry *)&v57 init];
  v27 = v26;
  if (v26)
  {
    if (v17)
    {
      v28 = [v17 copy];
      identifier = v27->_identifier;
      v27->_identifier = v28;

      v30 = [v18 copy];
      tagID = v27->_tagID;
      v27->_tagID = v30;

      v32 = [v19 copy];
      purchaseID = v27->_purchaseID;
      v27->_purchaseID = v32;

      v34 = [v20 copy];
      productID = v27->_productID;
      v27->_productID = v34;

      v36 = [v56 copy];
      bundleID = v27->_bundleID;
      v27->_bundleID = v36;

      v38 = [v21 copy];
      appAdamID = v27->_appAdamID;
      v27->_appAdamID = v38;

      v27->_webAccessOptIn = a8;
      v40 = [v22 copy];
      storeExternalVersion = v27->_storeExternalVersion;
      v27->_storeExternalVersion = v40;

      v42 = [v23 copy];
      vendorIdentifier = v27->_vendorIdentifier;
      v27->_vendorIdentifier = v42;

      v44 = [v24 copy];
      purchaseInitiatedTime = v27->_purchaseInitiatedTime;
      v27->_purchaseInitiatedTime = v44;

      v46 = [v25 copy];
      price = v27->_price;
      v27->_price = v46;
    }

    else
    {
      price = v26;
      v27 = 0;
    }
  }

  v48 = *MEMORY[0x1E69E9840];
  return v27;
}

- (FCOngoingPurchaseEntry)initWithEntryID:(id)a3 dictionaryRepresentation:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ongoing purchase entry must have an identifier"];
    *buf = 136315906;
    v24 = "[FCOngoingPurchaseEntry initWithEntryID:dictionaryRepresentation:]";
    v25 = 2080;
    v26 = "FCOngoingPurchaseEntry.m";
    v27 = 1024;
    v28 = 84;
    v29 = 2114;
    v30 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = [v6 objectForKeyedSubscript:@"OngoingPurchaseEntryTagID"];
  v8 = [v6 objectForKeyedSubscript:@"OngoingPurchaseEntryPurchaseID"];
  v18 = [v6 objectForKeyedSubscript:@"OngoingPurchaseEntryPurchaseAppAdamID"];
  v20 = [v6 objectForKeyedSubscript:@"OngoingPurchaseEntryProductID"];
  v19 = [v6 objectForKeyedSubscript:@"OngoingPurchaseEntryBundleIDKey"];
  v9 = [v6 objectForKeyedSubscript:@"OngoingPurchaseEntryStoreExternalVersion"];
  v10 = [v6 objectForKeyedSubscript:@"OngoingPurchaseEntryVendorIdentifier"];
  v11 = [v6 objectForKeyedSubscript:@"OngoingPurchaseEntryHasWebOptIn"];
  v17 = [v11 BOOLValue];

  v12 = [v6 objectForKeyedSubscript:@"OngoingPurchaseEntryPurchaseInitiatedTime"];
  v13 = [v6 objectForKeyedSubscript:@"OngoingPurchaseEntryPurchasePrice"];
  v22 = [(FCOngoingPurchaseEntry *)self initWithEntryID:v5 tagID:v7 purchaseID:v8 productID:v20 bundleID:v19 webAccessOptIn:v17 appAdamID:v18 storeExternalVersion:v9 vendorIdentifier:v10 purchaseInitiatedTime:v12 price:v13];

  v14 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCOngoingPurchaseEntry webAccessOptIn](self, "webAccessOptIn")}];
  [v3 setObject:v4 forKey:@"OngoingPurchaseEntryHasWebOptIn"];

  v5 = [(FCOngoingPurchaseEntry *)self tagID];
  [v3 fc_safelySetObjectAllowingNil:v5 forKey:@"OngoingPurchaseEntryTagID"];

  v6 = [(FCOngoingPurchaseEntry *)self purchaseID];
  [v3 fc_safelySetObjectAllowingNil:v6 forKey:@"OngoingPurchaseEntryPurchaseID"];

  v7 = [(FCOngoingPurchaseEntry *)self productID];
  [v3 fc_safelySetObjectAllowingNil:v7 forKey:@"OngoingPurchaseEntryProductID"];

  v8 = [(FCOngoingPurchaseEntry *)self bundleID];
  [v3 fc_safelySetObjectAllowingNil:v8 forKey:@"OngoingPurchaseEntryBundleIDKey"];

  v9 = [(FCOngoingPurchaseEntry *)self appAdamID];
  [v3 fc_safelySetObjectAllowingNil:v9 forKey:@"OngoingPurchaseEntryPurchaseAppAdamID"];

  v10 = [(FCOngoingPurchaseEntry *)self storeExternalVersion];
  [v3 fc_safelySetObjectAllowingNil:v10 forKey:@"OngoingPurchaseEntryStoreExternalVersion"];

  v11 = [(FCOngoingPurchaseEntry *)self vendorIdentifier];
  [v3 fc_safelySetObjectAllowingNil:v11 forKey:@"OngoingPurchaseEntryVendorIdentifier"];

  v12 = [(FCOngoingPurchaseEntry *)self purchaseInitiatedTime];
  [v3 fc_safelySetObjectAllowingNil:v12 forKey:@"OngoingPurchaseEntryPurchaseInitiatedTime"];

  v13 = [(FCOngoingPurchaseEntry *)self price];
  [v3 fc_safelySetObjectAllowingNil:v13 forKey:@"OngoingPurchaseEntryPurchasePrice"];

  v14 = [v3 copy];

  return v14;
}

+ (id)dummyOngoingPurchaseEntryWithTagID:(id)a3
{
  v3 = a3;
  v4 = [FCOngoingPurchaseEntry alloc];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:111];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:111];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v8 = [(FCOngoingPurchaseEntry *)v4 initWithEntryID:@"entryID" tagID:v3 purchaseID:@"purchaseID" productID:@"productID" bundleID:@"bundleID" webAccessOptIn:0 appAdamID:v5 storeExternalVersion:v6 vendorIdentifier:@"vendorIdentifier" purchaseInitiatedTime:0 price:v7];

  return v8;
}

@end