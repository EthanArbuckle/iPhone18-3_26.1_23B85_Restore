@interface NSError(HDCodingSupport)
+ (id)hk_errorWithCodableError:()HDCodingSupport;
- (HDCodableError)hk_codableError;
@end

@implementation NSError(HDCodingSupport)

- (HDCodableError)hk_codableError
{
  v2 = objc_alloc_init(HDCodableError);
  domain = [self domain];
  [(HDCodableError *)v2 setDomain:domain];

  -[HDCodableError setCode:](v2, "setCode:", [self code]);
  localizedDescription = [self localizedDescription];
  [(HDCodableError *)v2 setLocalizedDescription:localizedDescription];

  return v2;
}

+ (id)hk_errorWithCodableError:()HDCodingSupport
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  localizedDescription = [v3 localizedDescription];
  v5 = localizedDescription;
  if (localizedDescription)
  {
    v13 = *MEMORY[0x277CCA450];
    v14[0] = localizedDescription;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  domain = [v3 domain];
  code = [v3 code];

  v10 = [v7 initWithDomain:domain code:code userInfo:v6];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end