@interface CAFRequest
+ (id)requestWithCharacteristic:(id)a3;
+ (id)requestWithControl:(id)a3;
- (CAFRequest)initWithCharacteristic:(id)a3;
- (CAFRequest)initWithControl:(id)a3;
- (CAFRequestKey)requestKey;
- (NSString)description;
- (id)currentDescriptionForCache:(id)a3;
@end

@implementation CAFRequest

+ (id)requestWithCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCharacteristic:v4];

  return v5;
}

- (CAFRequest)initWithCharacteristic:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CAFRequest;
  v6 = [(CAFRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_characteristic, a3);
    v8 = [[CAFCachedDescription alloc] initWithCacheable:v7];
    cachedDescription = v7->_cachedDescription;
    v7->_cachedDescription = v8;
  }

  return v7;
}

+ (id)requestWithControl:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithControl:v4];

  return v5;
}

- (CAFRequest)initWithControl:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CAFRequest;
  v6 = [(CAFRequest *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_control, a3);
    v8 = [[CAFCachedDescription alloc] initWithCacheable:v7];
    cachedDescription = v7->_cachedDescription;
    v7->_cachedDescription = v8;
  }

  return v7;
}

- (CAFRequestKey)requestKey
{
  v3 = [(CAFRequest *)self characteristic];
  if (v3)
  {
    v4 = [(CAFRequest *)self characteristic];
    [CAFRequestKey requestKeyForCharacteristic:v4];
  }

  else
  {
    v4 = [(CAFRequest *)self control];
    [CAFRequestKey requestKeyForControl:v4];
  }
  v5 = ;

  return v5;
}

- (NSString)description
{
  v2 = [(CAFRequest *)self cachedDescription];
  v3 = [v2 description];

  return v3;
}

- (id)currentDescriptionForCache:(id)a3
{
  v4 = [(CAFRequest *)self characteristic];

  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = [(CAFRequest *)self characteristic];
    v8 = [v7 priority];
    v9 = [(CAFRequest *)self characteristic];
    v10 = [v9 pluginID];
    v11 = [(CAFRequest *)self characteristic];
    v12 = [v11 instanceID];
    v13 = [v5 stringWithFormat:@"<%@: %p priority=%@ plugin=%@ instanceID=%@>", v6, self, v8, v10, v12];

LABEL_5:
    goto LABEL_6;
  }

  v14 = [(CAFRequest *)self control];

  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = v16;
  if (v14)
  {
    v7 = [(CAFRequest *)self control];
    v18 = [v7 priority];
    v19 = [(CAFRequest *)self control];
    v20 = [v19 pluginID];
    v21 = [(CAFRequest *)self control];
    v22 = [v21 instanceID];
    v13 = [v15 stringWithFormat:@"<%@: %p priority=%@ plugin=%@ instanceID=%@>", v17, self, v18, v20, v22];

    goto LABEL_5;
  }

  v13 = [v15 stringWithFormat:@"<%@: %p unknown request>", v16, self];
LABEL_6:

  return v13;
}

@end