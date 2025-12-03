@interface CRKConcreteNetworkPath
- (BOOL)isSatisfied;
- (CRKConcreteNetworkPath)initWithUnderlyingPath:(id)path;
- (NSArray)interfaces;
@end

@implementation CRKConcreteNetworkPath

- (CRKConcreteNetworkPath)initWithUnderlyingPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = CRKConcreteNetworkPath;
  v6 = [(CRKConcreteNetworkPath *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingPath, path);
  }

  return v7;
}

- (BOOL)isSatisfied
{
  underlyingPath = [(CRKConcreteNetworkPath *)self underlyingPath];
  status = nw_path_get_status(underlyingPath);

  return ((status - 1) & 0xFFFFFFFD) == 0;
}

- (NSArray)interfaces
{
  interfaces = self->_interfaces;
  if (!interfaces)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__CRKConcreteNetworkPath_interfaces__block_invoke;
    v7[3] = &unk_278DC2C38;
    v7[4] = self;
    v4 = __36__CRKConcreteNetworkPath_interfaces__block_invoke(v7);
    v5 = self->_interfaces;
    self->_interfaces = v4;

    interfaces = self->_interfaces;
  }

  return interfaces;
}

id __36__CRKConcreteNetworkPath_interfaces__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) underlyingPath];
  enumerate_block[0] = MEMORY[0x277D85DD0];
  enumerate_block[1] = 3221225472;
  enumerate_block[2] = __36__CRKConcreteNetworkPath_interfaces__block_invoke_2;
  enumerate_block[3] = &unk_278DC2C10;
  v8 = v2;
  v4 = v2;
  nw_path_enumerate_interfaces(v3, enumerate_block);

  v5 = [v4 copy];

  return v5;
}

uint64_t __36__CRKConcreteNetworkPath_interfaces__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[CRKConcreteNetworkInterface alloc] initWithUnderlyingInterface:v3];

  [*(a1 + 32) addObject:v4];
  return 0;
}

@end