@interface HDIDSDestination
+ (id)initWithAllowedDeviceTypes:(id)types;
+ (id)validHealthSoftwareDeviceTypes;
- (HDIDSDestination)initWithDeviceFilterBlock:(id)block;
@end

@implementation HDIDSDestination

- (HDIDSDestination)initWithDeviceFilterBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = HDIDSDestination;
  v5 = [(HDIDSDestination *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    deviceFilterBlock = v5->_deviceFilterBlock;
    v5->_deviceFilterBlock = v6;
  }

  return v5;
}

+ (id)initWithAllowedDeviceTypes:(id)types
{
  typesCopy = types;
  v4 = objc_alloc(objc_opt_class());
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__HDIDSDestination_initWithAllowedDeviceTypes___block_invoke;
  v8[3] = &unk_27862E1F8;
  v9 = typesCopy;
  v5 = typesCopy;
  v6 = [v4 initWithDeviceFilterBlock:v8];

  return v6;
}

uint64_t __47__HDIDSDestination_initWithAllowedDeviceTypes___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 deviceType];
  v4 = *(a1 + 32);

  return [v4 containsInteger:v3];
}

+ (id)validHealthSoftwareDeviceTypes
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v11[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:4];
  v11[1] = v4;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  v11[2] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:6];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v8 = [v2 setWithArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end