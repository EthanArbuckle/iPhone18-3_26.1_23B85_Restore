@interface BLRestoreResponseItem
- (BLRestoreResponseItem)initWithCoder:(id)coder;
- (BLRestoreResponseItem)initWithStoreItemID:(id)d downloadID:(id)iD error:(id)error;
- (BOOL)success;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BLRestoreResponseItem

- (BLRestoreResponseItem)initWithStoreItemID:(id)d downloadID:(id)iD error:(id)error
{
  dCopy = d;
  iDCopy = iD;
  errorCopy = error;
  v15.receiver = self;
  v15.super_class = BLRestoreResponseItem;
  v12 = [(BLRestoreResponseItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_storeItemID, d);
    objc_storeStrong(&v13->_downloadID, iD);
    objc_storeStrong(&v13->_error, error);
  }

  return v13;
}

- (BOOL)success
{
  downloadID = [(BLRestoreResponseItem *)self downloadID];
  v3 = downloadID != 0;

  return v3;
}

- (BLRestoreResponseItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = BLRestoreResponseItem;
  v5 = [(BLRestoreResponseItem *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeItemID"];
    storeItemID = v5->_storeItemID;
    v5->_storeItemID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadID"];
    downloadID = v5->_downloadID;
    v5->_downloadID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  storeItemID = [(BLRestoreResponseItem *)self storeItemID];
  [coderCopy encodeObject:storeItemID forKey:@"storeItemID"];

  downloadID = [(BLRestoreResponseItem *)self downloadID];
  [coderCopy encodeObject:downloadID forKey:@"downloadID"];

  error = [(BLRestoreResponseItem *)self error];
  [coderCopy encodeObject:error forKey:@"error"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  storeItemID = [(BLRestoreResponseItem *)self storeItemID];
  [v4 setStoreItemID:storeItemID];

  downloadID = [(BLRestoreResponseItem *)self downloadID];
  [v4 setDownloadID:downloadID];

  error = [(BLRestoreResponseItem *)self error];
  [v4 setError:error];

  return v4;
}

@end