@interface HMDCoreDataTransformerHAPPairingIdentity
+ (id)OPACKFromValue:(id)value error:(id *)error;
+ (id)valueFromOPACK:(id)k error:(id *)error;
@end

@implementation HMDCoreDataTransformerHAPPairingIdentity

+ (id)valueFromOPACK:(id)k error:(id *)error
{
  kCopy = k;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = kCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v7;
  if (v7)
  {
    kCopy = [v7 hmf_stringForKey:@"i"];
    v10 = [v8 hmf_dataForKey:@"d"];
    v11 = [v8 hmf_numberForKey:@"p"];
    if (!kCopy || ([v10 length] ? (v12 = v11 == 0) : (v12 = 1), v12))
    {
      if (!error)
      {
        v15 = 0;
        goto LABEL_20;
      }

      v13 = MEMORY[0x277CCA9B8];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create HAPPairingIdentity from dictionary: %@", v8];
      [v13 hmfErrorWithCode:15 reason:v14];
      *error = v15 = 0;
    }

    else
    {
      if (![(__CFString *)kCopy length])
      {

        kCopy = @"884A90AC-D3C1-4DB2-8C1C-33D10348F452";
      }

      v17 = objc_alloc(MEMORY[0x277CFEC20]);
      v14 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v10];
      v15 = [v17 initWithIdentifier:kCopy publicKey:v14 privateKey:0 permissions:{objc_msgSend(v11, "unsignedIntegerValue")}];
    }

LABEL_20:
    goto LABEL_21;
  }

  if (error)
  {
    v16 = MEMORY[0x277CCA9B8];
    kCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected NSDictionary value to create HAPPairingIdentity: %@", kCopy];
    [v16 hmfErrorWithCode:3 reason:kCopy];
    *error = v15 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v15 = 0;
LABEL_22:

  return v15;
}

+ (id)OPACKFromValue:(id)value error:(id *)error
{
  v15[3] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  identifier = [valueCopy identifier];
  publicKey = [valueCopy publicKey];
  data = [publicKey data];

  if ([identifier length] && objc_msgSend(data, "length"))
  {
    v14[0] = @"i";
    v14[1] = @"d";
    v15[0] = identifier;
    v15[1] = data;
    v14[2] = @"p";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(valueCopy, "permissions")}];
    v15[2] = v9;
    error = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  }

  else if (error)
  {
    v10 = MEMORY[0x277CCA9B8];
    valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid pairing identity: %@", valueCopy];
    *error = [v10 hmfErrorWithCode:3 reason:valueCopy];

    error = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return error;
}

@end