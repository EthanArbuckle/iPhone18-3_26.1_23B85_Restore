@interface BLPurchaseResponseItem
- (BLPurchaseResponseItem)init;
- (BLPurchaseResponseItem)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (BLPurchaseResponseItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BLPurchaseResponseItem *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"item"];
    item = v5->_item;
    v5->_item = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadID"];
    downloadID = v5->_downloadID;
    v5->_downloadID = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v16 setWithObjects:{v17, v18, v19, v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchaseParameters"];
    purchaseParameters = v5->_purchaseParameters;
    v5->_purchaseParameters = v24;

    v5->_isPurchaseRedownload = [coderCopy decodeBoolForKey:@"isPurchaseRedownload"];
    v5->_isAudiobook = [coderCopy decodeBoolForKey:@"isAudiobook"];
    v5->_isPDF = [coderCopy decodeBoolForKey:@"isPDF"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  item = [(BLPurchaseResponseItem *)self item];
  [coderCopy encodeObject:item forKey:@"item"];

  downloadID = [(BLPurchaseResponseItem *)self downloadID];
  [coderCopy encodeObject:downloadID forKey:@"downloadID"];

  metadata = [(BLPurchaseResponseItem *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];

  purchaseParameters = [(BLPurchaseResponseItem *)self purchaseParameters];
  [coderCopy encodeObject:purchaseParameters forKey:@"purchaseParameters"];

  [coderCopy encodeBool:-[BLPurchaseResponseItem isPurchaseRedownload](self forKey:{"isPurchaseRedownload"), @"isPurchaseRedownload"}];
  [coderCopy encodeBool:-[BLPurchaseResponseItem isAudiobook](self forKey:{"isAudiobook"), @"isAudiobook"}];
  [coderCopy encodeBool:-[BLPurchaseResponseItem isPDF](self forKey:{"isPDF"), @"isPDF"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  if (v4)
  {
    item = [(BLPurchaseResponseItem *)self item];
    [v4 setItem:item];

    downloadID = [(BLPurchaseResponseItem *)self downloadID];
    [v4 setDownloadID:downloadID];

    metadata = [(BLPurchaseResponseItem *)self metadata];
    [v4 setMetadata:metadata];

    purchaseParameters = [(BLPurchaseResponseItem *)self purchaseParameters];
    [v4 setPurchaseParameters:purchaseParameters];

    [v4 setIsPurchaseRedownload:{-[BLPurchaseResponseItem isPurchaseRedownload](self, "isPurchaseRedownload")}];
    [v4 setIsAudiobook:{-[BLPurchaseResponseItem isAudiobook](self, "isAudiobook")}];
    [v4 setIsPDF:{-[BLPurchaseResponseItem isPDF](self, "isPDF")}];
  }

  return v4;
}

@end