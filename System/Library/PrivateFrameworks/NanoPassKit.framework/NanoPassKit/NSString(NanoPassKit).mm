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
  v1 = [self matchesInStringWithType:2048];
  if ([v1 count] == 1)
  {
    firstObject = [v1 firstObject];
    v3 = [firstObject resultType] == 2048;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)npkIsEmailAddress
{
  v2 = [self matchesInStringWithType:32];
  if ([v2 count] == 1)
  {
    firstObject = [v2 firstObject];
    v4 = [firstObject resultType] == 32;
    v5 = [firstObject URL];
    absoluteString = [v5 absoluteString];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"mailto:%@", self];
    v8 = [absoluteString isEqualToString:v7];

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
  v2 = [self hasPrefix:@"mailto:"];
  v3 = [self hasPrefix:@"tel:"];
  if (v2)
  {
    v4 = @"mailto:";
LABEL_5:
    selfCopy = [self substringFromIndex:{-[__CFString length](v4, "length")}];
    goto LABEL_7;
  }

  if (v3)
  {
    v4 = @"tel:";
    goto LABEL_5;
  }

  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (id)matchesInStringWithType:()NanoPassKit
{
  v4 = [MEMORY[0x277CCA948] dataDetectorWithTypes:a3 error:0];
  if (v4)
  {
    v5 = [v4 matchesInString:self options:4 range:{0, objc_msgSend(self, "length")}];
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
    v5 = [v4 firstMatchInString:self options:4 range:{0, objc_msgSend(self, "length")}];
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
  if ([self length])
  {
    selfCopy = [self substringWithRange:{0, 1}];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end