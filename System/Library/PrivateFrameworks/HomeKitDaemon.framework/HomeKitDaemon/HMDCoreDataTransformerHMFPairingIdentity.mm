@interface HMDCoreDataTransformerHMFPairingIdentity
+ (id)OPACKFromValue:(id)a3 error:(id *)a4;
+ (id)valueFromOPACK:(id)a3 error:(id *)a4;
@end

@implementation HMDCoreDataTransformerHMFPairingIdentity

+ (id)valueFromOPACK:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 hmf_stringForKey:@"i"];
    v10 = [v8 hmf_dataForKey:@"d"];
    if ([v9 length] && objc_msgSend(v10, "length"))
    {
      v11 = objc_alloc(MEMORY[0x277D0F8A8]);
      v12 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v10];
      v13 = [v11 initWithIdentifier:v9 publicKey:v12 privateKey:0];
    }

    else
    {
      if (!a4)
      {
        v13 = 0;
        goto LABEL_14;
      }

      v14 = MEMORY[0x277CCA9B8];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create HMFPairingIdentity from dictionary: %@", v8];
      [v14 hmfErrorWithCode:15 reason:v12];
      *a4 = v13 = 0;
    }

LABEL_14:
    goto LABEL_15;
  }

  if (a4)
  {
    v15 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected NSDictionary value to create HMFPairingIdentity: %@", v5];
    [v15 hmfErrorWithCode:3 reason:v9];
    *a4 = v13 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

+ (id)OPACKFromValue:(id)a3 error:(id *)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 identifier];
  v7 = [v5 publicKey];
  v8 = [v7 data];

  if ([v6 length] && objc_msgSend(v8, "length"))
  {
    v13[0] = @"i";
    v13[1] = @"d";
    v14[0] = v6;
    v14[1] = v8;
    a4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else if (a4)
  {
    v9 = MEMORY[0x277CCA9B8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid pairing identity: %@", v5];
    *a4 = [v9 hmfErrorWithCode:3 reason:v10];

    a4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return a4;
}

@end