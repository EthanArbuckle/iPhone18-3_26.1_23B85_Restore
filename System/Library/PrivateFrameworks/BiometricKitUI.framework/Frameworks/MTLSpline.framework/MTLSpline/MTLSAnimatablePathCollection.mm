@interface MTLSAnimatablePathCollection
- (MTLSAnimatablePathCollection)initWithDefaultPath:(id)a3;
- (id).cxx_construct;
@end

@implementation MTLSAnimatablePathCollection

- (MTLSAnimatablePathCollection)initWithDefaultPath:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MTLSAnimatablePathCollection;
  v6 = [(MTLSAnimatablePathCollection *)&v12 init];
  if (v6)
  {
    v13 = @"default";
    v14[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    objc_storeStrong(&v6->_defaultPath, a3);
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v7 copyItems:0];
    paths = v6->_paths;
    v6->_paths = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end