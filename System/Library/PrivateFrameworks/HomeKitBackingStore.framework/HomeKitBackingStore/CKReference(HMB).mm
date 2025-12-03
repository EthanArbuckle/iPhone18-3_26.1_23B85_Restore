@interface CKReference(HMB)
- (id)hmbDescription;
@end

@implementation CKReference(HMB)

- (id)hmbDescription
{
  referenceAction = [self referenceAction];
  if (referenceAction)
  {
    if (referenceAction == 1)
    {
      v3 = @"DeleteSelf";
    }

    else
    {
      referenceAction2 = [self referenceAction];
      if (referenceAction2 == *MEMORY[0x277CBC070])
      {
        v3 = @"Validate";
      }

      else
      {
        v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"<UNKNOWN: %lu>", objc_msgSend(self, "referenceAction")];
      }
    }
  }

  else
  {
    v3 = @"None";
  }

  v5 = MEMORY[0x277CCACA8];
  recordID = [self recordID];
  hmbDescription = [recordID hmbDescription];
  v8 = [v5 stringWithFormat:@"%@.%@", v3, hmbDescription];

  return v8;
}

@end