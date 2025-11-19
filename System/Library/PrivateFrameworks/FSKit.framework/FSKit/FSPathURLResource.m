@interface FSPathURLResource
+ (id)resourceWithURL:(id)a3;
- (BOOL)isEqual:(id)a3;
- (FSPathURLResource)initWithCoder:(id)a3;
- (FSPathURLResource)initWithURL:(id)a3 writable:(BOOL)a4;
- (id)getResourceID;
- (id)initAsSecureURL:(id)a3 writable:(BOOL)a4;
- (id)makeProxy;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FSPathURLResource

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = FSPathURLResource;
  v4 = a3;
  [(FSResource *)&v7 encodeWithCoder:v4];
  urlWrapper = self->_urlWrapper;
  if (urlWrapper)
  {
    v6 = @"FSResource.Wrapper";
  }

  else
  {
    urlWrapper = self->_url;
    v6 = @"FSResource.URL";
  }

  [v4 encodeObject:urlWrapper forKey:{v6, v7.receiver, v7.super_class}];
  [v4 encodeBool:self->_writable forKey:@"FSResource.writable"];
}

- (FSPathURLResource)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v12);
  }

  v13.receiver = self;
  v13.super_class = FSPathURLResource;
  v5 = [(FSResource *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSResource.Wrapper"];
    urlWrapper = v5->_urlWrapper;
    v5->_urlWrapper = v6;

    v8 = v5->_urlWrapper;
    if (v8)
    {
      [(NSSecurityScopedURLWrapper *)v8 url];
    }

    else
    {
      [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSResource.URL"];
    }
    v9 = ;
    url = v5->_url;
    v5->_url = v9;

    v5->_writable = [v4 decodeBoolForKey:@"FSResource.writable"];
  }

  return v5;
}

- (FSPathURLResource)initWithURL:(id)a3 writable:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if ([v7 isFileURL])
  {
    v14.receiver = self;
    v14.super_class = FSPathURLResource;
    v8 = [(FSResource *)&v14 initResource];
    if (v8)
    {
      v9 = MEMORY[0x24C220DB0](v7);
      if (v9)
      {
        v10 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:v7 readonly:!v4 extensionClass:0];
        v11 = *(v8 + 4);
        *(v8 + 4) = v10;
      }

      *(v8 + 16) = v4;
      objc_storeStrong(v8 + 3, a3);
    }

    self = v8;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = [(FSResource *)FSPathURLResource dynamicCast:a3];
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
  v4 = [v2 stringWithFormat:@"FSPathURLResource:%@", v3];

  return v4;
}

- (id)makeProxy
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(FSPathURLResource *)self url];
  v5 = [v3 initWithURL:v4 readOnly:1];

  v6 = v5[4];
  v5[4] = 0;

  return v5;
}

- (id)initAsSecureURL:(id)a3 writable:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([v6 isFileURL])
  {
    v15.receiver = self;
    v15.super_class = FSPathURLResource;
    v7 = [(FSResource *)&v15 initResource];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:v6 readonly:!v4 extensionClass:0];
      v9 = v7[4];
      v7[4] = v8;

      v10 = v7[4];
      if (v10)
      {
        v11 = [v10 url];
        v12 = v7[3];
        v7[3] = v11;
      }

      else
      {
        v12 = v7;
        v7 = 0;
      }
    }

    self = v7;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)resourceWithURL:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithURL:v4 readOnly:0];

  return v5;
}

@end