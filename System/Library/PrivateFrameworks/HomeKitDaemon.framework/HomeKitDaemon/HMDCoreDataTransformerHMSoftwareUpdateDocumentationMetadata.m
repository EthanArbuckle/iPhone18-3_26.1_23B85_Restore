@interface HMDCoreDataTransformerHMSoftwareUpdateDocumentationMetadata
+ (id)allowedTopLevelClasses;
@end

@implementation HMDCoreDataTransformerHMSoftwareUpdateDocumentationMetadata

+ (id)allowedTopLevelClasses
{
  v5[6] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v5[4] = objc_opt_class();
  v5[5] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end