@interface BLPurchaseRequest
+ (id)requestWithBuyParameters:(id)a3 storeIdentifier:(id)a4;
+ (id)requestWithPermlink:(id)a3 title:(id)a4;
- (BLPurchaseRequest)initWithCoder:(id)a3;
- (NSString)logUUID;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BLPurchaseRequest

+ (id)requestWithBuyParameters:(id)a3 storeIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(BLPurchaseRequest);
  [(BLPurchaseRequest *)v7 setBuyParameters:v6];
  [(BLPurchaseRequest *)v7 setStoreIdentifier:v5];

  v8 = [BLUtilities isPreOrderFromBuyParameters:v6];
  [(BLPurchaseRequest *)v7 setPreOrder:v8];
  [(BLPurchaseRequest *)v7 setUserInitiated:1];

  return v7;
}

+ (id)requestWithPermlink:(id)a3 title:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(BLPurchaseRequest);
  [(BLPurchaseRequest *)v7 setPermlink:v6];

  [(BLPurchaseRequest *)v7 setPermlinkTitle:v5];
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

- (BLPurchaseRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BLPurchaseRequest;
  v5 = [(BLPurchaseRequest *)&v31 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audiobook"];
    v7 = BUDynamicCast();
    -[BLPurchaseRequest setAudiobook:](v5, "setAudiobook:", [v7 BOOLValue]);

    objc_opt_class();
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preOrder"];
    v9 = BUDynamicCast();
    -[BLPurchaseRequest setPreOrder:](v5, "setPreOrder:", [v9 BOOLValue]);

    objc_opt_class();
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"restore"];
    v11 = BUDynamicCast();
    -[BLPurchaseRequest setRestore:](v5, "setRestore:", [v11 BOOLValue]);

    objc_opt_class();
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supplementalContent"];
    v13 = BUDynamicCast();
    -[BLPurchaseRequest setSupplementalContent:](v5, "setSupplementalContent:", [v13 BOOLValue]);

    objc_opt_class();
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suppressNetworkEvaluatorDialogs"];
    v15 = BUDynamicCast();
    -[BLPurchaseRequest setSuppressNetworkEvaluatorDialogs:](v5, "setSuppressNetworkEvaluatorDialogs:", [v15 BOOLValue]);

    objc_opt_class();
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userInitiated"];
    v17 = BUDynamicCast();
    -[BLPurchaseRequest setUserInitiated:](v5, "setUserInitiated:", [v17 BOOLValue]);

    objc_opt_class();
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneIdentifier"];
    v19 = BUDynamicCast();
    [(BLPurchaseRequest *)v5 setPresentingSceneIdentifier:v19];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeIdentifier"];
    [(BLPurchaseRequest *)v5 setStoreIdentifier:v20];

    v21 = MEMORY[0x277CBEB98];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"storeIdentifiersToDownload"];
    [(BLPurchaseRequest *)v5 setStoreIdentifiersToDownload:v24];

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buyParameters"];
    [(BLPurchaseRequest *)v5 setBuyParameters:v25];

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"permlink"];
    [(BLPurchaseRequest *)v5 setPermlink:v26];

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"permlinkTitle"];
    [(BLPurchaseRequest *)v5 setPermlinkTitle:v27];

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    [(BLPurchaseRequest *)v5 setAccountIdentifier:v28];

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"logUUID"];
    [(BLPurchaseRequest *)v5 setLogUUID:v29];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithBool:{-[BLPurchaseRequest isAudiobook](self, "isAudiobook")}];
  [v5 encodeObject:v6 forKey:@"audiobook"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[BLPurchaseRequest isPreOrder](self, "isPreOrder")}];
  [v5 encodeObject:v7 forKey:@"preOrder"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[BLPurchaseRequest isRestore](self, "isRestore")}];
  [v5 encodeObject:v8 forKey:@"restore"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[BLPurchaseRequest isSupplementalContent](self, "isSupplementalContent")}];
  [v5 encodeObject:v9 forKey:@"supplementalContent"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[BLPurchaseRequest shouldSuppressNetworkEvaluatorDialogs](self, "shouldSuppressNetworkEvaluatorDialogs")}];
  [v5 encodeObject:v10 forKey:@"suppressNetworkEvaluatorDialogs"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[BLPurchaseRequest isUserInitiated](self, "isUserInitiated")}];
  [v5 encodeObject:v11 forKey:@"userInitiated"];

  v12 = [(BLPurchaseRequest *)self presentingSceneIdentifier];
  [v5 encodeObject:v12 forKey:@"presentingSceneIdentifier"];

  v13 = [(BLPurchaseRequest *)self storeIdentifier];
  [v5 encodeObject:v13 forKey:@"storeIdentifier"];

  v14 = [(BLPurchaseRequest *)self storeIdentifiersToDownload];
  [v5 encodeObject:v14 forKey:@"storeIdentifiersToDownload"];

  v15 = [(BLPurchaseRequest *)self buyParameters];
  [v5 encodeObject:v15 forKey:@"buyParameters"];

  v16 = [(BLPurchaseRequest *)self permlink];
  [v5 encodeObject:v16 forKey:@"permlink"];

  v17 = [(BLPurchaseRequest *)self permlinkTitle];
  [v5 encodeObject:v17 forKey:@"permlinkTitle"];

  v18 = [(BLPurchaseRequest *)self accountIdentifier];
  [v5 encodeObject:v18 forKey:@"accountIdentifier"];

  v19 = [(BLPurchaseRequest *)self logUUID];
  [v5 encodeObject:v19 forKey:@"logUUID"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  if (v4)
  {
    [v4 setAudiobook:{-[BLPurchaseRequest isAudiobook](self, "isAudiobook")}];
    v5 = [(BLPurchaseRequest *)self storeIdentifier];
    [v4 setStoreIdentifier:v5];

    v6 = [(BLPurchaseRequest *)self storeIdentifiersToDownload];
    [v4 setStoreIdentifiersToDownload:v6];

    v7 = [(BLPurchaseRequest *)self buyParameters];
    [v4 setBuyParameters:v7];

    v8 = [(BLPurchaseRequest *)self permlink];
    [v4 setPermlink:v8];

    v9 = [(BLPurchaseRequest *)self permlinkTitle];
    [v4 setPermlinkTitle:v9];

    [v4 setPreOrder:{-[BLPurchaseRequest isPreOrder](self, "isPreOrder")}];
    [v4 setRestore:{-[BLPurchaseRequest isRestore](self, "isRestore")}];
    [v4 setSupplementalContent:{-[BLPurchaseRequest isSupplementalContent](self, "isSupplementalContent")}];
    [v4 setSuppressNetworkEvaluatorDialogs:{-[BLPurchaseRequest shouldSuppressNetworkEvaluatorDialogs](self, "shouldSuppressNetworkEvaluatorDialogs")}];
    [v4 setUserInitiated:{-[BLPurchaseRequest isUserInitiated](self, "isUserInitiated")}];
    v10 = [(BLPurchaseRequest *)self presentingSceneIdentifier];
    [v4 setPresentingSceneIdentifier:v10];

    v11 = [(BLPurchaseRequest *)self accountIdentifier];
    [v4 setAccountIdentifier:v11];

    v12 = [(BLPurchaseRequest *)self logUUID];
    [v4 setLogUUID:v12];
  }

  return v4;
}

@end