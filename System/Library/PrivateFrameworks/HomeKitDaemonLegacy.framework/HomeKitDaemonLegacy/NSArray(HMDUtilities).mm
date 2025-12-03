@interface NSArray(HMDUtilities)
- (id)arrayByRemovingObjectsInArray:()HMDUtilities;
@end

@implementation NSArray(HMDUtilities)

- (id)arrayByRemovingObjectsInArray:()HMDUtilities
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__NSArray_HMDUtilities__arrayByRemovingObjectsInArray___block_invoke;
  v8[3] = &unk_2797333B0;
  v9 = v4;
  v5 = v4;
  v6 = [self na_filter:v8];

  return v6;
}

@end