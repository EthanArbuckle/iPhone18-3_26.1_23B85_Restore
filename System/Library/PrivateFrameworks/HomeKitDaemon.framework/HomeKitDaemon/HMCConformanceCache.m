@interface HMCConformanceCache
- (BOOL)objectConforms:(id)a3;
- (HMCConformanceCache)initWithProtocol:(id)a3;
- (HMCConformanceCache)initWithProtocols:(id)a3;
@end

@implementation HMCConformanceCache

- (BOOL)objectConforms:(id)a3
{
  v4 = objc_opt_class();

  return __conformanceCheck(self, v4, 0);
}

- (HMCConformanceCache)initWithProtocol:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:a3];
  v5 = [(HMCConformanceCache *)self initWithProtocols:v4];

  return v5;
}

- (HMCConformanceCache)initWithProtocols:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMCConformanceCache;
  v5 = [(HMCConformanceCache *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    protocols = v5->_protocols;
    v5->_protocols = v6;

    v8 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    conformanceCache = v5->_conformanceCache;
    v5->_conformanceCache = v8;

    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

@end