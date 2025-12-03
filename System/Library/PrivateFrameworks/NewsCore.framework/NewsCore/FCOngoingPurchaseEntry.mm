@interface FCOngoingPurchaseEntry
+ (id)dummyOngoingPurchaseEntryWithTagID:(id)d;
- (FCOngoingPurchaseEntry)initWithEntryID:(id)d dictionaryRepresentation:(id)representation;
- (FCOngoingPurchaseEntry)initWithEntryID:(id)d tagID:(id)iD purchaseID:(id)purchaseID productID:(id)productID bundleID:(id)bundleID webAccessOptIn:(BOOL)in appAdamID:(id)adamID storeExternalVersion:(id)self0 vendorIdentifier:(id)self1 purchaseInitiatedTime:(id)self2 price:(id)self3;
- (id)dictionaryRepresentation;
@end

@implementation FCOngoingPurchaseEntry

- (FCOngoingPurchaseEntry)initWithEntryID:(id)d tagID:(id)iD purchaseID:(id)purchaseID productID:(id)productID bundleID:(id)bundleID webAccessOptIn:(BOOL)in appAdamID:(id)adamID storeExternalVersion:(id)self0 vendorIdentifier:(id)self1 purchaseInitiatedTime:(id)self2 price:(id)self3
{
  v66 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  purchaseIDCopy = purchaseID;
  productIDCopy = productID;
  bundleIDCopy = bundleID;
  adamIDCopy = adamID;
  versionCopy = version;
  identifierCopy = identifier;
  timeCopy = time;
  priceCopy = price;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (iDCopy)
    {
      goto LABEL_6;
    }
  }

  else if (iDCopy)
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
  if (!productIDCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    if (purchaseIDCopy)
    {
      goto LABEL_11;
    }
  }

  else if (purchaseIDCopy)
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
    if (dCopy)
    {
      v28 = [dCopy copy];
      identifier = v27->_identifier;
      v27->_identifier = v28;

      v30 = [iDCopy copy];
      tagID = v27->_tagID;
      v27->_tagID = v30;

      v32 = [purchaseIDCopy copy];
      purchaseID = v27->_purchaseID;
      v27->_purchaseID = v32;

      v34 = [productIDCopy copy];
      productID = v27->_productID;
      v27->_productID = v34;

      v36 = [bundleIDCopy copy];
      bundleID = v27->_bundleID;
      v27->_bundleID = v36;

      v38 = [adamIDCopy copy];
      appAdamID = v27->_appAdamID;
      v27->_appAdamID = v38;

      v27->_webAccessOptIn = in;
      v40 = [versionCopy copy];
      storeExternalVersion = v27->_storeExternalVersion;
      v27->_storeExternalVersion = v40;

      v42 = [identifierCopy copy];
      vendorIdentifier = v27->_vendorIdentifier;
      v27->_vendorIdentifier = v42;

      v44 = [timeCopy copy];
      purchaseInitiatedTime = v27->_purchaseInitiatedTime;
      v27->_purchaseInitiatedTime = v44;

      v46 = [priceCopy copy];
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

- (FCOngoingPurchaseEntry)initWithEntryID:(id)d dictionaryRepresentation:(id)representation
{
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  representationCopy = representation;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  v7 = [representationCopy objectForKeyedSubscript:@"OngoingPurchaseEntryTagID"];
  v8 = [representationCopy objectForKeyedSubscript:@"OngoingPurchaseEntryPurchaseID"];
  v18 = [representationCopy objectForKeyedSubscript:@"OngoingPurchaseEntryPurchaseAppAdamID"];
  v20 = [representationCopy objectForKeyedSubscript:@"OngoingPurchaseEntryProductID"];
  v19 = [representationCopy objectForKeyedSubscript:@"OngoingPurchaseEntryBundleIDKey"];
  v9 = [representationCopy objectForKeyedSubscript:@"OngoingPurchaseEntryStoreExternalVersion"];
  v10 = [representationCopy objectForKeyedSubscript:@"OngoingPurchaseEntryVendorIdentifier"];
  v11 = [representationCopy objectForKeyedSubscript:@"OngoingPurchaseEntryHasWebOptIn"];
  bOOLValue = [v11 BOOLValue];

  v12 = [representationCopy objectForKeyedSubscript:@"OngoingPurchaseEntryPurchaseInitiatedTime"];
  v13 = [representationCopy objectForKeyedSubscript:@"OngoingPurchaseEntryPurchasePrice"];
  v22 = [(FCOngoingPurchaseEntry *)self initWithEntryID:dCopy tagID:v7 purchaseID:v8 productID:v20 bundleID:v19 webAccessOptIn:bOOLValue appAdamID:v18 storeExternalVersion:v9 vendorIdentifier:v10 purchaseInitiatedTime:v12 price:v13];

  v14 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCOngoingPurchaseEntry webAccessOptIn](self, "webAccessOptIn")}];
  [dictionary setObject:v4 forKey:@"OngoingPurchaseEntryHasWebOptIn"];

  tagID = [(FCOngoingPurchaseEntry *)self tagID];
  [dictionary fc_safelySetObjectAllowingNil:tagID forKey:@"OngoingPurchaseEntryTagID"];

  purchaseID = [(FCOngoingPurchaseEntry *)self purchaseID];
  [dictionary fc_safelySetObjectAllowingNil:purchaseID forKey:@"OngoingPurchaseEntryPurchaseID"];

  productID = [(FCOngoingPurchaseEntry *)self productID];
  [dictionary fc_safelySetObjectAllowingNil:productID forKey:@"OngoingPurchaseEntryProductID"];

  bundleID = [(FCOngoingPurchaseEntry *)self bundleID];
  [dictionary fc_safelySetObjectAllowingNil:bundleID forKey:@"OngoingPurchaseEntryBundleIDKey"];

  appAdamID = [(FCOngoingPurchaseEntry *)self appAdamID];
  [dictionary fc_safelySetObjectAllowingNil:appAdamID forKey:@"OngoingPurchaseEntryPurchaseAppAdamID"];

  storeExternalVersion = [(FCOngoingPurchaseEntry *)self storeExternalVersion];
  [dictionary fc_safelySetObjectAllowingNil:storeExternalVersion forKey:@"OngoingPurchaseEntryStoreExternalVersion"];

  vendorIdentifier = [(FCOngoingPurchaseEntry *)self vendorIdentifier];
  [dictionary fc_safelySetObjectAllowingNil:vendorIdentifier forKey:@"OngoingPurchaseEntryVendorIdentifier"];

  purchaseInitiatedTime = [(FCOngoingPurchaseEntry *)self purchaseInitiatedTime];
  [dictionary fc_safelySetObjectAllowingNil:purchaseInitiatedTime forKey:@"OngoingPurchaseEntryPurchaseInitiatedTime"];

  price = [(FCOngoingPurchaseEntry *)self price];
  [dictionary fc_safelySetObjectAllowingNil:price forKey:@"OngoingPurchaseEntryPurchasePrice"];

  v14 = [dictionary copy];

  return v14;
}

+ (id)dummyOngoingPurchaseEntryWithTagID:(id)d
{
  dCopy = d;
  v4 = [FCOngoingPurchaseEntry alloc];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:111];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:111];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v8 = [(FCOngoingPurchaseEntry *)v4 initWithEntryID:@"entryID" tagID:dCopy purchaseID:@"purchaseID" productID:@"productID" bundleID:@"bundleID" webAccessOptIn:0 appAdamID:v5 storeExternalVersion:v6 vendorIdentifier:@"vendorIdentifier" purchaseInitiatedTime:0 price:v7];

  return v8;
}

@end