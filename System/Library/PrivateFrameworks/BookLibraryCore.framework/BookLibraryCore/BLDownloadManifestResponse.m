@interface BLDownloadManifestResponse
- (BLDownloadManifestResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BLDownloadManifestResponse

- (BLDownloadManifestResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BLDownloadManifestResponse;
  v5 = [(BLDownloadManifestResponse *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"validDownloadIDs"];
    validDownloadIDs = v5->_validDownloadIDs;
    v5->_validDownloadIDs = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BLDownloadManifestResponse *)self validDownloadIDs];
  [v4 encodeObject:v5 forKey:@"validDownloadIDs"];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(BLDownloadManifestResponse *)self validDownloadIDs];
  v4 = [v2 stringWithFormat:@"Valid Download Ids: %@", v3];

  return v4;
}

@end