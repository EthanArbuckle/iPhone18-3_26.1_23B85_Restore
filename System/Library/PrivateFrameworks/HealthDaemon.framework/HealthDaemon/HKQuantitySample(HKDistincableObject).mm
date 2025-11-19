@interface HKQuantitySample(HKDistincableObject)
+ (uint64_t)supportsDistinctByKeyPath:()HKDistincableObject;
- (id)uniqueIdentifierForDistinctByKeyPath:()HKDistincableObject error:;
@end

@implementation HKQuantitySample(HKDistincableObject)

+ (uint64_t)supportsDistinctByKeyPath:()HKDistincableObject
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"HKSample+HDDistinctableObject.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"keyPath"}];
  }

  if ([v5 isEqualToString:*MEMORY[0x277CCC750]])
  {
    v6 = 1;
  }

  else
  {
    v9.receiver = a1;
    v9.super_class = &off_283D37E90;
    v6 = objc_msgSendSuper2(&v9, sel_supportsDistinctByKeyPath_, v5);
  }

  return v6;
}

- (id)uniqueIdentifierForDistinctByKeyPath:()HKDistincableObject error:
{
  v7 = a3;
  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"HKSample+HDDistinctableObject.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"keyPath"}];
  }

  if ([v7 isEqualToString:*MEMORY[0x277CCC750]])
  {
    v8 = [a1 quantity];
  }

  else
  {
    v12.receiver = a1;
    v12.super_class = &off_283D38020;
    v8 = objc_msgSendSuper2(&v12, sel_uniqueIdentifierForDistinctByKeyPath_error_, v7, a4);
  }

  v9 = v8;

  return v9;
}

@end