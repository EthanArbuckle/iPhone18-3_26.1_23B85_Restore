@interface HKMedicalRecord(HDDistinctableObject)
- (id)uniqueIdentifierForDistinctByKeyPath:()HDDistinctableObject error:;
@end

@implementation HKMedicalRecord(HDDistinctableObject)

- (id)uniqueIdentifierForDistinctByKeyPath:()HDDistinctableObject error:
{
  v7 = a3;
  if (!v7)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"HKSample+HDDistinctableObject.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"keyPath"}];
  }

  if ([v7 isEqualToString:*MEMORY[0x277CCBB78]])
  {
    v8 = [a1 primaryConcept];
    v9 = [v8 identifier];
LABEL_7:

    goto LABEL_17;
  }

  if ([v7 isEqualToString:*MEMORY[0x277CCBB70]])
  {
    v8 = [a1 primaryConcept];
    v10 = [v8 groupByConcept];
    v9 = [v10 identifier];

    goto LABEL_7;
  }

  if ([v7 isEqualToString:*MEMORY[0x277CCC3A8]])
  {
    v11 = [a1 note];

    if (v11)
    {
      [a1 note];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v12 = ;
  }

  else if ([v7 isEqualToString:*MEMORY[0x277CCC3A0]])
  {
    v12 = [a1 modifiedDate];
  }

  else
  {
    v15.receiver = a1;
    v15.super_class = &off_283D35CB8;
    v12 = objc_msgSendSuper2(&v15, sel_uniqueIdentifierForDistinctByKeyPath_error_, v7, a4);
  }

  v9 = v12;
LABEL_17:

  return v9;
}

@end