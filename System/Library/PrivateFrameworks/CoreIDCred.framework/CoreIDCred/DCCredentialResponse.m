@interface DCCredentialResponse
- (DCCredentialResponse)initWithCoder:(id)a3;
- (DCCredentialResponse)initWithResponseData:(id)a3 elementsByNamespace:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DCCredentialResponse

- (DCCredentialResponse)initWithResponseData:(id)a3 elementsByNamespace:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = DCCredentialResponse;
  v8 = [(DCCredentialResponse *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    [(DCCredentialResponse *)v8 setResponseData:v9];

    v10 = [v7 copy];
    [(DCCredentialResponse *)v8 setElementsByNamespace:v10];
  }

  return v8;
}

- (DCCredentialResponse)initWithCoder:(id)a3
{
  v15[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_responseData);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v15[2] = objc_opt_class();
  v15[3] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  v9 = [MEMORY[0x277CBEB98] setWithArray:v8];
  v10 = NSStringFromSelector(sel_elementsByNamespace);
  v11 = [v4 decodeObjectOfClasses:v9 forKey:v10];

  v12 = 0;
  if (v7 && v11)
  {
    self = [(DCCredentialResponse *)self initWithResponseData:v7 elementsByNamespace:v11];
    v12 = self;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DCCredentialResponse *)self responseData];
  v6 = NSStringFromSelector(sel_responseData);
  [v4 encodeObject:v5 forKey:v6];

  v8 = [(DCCredentialResponse *)self elementsByNamespace];
  v7 = NSStringFromSelector(sel_elementsByNamespace);
  [v4 encodeObject:v8 forKey:v7];
}

@end