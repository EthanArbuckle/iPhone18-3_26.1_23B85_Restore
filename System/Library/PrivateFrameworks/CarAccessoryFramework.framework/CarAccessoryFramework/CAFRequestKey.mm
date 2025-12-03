@interface CAFRequestKey
+ (id)requestKeyForCharacteristic:(id)characteristic;
+ (id)requestKeyForControl:(id)control;
- (BOOL)isEqual:(id)equal;
- (CAFRequestKey)initWithPriority:(id)priority pluginID:(id)d;
- (NSString)description;
- (id)copyWithPriority:(id)priority;
- (id)copyWithZone:(_NSZone *)zone;
- (id)currentDescriptionForCache:(id)cache;
- (unint64_t)hash;
@end

@implementation CAFRequestKey

+ (id)requestKeyForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v5 = [self alloc];
  priority = [characteristicCopy priority];
  pluginID = [characteristicCopy pluginID];

  v8 = [v5 initWithPriority:priority pluginID:pluginID];

  return v8;
}

+ (id)requestKeyForControl:(id)control
{
  controlCopy = control;
  v5 = [self alloc];
  priority = [controlCopy priority];
  pluginID = [controlCopy pluginID];

  v8 = [v5 initWithPriority:priority pluginID:pluginID];

  return v8;
}

- (CAFRequestKey)initWithPriority:(id)priority pluginID:(id)d
{
  priorityCopy = priority;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = CAFRequestKey;
  v9 = [(CAFRequestKey *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_priority, priority);
    objc_storeStrong(&v10->_pluginID, d);
    v11 = [[CAFCachedDescription alloc] initWithCacheable:v10];
    cachedDescription = v10->_cachedDescription;
    v10->_cachedDescription = v11;
  }

  return v10;
}

- (NSString)description
{
  cachedDescription = [(CAFRequestKey *)self cachedDescription];
  v3 = [cachedDescription description];

  return v3;
}

- (id)copyWithPriority:(id)priority
{
  priorityCopy = priority;
  v5 = objc_alloc(objc_opt_class());
  pluginID = [(CAFRequestKey *)self pluginID];
  v7 = [v5 initWithPriority:priorityCopy pluginID:pluginID];

  return v7;
}

- (id)currentDescriptionForCache:(id)cache
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  priority = [(CAFRequestKey *)self priority];
  pluginID = [(CAFRequestKey *)self pluginID];
  v8 = [v4 stringWithFormat:@"<%@: %p priority: %@ plugin=%@ >", v5, self, priority, pluginID];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  priority = [(CAFRequestKey *)self priority];
  pluginID = [(CAFRequestKey *)self pluginID];
  v7 = [v4 initWithPriority:priority pluginID:pluginID];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy != self)
  {
    objc_opt_class();
    v5 = equalCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        priority = [(CAFRequestKey *)self priority];
        priority2 = [(CAFRequestKey *)v5 priority];

        if (priority != priority2)
        {
          v8 = 0;
LABEL_11:

          goto LABEL_12;
        }

        pluginID = [(CAFRequestKey *)self pluginID];
        pluginID2 = [(CAFRequestKey *)v5 pluginID];
        v8 = [pluginID isEqual:pluginID2];
      }

      else
      {
        v8 = 0;
        pluginID = v5;
        v5 = 0;
      }
    }

    else
    {
      v8 = 0;
      pluginID = 0;
    }

    goto LABEL_11;
  }

  v8 = 1;
LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  pluginID = [(CAFRequestKey *)self pluginID];
  unsignedIntegerValue = [pluginID unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end