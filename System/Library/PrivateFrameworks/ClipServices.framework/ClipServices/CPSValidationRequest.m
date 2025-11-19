@interface CPSValidationRequest
- (BOOL)isEqual:(id)a3;
- (CPSValidationRequest)initWithCoder:(id)a3;
- (CPSValidationRequest)initWithURLs:(id)a3 bundleIDs:(id)a4;
- (CPSValidationRequest)initWithValidation:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)validateWithCompletion:(id)a3;
@end

@implementation CPSValidationRequest

- (CPSValidationRequest)initWithURLs:(id)a3 bundleIDs:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CPSValidationRequest;
  v9 = [(CPSValidationRequest *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_urls, a3);
    objc_storeStrong(&v10->_bundleIdentifiers, a4);
    v11 = v10;
  }

  return v10;
}

- (CPSValidationRequest)initWithValidation:(id)a3
{
  v4 = a3;
  v5 = [v4 allKeys];
  v6 = [v4 allValues];

  v7 = [(CPSValidationRequest *)self initWithURLs:v5 bundleIDs:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(CPSValidationRequest *)self urls];
      v7 = [(CPSValidationRequest *)v5 urls];
      v8 = [v6 isEqualToArray:v7];

      if (v8)
      {
        v9 = [(CPSValidationRequest *)self bundleIdentifiers];
        v10 = [(CPSValidationRequest *)v5 bundleIdentifiers];
        v11 = [v9 isEqualToArray:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)validateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[CPSDaemonConnection sharedConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CPSValidationRequest_validateWithCompletion___block_invoke;
  v7[3] = &unk_278DCEAC0;
  v8 = v4;
  v6 = v4;
  [v5 performValidationWithRequest:self completion:v7];
}

- (CPSValidationRequest)initWithCoder:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CPSValidationRequest;
  v5 = [(CPSValidationRequest *)&v19 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"URLs"];
    urls = v5->_urls;
    v5->_urls = v9;

    v11 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"bundleIdentifiers"];
    bundleIdentifiers = v5->_bundleIdentifiers;
    v5->_bundleIdentifiers = v14;

    v16 = v5;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  urls = self->_urls;
  v5 = a3;
  [v5 encodeObject:urls forKey:@"URLs"];
  [v5 encodeObject:self->_bundleIdentifiers forKey:@"bundleIdentifiers"];
}

@end