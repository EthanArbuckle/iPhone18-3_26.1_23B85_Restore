@interface DESUploadTransport
- (DESUploadTransport)initWithCoder:(id)a3;
- (DESUploadTransport)initWithDediscoRoute:(BOOL)a3 originRoute:(BOOL)a4 parsecRoute:(BOOL)a5 postBackBaseURL:(id)a6;
- (DESUploadTransport)initWithPolicy:(id)a3 recipe:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DESUploadTransport

- (DESUploadTransport)initWithPolicy:(id)a3 recipe:(id)a4
{
  v5 = 0;
  if (a3 && a4)
  {
    v7 = a3;
    if ([a4 transportIsDedisco])
    {
      v8 = [v7 dediscoReturnRouteEnabled];
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v9 = [v7 originReturnRouteEnabled];
      v10 = [v7 parsecReturnRouteEnabled];
      v8 = 0;
    }

    v11 = [v7 postbackBaseURL];

    self = [(DESUploadTransport *)self initWithDediscoRoute:v8 originRoute:v9 parsecRoute:v10 postBackBaseURL:v11];
    v5 = self;
  }

  return v5;
}

- (DESUploadTransport)initWithDediscoRoute:(BOOL)a3 originRoute:(BOOL)a4 parsecRoute:(BOOL)a5 postBackBaseURL:(id)a6
{
  v9 = a3;
  v11 = a6;
  if (a4 || a5 || v9)
  {
    v16.receiver = self;
    v16.super_class = DESUploadTransport;
    v13 = [(DESUploadTransport *)&v16 init];
    v14 = v13;
    if (v13)
    {
      v13->_dediscoRoute = v9;
      v13->_originRoute = a4;
      v13->_parsecRoute = a5;
      objc_storeStrong(&v13->_postBackBaseURL, a6);
    }

    self = v14;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(DESUploadTransport *)self originRoute];
  v7 = [(DESUploadTransport *)self parsecRoute];
  v8 = [(DESUploadTransport *)self dediscoRoute];
  v9 = [(DESUploadTransport *)self postBackBaseURL];
  v10 = [v3 stringWithFormat:@"%@(origin=%d, parsec=%d, dedisco=%d, %@)", v5, v6, v7, v8, v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeBool:self->_dediscoRoute forKey:@"dediscoRoute"];
  [v5 encodeBool:self->_originRoute forKey:@"originRoute"];
  [v5 encodeBool:self->_parsecRoute forKey:@"parsecRoute"];
  postBackBaseURL = self->_postBackBaseURL;
  if (postBackBaseURL)
  {
    [v5 encodeObject:postBackBaseURL forKey:@"postBackBaseURL"];
  }
}

- (DESUploadTransport)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"dediscoRoute"];
  v6 = [v4 decodeBoolForKey:@"originRoute"];
  v7 = [v4 decodeBoolForKey:@"parsecRoute"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"postBackBaseURL"];

  v9 = [(DESUploadTransport *)self initWithDediscoRoute:v5 originRoute:v6 parsecRoute:v7 postBackBaseURL:v8];
  return v9;
}

@end