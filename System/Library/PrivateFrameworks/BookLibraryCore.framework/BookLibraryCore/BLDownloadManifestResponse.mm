@interface BLDownloadManifestResponse
- (BLDownloadManifestResponse)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BLDownloadManifestResponse

- (BLDownloadManifestResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = BLDownloadManifestResponse;
  v5 = [(BLDownloadManifestResponse *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"validDownloadIDs"];
    validDownloadIDs = v5->_validDownloadIDs;
    v5->_validDownloadIDs = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  validDownloadIDs = [(BLDownloadManifestResponse *)self validDownloadIDs];
  [coderCopy encodeObject:validDownloadIDs forKey:@"validDownloadIDs"];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  validDownloadIDs = [(BLDownloadManifestResponse *)self validDownloadIDs];
  v4 = [v2 stringWithFormat:@"Valid Download Ids: %@", validDownloadIDs];

  return v4;
}

@end