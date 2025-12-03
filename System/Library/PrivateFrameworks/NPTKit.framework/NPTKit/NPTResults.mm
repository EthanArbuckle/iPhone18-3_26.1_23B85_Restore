@interface NPTResults
- (NPTResults)initWithCoder:(id)coder;
- (NSDictionary)asDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPTResults

- (NSDictionary)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  downloadResults = [(NPTResults *)self downloadResults];

  if (downloadResults)
  {
    downloadResults2 = [(NPTResults *)self downloadResults];
    asDictionary = [downloadResults2 asDictionary];
    [v3 setValue:asDictionary forKey:@"download_results"];
  }

  uploadResults = [(NPTResults *)self uploadResults];

  if (uploadResults)
  {
    uploadResults2 = [(NPTResults *)self uploadResults];
    asDictionary2 = [uploadResults2 asDictionary];
    [v3 setValue:asDictionary2 forKey:@"upload_results"];
  }

  pingResults = [(NPTResults *)self pingResults];

  if (pingResults)
  {
    pingResults2 = [(NPTResults *)self pingResults];
    asDictionary3 = [pingResults2 asDictionary];
    [v3 setValue:asDictionary3 forKey:@"ping_results"];
  }

  metadata = [(NPTResults *)self metadata];

  if (metadata)
  {
    metadata2 = [(NPTResults *)self metadata];
    [v3 setValue:metadata2 forKey:@"metadata"];
  }

  v15 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  downloadResults = [(NPTResults *)self downloadResults];
  [coderCopy encodeObject:downloadResults forKey:@"downloadResults"];

  uploadResults = [(NPTResults *)self uploadResults];
  [coderCopy encodeObject:uploadResults forKey:@"uploadResults"];

  pingResults = [(NPTResults *)self pingResults];
  [coderCopy encodeObject:pingResults forKey:@"pingResults"];

  metadata = [(NPTResults *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];
}

- (NPTResults)initWithCoder:(id)coder
{
  v19.receiver = self;
  v19.super_class = NPTResults;
  coderCopy = coder;
  v4 = [(NPTResults *)&v19 init];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"downloadResults"];
  [(NPTResults *)v4 setDownloadResults:v9];

  v10 = [coderCopy decodeObjectOfClasses:v8 forKey:@"uploadResults"];
  [(NPTResults *)v4 setUploadResults:v10];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pingResults"];
  [(NPTResults *)v4 setPingResults:v11];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v12 setWithObjects:{v13, v14, v15, objc_opt_class(), 0, v19.receiver, v19.super_class}];
  v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"metadata"];

  [(NPTResults *)v4 setMetadata:v17];
  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NPTResults allocWithZone:?]];
  downloadResults = [(NPTResults *)self downloadResults];
  [(NPTResults *)v4 setDownloadResults:downloadResults];

  uploadResults = [(NPTResults *)self uploadResults];
  [(NPTResults *)v4 setUploadResults:uploadResults];

  pingResults = [(NPTResults *)self pingResults];
  [(NPTResults *)v4 setPingResults:pingResults];

  metadata = [(NPTResults *)self metadata];
  [(NPTResults *)v4 setMetadata:metadata];

  return v4;
}

@end