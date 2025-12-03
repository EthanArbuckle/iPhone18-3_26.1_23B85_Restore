@interface DTGPURawCounter_GPURawCounter
- (DTGPURawCounter_GPURawCounter)initWithName:(id)name;
- (DTGPURawCounter_GPURawCounter)initWithName:(id)name width:(unsigned int)width;
@end

@implementation DTGPURawCounter_GPURawCounter

- (DTGPURawCounter_GPURawCounter)initWithName:(id)name width:(unsigned int)width
{
  v19[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = DTGPURawCounter_GPURawCounter;
  v7 = [(DTGPURawCounter *)&v17 initWithName:nameCopy];
  v8 = v7;
  if (v7)
  {
    v7->_width = width;
    v9 = MEMORY[0x277D0AF28];
    name = [(DTGPURawCounter *)v7 name];
    v18 = @"Width";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8->_width];
    v19[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = [v9 selectWithName:name options:v12];
    rawCounterSelect = v8->_rawCounterSelect;
    v8->_rawCounterSelect = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (DTGPURawCounter_GPURawCounter)initWithName:(id)name
{
  v17[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = DTGPURawCounter_GPURawCounter;
  v5 = [(DTGPURawCounter *)&v15 initWithName:nameCopy];
  v6 = v5;
  if (v5)
  {
    v5->_width = 32;
    v7 = MEMORY[0x277D0AF28];
    name = [(DTGPURawCounter *)v5 name];
    v16 = @"Width";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6->_width];
    v17[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [v7 selectWithName:name options:v10];
    rawCounterSelect = v6->_rawCounterSelect;
    v6->_rawCounterSelect = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

@end