@interface CKRecordID(HMDStringRepresentation)
- (id)hmd_canonicalStringRepresentation;
- (uint64_t)hmd_initWithCanonicalStringRepresentation:()HMDStringRepresentation;
@end

@implementation CKRecordID(HMDStringRepresentation)

- (id)hmd_canonicalStringRepresentation
{
  v2 = HMDCKRecordIDSafeCharacters();
  v3 = [a1 zoneID];
  v4 = [v3 ownerName];
  v5 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:v2];

  v6 = [v3 zoneName];
  v7 = [v6 stringByAddingPercentEncodingWithAllowedCharacters:v2];

  v8 = [a1 recordName];
  v9 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:v2];

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

  v9 = [v7 stringByRemovingPercentEncoding];

  if (!v9)
  {
    v8 = 0;
LABEL_19:
    v12 = 0;
    v16 = 0;
    v19 = 0;
    goto LABEL_20;
  }

  if (![v9 length] || !objc_msgSend(v5, "scanString:intoString:", @"/", 0))
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
    v8 = v9;
    goto LABEL_20;
  }

  v13 = [v11 stringByRemovingPercentEncoding];

  if (!v13)
  {
LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  if (![v13 length] || !objc_msgSend(v5, "scanString:intoString:", @"/", 0))
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
    v8 = v9;
    v12 = v13;
    goto LABEL_20;
  }

  v17 = [v15 stringByRemovingPercentEncoding];

  if (!v17)
  {
LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

  if ([v17 length] && objc_msgSend(v5, "isAtEnd"))
  {
    v18 = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:v13 ownerName:v9];
    v19 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v17 zoneID:v18];
  }

  else
  {
    v19 = 0;
  }

  v8 = v9;
  v12 = v13;
  v16 = v17;
LABEL_20:

  return v19;
}

@end