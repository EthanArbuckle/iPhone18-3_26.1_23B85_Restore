@interface NUExtensionFrameworkAssembly
- (NUExtensionFrameworkAssembly)initWithExtensionContextProvider:(id)provider;
@end

@implementation NUExtensionFrameworkAssembly

- (NUExtensionFrameworkAssembly)initWithExtensionContextProvider:(id)provider
{
  v18[4] = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v17.receiver = self;
  v17.super_class = NUExtensionFrameworkAssembly;
  v5 = [(NUExtensionFrameworkAssembly *)&v17 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = objc_alloc_init(MEMORY[0x277D55088]);
    assemblies = [v7 assemblies];
    [(NSArray *)v6 addObjectsFromArray:assemblies];

    v9 = objc_alloc_init(NUCoreAssembly);
    v18[0] = v9;
    v10 = objc_alloc_init(NUArticleAssembly);
    v18[1] = v10;
    v11 = [[NUExtensionAssembly alloc] initWithExtensionContextProvider:providerCopy];
    v18[2] = v11;
    v12 = objc_alloc_init(NUManagerAssembly);
    v18[3] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
    [(NSArray *)v6 addObjectsFromArray:v13];

    assemblies = v5->_assemblies;
    v5->_assemblies = v6;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

@end