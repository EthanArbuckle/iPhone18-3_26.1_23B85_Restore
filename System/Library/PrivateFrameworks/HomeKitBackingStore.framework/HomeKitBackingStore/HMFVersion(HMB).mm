@interface HMFVersion(HMB)
+ (id)hmbVersionFromData:()HMB;
- (id)hmbData;
@end

@implementation HMFVersion(HMB)

- (id)hmbData
{
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"a";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "majorVersion")}];
  v12[0] = v2;
  v11[1] = @"i";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "minorVersion")}];
  v12[1] = v3;
  v11[2] = @"u";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "updateVersion")}];
  v12[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v10 = 0;
  v6 = MEMORY[0x231885660](v5, 8, &v10);
  if (!v6)
  {
    _HMFPreconditionFailure();
  }

  v7 = v6;

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)hmbVersionFromData:()HMB
{
  v3 = a3;
  v4 = OPACKDecodeData();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D0F940]);
    v8 = [v6 objectForKey:@"a"];
    v9 = [v8 integerValue];
    v10 = [v6 objectForKey:@"i"];
    v11 = [v10 integerValue];
    v12 = [v6 objectForKey:@"u"];
    v13 = [v7 initWithMajorVersion:v9 minorVersion:v11 updateVersion:{objc_msgSend(v12, "integerValue")}];

    return v13;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    return [CKRecord(HMB) recordFromExternalData:v15 error:?];
  }
}

@end