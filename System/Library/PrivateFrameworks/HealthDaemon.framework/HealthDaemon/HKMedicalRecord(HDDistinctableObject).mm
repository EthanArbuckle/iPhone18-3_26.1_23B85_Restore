@interface HKMedicalRecord(HDDistinctableObject)
- (id)uniqueIdentifierForDistinctByKeyPath:()HDDistinctableObject error:;
@end

@implementation HKMedicalRecord(HDDistinctableObject)

- (id)uniqueIdentifierForDistinctByKeyPath:()HDDistinctableObject error:
{
  v7 = a3;
  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSample+HDDistinctableObject.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"keyPath"}];
  }

  if ([v7 isEqualToString:*MEMORY[0x277CCBB78]])
  {
    primaryConcept = [self primaryConcept];
    identifier = [primaryConcept identifier];
LABEL_7:

    goto LABEL_17;
  }

  if ([v7 isEqualToString:*MEMORY[0x277CCBB70]])
  {
    primaryConcept = [self primaryConcept];
    groupByConcept = [primaryConcept groupByConcept];
    identifier = [groupByConcept identifier];

    goto LABEL_7;
  }

  if ([v7 isEqualToString:*MEMORY[0x277CCC3A8]])
  {
    note = [self note];

    if (note)
    {
      [self note];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    modifiedDate = ;
  }

  else if ([v7 isEqualToString:*MEMORY[0x277CCC3A0]])
  {
    modifiedDate = [self modifiedDate];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = &off_283D35CB8;
    modifiedDate = objc_msgSendSuper2(&v15, sel_uniqueIdentifierForDistinctByKeyPath_error_, v7, a4);
  }

  identifier = modifiedDate;
LABEL_17:

  return identifier;
}

@end