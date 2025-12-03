@interface NSString(TSUCJKSupport)
- (BOOL)tsu_isCJKString;
@end

@implementation NSString(TSUCJKSupport)

- (BOOL)tsu_isCJKString
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (![self length])
  {
    return 0;
  }

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  v4 = [v3 length];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  MEMORY[0x28223BE20]();
  v7 = (v15 - ((v6 + 17) & 0xFFFFFFFFFFFFFFF0));
  [v3 getCharacters:v7 range:{0, v5}];
  v8 = 0;
  v9 = 1;
  v10 = v5;
  do
  {
    v12 = *v7++;
    v11 = v12;
    v13 = vdup_n_s16(v12);
    if ((vmaxv_u16(vorr_s8(vcgt_u16(0x56D019B6015000E0, vadd_s16(v13, 0xB200CC00CFC0D100)), vceq_s16(vand_s8(v13, 0xFFF0FFC0FF80FF00), 0x319030002E801100))) & 1) == 0 && ((v11 + 21504) >> 2) >= 0xAE9u && (v11 + 1792) >= 0x200u && (v11 + 464) >= 0x20u && (v11 & 0xFFE0) != 0x31A0 && (v11 & 0xFE00) != 0x3200)
    {
      break;
    }

    v8 = v9++ >= v5;
    --v10;
  }

  while (v10);

  return v8;
}

@end