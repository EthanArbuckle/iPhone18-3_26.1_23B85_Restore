@interface DBHomeKitServiceTypes
+ (NSDictionary)serviceNameByType;
+ (NSDictionary)serviceTypeByName;
+ (id)serviceNameForType:(id)a3;
@end

@implementation DBHomeKitServiceTypes

+ (NSDictionary)serviceTypeByName
{
  if (serviceTypeByName_onceToken != -1)
  {
    +[DBHomeKitServiceTypes serviceTypeByName];
  }

  v3 = serviceTypeByName__serviceTypeByName;

  return v3;
}

void __42__DBHomeKitServiceTypes_serviceTypeByName__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = @"GarageDoorOpener";
  v3[0] = *MEMORY[0x277CD0E58];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = serviceTypeByName__serviceTypeByName;
  serviceTypeByName__serviceTypeByName = v0;
}

+ (NSDictionary)serviceNameByType
{
  if (serviceNameByType_onceToken != -1)
  {
    +[DBHomeKitServiceTypes serviceNameByType];
  }

  v3 = serviceNameByType__serviceNameByType;

  return v3;
}

void __42__DBHomeKitServiceTypes_serviceNameByType__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD0E58];
  v3[0] = @"GarageDoorOpener";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = serviceNameByType__serviceNameByType;
  serviceNameByType__serviceNameByType = v0;
}

+ (id)serviceNameForType:(id)a3
{
  v4 = a3;
  v5 = [a1 serviceNameByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v6 = v4;
  }

  return v6;
}

@end