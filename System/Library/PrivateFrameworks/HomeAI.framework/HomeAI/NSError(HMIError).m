@interface NSError(HMIError)
+ (id)_hmiErrorWithCode:()HMIError description:reason:suggestion:underlyingError:;
@end

@implementation NSError(HMIError)

+ (id)_hmiErrorWithCode:()HMIError description:reason:suggestion:underlyingError:
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (v11 || v12 || v13 || v14)
  {
    v16 = [MEMORY[0x277CBEB38] dictionary];
    if (v11)
    {
      v17 = [MEMORY[0x277CCA8D8] mainBundle];
      v18 = [v17 localizedStringForKey:v11 value:&stru_284057FB8 table:0];
      [v16 setObject:v18 forKeyedSubscript:*MEMORY[0x277CCA450]];
    }

    if (v12)
    {
      v19 = [MEMORY[0x277CCA8D8] mainBundle];
      v20 = [v19 localizedStringForKey:v12 value:&stru_284057FB8 table:0];
      [v16 setObject:v20 forKeyedSubscript:*MEMORY[0x277CCA470]];
    }

    if (v13)
    {
      v21 = [MEMORY[0x277CCA8D8] mainBundle];
      v22 = [v21 localizedStringForKey:v13 value:&stru_284057FB8 table:0];
      [v16 setObject:v22 forKeyedSubscript:*MEMORY[0x277CCA498]];
    }

    if (v15)
    {
      [v16 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    }
  }

  else
  {
    v16 = 0;
  }

  v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMIErrorDomain" code:a3 userInfo:v16];

  return v23;
}

@end