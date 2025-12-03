@interface DCCredentialResponse
- (DCCredentialResponse)initWithCoder:(id)coder;
- (DCCredentialResponse)initWithResponseData:(id)data elementsByNamespace:(id)namespace;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DCCredentialResponse

- (DCCredentialResponse)initWithResponseData:(id)data elementsByNamespace:(id)namespace
{
  dataCopy = data;
  namespaceCopy = namespace;
  v12.receiver = self;
  v12.super_class = DCCredentialResponse;
  v8 = [(DCCredentialResponse *)&v12 init];
  if (v8)
  {
    v9 = [dataCopy copy];
    [(DCCredentialResponse *)v8 setResponseData:v9];

    v10 = [namespaceCopy copy];
    [(DCCredentialResponse *)v8 setElementsByNamespace:v10];
  }

  return v8;
}

- (DCCredentialResponse)initWithCoder:(id)coder
{
  v15[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_responseData);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v15[2] = objc_opt_class();
  v15[3] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  v9 = [MEMORY[0x277CBEB98] setWithArray:v8];
  v10 = NSStringFromSelector(sel_elementsByNamespace);
  v11 = [coderCopy decodeObjectOfClasses:v9 forKey:v10];

  selfCopy = 0;
  if (v7 && v11)
  {
    self = [(DCCredentialResponse *)self initWithResponseData:v7 elementsByNamespace:v11];
    selfCopy = self;
  }

  v13 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  responseData = [(DCCredentialResponse *)self responseData];
  v6 = NSStringFromSelector(sel_responseData);
  [coderCopy encodeObject:responseData forKey:v6];

  elementsByNamespace = [(DCCredentialResponse *)self elementsByNamespace];
  v7 = NSStringFromSelector(sel_elementsByNamespace);
  [coderCopy encodeObject:elementsByNamespace forKey:v7];
}

@end