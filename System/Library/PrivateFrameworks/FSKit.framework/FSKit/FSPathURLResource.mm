@interface FSPathURLResource
+ (id)resourceWithURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (FSPathURLResource)initWithCoder:(id)coder;
- (FSPathURLResource)initWithURL:(id)l writable:(BOOL)writable;
- (id)getResourceID;
- (id)initAsSecureURL:(id)l writable:(BOOL)writable;
- (id)makeProxy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSPathURLResource

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = FSPathURLResource;
  coderCopy = coder;
  [(FSResource *)&v7 encodeWithCoder:coderCopy];
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

  [coderCopy encodeObject:urlWrapper forKey:{v6, v7.receiver, v7.super_class}];
  [coderCopy encodeBool:self->_writable forKey:@"FSResource.writable"];
}

- (FSPathURLResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v12);
  }

  v13.receiver = self;
  v13.super_class = FSPathURLResource;
  v5 = [(FSResource *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSResource.Wrapper"];
    urlWrapper = v5->_urlWrapper;
    v5->_urlWrapper = v6;

    v8 = v5->_urlWrapper;
    if (v8)
    {
      [(NSSecurityScopedURLWrapper *)v8 url];
    }

    else
    {
      [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSResource.URL"];
    }
    v9 = ;
    url = v5->_url;
    v5->_url = v9;

    v5->_writable = [coderCopy decodeBoolForKey:@"FSResource.writable"];
  }

  return v5;
}

- (FSPathURLResource)initWithURL:(id)l writable:(BOOL)writable
{
  writableCopy = writable;
  lCopy = l;
  if ([lCopy isFileURL])
  {
    v14.receiver = self;
    v14.super_class = FSPathURLResource;
    initResource = [(FSResource *)&v14 initResource];
    if (initResource)
    {
      v9 = MEMORY[0x24C220DB0](lCopy);
      if (v9)
      {
        v10 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:lCopy readonly:!writableCopy extensionClass:0];
        v11 = *(initResource + 4);
        *(initResource + 4) = v10;
      }

      *(initResource + 16) = writableCopy;
      objc_storeStrong(initResource + 3, l);
    }

    self = initResource;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  v4 = [(FSResource *)FSPathURLResource dynamicCast:equal];
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
  absoluteString = [(NSURL *)self->_url absoluteString];
  v4 = [v2 stringWithFormat:@"FSPathURLResource:%@", absoluteString];

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

- (id)initAsSecureURL:(id)l writable:(BOOL)writable
{
  writableCopy = writable;
  lCopy = l;
  if ([lCopy isFileURL])
  {
    v15.receiver = self;
    v15.super_class = FSPathURLResource;
    initResource = [(FSResource *)&v15 initResource];
    if (initResource)
    {
      v8 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:lCopy readonly:!writableCopy extensionClass:0];
      v9 = initResource[4];
      initResource[4] = v8;

      v10 = initResource[4];
      if (v10)
      {
        v11 = [v10 url];
        v12 = initResource[3];
        initResource[3] = v11;
      }

      else
      {
        v12 = initResource;
        initResource = 0;
      }
    }

    self = initResource;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)resourceWithURL:(id)l
{
  lCopy = l;
  v5 = [[self alloc] initWithURL:lCopy readOnly:0];

  return v5;
}

@end