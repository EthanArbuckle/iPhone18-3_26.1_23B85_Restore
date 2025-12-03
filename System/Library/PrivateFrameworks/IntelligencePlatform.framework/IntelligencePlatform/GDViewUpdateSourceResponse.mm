@interface GDViewUpdateSourceResponse
- (GDViewUpdateSourceResponse)initWithCoder:(id)coder;
- (GDViewUpdateSourceResponse)initWithConfigIdentifier:(id)identifier bookmark:(id)bookmark response:(id)response;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDViewUpdateSourceResponse

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  configIdentifier = self->_configIdentifier;
  v5 = [v3 initWithFormat:@"<GDViewUpdateSourceResponse configId: %@, response: %@>", configIdentifier, self->_response];

  return v5;
}

- (GDViewUpdateSourceResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E69C5D78];
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_configIdentifier);
  v9 = [v6 robustDecodeObjectOfClass:v7 forKey:v8 withCoder:coderCopy expectNonNull:1 errorDomain:@"GDViewUpdateSourceKeyError" errorCode:9 logHandle:0];

  if (v9 && ([coderCopy error], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v12 = MEMORY[0x1E69C5D78];
    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_bookmark);
    v15 = [v12 robustDecodeObjectOfClass:v13 forKey:v14 withCoder:coderCopy expectNonNull:0 errorDomain:@"GDViewUpdateSourceKeyError" errorCode:9 logHandle:0];

    error = [coderCopy error];

    if (error)
    {
      selfCopy = 0;
    }

    else
    {
      v17 = MEMORY[0x1E69C5D78];
      v18 = objc_opt_class();
      v19 = NSStringFromSelector(sel_response);
      v20 = [v17 robustDecodeObjectOfClass:v18 forKey:v19 withCoder:coderCopy expectNonNull:1 errorDomain:@"GDViewUpdateSourceKeyError" errorCode:9 logHandle:0];

      if (v20 && ([coderCopy error], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
      {
        self = [(GDViewUpdateSourceResponse *)self initWithConfigIdentifier:v9 bookmark:v15 response:v20];
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }
  }

  else
  {
    selfCopy = 0;
  }

  objc_autoreleasePoolPop(v5);
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  configIdentifier = self->_configIdentifier;
  v6 = NSStringFromSelector(sel_configIdentifier);
  [coderCopy encodeObject:configIdentifier forKey:v6];

  bookmark = self->_bookmark;
  v8 = NSStringFromSelector(sel_bookmark);
  [coderCopy encodeObject:bookmark forKey:v8];

  response = self->_response;
  v10 = NSStringFromSelector(sel_response);
  [coderCopy encodeObject:response forKey:v10];

  objc_autoreleasePoolPop(v4);
}

- (GDViewUpdateSourceResponse)initWithConfigIdentifier:(id)identifier bookmark:(id)bookmark response:(id)response
{
  identifierCopy = identifier;
  bookmarkCopy = bookmark;
  responseCopy = response;
  v17.receiver = self;
  v17.super_class = GDViewUpdateSourceResponse;
  v12 = [(GDViewUpdateSourceResponse *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configIdentifier, identifier);
    objc_storeStrong(&v13->_bookmark, bookmark);
    v14 = [responseCopy copy];
    response = v13->_response;
    v13->_response = v14;
  }

  return v13;
}

@end