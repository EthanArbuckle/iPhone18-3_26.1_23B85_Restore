@interface CPSValidationRequest
- (BOOL)isEqual:(id)equal;
- (CPSValidationRequest)initWithCoder:(id)coder;
- (CPSValidationRequest)initWithURLs:(id)ls bundleIDs:(id)ds;
- (CPSValidationRequest)initWithValidation:(id)validation;
- (void)encodeWithCoder:(id)coder;
- (void)validateWithCompletion:(id)completion;
@end

@implementation CPSValidationRequest

- (CPSValidationRequest)initWithURLs:(id)ls bundleIDs:(id)ds
{
  lsCopy = ls;
  dsCopy = ds;
  v13.receiver = self;
  v13.super_class = CPSValidationRequest;
  v9 = [(CPSValidationRequest *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_urls, ls);
    objc_storeStrong(&v10->_bundleIdentifiers, ds);
    v11 = v10;
  }

  return v10;
}

- (CPSValidationRequest)initWithValidation:(id)validation
{
  validationCopy = validation;
  allKeys = [validationCopy allKeys];
  allValues = [validationCopy allValues];

  v7 = [(CPSValidationRequest *)self initWithURLs:allKeys bundleIDs:allValues];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      urls = [(CPSValidationRequest *)self urls];
      urls2 = [(CPSValidationRequest *)v5 urls];
      v8 = [urls isEqualToArray:urls2];

      if (v8)
      {
        bundleIdentifiers = [(CPSValidationRequest *)self bundleIdentifiers];
        bundleIdentifiers2 = [(CPSValidationRequest *)v5 bundleIdentifiers];
        v11 = [bundleIdentifiers isEqualToArray:bundleIdentifiers2];
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

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[CPSDaemonConnection sharedConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__CPSValidationRequest_validateWithCompletion___block_invoke;
  v7[3] = &unk_278DCEAC0;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 performValidationWithRequest:self completion:v7];
}

- (CPSValidationRequest)initWithCoder:(id)coder
{
  v21[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
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
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"URLs"];
    urls = v5->_urls;
    v5->_urls = v9;

    v11 = MEMORY[0x277CBEB98];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"bundleIdentifiers"];
    bundleIdentifiers = v5->_bundleIdentifiers;
    v5->_bundleIdentifiers = v14;

    v16 = v5;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  urls = self->_urls;
  coderCopy = coder;
  [coderCopy encodeObject:urls forKey:@"URLs"];
  [coderCopy encodeObject:self->_bundleIdentifiers forKey:@"bundleIdentifiers"];
}

@end