@interface CBClient
- (CBClient)init;
- (void)dealloc;
@end

@implementation CBClient

- (CBClient)init
{
  v10 = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = CBClient;
  v10 = [(CBClient *)&v8 init];
  if (!v10)
  {
    return v10;
  }

  v2 = objc_alloc_init(BrightnessSystemClient);
  v10->bsc = v2;
  if (v10->bsc)
  {
    v3 = [CBBlueLightClient alloc];
    v4 = [(CBBlueLightClient *)v3 initWithClientObj:v10->bsc];
    v10->_blueLightClient = v4;
    v5 = [CBAdaptationClient alloc];
    v6 = [(CBAdaptationClient *)v5 initWithClientObj:v10->bsc];
    v10->_adaptationClient = v6;
    return v10;
  }

  return 0;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  if (self->_blueLightClient)
  {
    MEMORY[0x1E69E5920](v4->_blueLightClient);
  }

  if (v4->_adaptationClient)
  {
    MEMORY[0x1E69E5920](v4->_adaptationClient);
  }

  if (v4->bsc)
  {
    [(BrightnessSystemClient *)v4->bsc registerNotificationBlock:0 forProperties:?];
    MEMORY[0x1E69E5920](v4->bsc);
  }

  v2.receiver = v4;
  v2.super_class = CBClient;
  [(CBClient *)&v2 dealloc];
}

@end