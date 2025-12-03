@interface BLPurchaseRequest
+ (id)requestWithBuyParameters:(id)parameters storeIdentifier:(id)identifier;
+ (id)requestWithPermlink:(id)permlink title:(id)title;
- (BLPurchaseRequest)initWithCoder:(id)coder;
- (NSString)logUUID;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BLPurchaseRequest

+ (id)requestWithBuyParameters:(id)parameters storeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  parametersCopy = parameters;
  v7 = objc_alloc_init(BLPurchaseRequest);
  [(BLPurchaseRequest *)v7 setBuyParameters:parametersCopy];
  [(BLPurchaseRequest *)v7 setStoreIdentifier:identifierCopy];

  v8 = [BLUtilities isPreOrderFromBuyParameters:parametersCopy];
  [(BLPurchaseRequest *)v7 setPreOrder:v8];
  [(BLPurchaseRequest *)v7 setUserInitiated:1];

  return v7;
}

+ (id)requestWithPermlink:(id)permlink title:(id)title
{
  titleCopy = title;
  permlinkCopy = permlink;
  v7 = objc_alloc_init(BLPurchaseRequest);
  [(BLPurchaseRequest *)v7 setPermlink:permlinkCopy];

  [(BLPurchaseRequest *)v7 setPermlinkTitle:titleCopy];
  [(BLPurchaseRequest *)v7 setUserInitiated:1];

  return v7;
}

- (NSString)logUUID
{
  logUUID = self->_logUUID;
  if (!logUUID)
  {
    if (qword_27EC71FE0 != -1)
    {
      sub_241D77080();
    }

    logUUID = qword_27EC71FD8;
  }

  v3 = logUUID;

  return v3;
}

- (BLPurchaseRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = BLPurchaseRequest;
  v5 = [(BLPurchaseRequest *)&v31 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audiobook"];
    v7 = BUDynamicCast();
    -[BLPurchaseRequest setAudiobook:](v5, "setAudiobook:", [v7 BOOLValue]);

    objc_opt_class();
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preOrder"];
    v9 = BUDynamicCast();
    -[BLPurchaseRequest setPreOrder:](v5, "setPreOrder:", [v9 BOOLValue]);

    objc_opt_class();
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"restore"];
    v11 = BUDynamicCast();
    -[BLPurchaseRequest setRestore:](v5, "setRestore:", [v11 BOOLValue]);

    objc_opt_class();
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supplementalContent"];
    v13 = BUDynamicCast();
    -[BLPurchaseRequest setSupplementalContent:](v5, "setSupplementalContent:", [v13 BOOLValue]);

    objc_opt_class();
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suppressNetworkEvaluatorDialogs"];
    v15 = BUDynamicCast();
    -[BLPurchaseRequest setSuppressNetworkEvaluatorDialogs:](v5, "setSuppressNetworkEvaluatorDialogs:", [v15 BOOLValue]);

    objc_opt_class();
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userInitiated"];
    v17 = BUDynamicCast();
    -[BLPurchaseRequest setUserInitiated:](v5, "setUserInitiated:", [v17 BOOLValue]);

    objc_opt_class();
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneIdentifier"];
    v19 = BUDynamicCast();
    [(BLPurchaseRequest *)v5 setPresentingSceneIdentifier:v19];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeIdentifier"];
    [(BLPurchaseRequest *)v5 setStoreIdentifier:v20];

    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"storeIdentifiersToDownload"];
    [(BLPurchaseRequest *)v5 setStoreIdentifiersToDownload:v24];

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buyParameters"];
    [(BLPurchaseRequest *)v5 setBuyParameters:v25];

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"permlink"];
    [(BLPurchaseRequest *)v5 setPermlink:v26];

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"permlinkTitle"];
    [(BLPurchaseRequest *)v5 setPermlinkTitle:v27];

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    [(BLPurchaseRequest *)v5 setAccountIdentifier:v28];

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"logUUID"];
    [(BLPurchaseRequest *)v5 setLogUUID:v29];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithBool:{-[BLPurchaseRequest isAudiobook](self, "isAudiobook")}];
  [coderCopy encodeObject:v6 forKey:@"audiobook"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[BLPurchaseRequest isPreOrder](self, "isPreOrder")}];
  [coderCopy encodeObject:v7 forKey:@"preOrder"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[BLPurchaseRequest isRestore](self, "isRestore")}];
  [coderCopy encodeObject:v8 forKey:@"restore"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[BLPurchaseRequest isSupplementalContent](self, "isSupplementalContent")}];
  [coderCopy encodeObject:v9 forKey:@"supplementalContent"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[BLPurchaseRequest shouldSuppressNetworkEvaluatorDialogs](self, "shouldSuppressNetworkEvaluatorDialogs")}];
  [coderCopy encodeObject:v10 forKey:@"suppressNetworkEvaluatorDialogs"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[BLPurchaseRequest isUserInitiated](self, "isUserInitiated")}];
  [coderCopy encodeObject:v11 forKey:@"userInitiated"];

  presentingSceneIdentifier = [(BLPurchaseRequest *)self presentingSceneIdentifier];
  [coderCopy encodeObject:presentingSceneIdentifier forKey:@"presentingSceneIdentifier"];

  storeIdentifier = [(BLPurchaseRequest *)self storeIdentifier];
  [coderCopy encodeObject:storeIdentifier forKey:@"storeIdentifier"];

  storeIdentifiersToDownload = [(BLPurchaseRequest *)self storeIdentifiersToDownload];
  [coderCopy encodeObject:storeIdentifiersToDownload forKey:@"storeIdentifiersToDownload"];

  buyParameters = [(BLPurchaseRequest *)self buyParameters];
  [coderCopy encodeObject:buyParameters forKey:@"buyParameters"];

  permlink = [(BLPurchaseRequest *)self permlink];
  [coderCopy encodeObject:permlink forKey:@"permlink"];

  permlinkTitle = [(BLPurchaseRequest *)self permlinkTitle];
  [coderCopy encodeObject:permlinkTitle forKey:@"permlinkTitle"];

  accountIdentifier = [(BLPurchaseRequest *)self accountIdentifier];
  [coderCopy encodeObject:accountIdentifier forKey:@"accountIdentifier"];

  logUUID = [(BLPurchaseRequest *)self logUUID];
  [coderCopy encodeObject:logUUID forKey:@"logUUID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  if (v4)
  {
    [v4 setAudiobook:{-[BLPurchaseRequest isAudiobook](self, "isAudiobook")}];
    storeIdentifier = [(BLPurchaseRequest *)self storeIdentifier];
    [v4 setStoreIdentifier:storeIdentifier];

    storeIdentifiersToDownload = [(BLPurchaseRequest *)self storeIdentifiersToDownload];
    [v4 setStoreIdentifiersToDownload:storeIdentifiersToDownload];

    buyParameters = [(BLPurchaseRequest *)self buyParameters];
    [v4 setBuyParameters:buyParameters];

    permlink = [(BLPurchaseRequest *)self permlink];
    [v4 setPermlink:permlink];

    permlinkTitle = [(BLPurchaseRequest *)self permlinkTitle];
    [v4 setPermlinkTitle:permlinkTitle];

    [v4 setPreOrder:{-[BLPurchaseRequest isPreOrder](self, "isPreOrder")}];
    [v4 setRestore:{-[BLPurchaseRequest isRestore](self, "isRestore")}];
    [v4 setSupplementalContent:{-[BLPurchaseRequest isSupplementalContent](self, "isSupplementalContent")}];
    [v4 setSuppressNetworkEvaluatorDialogs:{-[BLPurchaseRequest shouldSuppressNetworkEvaluatorDialogs](self, "shouldSuppressNetworkEvaluatorDialogs")}];
    [v4 setUserInitiated:{-[BLPurchaseRequest isUserInitiated](self, "isUserInitiated")}];
    presentingSceneIdentifier = [(BLPurchaseRequest *)self presentingSceneIdentifier];
    [v4 setPresentingSceneIdentifier:presentingSceneIdentifier];

    accountIdentifier = [(BLPurchaseRequest *)self accountIdentifier];
    [v4 setAccountIdentifier:accountIdentifier];

    logUUID = [(BLPurchaseRequest *)self logUUID];
    [v4 setLogUUID:logUUID];
  }

  return v4;
}

@end