@interface FSGenericURLResource
+ (id)resourceWithURL:(id)a3;
- (BOOL)isEqual:(id)a3;
- (FSGenericURLResource)initWithCoder:(id)a3;
- (FSGenericURLResource)initWithURL:(id)a3;
- (id)getResourceID;
- (id)makeProxy;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FSGenericURLResource

- (FSGenericURLResource)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FSGenericURLResource;
  v6 = [(FSResource *)&v9 initResource];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 2, a3);
  }

  return v7;
}

+ (id)resourceWithURL:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithURL:v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = FSGenericURLResource;
  v4 = a3;
  [(FSResource *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_url forKey:{@"FSResource.URL", v5.receiver, v5.super_class}];
}

- (FSGenericURLResource)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v9);
  }

  v10.receiver = self;
  v10.super_class = FSGenericURLResource;
  v5 = [(FSResource *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSResource.URL"];
    url = v5->_url;
    v5->_url = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = [(FSResource *)FSGenericURLResource dynamicCast:a3];
  v5 = v4;
  if (v4)
  {
    url = self->_url;
    v7 = [v4 url];
    v8 = [(NSURL *)url isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getResourceID
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(NSURL *)self->_url absoluteString];
  v4 = [v2 stringWithFormat:@"FSGenericURLResource:%@", v3];

  return v4;
}

- (id)makeProxy
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(FSGenericURLResource *)self url];
  v5 = [v3 initWithURL:v4];

  return v5;
}

@end