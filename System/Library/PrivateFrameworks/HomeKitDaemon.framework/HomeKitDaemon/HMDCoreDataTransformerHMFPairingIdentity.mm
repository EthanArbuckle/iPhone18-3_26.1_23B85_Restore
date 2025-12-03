@interface HMDCoreDataTransformerHMFPairingIdentity
+ (id)OPACKFromValue:(id)value error:(id *)error;
+ (id)valueFromOPACK:(id)k error:(id *)error;
@end

@implementation HMDCoreDataTransformerHMFPairingIdentity

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
    if ([kCopy length] && objc_msgSend(v10, "length"))
    {
      v11 = objc_alloc(MEMORY[0x277D0F8A8]);
      v12 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v10];
      v13 = [v11 initWithIdentifier:kCopy publicKey:v12 privateKey:0];
    }

    else
    {
      if (!error)
      {
        v13 = 0;
        goto LABEL_14;
      }

      v14 = MEMORY[0x277CCA9B8];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create HMFPairingIdentity from dictionary: %@", v8];
      [v14 hmfErrorWithCode:15 reason:v12];
      *error = v13 = 0;
    }

LABEL_14:
    goto LABEL_15;
  }

  if (error)
  {
    v15 = MEMORY[0x277CCA9B8];
    kCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected NSDictionary value to create HMFPairingIdentity: %@", kCopy];
    [v15 hmfErrorWithCode:3 reason:kCopy];
    *error = v13 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

+ (id)OPACKFromValue:(id)value error:(id *)error
{
  v14[2] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  identifier = [valueCopy identifier];
  publicKey = [valueCopy publicKey];
  data = [publicKey data];

  if ([identifier length] && objc_msgSend(data, "length"))
  {
    v13[0] = @"i";
    v13[1] = @"d";
    v14[0] = identifier;
    v14[1] = data;
    error = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else if (error)
  {
    v9 = MEMORY[0x277CCA9B8];
    valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid pairing identity: %@", valueCopy];
    *error = [v9 hmfErrorWithCode:3 reason:valueCopy];

    error = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return error;
}

@end