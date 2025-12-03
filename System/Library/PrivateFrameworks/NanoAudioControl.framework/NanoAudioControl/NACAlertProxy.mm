@interface NACAlertProxy
+ (id)alertProxyWithConfiguration:(id)configuration;
- (id)_initWithConfiguration:(id)configuration;
- (void)play;
- (void)stopWithOptions:(id)options;
@end

@implementation NACAlertProxy

+ (id)alertProxyWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [[self alloc] _initWithConfiguration:configurationCopy];

  return v5;
}

- (id)_initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = NACAlertProxy;
  v6 = [(NACAlertProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_alertConfiguration, configuration);
  }

  return v7;
}

- (void)play
{
  v3 = +[NACXPCClient sharedClient];
  [v3 playToneWithConfiguration:self->_alertConfiguration];
}

- (void)stopWithOptions:(id)options
{
  optionsCopy = options;
  v4 = +[NACXPCClient sharedClient];
  [v4 stopToneWithOptions:optionsCopy];
}

@end