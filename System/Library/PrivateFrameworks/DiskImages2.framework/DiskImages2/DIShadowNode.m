@interface DIShadowNode
- (BOOL)isEqual:(id)a3;
- (DIShadowNode)initWithCoder:(id)a3;
- (DIShadowNode)initWithURL:(id)a3 isCache:(BOOL)a4;
- (id)description;
- (unint64_t)hash;
- (void)createBackendWithFlags:(int)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DIShadowNode

- (DIShadowNode)initWithURL:(id)a3 isCache:(BOOL)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = DIShadowNode;
  v7 = [(DIShadowNode *)&v12 init];
  if (v7)
  {
    v8 = [DIURL newDIURLWithNSURL:v6];
    URL = v7->_URL;
    v7->_URL = v8;

    v7->_isCache = a4;
    fileBackend = v7->_fileBackend;
    v7->_fileBackend = 0;
    v7->_numBlocks = 0;
  }

  return v7;
}

- (void)createBackendWithFlags:(int)a3
{
  fileBackend = self->_fileBackend;
  self->_fileBackend = 0;

  v5 = [FileLocalXPC alloc];
  v8 = [(DIShadowNode *)self URL];
  v6 = [FileLocalXPC initWithURL:v5 fileOpenFlags:"initWithURL:fileOpenFlags:"];
  v7 = self->_fileBackend;
  self->_fileBackend = v6;
}

- (DIShadowNode)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DIShadowNode;
  v5 = [(DIShadowNode *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;

    v5->_isCache = [v4 decodeBoolForKey:@"isCache"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fileBackend"];
    fileBackend = v5->_fileBackend;
    v5->_fileBackend = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(DIShadowNode *)self URL];
  [v6 encodeObject:v4 forKey:@"URL"];

  [v6 encodeBool:-[DIShadowNode isCache](self forKey:{"isCache"), @"isCache"}];
  v5 = [(DIShadowNode *)self fileBackend];
  [v6 encodeObject:v5 forKey:@"fileBackend"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DIShadowNode *)self URL];
  v5 = [(DIShadowNode *)self isCache];
  v6 = @"Shadow";
  if (v5)
  {
    v6 = @"Cache";
  }

  v7 = [v3 stringWithFormat:@"%@: %@", v4, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(DIShadowNode *)self URL];
    v7 = [v5 URL];
    if ([v6 isEqual:v7])
    {
      v8 = [(DIShadowNode *)self isCache];
      v9 = v8 ^ [v5 isCache] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(DIShadowNode *)self URL];
  v4 = [v3 hash];

  v5 = [(DIShadowNode *)self isCache];
  v6 = 2221;
  if (v5)
  {
    v6 = 2207;
  }

  return v6 - v4 + 32 * v4 + 961;
}

@end