@interface GDViewUpdateNameAndRequests
- (GDViewUpdateNameAndRequests)initWithCoder:(id)coder;
- (GDViewUpdateNameAndRequests)initWithName:(id)name requests:(id)requests;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDViewUpdateNameAndRequests

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<GDViewUpdateNameAndRequests %@, requests: %@>", self->_name, self->_requests];

  return v2;
}

- (GDViewUpdateNameAndRequests)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E69C5D78];
  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_name);
  v9 = [v6 robustDecodeObjectOfClass:v7 forKey:v8 withCoder:coderCopy expectNonNull:1 errorDomain:@"GDViewUpdateSourceKeyError" errorCode:9 logHandle:0];

  if (v9 && ([coderCopy error], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v12 = MEMORY[0x1E69C5D78];
    v13 = objc_autoreleasePoolPush();
    v14 = objc_alloc(MEMORY[0x1E695DFD8]);
    v15 = objc_opt_class();
    v16 = [v14 initWithObjects:{v15, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v13);
    v17 = NSStringFromSelector(sel_requests);
    v18 = [v12 robustDecodeObjectOfClasses:v16 forKey:v17 withCoder:coderCopy expectNonNull:1 errorDomain:@"GDViewUpdateSourceKeyError" errorCode:9 logHandle:0];

    if (v18 && ([coderCopy error], v19 = objc_claimAutoreleasedReturnValue(), v19, !v19))
    {
      self = [(GDViewUpdateNameAndRequests *)self initWithName:v9 requests:v18];
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
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
  name = self->_name;
  v6 = NSStringFromSelector(sel_name);
  [coderCopy encodeObject:name forKey:v6];

  requests = self->_requests;
  v8 = NSStringFromSelector(sel_requests);
  [coderCopy encodeObject:requests forKey:v8];

  objc_autoreleasePoolPop(v4);
}

- (GDViewUpdateNameAndRequests)initWithName:(id)name requests:(id)requests
{
  nameCopy = name;
  requestsCopy = requests;
  v12.receiver = self;
  v12.super_class = GDViewUpdateNameAndRequests;
  v9 = [(GDViewUpdateNameAndRequests *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_requests, requests);
  }

  return v10;
}

@end