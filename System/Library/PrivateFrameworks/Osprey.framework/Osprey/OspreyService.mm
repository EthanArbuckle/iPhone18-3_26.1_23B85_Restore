@interface OspreyService
- (OspreyService)initWithConnectionConfiguration:(id)configuration;
- (OspreyService)initWithConnectionURL:(id)l;
@end

@implementation OspreyService

- (OspreyService)initWithConnectionURL:(id)l
{
  lCopy = l;
  v5 = objc_alloc_init(OspreyConnectionConfiguration);
  [(OspreyConnectionConfiguration *)v5 setConnectionUrl:lCopy];

  v6 = [(OspreyService *)self initWithConnectionConfiguration:v5];
  return v6;
}

- (OspreyService)initWithConnectionConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = OspreyService;
  v5 = [(OspreyService *)&v11 init];
  if (v5)
  {
    v6 = +[OspreyServiceConfiguration sharedConfiguration];
    connectionPool = [v6 connectionPool];
    v8 = [connectionPool connectionForConfiguration:configurationCopy];
    channel = v5->_channel;
    v5->_channel = v8;
  }

  return v5;
}

@end