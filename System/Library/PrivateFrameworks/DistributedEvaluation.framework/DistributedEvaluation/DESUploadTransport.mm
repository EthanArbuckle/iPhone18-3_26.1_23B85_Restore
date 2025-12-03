@interface DESUploadTransport
- (DESUploadTransport)initWithCoder:(id)coder;
- (DESUploadTransport)initWithDediscoRoute:(BOOL)route originRoute:(BOOL)originRoute parsecRoute:(BOOL)parsecRoute postBackBaseURL:(id)l;
- (DESUploadTransport)initWithPolicy:(id)policy recipe:(id)recipe;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DESUploadTransport

- (DESUploadTransport)initWithPolicy:(id)policy recipe:(id)recipe
{
  selfCopy = 0;
  if (policy && recipe)
  {
    policyCopy = policy;
    if ([recipe transportIsDedisco])
    {
      dediscoReturnRouteEnabled = [policyCopy dediscoReturnRouteEnabled];
      originReturnRouteEnabled = 0;
      parsecReturnRouteEnabled = 0;
    }

    else
    {
      originReturnRouteEnabled = [policyCopy originReturnRouteEnabled];
      parsecReturnRouteEnabled = [policyCopy parsecReturnRouteEnabled];
      dediscoReturnRouteEnabled = 0;
    }

    postbackBaseURL = [policyCopy postbackBaseURL];

    self = [(DESUploadTransport *)self initWithDediscoRoute:dediscoReturnRouteEnabled originRoute:originReturnRouteEnabled parsecRoute:parsecReturnRouteEnabled postBackBaseURL:postbackBaseURL];
    selfCopy = self;
  }

  return selfCopy;
}

- (DESUploadTransport)initWithDediscoRoute:(BOOL)route originRoute:(BOOL)originRoute parsecRoute:(BOOL)parsecRoute postBackBaseURL:(id)l
{
  routeCopy = route;
  lCopy = l;
  if (originRoute || parsecRoute || routeCopy)
  {
    v16.receiver = self;
    v16.super_class = DESUploadTransport;
    v13 = [(DESUploadTransport *)&v16 init];
    v14 = v13;
    if (v13)
    {
      v13->_dediscoRoute = routeCopy;
      v13->_originRoute = originRoute;
      v13->_parsecRoute = parsecRoute;
      objc_storeStrong(&v13->_postBackBaseURL, l);
    }

    self = v14;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  originRoute = [(DESUploadTransport *)self originRoute];
  parsecRoute = [(DESUploadTransport *)self parsecRoute];
  dediscoRoute = [(DESUploadTransport *)self dediscoRoute];
  postBackBaseURL = [(DESUploadTransport *)self postBackBaseURL];
  v10 = [v3 stringWithFormat:@"%@(origin=%d, parsec=%d, dedisco=%d, %@)", v5, originRoute, parsecRoute, dediscoRoute, postBackBaseURL];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_dediscoRoute forKey:@"dediscoRoute"];
  [coderCopy encodeBool:self->_originRoute forKey:@"originRoute"];
  [coderCopy encodeBool:self->_parsecRoute forKey:@"parsecRoute"];
  postBackBaseURL = self->_postBackBaseURL;
  if (postBackBaseURL)
  {
    [coderCopy encodeObject:postBackBaseURL forKey:@"postBackBaseURL"];
  }
}

- (DESUploadTransport)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"dediscoRoute"];
  v6 = [coderCopy decodeBoolForKey:@"originRoute"];
  v7 = [coderCopy decodeBoolForKey:@"parsecRoute"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"postBackBaseURL"];

  v9 = [(DESUploadTransport *)self initWithDediscoRoute:v5 originRoute:v6 parsecRoute:v7 postBackBaseURL:v8];
  return v9;
}

@end