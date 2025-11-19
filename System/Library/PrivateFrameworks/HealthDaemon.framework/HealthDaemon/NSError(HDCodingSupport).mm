@interface NSError(HDCodingSupport)
+ (id)hk_errorWithCodableError:()HDCodingSupport;
- (HDCodableError)hk_codableError;
@end

@implementation NSError(HDCodingSupport)

- (HDCodableError)hk_codableError
{
  v2 = objc_alloc_init(HDCodableError);
  v3 = [a1 domain];
  [(HDCodableError *)v2 setDomain:v3];

  -[HDCodableError setCode:](v2, "setCode:", [a1 code]);
  v4 = [a1 localizedDescription];
  [(HDCodableError *)v2 setLocalizedDescription:v4];

  return v2;
}

+ (id)hk_errorWithCodableError:()HDCodingSupport
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 localizedDescription];
  v5 = v4;
  if (v4)
  {
    v13 = *MEMORY[0x277CCA450];
    v14[0] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v8 = [v3 domain];
  v9 = [v3 code];

  v10 = [v7 initWithDomain:v8 code:v9 userInfo:v6];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end