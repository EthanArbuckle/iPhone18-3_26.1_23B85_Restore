@interface HMCConformanceCache
- (BOOL)objectConforms:(id)conforms;
- (HMCConformanceCache)initWithProtocol:(id)protocol;
- (HMCConformanceCache)initWithProtocols:(id)protocols;
@end

@implementation HMCConformanceCache

- (BOOL)objectConforms:(id)conforms
{
  v4 = objc_opt_class();

  return __conformanceCheck(self, v4, 0);
}

- (HMCConformanceCache)initWithProtocol:(id)protocol
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:protocol];
  v5 = [(HMCConformanceCache *)self initWithProtocols:v4];

  return v5;
}

- (HMCConformanceCache)initWithProtocols:(id)protocols
{
  protocolsCopy = protocols;
  v11.receiver = self;
  v11.super_class = HMCConformanceCache;
  v5 = [(HMCConformanceCache *)&v11 init];
  if (v5)
  {
    v6 = [protocolsCopy copy];
    protocols = v5->_protocols;
    v5->_protocols = v6;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    conformanceCache = v5->_conformanceCache;
    v5->_conformanceCache = strongToStrongObjectsMapTable;

    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

@end