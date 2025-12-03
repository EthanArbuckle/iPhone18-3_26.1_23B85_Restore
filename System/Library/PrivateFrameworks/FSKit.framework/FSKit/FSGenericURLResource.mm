@interface FSGenericURLResource
+ (id)resourceWithURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (FSGenericURLResource)initWithCoder:(id)coder;
- (FSGenericURLResource)initWithURL:(id)l;
- (id)getResourceID;
- (id)makeProxy;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSGenericURLResource

- (FSGenericURLResource)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = FSGenericURLResource;
  initResource = [(FSResource *)&v9 initResource];
  v7 = initResource;
  if (initResource)
  {
    objc_storeStrong(initResource + 2, l);
  }

  return v7;
}

+ (id)resourceWithURL:(id)l
{
  lCopy = l;
  v5 = [[self alloc] initWithURL:lCopy];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = FSGenericURLResource;
  coderCopy = coder;
  [(FSResource *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_url forKey:{@"FSResource.URL", v5.receiver, v5.super_class}];
}

- (FSGenericURLResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v9);
  }

  v10.receiver = self;
  v10.super_class = FSGenericURLResource;
  v5 = [(FSResource *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSResource.URL"];
    url = v5->_url;
    v5->_url = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v4 = [(FSResource *)FSGenericURLResource dynamicCast:equal];
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
  v4 = [v2 stringWithFormat:@"FSGenericURLResource:%@", absoluteString];

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