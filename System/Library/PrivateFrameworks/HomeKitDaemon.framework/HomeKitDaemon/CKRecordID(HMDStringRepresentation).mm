@interface CKRecordID(HMDStringRepresentation)
- (id)hmd_canonicalStringRepresentation;
- (uint64_t)hmd_initWithCanonicalStringRepresentation:()HMDStringRepresentation;
@end

@implementation CKRecordID(HMDStringRepresentation)

- (id)hmd_canonicalStringRepresentation
{
  v2 = HMDCKRecordIDSafeCharacters();
  zoneID = [self zoneID];
  ownerName = [zoneID ownerName];
  v5 = [ownerName stringByAddingPercentEncodingWithAllowedCharacters:v2];

  zoneName = [zoneID zoneName];
  v7 = [zoneName stringByAddingPercentEncodingWithAllowedCharacters:v2];

  recordName = [self recordName];
  v9 = [recordName stringByAddingPercentEncodingWithAllowedCharacters:v2];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@/%@", v5, v7, v9];

  return v10;
}

- (uint64_t)hmd_initWithCanonicalStringRepresentation:()HMDStringRepresentation
{
  v3 = a3;
  if (HMDCKRecordIDEncodedCharacters__hmf_once_t2 != -1)
  {
    dispatch_once(&HMDCKRecordIDEncodedCharacters__hmf_once_t2, &__block_literal_global_137345);
  }

  v4 = HMDCKRecordIDEncodedCharacters__hmf_once_v3;
  v5 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v3];
  [v5 setCharactersToBeSkipped:0];
  v23 = 0;
  v6 = [v5 scanCharactersFromSet:v4 intoString:&v23];
  v7 = v23;
  v8 = v7;
  if (!v6)
  {
    goto LABEL_19;
  }

  stringByRemovingPercentEncoding = [v7 stringByRemovingPercentEncoding];

  if (!stringByRemovingPercentEncoding)
  {
    v8 = 0;
LABEL_19:
    v12 = 0;
    v16 = 0;
    v19 = 0;
    goto LABEL_20;
  }

  if (![stringByRemovingPercentEncoding length] || !objc_msgSend(v5, "scanString:intoString:", @"/", 0))
  {
    goto LABEL_16;
  }

  v22 = 0;
  v10 = [v5 scanCharactersFromSet:v4 intoString:&v22];
  v11 = v22;
  v12 = v11;
  if (!v10)
  {
LABEL_17:
    v16 = 0;
    v19 = 0;
    v8 = stringByRemovingPercentEncoding;
    goto LABEL_20;
  }

  stringByRemovingPercentEncoding2 = [v11 stringByRemovingPercentEncoding];

  if (!stringByRemovingPercentEncoding2)
  {
LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  if (![stringByRemovingPercentEncoding2 length] || !objc_msgSend(v5, "scanString:intoString:", @"/", 0))
  {
    goto LABEL_21;
  }

  v21 = 0;
  v14 = [v5 scanCharactersFromSet:v4 intoString:&v21];
  v15 = v21;
  v16 = v15;
  if (!v14)
  {
LABEL_22:
    v19 = 0;
    v8 = stringByRemovingPercentEncoding;
    v12 = stringByRemovingPercentEncoding2;
    goto LABEL_20;
  }

  stringByRemovingPercentEncoding3 = [v15 stringByRemovingPercentEncoding];

  if (!stringByRemovingPercentEncoding3)
  {
LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  if ([stringByRemovingPercentEncoding3 length] && objc_msgSend(v5, "isAtEnd"))
  {
    v18 = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:stringByRemovingPercentEncoding2 ownerName:stringByRemovingPercentEncoding];
    v19 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:stringByRemovingPercentEncoding3 zoneID:v18];
  }

  else
  {
    v19 = 0;
  }

  v8 = stringByRemovingPercentEncoding;
  v12 = stringByRemovingPercentEncoding2;
  v16 = stringByRemovingPercentEncoding3;
LABEL_20:

  return v19;
}

@end