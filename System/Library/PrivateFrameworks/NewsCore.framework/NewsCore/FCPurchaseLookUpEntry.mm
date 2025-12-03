@interface FCPurchaseLookUpEntry
- (FCPurchaseLookUpEntry)initWithEntryID:(id)d dictionaryRepresentation:(id)representation;
- (FCPurchaseLookUpEntry)initWithEntryID:(id)d tagID:(id)iD purchaseID:(id)purchaseID lastVerificationTime:(id)time lastVerificationFailureTime:(id)failureTime purchaseType:(unint64_t)type purchaseValidationState:(unint64_t)state isNewsAppPurchase:(BOOL)self0 dateOfExpiration:(id)self1 hasShownRenewalNotice:(BOOL)self2;
- (id)description;
- (id)dictionaryRepresentation;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation FCPurchaseLookUpEntry

- (FCPurchaseLookUpEntry)initWithEntryID:(id)d tagID:(id)iD purchaseID:(id)purchaseID lastVerificationTime:(id)time lastVerificationFailureTime:(id)failureTime purchaseType:(unint64_t)type purchaseValidationState:(unint64_t)state isNewsAppPurchase:(BOOL)self0 dateOfExpiration:(id)self1 hasShownRenewalNotice:(BOOL)self2
{
  v49 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  purchaseIDCopy = purchaseID;
  timeCopy = time;
  failureTimeCopy = failureTime;
  expirationCopy = expiration;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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
    if (dCopy)
    {
      v26 = [dCopy copy];
      identifier = v25->_identifier;
      v25->_identifier = v26;

      v28 = [iDCopy copy];
      tagID = v25->_tagID;
      v25->_tagID = v28;

      v30 = [purchaseIDCopy copy];
      purchaseID = v25->_purchaseID;
      v25->_purchaseID = v30;

      v32 = [timeCopy copy];
      lastVerificationTime = v25->_lastVerificationTime;
      v25->_lastVerificationTime = v32;

      v34 = [failureTimeCopy copy];
      lastVerificationFailureTime = v25->_lastVerificationFailureTime;
      v25->_lastVerificationFailureTime = v34;

      v25->_purchaseType = type;
      v25->_purchaseValidationState = state;
      v25->_isNewsAppPurchase = purchase;
      objc_storeStrong(&v25->_dateOfExpiration, expiration);
      v25->_hasShownRenewalNotice = notice;
    }

    else
    {

      v25 = 0;
    }
  }

  v36 = *MEMORY[0x1E69E9840];
  return v25;
}

- (FCPurchaseLookUpEntry)initWithEntryID:(id)d dictionaryRepresentation:(id)representation
{
  v40 = *MEMORY[0x1E69E9840];
  dCopy = d;
  representationCopy = representation;
  v31 = dCopy;
  if (!dCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  v7 = [representationCopy objectForKeyedSubscript:@"PurchaseLookUpEntrypurchaseType"];
  v8 = [representationCopy objectForKeyedSubscript:@"PurchaseLookUpEntryPurchaseValidationState"];
  v9 = [representationCopy objectForKeyedSubscript:@"PurchaseLookUpEntryLastVerificationTime"];
  v10 = [representationCopy objectForKeyedSubscript:@"PurchaseLookUpEntryLastVerificationFailureTime"];
  v11 = [representationCopy objectForKeyedSubscript:@"PurchaseLookUpEntryTagID"];
  v12 = [representationCopy objectForKeyedSubscript:@"PurchaseLookUpEntryPurchaseID"];
  v13 = [representationCopy objectForKeyedSubscript:@"PurchaseLookUpEntryIsNewsAppPurchase"];
  bOOLValue = [v13 BOOLValue];

  v29 = v7;
  intValue = [v7 intValue];
  if (!intValue && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  intValue2 = [v8 intValue];
  if (!intValue2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  v16 = intValue2;
  v17 = [representationCopy objectForKeyedSubscript:@"PurchaseLookUpEntryHasShownRenewalNotice"];
  bOOLValue2 = [v17 BOOLValue];

  v19 = [representationCopy objectForKeyedSubscript:@"PurchaseLookUpEntryDateOfExpiration"];
  LOBYTE(v27) = bOOLValue2;
  LOBYTE(v26) = bOOLValue;
  v20 = [(FCPurchaseLookUpEntry *)self initWithEntryID:v31 tagID:v11 purchaseID:v12 lastVerificationTime:v9 lastVerificationFailureTime:v10 purchaseType:intValue purchaseValidationState:v16 isNewsAppPurchase:v26 dateOfExpiration:v19 hasShownRenewalNotice:v27];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCPurchaseLookUpEntry purchaseType](self, "purchaseType")}];
  [dictionary setObject:v4 forKey:@"PurchaseLookUpEntrypurchaseType"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[FCPurchaseLookUpEntry purchaseValidationState](self, "purchaseValidationState")}];
  [dictionary setObject:v5 forKey:@"PurchaseLookUpEntryPurchaseValidationState"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCPurchaseLookUpEntry isNewsAppPurchase](self, "isNewsAppPurchase")}];
  [dictionary setObject:v6 forKey:@"PurchaseLookUpEntryIsNewsAppPurchase"];

  tagID = [(FCPurchaseLookUpEntry *)self tagID];
  [dictionary fc_safelySetObjectAllowingNil:tagID forKey:@"PurchaseLookUpEntryTagID"];

  purchaseID = [(FCPurchaseLookUpEntry *)self purchaseID];
  [dictionary fc_safelySetObjectAllowingNil:purchaseID forKey:@"PurchaseLookUpEntryPurchaseID"];

  lastVerificationTime = [(FCPurchaseLookUpEntry *)self lastVerificationTime];
  [dictionary fc_safelySetObjectAllowingNil:lastVerificationTime forKey:@"PurchaseLookUpEntryLastVerificationTime"];

  lastVerificationFailureTime = [(FCPurchaseLookUpEntry *)self lastVerificationFailureTime];
  [dictionary fc_safelySetObjectAllowingNil:lastVerificationFailureTime forKey:@"PurchaseLookUpEntryLastVerificationFailureTime"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCPurchaseLookUpEntry hasShownRenewalNotice](self, "hasShownRenewalNotice")}];
  [dictionary fc_safelySetObject:v11 forKey:@"PurchaseLookUpEntryHasShownRenewalNotice"];

  dateOfExpiration = [(FCPurchaseLookUpEntry *)self dateOfExpiration];
  [dictionary fc_safelySetObjectAllowingNil:dateOfExpiration forKey:@"PurchaseLookUpEntryDateOfExpiration"];

  v13 = [dictionary copy];

  return v13;
}

- (id)description
{
  purchaseType = [(FCPurchaseLookUpEntry *)self purchaseType];
  if (purchaseType > 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = off_1E7C44818[purchaseType];
  }

  purchaseValidationState = [(FCPurchaseLookUpEntry *)self purchaseValidationState];
  if (purchaseValidationState > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E7C44830[purchaseValidationState];
  }

  v15 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  identifier = [(FCPurchaseLookUpEntry *)self identifier];
  tagID = [(FCPurchaseLookUpEntry *)self tagID];
  purchaseID = [(FCPurchaseLookUpEntry *)self purchaseID];
  lastVerificationTime = [(FCPurchaseLookUpEntry *)self lastVerificationTime];
  lastVerificationFailureTime = [(FCPurchaseLookUpEntry *)self lastVerificationFailureTime];
  dateOfExpiration = [(FCPurchaseLookUpEntry *)self dateOfExpiration];
  v13 = [v15 stringWithFormat:@"<%@: %p id: %@ tagID: %@ purchaseID: %@ purchaseType: %@ validationState: %@ lastVerificationTime: %@ lastVerificationFailureTime: %@ dateOfExpiration: %@ isNewsAppPurchase: %d hasShownRenewalNotice: %d>", v6, self, identifier, tagID, purchaseID, v16, v5, lastVerificationTime, lastVerificationFailureTime, dateOfExpiration, -[FCPurchaseLookUpEntry isNewsAppPurchase](self, "isNewsAppPurchase"), -[FCPurchaseLookUpEntry hasShownRenewalNotice](self, "hasShownRenewalNotice")];;

  return v13;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v20 = [FCPurchaseLookUpEntry alloc];
  identifier = [(FCPurchaseLookUpEntry *)self identifier];
  v19 = [identifier copy];
  tagID = [(FCPurchaseLookUpEntry *)self tagID];
  v18 = [tagID copy];
  purchaseID = [(FCPurchaseLookUpEntry *)self purchaseID];
  v17 = [purchaseID copy];
  lastVerificationTime = [(FCPurchaseLookUpEntry *)self lastVerificationTime];
  v5 = [lastVerificationTime copy];
  lastVerificationFailureTime = [(FCPurchaseLookUpEntry *)self lastVerificationFailureTime];
  v7 = [lastVerificationFailureTime copy];
  purchaseType = [(FCPurchaseLookUpEntry *)self purchaseType];
  purchaseValidationState = [(FCPurchaseLookUpEntry *)self purchaseValidationState];
  isNewsAppPurchase = [(FCPurchaseLookUpEntry *)self isNewsAppPurchase];
  dateOfExpiration = [(FCPurchaseLookUpEntry *)self dateOfExpiration];
  v12 = [dateOfExpiration copy];
  LOBYTE(v16) = [(FCPurchaseLookUpEntry *)self hasShownRenewalNotice];
  LOBYTE(v15) = isNewsAppPurchase;
  v13 = [(FCPurchaseLookUpEntry *)v20 initWithEntryID:v19 tagID:v18 purchaseID:v17 lastVerificationTime:v5 lastVerificationFailureTime:v7 purchaseType:purchaseType purchaseValidationState:purchaseValidationState isNewsAppPurchase:v15 dateOfExpiration:v12 hasShownRenewalNotice:v16];

  return v13;
}

@end