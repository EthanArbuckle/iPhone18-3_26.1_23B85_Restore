@interface HMDCoreDataTransformerHAPPairingIdentity
+ (id)OPACKFromValue:(id)a3 error:(id *)a4;
+ (id)valueFromOPACK:(id)a3 error:(id *)a4;
@end

@implementation HMDCoreDataTransformerHAPPairingIdentity

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
    v11 = [v8 hmf_numberForKey:@"p"];
    if (!v9 || ([v10 length] ? (v12 = v11 == 0) : (v12 = 1), v12))
    {
      if (!a4)
      {
        v15 = 0;
        goto LABEL_20;
      }

      v13 = MEMORY[0x277CCA9B8];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create HAPPairingIdentity from dictionary: %@", v8];
      [v13 hmfErrorWithCode:15 reason:v14];
      *a4 = v15 = 0;
    }

    else
    {
      if (![(__CFString *)v9 length])
      {

        v9 = @"884A90AC-D3C1-4DB2-8C1C-33D10348F452";
      }

      v17 = objc_alloc(MEMORY[0x277CFEC20]);
      v14 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v10];
      v15 = [v17 initWithIdentifier:v9 publicKey:v14 privateKey:0 permissions:{objc_msgSend(v11, "unsignedIntegerValue")}];
    }

LABEL_20:
    goto LABEL_21;
  }

  if (a4)
  {
    v16 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected NSDictionary value to create HAPPairingIdentity: %@", v5];
    [v16 hmfErrorWithCode:3 reason:v9];
    *a4 = v15 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v15 = 0;
LABEL_22:

  return v15;
}

+ (id)OPACKFromValue:(id)a3 error:(id *)a4
{
  v15[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 identifier];
  v7 = [v5 publicKey];
  v8 = [v7 data];

  if ([v6 length] && objc_msgSend(v8, "length"))
  {
    v14[0] = @"i";
    v14[1] = @"d";
    v15[0] = v6;
    v15[1] = v8;
    v14[2] = @"p";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "permissions")}];
    v15[2] = v9;
    a4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  }

  else if (a4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid pairing identity: %@", v5];
    *a4 = [v10 hmfErrorWithCode:3 reason:v11];

    a4 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return a4;
}

@end