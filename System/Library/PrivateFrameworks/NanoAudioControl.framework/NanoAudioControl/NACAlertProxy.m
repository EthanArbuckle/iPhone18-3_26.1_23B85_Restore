@interface NACAlertProxy
+ (id)alertProxyWithConfiguration:(id)a3;
- (id)_initWithConfiguration:(id)a3;
- (void)play;
- (void)stopWithOptions:(id)a3;
@end

@implementation NACAlertProxy

+ (id)alertProxyWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithConfiguration:v4];

  return v5;
}

- (id)_initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NACAlertProxy;
  v6 = [(NACAlertProxy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_alertConfiguration, a3);
  }

  return v7;
}

- (void)play
{
  v3 = +[NACXPCClient sharedClient];
  [v3 playToneWithConfiguration:self->_alertConfiguration];
}

- (void)stopWithOptions:(id)a3
{
  v3 = a3;
  v4 = +[NACXPCClient sharedClient];
  [v4 stopToneWithOptions:v3];
}

@end