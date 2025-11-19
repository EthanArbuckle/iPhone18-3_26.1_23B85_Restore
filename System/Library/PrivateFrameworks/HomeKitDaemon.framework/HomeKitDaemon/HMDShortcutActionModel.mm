@interface HMDShortcutActionModel
+ (id)properties;
- (void)loadModelWithActionInformation:(id)a3;
@end

@implementation HMDShortcutActionModel

+ (id)properties
{
  v12[1] = *MEMORY[0x277D85DE8];
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___HMDShortcutActionModel;
  v2 = objc_msgSendSuper2(&v10, sel_properties);
  v3 = [v2 mutableCopy];

  v4 = NSStringFromSelector(sel_data);
  v11 = v4;
  v5 = [HMDBackingStoreModelObjectStorageInfo infoWithClass:objc_opt_class()];
  v12[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  [v3 addEntriesFromDictionary:v6];

  v7 = [v3 copy];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)loadModelWithActionInformation:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMDShortcutActionModel;
  v4 = a3;
  [(HMDActionModel *)&v6 loadModelWithActionInformation:v4];
  v5 = [v4 hmf_dataForKey:{*MEMORY[0x277CD1598], v6.receiver, v6.super_class}];

  [(HMDShortcutActionModel *)self setData:v5];
}

@end