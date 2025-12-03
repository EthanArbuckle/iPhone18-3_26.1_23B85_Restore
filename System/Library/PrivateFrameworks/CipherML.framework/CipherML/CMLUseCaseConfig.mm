@interface CMLUseCaseConfig
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToUseCaseConfig:(id)config;
- (CMLUseCaseConfig)initWithCoder:(id)coder;
- (CMLUseCaseConfig)initWithType:(int64_t)type maxShards:(int64_t)shards cacheElementCount:(int64_t)count cacheEntryMinutesToLive:(int64_t)live cacheEvictionPolicy:(int64_t)policy shardingDependsOn:(id)on;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMLUseCaseConfig

- (CMLUseCaseConfig)initWithType:(int64_t)type maxShards:(int64_t)shards cacheElementCount:(int64_t)count cacheEntryMinutesToLive:(int64_t)live cacheEvictionPolicy:(int64_t)policy shardingDependsOn:(id)on
{
  onCopy = on;
  v20.receiver = self;
  v20.super_class = CMLUseCaseConfig;
  v15 = [(CMLUseCaseConfig *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_type = type;
    v15->_maxShards = shards;
    v15->_cacheElementCount = count;
    v15->_cacheEntryMinutesToLive = live;
    v15->_cacheEvictionPolicy = policy;
    v17 = [onCopy copy];
    shardingDependsOn = v16->_shardingDependsOn;
    v16->_shardingDependsOn = v17;
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CMLUseCaseConfig *)self isEqualToUseCaseConfig:v5];
  }

  return v6;
}

- (BOOL)isEqualToUseCaseConfig:(id)config
{
  configCopy = config;
  shardingDependsOn = [(CMLUseCaseConfig *)self shardingDependsOn];
  shardingDependsOn2 = [configCopy shardingDependsOn];
  if (shardingDependsOn == shardingDependsOn2)
  {
    v9 = 1;
  }

  else
  {
    shardingDependsOn3 = [(CMLUseCaseConfig *)self shardingDependsOn];
    shardingDependsOn4 = [configCopy shardingDependsOn];
    v9 = [shardingDependsOn3 isEqual:shardingDependsOn4];
  }

  type = [(CMLUseCaseConfig *)self type];
  if (type == [configCopy type] && (v11 = -[CMLUseCaseConfig maxShards](self, "maxShards"), v11 == objc_msgSend(configCopy, "maxShards")) && (v12 = -[CMLUseCaseConfig cacheElementCount](self, "cacheElementCount"), v12 == objc_msgSend(configCopy, "cacheElementCount")) && (v13 = -[CMLUseCaseConfig cacheEntryMinutesToLive](self, "cacheEntryMinutesToLive"), v13 == objc_msgSend(configCopy, "cacheEntryMinutesToLive")))
  {
    cacheEvictionPolicy = [(CMLUseCaseConfig *)self cacheEvictionPolicy];
    v15 = (cacheEvictionPolicy == [configCopy cacheEvictionPolicy]) & v9;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CMLUseCaseConfig type](self, "type")}];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CMLUseCaseConfig maxShards](self, "maxShards")}];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CMLUseCaseConfig cacheElementCount](self, "cacheElementCount")}];
  v8 = [v7 hash];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CMLUseCaseConfig cacheEntryMinutesToLive](self, "cacheEntryMinutesToLive")}];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CMLUseCaseConfig cacheEvictionPolicy](self, "cacheEvictionPolicy")}];
  v12 = [v11 hash];
  shardingDependsOn = [(CMLUseCaseConfig *)self shardingDependsOn];
  v14 = v12 ^ [shardingDependsOn hash];

  return v10 ^ v14;
}

- (CMLUseCaseConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeIntegerForKey:@"maxShards"];
  v7 = [coderCopy decodeIntegerForKey:@"cacheElementCount"];
  v8 = [coderCopy decodeIntegerForKey:@"cacheEntryMinutesToLive"];
  v9 = [coderCopy decodeIntegerForKey:@"cacheEvictionPolicy"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shardingDependsOn"];

  v11 = [(CMLUseCaseConfig *)self initWithType:v5 maxShards:v6 cacheElementCount:v7 cacheEntryMinutesToLive:v8 cacheEvictionPolicy:v9 shardingDependsOn:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[CMLUseCaseConfig type](self forKey:{"type"), @"type"}];
  [coderCopy encodeInteger:-[CMLUseCaseConfig maxShards](self forKey:{"maxShards"), @"maxShards"}];
  [coderCopy encodeInteger:-[CMLUseCaseConfig cacheElementCount](self forKey:{"cacheElementCount"), @"cacheElementCount"}];
  [coderCopy encodeInteger:-[CMLUseCaseConfig cacheEntryMinutesToLive](self forKey:{"cacheEntryMinutesToLive"), @"cacheEntryMinutesToLive"}];
  [coderCopy encodeInteger:-[CMLUseCaseConfig cacheEvictionPolicy](self forKey:{"cacheEvictionPolicy"), @"cacheEvictionPolicy"}];
  shardingDependsOn = [(CMLUseCaseConfig *)self shardingDependsOn];
  [coderCopy encodeObject:shardingDependsOn forKey:@"shardingDependsOn"];
}

@end