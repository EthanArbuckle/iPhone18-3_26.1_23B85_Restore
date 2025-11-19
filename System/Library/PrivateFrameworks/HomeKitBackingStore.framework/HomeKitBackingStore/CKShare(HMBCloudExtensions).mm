@interface CKShare(HMBCloudExtensions)
+ (id)hmbDecodeData:()HMBCloudExtensions fromStorageLocation:error:;
@end

@implementation CKShare(HMBCloudExtensions)

+ (id)hmbDecodeData:()HMBCloudExtensions fromStorageLocation:error:
{
  v7 = MEMORY[0x277CCAAC8];
  v8 = MEMORY[0x277CBEB98];
  v9 = a3;
  v10 = [v8 setWithObject:a1];
  v11 = [v7 _strictlyUnarchivedObjectOfClasses:v10 fromData:v9 error:a5];

  return v11;
}

@end