@interface DTGPUCounter
- (DTGPUCounter)initWithName:(id)name maxValue:(unint64_t)value;
- (id)infoArray;
@end

@implementation DTGPUCounter

- (DTGPUCounter)initWithName:(id)name maxValue:(unint64_t)value
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = DTGPUCounter;
  v8 = [(DTGPUCounter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    objc_storeStrong(&v9->_functionName, name);
    v9->_maxValue = value;
    v9->_multiplier = 1;
    v9->_requiresWeightAccumulation = ![(NSString *)v9->_name containsString:@"Bandwidth"];
  }

  return v9;
}

- (id)infoArray
{
  v11[6] = *MEMORY[0x277D85DE8];
  maxValue = self->_maxValue;
  v11[0] = self->_name;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:maxValue];
  v11[1] = v4;
  functionName = self->_functionName;
  v11[2] = self->_counterDescription;
  v11[3] = functionName;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_multiplier];
  v11[4] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_groupIndex];
  v11[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end