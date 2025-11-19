@interface OspreyService
- (OspreyService)initWithConnectionConfiguration:(id)a3;
- (OspreyService)initWithConnectionURL:(id)a3;
@end

@implementation OspreyService

- (OspreyService)initWithConnectionURL:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(OspreyConnectionConfiguration);
  [(OspreyConnectionConfiguration *)v5 setConnectionUrl:v4];

  v6 = [(OspreyService *)self initWithConnectionConfiguration:v5];
  return v6;
}

- (OspreyService)initWithConnectionConfiguration:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = OspreyService;
  v5 = [(OspreyService *)&v11 init];
  if (v5)
  {
    v6 = +[OspreyServiceConfiguration sharedConfiguration];
    v7 = [v6 connectionPool];
    v8 = [v7 connectionForConfiguration:v4];
    channel = v5->_channel;
    v5->_channel = v8;
  }

  return v5;
}

@end