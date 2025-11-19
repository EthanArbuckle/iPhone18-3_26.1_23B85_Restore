@interface NUApplicationFrameworkAssembly
- (NUApplicationFrameworkAssembly)init;
@end

@implementation NUApplicationFrameworkAssembly

- (NUApplicationFrameworkAssembly)init
{
  v12[4] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = NUApplicationFrameworkAssembly;
  v2 = [(NUApplicationFrameworkAssembly *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(NUCoreAssembly);
    v12[0] = v3;
    v4 = objc_alloc_init(NUArticleAssembly);
    v12[1] = v4;
    v5 = objc_alloc_init(NUApplicationAssembly);
    v12[2] = v5;
    v6 = objc_alloc_init(NUManagerAssembly);
    v12[3] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
    assemblies = v2->_assemblies;
    v2->_assemblies = v7;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

@end