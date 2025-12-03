@interface CAFRequest
+ (id)requestWithCharacteristic:(id)characteristic;
+ (id)requestWithControl:(id)control;
- (CAFRequest)initWithCharacteristic:(id)characteristic;
- (CAFRequest)initWithControl:(id)control;
- (CAFRequestKey)requestKey;
- (NSString)description;
- (id)currentDescriptionForCache:(id)cache;
@end

@implementation CAFRequest

+ (id)requestWithCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v5 = [[self alloc] initWithCharacteristic:characteristicCopy];

  return v5;
}

- (CAFRequest)initWithCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v11.receiver = self;
  v11.super_class = CAFRequest;
  v6 = [(CAFRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_characteristic, characteristic);
    v8 = [[CAFCachedDescription alloc] initWithCacheable:v7];
    cachedDescription = v7->_cachedDescription;
    v7->_cachedDescription = v8;
  }

  return v7;
}

+ (id)requestWithControl:(id)control
{
  controlCopy = control;
  v5 = [[self alloc] initWithControl:controlCopy];

  return v5;
}

- (CAFRequest)initWithControl:(id)control
{
  controlCopy = control;
  v11.receiver = self;
  v11.super_class = CAFRequest;
  v6 = [(CAFRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_control, control);
    v8 = [[CAFCachedDescription alloc] initWithCacheable:v7];
    cachedDescription = v7->_cachedDescription;
    v7->_cachedDescription = v8;
  }

  return v7;
}

- (CAFRequestKey)requestKey
{
  characteristic = [(CAFRequest *)self characteristic];
  if (characteristic)
  {
    characteristic2 = [(CAFRequest *)self characteristic];
    [CAFRequestKey requestKeyForCharacteristic:characteristic2];
  }

  else
  {
    characteristic2 = [(CAFRequest *)self control];
    [CAFRequestKey requestKeyForControl:characteristic2];
  }
  v5 = ;

  return v5;
}

- (NSString)description
{
  cachedDescription = [(CAFRequest *)self cachedDescription];
  v3 = [cachedDescription description];

  return v3;
}

- (id)currentDescriptionForCache:(id)cache
{
  characteristic = [(CAFRequest *)self characteristic];

  if (characteristic)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    characteristic2 = [(CAFRequest *)self characteristic];
    priority = [characteristic2 priority];
    characteristic3 = [(CAFRequest *)self characteristic];
    pluginID = [characteristic3 pluginID];
    characteristic4 = [(CAFRequest *)self characteristic];
    instanceID = [characteristic4 instanceID];
    v13 = [v5 stringWithFormat:@"<%@: %p priority=%@ plugin=%@ instanceID=%@>", v6, self, priority, pluginID, instanceID];

LABEL_5:
    goto LABEL_6;
  }

  control = [(CAFRequest *)self control];

  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = v16;
  if (control)
  {
    characteristic2 = [(CAFRequest *)self control];
    priority2 = [characteristic2 priority];
    control2 = [(CAFRequest *)self control];
    pluginID2 = [control2 pluginID];
    control3 = [(CAFRequest *)self control];
    instanceID2 = [control3 instanceID];
    v13 = [v15 stringWithFormat:@"<%@: %p priority=%@ plugin=%@ instanceID=%@>", v17, self, priority2, pluginID2, instanceID2];

    goto LABEL_5;
  }

  v13 = [v15 stringWithFormat:@"<%@: %p unknown request>", v16, self];
LABEL_6:

  return v13;
}

@end