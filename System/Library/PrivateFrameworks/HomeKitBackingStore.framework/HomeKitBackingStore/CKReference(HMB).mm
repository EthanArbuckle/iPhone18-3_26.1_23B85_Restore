@interface CKReference(HMB)
- (id)hmbDescription;
@end

@implementation CKReference(HMB)

- (id)hmbDescription
{
  v2 = [a1 referenceAction];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = @"DeleteSelf";
    }

    else
    {
      v4 = [a1 referenceAction];
      if (v4 == *MEMORY[0x277CBC070])
      {
        v3 = @"Validate";
      }

      else
      {
        v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"<UNKNOWN: %lu>", objc_msgSend(a1, "referenceAction")];
      }
    }
  }

  else
  {
    v3 = @"None";
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = [a1 recordID];
  v7 = [v6 hmbDescription];
  v8 = [v5 stringWithFormat:@"%@.%@", v3, v7];

  return v8;
}

@end