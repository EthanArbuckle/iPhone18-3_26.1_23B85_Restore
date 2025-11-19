@interface FCPurchaseLookUpEntry
- (FCPurchaseLookUpEntry)initWithEntryID:(id)a3 dictionaryRepresentation:(id)a4;
- (FCPurchaseLookUpEntry)initWithEntryID:(id)a3 tagID:(id)a4 purchaseID:(id)a5 lastVerificationTime:(id)a6 lastVerificationFailureTime:(id)a7 purchaseType:(unint64_t)a8 purchaseValidationState:(unint64_t)a9 isNewsAppPurchase:(BOOL)a10 dateOfExpiration:(id)a11 hasShownRenewalNotice:(BOOL)a12;
- (id)description;
- (id)dictionaryRepresentation;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation FCPurchaseLookUpEntry

- (FCPurchaseLookUpEntry)initWithEntryID:(id)a3 tagID:(id)a4 purchaseID:(id)a5 lastVerificationTime:(id)a6 lastVerificationFailureTime:(id)a7 purchaseType:(unint64_t)a8 purchaseValidationState:(unint64_t)a9 isNewsAppPurchase:(BOOL)a10 dateOfExpiration:(id)a11 hasShownRenewalNotice:(BOOL)a12
{
  v49 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a11;
  if (!v18 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"purchase lookup entry must have an identifier"];
    *buf = 136315906;
    v42 = "[FCPurchaseLookUpEntry initWithEntryID:tagID:purchaseID:lastVerificationTime:lastVerificationFailureTime:purchaseType:purchaseValidationState:isNewsAppPurchase:dateOfExpiration:hasShownRenewalNotice:]";
    v43 = 2080;
    v44 = "FCPurchaseLookUpEntry.m";
    v45 = 1024;
    v46 = 41;
    v47 = 2114;
    v48 = v38;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v19)
    {
      goto LABEL_6;
    }
  }

  else if (v19)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"purchase lookup entry must have an tag ID"];
    *buf = 136315906;
    v42 = "[FCPurchaseLookUpEntry initWithEntryID:tagID:purchaseID:lastVerificationTime:lastVerificationFailureTime:purchaseType:purchaseValidationState:isNewsAppPurchase:dateOfExpiration:hasShownRenewalNotice:]";
    v43 = 2080;
    v44 = "FCPurchaseLookUpEntry.m";
    v45 = 1024;
    v46 = 42;
    v47 = 2114;
    v48 = v39;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v40.receiver = self;
  v40.super_class = FCPurchaseLookUpEntry;
  v24 = [(FCPurchaseLookUpEntry *)&v40 init];
  v25 = v24;
  if (v24)
  {
    if (v18)
    {
      v26 = [v18 copy];
      identifier = v25->_identifier;
      v25->_identifier = v26;

      v28 = [v19 copy];
      tagID = v25->_tagID;
      v25->_tagID = v28;

      v30 = [v20 copy];
      purchaseID = v25->_purchaseID;
      v25->_purchaseID = v30;

      v32 = [v21 copy];
      lastVerificationTime = v25->_lastVerificationTime;
      v25->_lastVerificationTime = v32;

      v34 = [v22 copy];
      lastVerificationFailureTime = v25->_lastVerificationFailureTime;
      v25->_lastVerificationFailureTime = v34;

      v25->_purchaseType = a8;
      v25->_purchaseValidationState = a9;
      v25->_isNewsAppPurchase = a10;
      objc_storeStrong(&v25->_dateOfExpiration, a11);
      v25->_hasShownRenewalNotice = a12;
    }

    else
    {

      v25 = 0;
    }
  }

  v36 = *MEMORY[0x1E69E9840];
  return v25;
}

- (FCPurchaseLookUpEntry)initWithEntryID:(id)a3 dictionaryRepresentation:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v31 = v5;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"purchase lookup entry must have an identifier"];
    *buf = 136315906;
    v33 = "[FCPurchaseLookUpEntry initWithEntryID:dictionaryRepresentation:]";
    v34 = 2080;
    v35 = "FCPurchaseLookUpEntry.m";
    v36 = 1024;
    v37 = 69;
    v38 = 2114;
    v39 = v23;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v7 = [v6 objectForKeyedSubscript:@"PurchaseLookUpEntrypurchaseType"];
  v8 = [v6 objectForKeyedSubscript:@"PurchaseLookUpEntryPurchaseValidationState"];
  v9 = [v6 objectForKeyedSubscript:@"PurchaseLookUpEntryLastVerificationTime"];
  v10 = [v6 objectForKeyedSubscript:@"PurchaseLookUpEntryLastVerificationFailureTime"];
  v11 = [v6 objectForKeyedSubscript:@"PurchaseLookUpEntryTagID"];
  v12 = [v6 objectForKeyedSubscript:@"PurchaseLookUpEntryPurchaseID"];
  v13 = [v6 objectForKeyedSubscript:@"PurchaseLookUpEntryIsNewsAppPurchase"];
  v28 = [v13 BOOLValue];

  v29 = v7;
  v14 = [v7 intValue];
  if (!v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Purchase mode cannot be unknown"];
    *buf = 136315906;
    v33 = "[FCPurchaseLookUpEntry initWithEntryID:dictionaryRepresentation:]";
    v34 = 2080;
    v35 = "FCPurchaseLookUpEntry.m";
    v36 = 1024;
    v37 = 79;
    v38 = 2114;
    v39 = v24;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v15 = [v8 intValue];
  if (!v15 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Purchase validation state cannot be unknown"];
    *buf = 136315906;
    v33 = "[FCPurchaseLookUpEntry initWithEntryID:dictionaryRepresentation:]";
    v34 = 2080;
    v35 = "FCPurchaseLookUpEntry.m";
    v36 = 1024;
    v37 = 82;
    v38 = 2114;
    v39 = v25;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v16 = v15;
  v17 = [v6 objectForKeyedSubscript:@"PurchaseLookUpEntryHasShownRenewalNotice"];
  v18 = [v17 BOOLValue];

  v19 = [v6 objectForKeyedSubscript:@"PurchaseLookUpEntryDateOfExpiration"];
  LOBYTE(v27) = v18;
  LOBYTE(v26) = v28;
  v20 = [(FCPurchaseLookUpEntry *)self initWithEntryID:v31 tagID:v11 purchaseID:v12 lastVerificationTime:v9 lastVerificationFailureTime:v10 purchaseType:v14 purchaseValidationState:v16 isNewsAppPurchase:v26 dateOfExpiration:v19 hasShownRenewalNotice:v27];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCPurchaseLookUpEntry purchaseType](self, "purchaseType")}];
  [v3 setObject:v4 forKey:@"PurchaseLookUpEntrypurchaseType"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCPurchaseLookUpEntry purchaseValidationState](self, "purchaseValidationState")}];
  [v3 setObject:v5 forKey:@"PurchaseLookUpEntryPurchaseValidationState"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCPurchaseLookUpEntry isNewsAppPurchase](self, "isNewsAppPurchase")}];
  [v3 setObject:v6 forKey:@"PurchaseLookUpEntryIsNewsAppPurchase"];

  v7 = [(FCPurchaseLookUpEntry *)self tagID];
  [v3 fc_safelySetObjectAllowingNil:v7 forKey:@"PurchaseLookUpEntryTagID"];

  v8 = [(FCPurchaseLookUpEntry *)self purchaseID];
  [v3 fc_safelySetObjectAllowingNil:v8 forKey:@"PurchaseLookUpEntryPurchaseID"];

  v9 = [(FCPurchaseLookUpEntry *)self lastVerificationTime];
  [v3 fc_safelySetObjectAllowingNil:v9 forKey:@"PurchaseLookUpEntryLastVerificationTime"];

  v10 = [(FCPurchaseLookUpEntry *)self lastVerificationFailureTime];
  [v3 fc_safelySetObjectAllowingNil:v10 forKey:@"PurchaseLookUpEntryLastVerificationFailureTime"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCPurchaseLookUpEntry hasShownRenewalNotice](self, "hasShownRenewalNotice")}];
  [v3 fc_safelySetObject:v11 forKey:@"PurchaseLookUpEntryHasShownRenewalNotice"];

  v12 = [(FCPurchaseLookUpEntry *)self dateOfExpiration];
  [v3 fc_safelySetObjectAllowingNil:v12 forKey:@"PurchaseLookUpEntryDateOfExpiration"];

  v13 = [v3 copy];

  return v13;
}

- (id)description
{
  v3 = [(FCPurchaseLookUpEntry *)self purchaseType];
  if (v3 > 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = off_1E7C44818[v3];
  }

  v4 = [(FCPurchaseLookUpEntry *)self purchaseValidationState];
  if (v4 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E7C44830[v4];
  }

  v15 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = [(FCPurchaseLookUpEntry *)self identifier];
  v8 = [(FCPurchaseLookUpEntry *)self tagID];
  v9 = [(FCPurchaseLookUpEntry *)self purchaseID];
  v10 = [(FCPurchaseLookUpEntry *)self lastVerificationTime];
  v11 = [(FCPurchaseLookUpEntry *)self lastVerificationFailureTime];
  v12 = [(FCPurchaseLookUpEntry *)self dateOfExpiration];
  v13 = [v15 stringWithFormat:@"<%@: %p id: %@ tagID: %@ purchaseID: %@ purchaseType: %@ validationState: %@ lastVerificationTime: %@ lastVerificationFailureTime: %@ dateOfExpiration: %@ isNewsAppPurchase: %d hasShownRenewalNotice: %d>", v6, self, v7, v8, v9, v16, v5, v10, v11, v12, -[FCPurchaseLookUpEntry isNewsAppPurchase](self, "isNewsAppPurchase"), -[FCPurchaseLookUpEntry hasShownRenewalNotice](self, "hasShownRenewalNotice")];;

  return v13;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v20 = [FCPurchaseLookUpEntry alloc];
  v23 = [(FCPurchaseLookUpEntry *)self identifier];
  v19 = [v23 copy];
  v22 = [(FCPurchaseLookUpEntry *)self tagID];
  v18 = [v22 copy];
  v21 = [(FCPurchaseLookUpEntry *)self purchaseID];
  v17 = [v21 copy];
  v4 = [(FCPurchaseLookUpEntry *)self lastVerificationTime];
  v5 = [v4 copy];
  v6 = [(FCPurchaseLookUpEntry *)self lastVerificationFailureTime];
  v7 = [v6 copy];
  v8 = [(FCPurchaseLookUpEntry *)self purchaseType];
  v9 = [(FCPurchaseLookUpEntry *)self purchaseValidationState];
  v10 = [(FCPurchaseLookUpEntry *)self isNewsAppPurchase];
  v11 = [(FCPurchaseLookUpEntry *)self dateOfExpiration];
  v12 = [v11 copy];
  LOBYTE(v16) = [(FCPurchaseLookUpEntry *)self hasShownRenewalNotice];
  LOBYTE(v15) = v10;
  v13 = [(FCPurchaseLookUpEntry *)v20 initWithEntryID:v19 tagID:v18 purchaseID:v17 lastVerificationTime:v5 lastVerificationFailureTime:v7 purchaseType:v8 purchaseValidationState:v9 isNewsAppPurchase:v15 dateOfExpiration:v12 hasShownRenewalNotice:v16];

  return v13;
}

@end