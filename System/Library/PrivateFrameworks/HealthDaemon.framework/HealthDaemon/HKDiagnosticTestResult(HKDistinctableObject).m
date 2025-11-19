@interface HKDiagnosticTestResult(HKDistinctableObject)
+ (uint64_t)supportsDistinctByKeyPath:()HKDistinctableObject;
- (id)uniqueIdentifierForDistinctByKeyPath:()HKDistinctableObject error:;
@end

@implementation HKDiagnosticTestResult(HKDistinctableObject)

+ (uint64_t)supportsDistinctByKeyPath:()HKDistinctableObject
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"HKSample+HDDistinctableObject.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"keyPath"}];
  }

  if ([v5 isEqualToString:*MEMORY[0x277CCBC88]])
  {
    v6 = 1;
  }

  else
  {
    v9.receiver = a1;
    v9.super_class = &off_283D380E0;
    v6 = objc_msgSendSuper2(&v9, sel_supportsDistinctByKeyPath_, v5);
  }

  return v6;
}

- (id)uniqueIdentifierForDistinctByKeyPath:()HKDistinctableObject error:
{
  v7 = a3;
  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"HKSample+HDDistinctableObject.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"keyPath"}];
  }

  if ([v7 isEqualToString:*MEMORY[0x277CCBC88]])
  {
    v8 = [a1 category];
  }

  else
  {
    v12.receiver = a1;
    v12.super_class = &off_283D389D0;
    v8 = objc_msgSendSuper2(&v12, sel_uniqueIdentifierForDistinctByKeyPath_error_, v7, a4);
  }

  v9 = v8;

  return v9;
}

@end