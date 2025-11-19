@interface CMLUseCaseConfig
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToUseCaseConfig:(id)a3;
- (CMLUseCaseConfig)initWithCoder:(id)a3;
- (CMLUseCaseConfig)initWithType:(int64_t)a3 maxShards:(int64_t)a4 cacheElementCount:(int64_t)a5 cacheEntryMinutesToLive:(int64_t)a6 cacheEvictionPolicy:(int64_t)a7 shardingDependsOn:(id)a8;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMLUseCaseConfig

- (CMLUseCaseConfig)initWithType:(int64_t)a3 maxShards:(int64_t)a4 cacheElementCount:(int64_t)a5 cacheEntryMinutesToLive:(int64_t)a6 cacheEvictionPolicy:(int64_t)a7 shardingDependsOn:(id)a8
{
  v14 = a8;
  v20.receiver = self;
  v20.super_class = CMLUseCaseConfig;
  v15 = [(CMLUseCaseConfig *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_type = a3;
    v15->_maxShards = a4;
    v15->_cacheElementCount = a5;
    v15->_cacheEntryMinutesToLive = a6;
    v15->_cacheEvictionPolicy = a7;
    v17 = [v14 copy];
    shardingDependsOn = v16->_shardingDependsOn;
    v16->_shardingDependsOn = v17;
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CMLUseCaseConfig *)self isEqualToUseCaseConfig:v5];
  }

  return v6;
}

- (BOOL)isEqualToUseCaseConfig:(id)a3
{
  v4 = a3;
  v5 = [(CMLUseCaseConfig *)self shardingDependsOn];
  v6 = [v4 shardingDependsOn];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CMLUseCaseConfig *)self shardingDependsOn];
    v8 = [v4 shardingDependsOn];
    v9 = [v7 isEqual:v8];
  }

  v10 = [(CMLUseCaseConfig *)self type];
  if (v10 == [v4 type] && (v11 = -[CMLUseCaseConfig maxShards](self, "maxShards"), v11 == objc_msgSend(v4, "maxShards")) && (v12 = -[CMLUseCaseConfig cacheElementCount](self, "cacheElementCount"), v12 == objc_msgSend(v4, "cacheElementCount")) && (v13 = -[CMLUseCaseConfig cacheEntryMinutesToLive](self, "cacheEntryMinutesToLive"), v13 == objc_msgSend(v4, "cacheEntryMinutesToLive")))
  {
    v14 = [(CMLUseCaseConfig *)self cacheEvictionPolicy];
    v15 = (v14 == [v4 cacheEvictionPolicy]) & v9;
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
  v13 = [(CMLUseCaseConfig *)self shardingDependsOn];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
}

- (CMLUseCaseConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  v6 = [v4 decodeIntegerForKey:@"maxShards"];
  v7 = [v4 decodeIntegerForKey:@"cacheElementCount"];
  v8 = [v4 decodeIntegerForKey:@"cacheEntryMinutesToLive"];
  v9 = [v4 decodeIntegerForKey:@"cacheEvictionPolicy"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shardingDependsOn"];

  v11 = [(CMLUseCaseConfig *)self initWithType:v5 maxShards:v6 cacheElementCount:v7 cacheEntryMinutesToLive:v8 cacheEvictionPolicy:v9 shardingDependsOn:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[CMLUseCaseConfig type](self forKey:{"type"), @"type"}];
  [v4 encodeInteger:-[CMLUseCaseConfig maxShards](self forKey:{"maxShards"), @"maxShards"}];
  [v4 encodeInteger:-[CMLUseCaseConfig cacheElementCount](self forKey:{"cacheElementCount"), @"cacheElementCount"}];
  [v4 encodeInteger:-[CMLUseCaseConfig cacheEntryMinutesToLive](self forKey:{"cacheEntryMinutesToLive"), @"cacheEntryMinutesToLive"}];
  [v4 encodeInteger:-[CMLUseCaseConfig cacheEvictionPolicy](self forKey:{"cacheEvictionPolicy"), @"cacheEvictionPolicy"}];
  v5 = [(CMLUseCaseConfig *)self shardingDependsOn];
  [v4 encodeObject:v5 forKey:@"shardingDependsOn"];
}

@end