@interface ICASDebugData
- (ICASDebugData)initWithName:(id)name;
- (id)toDict;
@end

@implementation ICASDebugData

- (ICASDebugData)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = ICASDebugData;
  v6 = [(ICASDebugData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"name";
  name = [(ICASDebugData *)self name];
  if (name)
  {
    name2 = [(ICASDebugData *)self name];
  }

  else
  {
    name2 = objc_opt_new();
  }

  v5 = name2;
  v10[0] = name2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end