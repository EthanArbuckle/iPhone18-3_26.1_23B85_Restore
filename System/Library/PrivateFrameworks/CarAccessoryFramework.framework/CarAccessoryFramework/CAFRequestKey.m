@interface CAFRequestKey
+ (id)requestKeyForCharacteristic:(id)a3;
+ (id)requestKeyForControl:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CAFRequestKey)initWithPriority:(id)a3 pluginID:(id)a4;
- (NSString)description;
- (id)copyWithPriority:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)currentDescriptionForCache:(id)a3;
- (unint64_t)hash;
@end

@implementation CAFRequestKey

+ (id)requestKeyForCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 priority];
  v7 = [v4 pluginID];

  v8 = [v5 initWithPriority:v6 pluginID:v7];

  return v8;
}

+ (id)requestKeyForControl:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 priority];
  v7 = [v4 pluginID];

  v8 = [v5 initWithPriority:v6 pluginID:v7];

  return v8;
}

- (CAFRequestKey)initWithPriority:(id)a3 pluginID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CAFRequestKey;
  v9 = [(CAFRequestKey *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_priority, a3);
    objc_storeStrong(&v10->_pluginID, a4);
    v11 = [[CAFCachedDescription alloc] initWithCacheable:v10];
    cachedDescription = v10->_cachedDescription;
    v10->_cachedDescription = v11;
  }

  return v10;
}

- (NSString)description
{
  v2 = [(CAFRequestKey *)self cachedDescription];
  v3 = [v2 description];

  return v3;
}

- (id)copyWithPriority:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(CAFRequestKey *)self pluginID];
  v7 = [v5 initWithPriority:v4 pluginID:v6];

  return v7;
}

- (id)currentDescriptionForCache:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [(CAFRequestKey *)self priority];
  v7 = [(CAFRequestKey *)self pluginID];
  v8 = [v4 stringWithFormat:@"<%@: %p priority: %@ plugin=%@ >", v5, self, v6, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(CAFRequestKey *)self priority];
  v6 = [(CAFRequestKey *)self pluginID];
  v7 = [v4 initWithPriority:v5 pluginID:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 != self)
  {
    objc_opt_class();
    v5 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = [(CAFRequestKey *)self priority];
        v7 = [(CAFRequestKey *)v5 priority];

        if (v6 != v7)
        {
          v8 = 0;
LABEL_11:

          goto LABEL_12;
        }

        v9 = [(CAFRequestKey *)self pluginID];
        v10 = [(CAFRequestKey *)v5 pluginID];
        v8 = [v9 isEqual:v10];
      }

      else
      {
        v8 = 0;
        v9 = v5;
        v5 = 0;
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    goto LABEL_11;
  }

  v8 = 1;
LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  v2 = [(CAFRequestKey *)self pluginID];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

@end