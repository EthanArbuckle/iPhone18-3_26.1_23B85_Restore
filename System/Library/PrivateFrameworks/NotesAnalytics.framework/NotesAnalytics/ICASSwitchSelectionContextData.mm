@interface ICASSwitchSelectionContextData
- (ICASSwitchSelectionContextData)initWithSwitchSelectionContext:(id)context;
- (id)toDict;
@end

@implementation ICASSwitchSelectionContextData

- (ICASSwitchSelectionContextData)initWithSwitchSelectionContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = ICASSwitchSelectionContextData;
  v6 = [(ICASSwitchSelectionContextData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_switchSelectionContext, context);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"switchSelectionContext";
  switchSelectionContext = [(ICASSwitchSelectionContextData *)self switchSelectionContext];
  if (switchSelectionContext)
  {
    switchSelectionContext2 = [(ICASSwitchSelectionContextData *)self switchSelectionContext];
  }

  else
  {
    switchSelectionContext2 = objc_opt_new();
  }

  v5 = switchSelectionContext2;
  v10[0] = switchSelectionContext2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end