@interface NSString(NanoPassKit)
- (BOOL)containsMatchInStringWithType:()NanoPassKit;
- (BOOL)npkIsPhoneNumber;
- (id)matchesInStringWithType:()NanoPassKit;
- (id)npkBaseAddress;
- (id)npkFirstCharacter;
- (uint64_t)npkIsEmailAddress;
@end

@implementation NSString(NanoPassKit)

- (BOOL)npkIsPhoneNumber
{
  v1 = [a1 matchesInStringWithType:2048];
  if ([v1 count] == 1)
  {
    v2 = [v1 firstObject];
    v3 = [v2 resultType] == 2048;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)npkIsEmailAddress
{
  v2 = [a1 matchesInStringWithType:32];
  if ([v2 count] == 1)
  {
    v3 = [v2 firstObject];
    v4 = [v3 resultType] == 32;
    v5 = [v3 URL];
    v6 = [v5 absoluteString];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"mailto:%@", a1];
    v8 = [v6 isEqualToString:v7];

    v9 = v4 & v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)npkBaseAddress
{
  v2 = [a1 hasPrefix:@"mailto:"];
  v3 = [a1 hasPrefix:@"tel:"];
  if (v2)
  {
    v4 = @"mailto:";
LABEL_5:
    v5 = [a1 substringFromIndex:{-[__CFString length](v4, "length")}];
    goto LABEL_7;
  }

  if (v3)
  {
    v4 = @"tel:";
    goto LABEL_5;
  }

  v5 = a1;
LABEL_7:

  return v5;
}

- (id)matchesInStringWithType:()NanoPassKit
{
  v4 = [MEMORY[0x277CCA948] dataDetectorWithTypes:a3 error:0];
  if (v4)
  {
    v5 = [v4 matchesInString:a1 options:4 range:{0, objc_msgSend(a1, "length")}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)containsMatchInStringWithType:()NanoPassKit
{
  v4 = [MEMORY[0x277CCA948] dataDetectorWithTypes:a3 error:0];
  if (v4)
  {
    v5 = [v4 firstMatchInString:a1 options:4 range:{0, objc_msgSend(a1, "length")}];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)npkFirstCharacter
{
  if ([a1 length])
  {
    v2 = [a1 substringWithRange:{0, 1}];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

@end