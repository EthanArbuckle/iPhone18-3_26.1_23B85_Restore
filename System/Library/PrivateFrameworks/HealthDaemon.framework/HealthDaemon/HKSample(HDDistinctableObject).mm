@interface HKSample(HDDistinctableObject)
+ (uint64_t)supportsDistinctByKeyPath:()HDDistinctableObject;
- (uint64_t)uniqueIdentifierForDistinctByKeyPath:()HDDistinctableObject error:;
@end

@implementation HKSample(HDDistinctableObject)

+ (uint64_t)supportsDistinctByKeyPath:()HDDistinctableObject
{
  if (!a3)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSample+HDDistinctableObject.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"keyPath"}];
  }

  return 0;
}

- (uint64_t)uniqueIdentifierForDistinctByKeyPath:()HDDistinctableObject error:
{
  v7 = a3;
  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSample+HDDistinctableObject.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"keyPath"}];
  }

  v8 = MEMORY[0x277CCA9B8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  [v8 hk_assignError:a4 code:3 format:{@"%@ does not support distinct-by on key-path %@", v10, v7}];

  return 0;
}

@end