@interface NPTResults
- (NPTResults)initWithCoder:(id)a3;
- (NSDictionary)asDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPTResults

- (NSDictionary)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(NPTResults *)self downloadResults];

  if (v4)
  {
    v5 = [(NPTResults *)self downloadResults];
    v6 = [v5 asDictionary];
    [v3 setValue:v6 forKey:@"download_results"];
  }

  v7 = [(NPTResults *)self uploadResults];

  if (v7)
  {
    v8 = [(NPTResults *)self uploadResults];
    v9 = [v8 asDictionary];
    [v3 setValue:v9 forKey:@"upload_results"];
  }

  v10 = [(NPTResults *)self pingResults];

  if (v10)
  {
    v11 = [(NPTResults *)self pingResults];
    v12 = [v11 asDictionary];
    [v3 setValue:v12 forKey:@"ping_results"];
  }

  v13 = [(NPTResults *)self metadata];

  if (v13)
  {
    v14 = [(NPTResults *)self metadata];
    [v3 setValue:v14 forKey:@"metadata"];
  }

  v15 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NPTResults *)self downloadResults];
  [v4 encodeObject:v5 forKey:@"downloadResults"];

  v6 = [(NPTResults *)self uploadResults];
  [v4 encodeObject:v6 forKey:@"uploadResults"];

  v7 = [(NPTResults *)self pingResults];
  [v4 encodeObject:v7 forKey:@"pingResults"];

  v8 = [(NPTResults *)self metadata];
  [v4 encodeObject:v8 forKey:@"metadata"];
}

- (NPTResults)initWithCoder:(id)a3
{
  v19.receiver = self;
  v19.super_class = NPTResults;
  v3 = a3;
  v4 = [(NPTResults *)&v19 init];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v3 decodeObjectOfClasses:v8 forKey:@"downloadResults"];
  [(NPTResults *)v4 setDownloadResults:v9];

  v10 = [v3 decodeObjectOfClasses:v8 forKey:@"uploadResults"];
  [(NPTResults *)v4 setUploadResults:v10];

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"pingResults"];
  [(NPTResults *)v4 setPingResults:v11];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [v12 setWithObjects:{v13, v14, v15, objc_opt_class(), 0, v19.receiver, v19.super_class}];
  v17 = [v3 decodeObjectOfClasses:v16 forKey:@"metadata"];

  [(NPTResults *)v4 setMetadata:v17];
  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NPTResults allocWithZone:?]];
  v5 = [(NPTResults *)self downloadResults];
  [(NPTResults *)v4 setDownloadResults:v5];

  v6 = [(NPTResults *)self uploadResults];
  [(NPTResults *)v4 setUploadResults:v6];

  v7 = [(NPTResults *)self pingResults];
  [(NPTResults *)v4 setPingResults:v7];

  v8 = [(NPTResults *)self metadata];
  [(NPTResults *)v4 setMetadata:v8];

  return v4;
}

@end