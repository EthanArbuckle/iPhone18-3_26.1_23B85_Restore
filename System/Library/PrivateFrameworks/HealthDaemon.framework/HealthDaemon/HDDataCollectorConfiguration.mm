@interface HDDataCollectorConfiguration
+ (HDDataCollectorConfiguration)configurationWithType:(unint64_t)type aggregatorConfiguration:(id)configuration;
+ (HDDataCollectorConfiguration)configurationWithType:(unint64_t)type interval:(double)interval latency:(double)latency;
+ (id)disabledConfiguration;
- (BOOL)isEqual:(id)equal;
- (HDDataCollectorConfiguration)init;
- (id)description;
- (id)mergedConfiguration:(id)configuration;
@end

@implementation HDDataCollectorConfiguration

- (HDDataCollectorConfiguration)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (HDDataCollectorConfiguration)configurationWithType:(unint64_t)type interval:(double)interval latency:(double)latency
{
  v8 = [HDDataCollectorConfiguration alloc];
  if (v8)
  {
    v10.receiver = v8;
    v10.super_class = HDDataCollectorConfiguration;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    if (v8)
    {
      v8->_collectionInterval = fmax(interval, 0.0);
      v8->_collectionLatency = fmax(latency, 0.0);
      v8->_collectionType = type;
    }
  }

  return v8;
}

+ (HDDataCollectorConfiguration)configurationWithType:(unint64_t)type aggregatorConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6 = [HDDataCollectorConfiguration alloc];
  [configurationCopy aggregationInterval];
  v8 = v7;
  [configurationCopy collectionLatency];
  v10 = v9;

  if (v6)
  {
    v13.receiver = v6;
    v13.super_class = HDDataCollectorConfiguration;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    if (v11)
    {
      v11[2] = fmax(v8, 0.0);
      v11[3] = fmax(v10, 0.0);
      *(v11 + 1) = type;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)disabledConfiguration
{
  v2 = [HDDataCollectorConfiguration alloc];
  if (v2)
  {
    v5.receiver = v2;
    v5.super_class = HDDataCollectorConfiguration;
    v2 = objc_msgSendSuper2(&v5, sel_init);
    if (v2)
    {
      v3 = fmax(*MEMORY[0x277CCBBD8], 0.0);
      v2->_collectionInterval = v3;
      v2->_collectionLatency = v3;
      v2->_collectionType = 0;
    }
  }

  return v2;
}

- (id)mergedConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [HDDataCollectorConfiguration alloc];
  collectionType = self->_collectionType;
  collectionType = [configurationCopy collectionType];
  v9 = collectionType == 1 || collectionType == 1;
  if (collectionType == 2 || collectionType == 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9;
  }

  collectionInterval = self->_collectionInterval;
  [configurationCopy collectionInterval];
  if (collectionInterval >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = collectionInterval;
  }

  collectionLatency = self->_collectionLatency;
  [configurationCopy collectionLatency];
  v17 = v16;

  if (collectionLatency < v17)
  {
    v17 = collectionLatency;
  }

  if (v5)
  {
    v20.receiver = v5;
    v20.super_class = HDDataCollectorConfiguration;
    v18 = [(HDDataCollectorConfiguration *)&v20 init];
    if (v18)
    {
      v18->_collectionInterval = fmax(v14, 0.0);
      v18->_collectionLatency = fmax(v17, 0.0);
      v18->_collectionType = v11;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  collectionType = self->_collectionType;
  v5 = HKDataCollectionTypeToString();
  v6 = [v3 stringWithFormat:@"<%@ Interval: %0.1lfs Latency: %0.1lfs>", v5, *&self->_collectionInterval, *&self->_collectionLatency];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_collectionType == *(equalCopy + 1) && vabdd_f64(self->_collectionInterval, *(equalCopy + 2)) < 2.22044605e-16 && vabdd_f64(self->_collectionLatency, *(equalCopy + 3)) < 2.22044605e-16;

  return v5;
}

@end