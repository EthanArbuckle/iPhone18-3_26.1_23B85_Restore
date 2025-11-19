@interface _DPPListHelper
+ (id)loadPropertyListFromPath:(id)a3 overridePath:(id)a4 usingBlock:(id)a5;
@end

@implementation _DPPListHelper

+ (id)loadPropertyListFromPath:(id)a3 overridePath:(id)a4 usingBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v7];
  if (+[_DPDeviceInfo isInternalBuild])
  {
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v8];
    [v11 addEntriesFromDictionary:v12];
  }

  v13 = [MEMORY[0x277CBEC10] mutableCopy];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __67___DPPListHelper_loadPropertyListFromPath_overridePath_usingBlock___block_invoke;
  v21 = &unk_27858B1E8;
  v22 = v13;
  v14 = v9;
  v23 = v14;
  v15 = v13;
  [v11 enumerateKeysAndObjectsUsingBlock:&v18];
  v16 = [v15 copy];

  objc_autoreleasePoolPop(v10);

  return v16;
}

@end