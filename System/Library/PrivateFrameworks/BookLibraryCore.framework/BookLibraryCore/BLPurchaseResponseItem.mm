@interface BLPurchaseResponseItem
- (BLPurchaseResponseItem)init;
- (BLPurchaseResponseItem)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BLPurchaseResponseItem

- (BLPurchaseResponseItem)init
{
  v9.receiver = self;
  v9.super_class = BLPurchaseResponseItem;
  v2 = [(BLPurchaseResponseItem *)&v9 init];
  v3 = v2;
  if (v2)
  {
    item = v2->_item;
    v2->_item = 0;

    metadata = v3->_metadata;
    v3->_metadata = 0;

    downloadID = v3->_downloadID;
    v3->_downloadID = 0;

    purchaseParameters = v3->_purchaseParameters;
    v3->_purchaseParameters = 0;

    *&v3->_isPurchaseRedownload = 0;
    v3->_isPDF = 0;
  }

  return v3;
}

- (BLPurchaseResponseItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BLPurchaseResponseItem *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"item"];
    item = v5->_item;
    v5->_item = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadID"];
    downloadID = v5->_downloadID;
    v5->_downloadID = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v16 setWithObjects:{v17, v18, v19, v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purchaseParameters"];
    purchaseParameters = v5->_purchaseParameters;
    v5->_purchaseParameters = v24;

    v5->_isPurchaseRedownload = [v4 decodeBoolForKey:@"isPurchaseRedownload"];
    v5->_isAudiobook = [v4 decodeBoolForKey:@"isAudiobook"];
    v5->_isPDF = [v4 decodeBoolForKey:@"isPDF"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(BLPurchaseResponseItem *)self item];
  [v8 encodeObject:v4 forKey:@"item"];

  v5 = [(BLPurchaseResponseItem *)self downloadID];
  [v8 encodeObject:v5 forKey:@"downloadID"];

  v6 = [(BLPurchaseResponseItem *)self metadata];
  [v8 encodeObject:v6 forKey:@"metadata"];

  v7 = [(BLPurchaseResponseItem *)self purchaseParameters];
  [v8 encodeObject:v7 forKey:@"purchaseParameters"];

  [v8 encodeBool:-[BLPurchaseResponseItem isPurchaseRedownload](self forKey:{"isPurchaseRedownload"), @"isPurchaseRedownload"}];
  [v8 encodeBool:-[BLPurchaseResponseItem isAudiobook](self forKey:{"isAudiobook"), @"isAudiobook"}];
  [v8 encodeBool:-[BLPurchaseResponseItem isPDF](self forKey:{"isPDF"), @"isPDF"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = [(BLPurchaseResponseItem *)self item];
    [v4 setItem:v5];

    v6 = [(BLPurchaseResponseItem *)self downloadID];
    [v4 setDownloadID:v6];

    v7 = [(BLPurchaseResponseItem *)self metadata];
    [v4 setMetadata:v7];

    v8 = [(BLPurchaseResponseItem *)self purchaseParameters];
    [v4 setPurchaseParameters:v8];

    [v4 setIsPurchaseRedownload:{-[BLPurchaseResponseItem isPurchaseRedownload](self, "isPurchaseRedownload")}];
    [v4 setIsAudiobook:{-[BLPurchaseResponseItem isAudiobook](self, "isAudiobook")}];
    [v4 setIsPDF:{-[BLPurchaseResponseItem isPDF](self, "isPDF")}];
  }

  return v4;
}

@end