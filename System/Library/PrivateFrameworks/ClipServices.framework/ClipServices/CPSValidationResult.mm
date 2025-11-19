@interface CPSValidationResult
- (CPSValidationResult)initWithCoder:(id)a3;
- (CPSValidationResult)initWithRequest:(id)a3 response:(id)a4;
- (NSDictionary)availabilities;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSValidationResult

- (CPSValidationResult)initWithRequest:(id)a3 response:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CPSValidationResult;
  v9 = [(CPSValidationResult *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_response, a4);
    v11 = v10;
  }

  return v10;
}

- (NSDictionary)availabilities
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(CPSValidationRequest *)self->_request urls];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(CPSValidationResult *)self validBundleIDForURL:v9];
        v11 = v10 != 0;

        v12 = [MEMORY[0x277CCABB0] numberWithBool:v11];
        [v3 setObject:v12 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (CPSValidationResult)initWithCoder:(id)a3
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CPSValidationResult;
  v5 = [(CPSValidationResult *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"request"];
    request = v5->_request;
    v5->_request = v6;

    v8 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"response"];
    response = v5->_response;
    v5->_response = v11;

    v13 = v5;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  request = self->_request;
  v5 = a3;
  [v5 encodeObject:request forKey:@"request"];
  [v5 encodeObject:self->_response forKey:@"response"];
}

@end