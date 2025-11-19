@interface NSError(HFErrorHandlerAdditions)
+ (id)hf_errorWithCode:()HFErrorHandlerAdditions operation:options:;
- (id)hf_errorWithOperationType:()HFErrorHandlerAdditions failedItemName:;
- (id)hf_errorWithOperationType:()HFErrorHandlerAdditions options:;
@end

@implementation NSError(HFErrorHandlerAdditions)

+ (id)hf_errorWithCode:()HFErrorHandlerAdditions operation:options:
{
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277CCA9B8] hf_errorWithCode:a3];
  v10 = v9;
  if (v7 | v8)
  {
    v11 = [v9 hf_errorWithOperationType:v7 options:v8];
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;

  return v12;
}

- (id)hf_errorWithOperationType:()HFErrorHandlerAdditions options:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 userInfo];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 mutableCopy];
  }

  else
  {
    v11 = [MEMORY[0x277CBEAC0] dictionary];
    v10 = [v11 mutableCopy];
  }

  [v10 na_safeSetObject:v7 forKey:@"HFErrorUserInfoOperationKey"];
  [v10 na_safeSetObject:v6 forKey:@"HFErrorUserInfoOptionsKey"];

  v12 = MEMORY[0x277CCA9B8];
  v13 = [a1 domain];
  v14 = [v12 errorWithDomain:v13 code:objc_msgSend(a1 userInfo:{"code"), v10}];

  return v14;
}

- (id)hf_errorWithOperationType:()HFErrorHandlerAdditions failedItemName:
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v15 = @"HFErrorHandlerOptionFailedItemName";
    v16[0] = v6;
    v8 = MEMORY[0x277CBEAC0];
    v9 = a3;
    v10 = [v8 dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v11 = [a1 hf_errorWithOperationType:v9 options:v10];
  }

  else
  {
    v12 = a3;
    v11 = [a1 hf_errorWithOperationType:v12 options:0];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

@end