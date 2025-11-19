@interface BLRestoreResponseItem
- (BLRestoreResponseItem)initWithCoder:(id)a3;
- (BLRestoreResponseItem)initWithStoreItemID:(id)a3 downloadID:(id)a4 error:(id)a5;
- (BOOL)success;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BLRestoreResponseItem

- (BLRestoreResponseItem)initWithStoreItemID:(id)a3 downloadID:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BLRestoreResponseItem;
  v12 = [(BLRestoreResponseItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_storeItemID, a3);
    objc_storeStrong(&v13->_downloadID, a4);
    objc_storeStrong(&v13->_error, a5);
  }

  return v13;
}

- (BOOL)success
{
  v2 = [(BLRestoreResponseItem *)self downloadID];
  v3 = v2 != 0;

  return v3;
}

- (BLRestoreResponseItem)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BLRestoreResponseItem;
  v5 = [(BLRestoreResponseItem *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeItemID"];
    storeItemID = v5->_storeItemID;
    v5->_storeItemID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadID"];
    downloadID = v5->_downloadID;
    v5->_downloadID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BLRestoreResponseItem *)self storeItemID];
  [v4 encodeObject:v5 forKey:@"storeItemID"];

  v6 = [(BLRestoreResponseItem *)self downloadID];
  [v4 encodeObject:v6 forKey:@"downloadID"];

  v7 = [(BLRestoreResponseItem *)self error];
  [v4 encodeObject:v7 forKey:@"error"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(BLRestoreResponseItem *)self storeItemID];
  [v4 setStoreItemID:v5];

  v6 = [(BLRestoreResponseItem *)self downloadID];
  [v4 setDownloadID:v6];

  v7 = [(BLRestoreResponseItem *)self error];
  [v4 setError:v7];

  return v4;
}

@end