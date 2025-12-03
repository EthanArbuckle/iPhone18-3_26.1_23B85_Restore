@interface BLPurchaseResponse
- (BLPurchaseResponse)initWithAMSPurchaseResult:(id)result;
- (BLPurchaseResponse)initWithCoder:(id)coder;
- (BLPurchaseResponse)initWithPurchase:(id)purchase error:(id)error;
- (NSDictionary)item;
- (NSDictionary)metadata;
- (NSString)downloadID;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_updatePropertiesFromPurchaseError:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BLPurchaseResponse

- (BLPurchaseResponse)initWithAMSPurchaseResult:(id)result
{
  v74 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v72.receiver = self;
  v72.super_class = BLPurchaseResponse;
  v6 = [(BLPurchaseResponse *)&v72 init];
  v7 = v6;
  if (resultCopy && v6)
  {
    objc_opt_class();
    responseDictionary = [resultCopy responseDictionary];
    v9 = [responseDictionary objectForKeyedSubscript:@"songList"];
    v10 = BUDynamicCast();

    if ([v10 count])
    {
      v62 = v7;
      v63 = resultCopy;
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

            metadata = [(BLPurchaseResponseItem *)v15 metadata];
            v19 = [metadata objectForKeyedSubscript:@"kind"];
            -[BLPurchaseResponseItem setIsAudiobook:](v15, "setIsAudiobook:", [v19 isEqualToString:@"book"]);

            metadata2 = [(BLPurchaseResponseItem *)v15 metadata];
            v21 = [metadata2 objectForKeyedSubscript:@"kind"];
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

      resultCopy = v63;
    }

    purchase = [resultCopy purchase];
    buyParams = [purchase buyParams];
    stringValue = [buyParams stringValue];
    v32 = [BLUtilities storeIDFromBuyParameters:stringValue];
    storeID = v7->_storeID;
    v7->_storeID = v32;

    objc_opt_class();
    responseDictionary2 = [resultCopy responseDictionary];
    v35 = [responseDictionary2 objectForKeyedSubscript:@"metrics"];
    v36 = BUDynamicCast();

    objc_storeStrong(&v7->_responseMetrics, v36);
    objc_opt_class();
    v37 = [v36 objectForKeyedSubscript:@"currency"];
    v38 = BUDynamicCast();
    currency = v7->_currency;
    v7->_currency = v38;

    v40 = [v36 objectForKeyedSubscript:@"price"];
    objc_opt_class();
    stringValue2 = BUDynamicCast();
    if (!stringValue2)
    {
      objc_opt_class();
      v42 = BUDynamicCast();
      v43 = v42;
      if (v42)
      {
        stringValue2 = [v42 stringValue];
      }

      else
      {
        stringValue2 = 0;
      }
    }

    objc_storeStrong(&v7->_price, stringValue2);
    purchase2 = [resultCopy purchase];
    buyParams2 = [purchase2 buyParams];
    stringValue3 = [buyParams2 stringValue];
    purchaseParameters = v7->_purchaseParameters;
    v7->_purchaseParameters = stringValue3;

    purchase3 = [resultCopy purchase];
    logUUID = [purchase3 logUUID];
    logUUID = v7->_logUUID;
    v7->_logUUID = logUUID;

    v51 = [BLDownloadMetadata alloc];
    firstObject = [v10 firstObject];
    v53 = [(BLDownloadMetadata *)v51 initWithDictionary:firstObject];

    racGUID = [(BLDownloadMetadata *)v53 racGUID];
    v7->_hasRacGUID = racGUID != 0;

    firstObject2 = [(NSArray *)v7->_purchaseResponseItems firstObject];
    isAudiobook = [firstObject2 isAudiobook];

    if (isAudiobook)
    {
      v57 = [(NSArray *)v7->_purchaseResponseItems valueForKeyPath:@"@sum.isPDF"];
      supplementalContentCount = v7->_supplementalContentCount;
      v7->_supplementalContentCount = v57;
    }

    error = [resultCopy error];
    [(BLPurchaseResponse *)v7 _updatePropertiesFromPurchaseError:error];
  }

  v60 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BLPurchaseResponse)initWithPurchase:(id)purchase error:(id)error
{
  purchaseCopy = purchase;
  errorCopy = error;
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

    buyParams = [purchaseCopy buyParams];
    stringValue = [buyParams stringValue];
    purchaseParameters = v9->_purchaseParameters;
    v9->_purchaseParameters = stringValue;

    v17 = [BLUtilities storeIDFromBuyParameters:v9->_purchaseParameters];
    storeID = v9->_storeID;
    v9->_storeID = v17;

    logUUID = v9->_logUUID;
    v9->_logUUID = 0;

    supplementalContentCount = v9->_supplementalContentCount;
    v9->_supplementalContentCount = 0;

    [(BLPurchaseResponse *)v9 _updatePropertiesFromPurchaseError:errorCopy];
  }

  return v9;
}

- (void)_updatePropertiesFromPurchaseError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v20 = errorCopy;
    domain = [errorCopy domain];
    errorDomain = self->_errorDomain;
    self->_errorDomain = domain;

    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v20, "code")}];
    errorCode = self->_errorCode;
    self->_errorCode = v7;

    localizedDescription = [v20 localizedDescription];
    errorDescription = self->_errorDescription;
    self->_errorDescription = localizedDescription;

    underlyingErrors = [v20 underlyingErrors];
    objc_opt_class();
    firstObject = [underlyingErrors firstObject];
    v13 = BUDynamicCast();

    if (v13)
    {
      domain2 = [v13 domain];
      firstUnderlyingErrorDomain = self->_firstUnderlyingErrorDomain;
      self->_firstUnderlyingErrorDomain = domain2;

      v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "code")}];
      firstUnderlyingErrorCode = self->_firstUnderlyingErrorCode;
      self->_firstUnderlyingErrorCode = v16;

      localizedDescription2 = [v13 localizedDescription];
      firstUnderlyingErrorLocalizedDescription = self->_firstUnderlyingErrorLocalizedDescription;
      self->_firstUnderlyingErrorLocalizedDescription = localizedDescription2;
    }

    self->_isUserCancelError = [v20 bl_isUserCancelError];

    errorCopy = v20;
  }
}

- (BLPurchaseResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BLPurchaseResponse *)self initWithAMSPurchaseResult:0];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    currency = v5->_currency;
    v5->_currency = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"errorCode"];
    errorCode = v5->_errorCode;
    v5->_errorCode = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"errorDescription"];
    errorDescription = v5->_errorDescription;
    v5->_errorDescription = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"errorDomain"];
    errorDomain = v5->_errorDomain;
    v5->_errorDomain = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstUnderlyingErrorCode"];
    firstUnderlyingErrorCode = v5->_firstUnderlyingErrorCode;
    v5->_firstUnderlyingErrorCode = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstUnderlyingErrorDomain"];
    firstUnderlyingErrorDomain = v5->_firstUnderlyingErrorDomain;
    v5->_firstUnderlyingErrorDomain = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstUnderlyingErrorLocalizedDescription"];
    firstUnderlyingErrorLocalizedDescription = v5->_firstUnderlyingErrorLocalizedDescription;
    v5->_firstUnderlyingErrorLocalizedDescription = v18;

    v5->_isUserCancelError = [coderCopy decodeBoolForKey:@"isUserCancelError"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"logUUID"];
    logUUID = v5->_logUUID;
    v5->_logUUID = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"permLink"];
    permLink = v5->_permLink;
    v5->_permLink = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"price"];
    price = v5->_price;
    v5->_price = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchaseParameters"];
    purchaseParameters = v5->_purchaseParameters;
    v5->_purchaseParameters = v26;

    v28 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = [v28 setWithObjects:{v29, v30, v31, objc_opt_class(), 0}];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"responseMetrics"];
    responseMetrics = v5->_responseMetrics;
    v5->_responseMetrics = v33;

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeID"];
    storeID = v5->_storeID;
    v5->_storeID = v35;

    v37 = MEMORY[0x277CBEB98];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [coderCopy decodeObjectOfClasses:v39 forKey:@"purchaseResponseItems"];
    purchaseResponseItems = v5->_purchaseResponseItems;
    v5->_purchaseResponseItems = v40;

    v5->_hasRacGUID = [coderCopy decodeBoolForKey:@"hasRacGUID"];
    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supplementalContentCount"];
    supplementalContentCount = v5->_supplementalContentCount;
    v5->_supplementalContentCount = v42;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  currency = [(BLPurchaseResponse *)self currency];
  [coderCopy encodeObject:currency forKey:@"currency"];

  errorCode = [(BLPurchaseResponse *)self errorCode];
  [coderCopy encodeObject:errorCode forKey:@"errorCode"];

  errorDescription = [(BLPurchaseResponse *)self errorDescription];
  [coderCopy encodeObject:errorDescription forKey:@"errorDescription"];

  errorDomain = [(BLPurchaseResponse *)self errorDomain];
  [coderCopy encodeObject:errorDomain forKey:@"errorDomain"];

  firstUnderlyingErrorCode = [(BLPurchaseResponse *)self firstUnderlyingErrorCode];
  [coderCopy encodeObject:firstUnderlyingErrorCode forKey:@"firstUnderlyingErrorCode"];

  firstUnderlyingErrorDomain = [(BLPurchaseResponse *)self firstUnderlyingErrorDomain];
  [coderCopy encodeObject:firstUnderlyingErrorDomain forKey:@"firstUnderlyingErrorDomain"];

  firstUnderlyingErrorLocalizedDescription = [(BLPurchaseResponse *)self firstUnderlyingErrorLocalizedDescription];
  [coderCopy encodeObject:firstUnderlyingErrorLocalizedDescription forKey:@"firstUnderlyingErrorLocalizedDescription"];

  [coderCopy encodeBool:-[BLPurchaseResponse isUserCancelError](self forKey:{"isUserCancelError"), @"isUserCancelError"}];
  logUUID = [(BLPurchaseResponse *)self logUUID];
  [coderCopy encodeObject:logUUID forKey:@"logUUID"];

  permLink = [(BLPurchaseResponse *)self permLink];
  [coderCopy encodeObject:permLink forKey:@"permLink"];

  price = [(BLPurchaseResponse *)self price];
  [coderCopy encodeObject:price forKey:@"price"];

  purchaseParameters = [(BLPurchaseResponse *)self purchaseParameters];
  [coderCopy encodeObject:purchaseParameters forKey:@"purchaseParameters"];

  responseMetrics = [(BLPurchaseResponse *)self responseMetrics];
  [coderCopy encodeObject:responseMetrics forKey:@"responseMetrics"];

  storeID = [(BLPurchaseResponse *)self storeID];
  [coderCopy encodeObject:storeID forKey:@"storeID"];

  purchaseResponseItems = [(BLPurchaseResponse *)self purchaseResponseItems];
  [coderCopy encodeObject:purchaseResponseItems forKey:@"purchaseResponseItems"];

  [coderCopy encodeBool:-[BLPurchaseResponse hasRacGUID](self forKey:{"hasRacGUID"), @"hasRacGUID"}];
  supplementalContentCount = [(BLPurchaseResponse *)self supplementalContentCount];
  [coderCopy encodeObject:supplementalContentCount forKey:@"supplementalContentCount"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  if (v4)
  {
    currency = [(BLPurchaseResponse *)self currency];
    [v4 setCurrency:currency];

    errorCode = [(BLPurchaseResponse *)self errorCode];
    [v4 setErrorCode:errorCode];

    errorDescription = [(BLPurchaseResponse *)self errorDescription];
    [v4 setErrorDescription:errorDescription];

    errorDomain = [(BLPurchaseResponse *)self errorDomain];
    [v4 setErrorDomain:errorDomain];

    firstUnderlyingErrorCode = [(BLPurchaseResponse *)self firstUnderlyingErrorCode];
    [v4 setFirstUnderlyingErrorCode:firstUnderlyingErrorCode];

    firstUnderlyingErrorDomain = [(BLPurchaseResponse *)self firstUnderlyingErrorDomain];
    [v4 setFirstUnderlyingErrorDomain:firstUnderlyingErrorDomain];

    firstUnderlyingErrorLocalizedDescription = [(BLPurchaseResponse *)self firstUnderlyingErrorLocalizedDescription];
    [v4 setFirstUnderlyingErrorLocalizedDescription:firstUnderlyingErrorLocalizedDescription];

    [v4 setIsUserCancelError:{-[BLPurchaseResponse isUserCancelError](self, "isUserCancelError")}];
    logUUID = [(BLPurchaseResponse *)self logUUID];
    [v4 setLogUUID:logUUID];

    permLink = [(BLPurchaseResponse *)self permLink];
    [v4 setPermLink:permLink];

    price = [(BLPurchaseResponse *)self price];
    [v4 setPrice:price];

    purchaseParameters = [(BLPurchaseResponse *)self purchaseParameters];
    [v4 setPurchaseParameters:purchaseParameters];

    responseMetrics = [(BLPurchaseResponse *)self responseMetrics];
    [v4 setResponseMetrics:responseMetrics];

    storeID = [(BLPurchaseResponse *)self storeID];
    [v4 setStoreID:storeID];

    purchaseResponseItems = [(BLPurchaseResponse *)self purchaseResponseItems];
    [v4 setPurchaseResponseItems:purchaseResponseItems];

    [v4 setHasRacGUID:{-[BLPurchaseResponse hasRacGUID](self, "hasRacGUID")}];
    supplementalContentCount = [(BLPurchaseResponse *)self supplementalContentCount];
    [v4 setSupplementalContentCount:supplementalContentCount];
  }

  return v4;
}

- (NSDictionary)item
{
  purchaseResponseItems = [(BLPurchaseResponse *)self purchaseResponseItems];
  firstObject = [purchaseResponseItems firstObject];
  item = [firstObject item];

  return item;
}

- (NSString)downloadID
{
  purchaseResponseItems = [(BLPurchaseResponse *)self purchaseResponseItems];
  firstObject = [purchaseResponseItems firstObject];
  downloadID = [firstObject downloadID];

  return downloadID;
}

- (NSDictionary)metadata
{
  purchaseResponseItems = [(BLPurchaseResponse *)self purchaseResponseItems];
  firstObject = [purchaseResponseItems firstObject];
  metadata = [firstObject metadata];

  return metadata;
}

@end