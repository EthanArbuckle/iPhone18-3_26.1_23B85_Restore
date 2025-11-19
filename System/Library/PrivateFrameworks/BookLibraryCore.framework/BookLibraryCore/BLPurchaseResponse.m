@interface BLPurchaseResponse
- (BLPurchaseResponse)initWithAMSPurchaseResult:(id)a3;
- (BLPurchaseResponse)initWithCoder:(id)a3;
- (BLPurchaseResponse)initWithPurchase:(id)a3 error:(id)a4;
- (NSDictionary)item;
- (NSDictionary)metadata;
- (NSString)downloadID;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_updatePropertiesFromPurchaseError:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BLPurchaseResponse

- (BLPurchaseResponse)initWithAMSPurchaseResult:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v72.receiver = self;
  v72.super_class = BLPurchaseResponse;
  v6 = [(BLPurchaseResponse *)&v72 init];
  v7 = v6;
  if (v5 && v6)
  {
    objc_opt_class();
    v8 = [v5 responseDictionary];
    v9 = [v8 objectForKeyedSubscript:@"songList"];
    v10 = BUDynamicCast();

    if ([v10 count])
    {
      v62 = v7;
      v63 = v5;
      v67 = objc_opt_new();
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = v10;
      v11 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
      if (v11)
      {
        v12 = v11;
        v66 = *v69;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v69 != v66)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v68 + 1) + 8 * i);
            v15 = objc_alloc_init(BLPurchaseResponseItem);
            [(BLPurchaseResponseItem *)v15 setItem:v14];
            objc_opt_class();
            v16 = [v14 objectForKeyedSubscript:@"metadata"];
            v17 = BUDynamicCast();
            [(BLPurchaseResponseItem *)v15 setMetadata:v17];

            v18 = [(BLPurchaseResponseItem *)v15 metadata];
            v19 = [v18 objectForKeyedSubscript:@"kind"];
            -[BLPurchaseResponseItem setIsAudiobook:](v15, "setIsAudiobook:", [v19 isEqualToString:@"book"]);

            v20 = [(BLPurchaseResponseItem *)v15 metadata];
            v21 = [v20 objectForKeyedSubscript:@"kind"];
            -[BLPurchaseResponseItem setIsPDF:](v15, "setIsPDF:", [v21 isEqualToString:@"pdf"]);

            objc_opt_class();
            v22 = [v14 objectForKeyedSubscript:@"buyParams"];
            if (v22)
            {
              v23 = 0;
            }

            else
            {
              v3 = [v14 objectForKeyedSubscript:@"action-params"];
              if (v3)
              {
                v23 = 0;
              }

              else
              {
                [v14 objectForKeyedSubscript:@"redownload-params"];
                v65 = v23 = 1;
              }
            }

            v24 = BUDynamicCast();
            [(BLPurchaseResponseItem *)v15 setPurchaseParameters:v24];

            if (v23)
            {
            }

            if (!v22)
            {
            }

            objc_opt_class();
            v25 = [v14 objectForKeyedSubscript:@"is-purchased-redownload"];
            v26 = BUDynamicCast();
            -[BLPurchaseResponseItem setIsPurchaseRedownload:](v15, "setIsPurchaseRedownload:", [v26 BOOLValue]);

            [v67 addObject:v15];
          }

          v12 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
        }

        while (v12);
      }

      v27 = [v67 copy];
      v7 = v62;
      purchaseResponseItems = v62->_purchaseResponseItems;
      v62->_purchaseResponseItems = v27;

      v5 = v63;
    }

    v29 = [v5 purchase];
    v30 = [v29 buyParams];
    v31 = [v30 stringValue];
    v32 = [BLUtilities storeIDFromBuyParameters:v31];
    storeID = v7->_storeID;
    v7->_storeID = v32;

    objc_opt_class();
    v34 = [v5 responseDictionary];
    v35 = [v34 objectForKeyedSubscript:@"metrics"];
    v36 = BUDynamicCast();

    objc_storeStrong(&v7->_responseMetrics, v36);
    objc_opt_class();
    v37 = [v36 objectForKeyedSubscript:@"currency"];
    v38 = BUDynamicCast();
    currency = v7->_currency;
    v7->_currency = v38;

    v40 = [v36 objectForKeyedSubscript:@"price"];
    objc_opt_class();
    v41 = BUDynamicCast();
    if (!v41)
    {
      objc_opt_class();
      v42 = BUDynamicCast();
      v43 = v42;
      if (v42)
      {
        v41 = [v42 stringValue];
      }

      else
      {
        v41 = 0;
      }
    }

    objc_storeStrong(&v7->_price, v41);
    v44 = [v5 purchase];
    v45 = [v44 buyParams];
    v46 = [v45 stringValue];
    purchaseParameters = v7->_purchaseParameters;
    v7->_purchaseParameters = v46;

    v48 = [v5 purchase];
    v49 = [v48 logUUID];
    logUUID = v7->_logUUID;
    v7->_logUUID = v49;

    v51 = [BLDownloadMetadata alloc];
    v52 = [v10 firstObject];
    v53 = [(BLDownloadMetadata *)v51 initWithDictionary:v52];

    v54 = [(BLDownloadMetadata *)v53 racGUID];
    v7->_hasRacGUID = v54 != 0;

    v55 = [(NSArray *)v7->_purchaseResponseItems firstObject];
    v56 = [v55 isAudiobook];

    if (v56)
    {
      v57 = [(NSArray *)v7->_purchaseResponseItems valueForKeyPath:@"@sum.isPDF"];
      supplementalContentCount = v7->_supplementalContentCount;
      v7->_supplementalContentCount = v57;
    }

    v59 = [v5 error];
    [(BLPurchaseResponse *)v7 _updatePropertiesFromPurchaseError:v59];
  }

  v60 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BLPurchaseResponse)initWithPurchase:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = BLPurchaseResponse;
  v8 = [(BLPurchaseResponse *)&v22 init];
  v9 = v8;
  if (v8)
  {
    purchaseResponseItems = v8->_purchaseResponseItems;
    v8->_purchaseResponseItems = 0;

    responseMetrics = v9->_responseMetrics;
    v9->_responseMetrics = 0;

    currency = v9->_currency;
    v9->_currency = 0;

    price = v9->_price;
    v9->_price = 0;

    v14 = [v6 buyParams];
    v15 = [v14 stringValue];
    purchaseParameters = v9->_purchaseParameters;
    v9->_purchaseParameters = v15;

    v17 = [BLUtilities storeIDFromBuyParameters:v9->_purchaseParameters];
    storeID = v9->_storeID;
    v9->_storeID = v17;

    logUUID = v9->_logUUID;
    v9->_logUUID = 0;

    supplementalContentCount = v9->_supplementalContentCount;
    v9->_supplementalContentCount = 0;

    [(BLPurchaseResponse *)v9 _updatePropertiesFromPurchaseError:v7];
  }

  return v9;
}

- (void)_updatePropertiesFromPurchaseError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v20 = v4;
    v5 = [v4 domain];
    errorDomain = self->_errorDomain;
    self->_errorDomain = v5;

    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v20, "code")}];
    errorCode = self->_errorCode;
    self->_errorCode = v7;

    v9 = [v20 localizedDescription];
    errorDescription = self->_errorDescription;
    self->_errorDescription = v9;

    v11 = [v20 underlyingErrors];
    objc_opt_class();
    v12 = [v11 firstObject];
    v13 = BUDynamicCast();

    if (v13)
    {
      v14 = [v13 domain];
      firstUnderlyingErrorDomain = self->_firstUnderlyingErrorDomain;
      self->_firstUnderlyingErrorDomain = v14;

      v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "code")}];
      firstUnderlyingErrorCode = self->_firstUnderlyingErrorCode;
      self->_firstUnderlyingErrorCode = v16;

      v18 = [v13 localizedDescription];
      firstUnderlyingErrorLocalizedDescription = self->_firstUnderlyingErrorLocalizedDescription;
      self->_firstUnderlyingErrorLocalizedDescription = v18;
    }

    self->_isUserCancelError = [v20 bl_isUserCancelError];

    v4 = v20;
  }
}

- (BLPurchaseResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BLPurchaseResponse *)self initWithAMSPurchaseResult:0];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    currency = v5->_currency;
    v5->_currency = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"errorCode"];
    errorCode = v5->_errorCode;
    v5->_errorCode = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"errorDescription"];
    errorDescription = v5->_errorDescription;
    v5->_errorDescription = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"errorDomain"];
    errorDomain = v5->_errorDomain;
    v5->_errorDomain = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstUnderlyingErrorCode"];
    firstUnderlyingErrorCode = v5->_firstUnderlyingErrorCode;
    v5->_firstUnderlyingErrorCode = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstUnderlyingErrorDomain"];
    firstUnderlyingErrorDomain = v5->_firstUnderlyingErrorDomain;
    v5->_firstUnderlyingErrorDomain = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstUnderlyingErrorLocalizedDescription"];
    firstUnderlyingErrorLocalizedDescription = v5->_firstUnderlyingErrorLocalizedDescription;
    v5->_firstUnderlyingErrorLocalizedDescription = v18;

    v5->_isUserCancelError = [v4 decodeBoolForKey:@"isUserCancelError"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"logUUID"];
    logUUID = v5->_logUUID;
    v5->_logUUID = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"permLink"];
    permLink = v5->_permLink;
    v5->_permLink = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"price"];
    price = v5->_price;
    v5->_price = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purchaseParameters"];
    purchaseParameters = v5->_purchaseParameters;
    v5->_purchaseParameters = v26;

    v28 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = [v28 setWithObjects:{v29, v30, v31, objc_opt_class(), 0}];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"responseMetrics"];
    responseMetrics = v5->_responseMetrics;
    v5->_responseMetrics = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeID"];
    storeID = v5->_storeID;
    v5->_storeID = v35;

    v37 = MEMORY[0x277CBEB98];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [v4 decodeObjectOfClasses:v39 forKey:@"purchaseResponseItems"];
    purchaseResponseItems = v5->_purchaseResponseItems;
    v5->_purchaseResponseItems = v40;

    v5->_hasRacGUID = [v4 decodeBoolForKey:@"hasRacGUID"];
    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supplementalContentCount"];
    supplementalContentCount = v5->_supplementalContentCount;
    v5->_supplementalContentCount = v42;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BLPurchaseResponse *)self currency];
  [v4 encodeObject:v5 forKey:@"currency"];

  v6 = [(BLPurchaseResponse *)self errorCode];
  [v4 encodeObject:v6 forKey:@"errorCode"];

  v7 = [(BLPurchaseResponse *)self errorDescription];
  [v4 encodeObject:v7 forKey:@"errorDescription"];

  v8 = [(BLPurchaseResponse *)self errorDomain];
  [v4 encodeObject:v8 forKey:@"errorDomain"];

  v9 = [(BLPurchaseResponse *)self firstUnderlyingErrorCode];
  [v4 encodeObject:v9 forKey:@"firstUnderlyingErrorCode"];

  v10 = [(BLPurchaseResponse *)self firstUnderlyingErrorDomain];
  [v4 encodeObject:v10 forKey:@"firstUnderlyingErrorDomain"];

  v11 = [(BLPurchaseResponse *)self firstUnderlyingErrorLocalizedDescription];
  [v4 encodeObject:v11 forKey:@"firstUnderlyingErrorLocalizedDescription"];

  [v4 encodeBool:-[BLPurchaseResponse isUserCancelError](self forKey:{"isUserCancelError"), @"isUserCancelError"}];
  v12 = [(BLPurchaseResponse *)self logUUID];
  [v4 encodeObject:v12 forKey:@"logUUID"];

  v13 = [(BLPurchaseResponse *)self permLink];
  [v4 encodeObject:v13 forKey:@"permLink"];

  v14 = [(BLPurchaseResponse *)self price];
  [v4 encodeObject:v14 forKey:@"price"];

  v15 = [(BLPurchaseResponse *)self purchaseParameters];
  [v4 encodeObject:v15 forKey:@"purchaseParameters"];

  v16 = [(BLPurchaseResponse *)self responseMetrics];
  [v4 encodeObject:v16 forKey:@"responseMetrics"];

  v17 = [(BLPurchaseResponse *)self storeID];
  [v4 encodeObject:v17 forKey:@"storeID"];

  v18 = [(BLPurchaseResponse *)self purchaseResponseItems];
  [v4 encodeObject:v18 forKey:@"purchaseResponseItems"];

  [v4 encodeBool:-[BLPurchaseResponse hasRacGUID](self forKey:{"hasRacGUID"), @"hasRacGUID"}];
  v19 = [(BLPurchaseResponse *)self supplementalContentCount];
  [v4 encodeObject:v19 forKey:@"supplementalContentCount"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = [(BLPurchaseResponse *)self currency];
    [v4 setCurrency:v5];

    v6 = [(BLPurchaseResponse *)self errorCode];
    [v4 setErrorCode:v6];

    v7 = [(BLPurchaseResponse *)self errorDescription];
    [v4 setErrorDescription:v7];

    v8 = [(BLPurchaseResponse *)self errorDomain];
    [v4 setErrorDomain:v8];

    v9 = [(BLPurchaseResponse *)self firstUnderlyingErrorCode];
    [v4 setFirstUnderlyingErrorCode:v9];

    v10 = [(BLPurchaseResponse *)self firstUnderlyingErrorDomain];
    [v4 setFirstUnderlyingErrorDomain:v10];

    v11 = [(BLPurchaseResponse *)self firstUnderlyingErrorLocalizedDescription];
    [v4 setFirstUnderlyingErrorLocalizedDescription:v11];

    [v4 setIsUserCancelError:{-[BLPurchaseResponse isUserCancelError](self, "isUserCancelError")}];
    v12 = [(BLPurchaseResponse *)self logUUID];
    [v4 setLogUUID:v12];

    v13 = [(BLPurchaseResponse *)self permLink];
    [v4 setPermLink:v13];

    v14 = [(BLPurchaseResponse *)self price];
    [v4 setPrice:v14];

    v15 = [(BLPurchaseResponse *)self purchaseParameters];
    [v4 setPurchaseParameters:v15];

    v16 = [(BLPurchaseResponse *)self responseMetrics];
    [v4 setResponseMetrics:v16];

    v17 = [(BLPurchaseResponse *)self storeID];
    [v4 setStoreID:v17];

    v18 = [(BLPurchaseResponse *)self purchaseResponseItems];
    [v4 setPurchaseResponseItems:v18];

    [v4 setHasRacGUID:{-[BLPurchaseResponse hasRacGUID](self, "hasRacGUID")}];
    v19 = [(BLPurchaseResponse *)self supplementalContentCount];
    [v4 setSupplementalContentCount:v19];
  }

  return v4;
}

- (NSDictionary)item
{
  v2 = [(BLPurchaseResponse *)self purchaseResponseItems];
  v3 = [v2 firstObject];
  v4 = [v3 item];

  return v4;
}

- (NSString)downloadID
{
  v2 = [(BLPurchaseResponse *)self purchaseResponseItems];
  v3 = [v2 firstObject];
  v4 = [v3 downloadID];

  return v4;
}

- (NSDictionary)metadata
{
  v2 = [(BLPurchaseResponse *)self purchaseResponseItems];
  v3 = [v2 firstObject];
  v4 = [v3 metadata];

  return v4;
}

@end