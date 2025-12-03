@interface CBClient
- (CBClient)init;
- (void)dealloc;
@end

@implementation CBClient

- (CBClient)init
{
  selfCopy = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = CBClient;
  selfCopy = [(CBClient *)&v8 init];
  if (!selfCopy)
  {
    return selfCopy;
  }

  v2 = objc_alloc_init(BrightnessSystemClient);
  selfCopy->bsc = v2;
  if (selfCopy->bsc)
  {
    v3 = [CBBlueLightClient alloc];
    v4 = [(CBBlueLightClient *)v3 initWithClientObj:selfCopy->bsc];
    selfCopy->_blueLightClient = v4;
    v5 = [CBAdaptationClient alloc];
    v6 = [(CBAdaptationClient *)v5 initWithClientObj:selfCopy->bsc];
    selfCopy->_adaptationClient = v6;
    return selfCopy;
  }

  return 0;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  if (self->_blueLightClient)
  {
    MEMORY[0x1E69E5920](selfCopy->_blueLightClient);
  }

  if (selfCopy->_adaptationClient)
  {
    MEMORY[0x1E69E5920](selfCopy->_adaptationClient);
  }

  if (selfCopy->bsc)
  {
    [(BrightnessSystemClient *)selfCopy->bsc registerNotificationBlock:0 forProperties:?];
    MEMORY[0x1E69E5920](selfCopy->bsc);
  }

  v2.receiver = selfCopy;
  v2.super_class = CBClient;
  [(CBClient *)&v2 dealloc];
}

@end