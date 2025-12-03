@interface WFKeyPath
+ (id)evaluateKeyPath:(id)path onObject:(id)object error:(id *)error;
+ (id)valueFromArray:(id)array component:(id)component previousKeyPath:(id)path error:(id *)error;
+ (id)valueFromDictionary:(id)dictionary component:(id)component previousKeyPath:(id)path isLastComponent:(BOOL)lastComponent error:(id *)error;
@end

@implementation WFKeyPath

+ (id)valueFromDictionary:(id)dictionary component:(id)component previousKeyPath:(id)path isLastComponent:(BOOL)lastComponent error:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  componentCopy = component;
  pathCopy = path;
  v13 = [dictionary objectForKey:componentCopy];
  v14 = v13;
  if (v13 || lastComponent)
  {
    v20 = v13;
  }

  else if (error)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = WFLocalizedString(@"In '%1$@', no value was found for dictionary key '%2$@'.");
    componentCopy = [v15 stringWithFormat:v16, pathCopy, componentCopy];

    v18 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = componentCopy;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    *error = [v18 errorWithDomain:@"WFKeyPathErrorDomain" code:2 userInfo:v19];
  }

  return v14;
}

+ (id)valueFromArray:(id)array component:(id)component previousKeyPath:(id)path error:(id *)error
{
  v37[2] = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  componentCopy = component;
  pathCopy = path;
  v37[0] = pathCopy;
  v37[1] = componentCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v13 = [v12 componentsJoinedByString:@"."];

  decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  invertedSet = [decimalDigitCharacterSet invertedSet];
  v16 = [componentCopy rangeOfCharacterFromSet:invertedSet];

  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!error)
    {
      goto LABEL_12;
    }

    v25 = MEMORY[0x277CCACA8];
    v26 = WFLocalizedString(@"The value at '%1$@' is an array, but '%2$@' is not a valid index.");
    componentCopy = [v25 stringWithFormat:v26, pathCopy, componentCopy];

    v21 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36 = componentCopy;
    v22 = MEMORY[0x277CBEAC0];
    v23 = &v36;
    v24 = &v35;
    goto LABEL_10;
  }

  integerValue = [componentCopy integerValue];
  if (integerValue <= 0)
  {
    if (!error)
    {
      goto LABEL_12;
    }

    v27 = MEMORY[0x277CCACA8];
    v28 = WFLocalizedString(@"In '%1$@', you asked for item %2$d, but the first item is at index 1.");
    componentCopy = [v27 stringWithFormat:v28, v13, integerValue];

    v21 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v34 = componentCopy;
    v22 = MEMORY[0x277CBEAC0];
    v23 = &v34;
    v24 = &v33;
    goto LABEL_10;
  }

  if (integerValue > [arrayCopy count])
  {
    if (!error)
    {
      goto LABEL_12;
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = WFLocalizedString(@"In '%1$@', the index you specified was outside of the possible range for the array (you asked for item %3$d, and the array has only %4$d).");
    componentCopy = [v18 stringWithFormat:v19, pathCopy, integerValue, objc_msgSend(arrayCopy, "count")];

    v21 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v32 = componentCopy;
    v22 = MEMORY[0x277CBEAC0];
    v23 = &v32;
    v24 = &v31;
LABEL_10:
    v29 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
    *error = [v21 errorWithDomain:@"WFKeyPathErrorDomain" code:0 userInfo:v29];

    error = 0;
    goto LABEL_12;
  }

  error = [arrayCopy objectAtIndex:integerValue - 1];
LABEL_12:

  return error;
}

+ (id)evaluateKeyPath:(id)path onObject:(id)object error:(id *)error
{
  v52[2] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v9 = [path componentsSeparatedByString:@"."];
  if (![v9 count])
  {
    v32 = 0;
    goto LABEL_18;
  }

  v42 = objectCopy;
  v10 = objectCopy;
  if (![v9 count])
  {
LABEL_12:
    v10 = v10;
    v32 = v10;
    goto LABEL_17;
  }

  errorCopy = error;
  v11 = 0;
  v43 = *MEMORY[0x277CCA450];
  v12 = 0x277CBE000uLL;
  while (1)
  {
    v13 = [v9 objectAtIndex:v11];
    v14 = [v9 subarrayWithRange:{0, v11}];
    v15 = [v14 componentsJoinedByString:@"."];

    v16 = [v9 count];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = 0;
      v17 = [self valueFromArray:v10 component:v13 previousKeyPath:v15 error:&v47];
      v18 = v47;
LABEL_8:
      v19 = v18;
      v20 = v10;
      v10 = v17;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = 0;
      v17 = [self valueFromDictionary:v10 component:v13 previousKeyPath:v15 isLastComponent:v11 == v16 - 1 error:&v46];
      v18 = v46;
      goto LABEL_8;
    }

    v52[0] = v15;
    v52[1] = v13;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
    v20 = [v21 componentsJoinedByString:@"."];

    v22 = MEMORY[0x277CCACA8];
    v23 = WFLocalizedString(@"In key path '%1$@', you referenced a value '%2$@' inside of '%3$@', which is not an array or dictionary.");
    v24 = [v22 stringWithFormat:v23, v20, v13, v15];

    v25 = MEMORY[0x277CCA9B8];
    v50 = v43;
    v51 = v24;
    [*(v12 + 2752) dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v44 = v10;
    v26 = v15;
    v27 = v9;
    v28 = v13;
    selfCopy = self;
    v31 = v30 = v12;
    v19 = [v25 errorWithDomain:@"WFKeyPathErrorDomain" code:3 userInfo:v31];

    v12 = v30;
    self = selfCopy;
    v13 = v28;
    v9 = v27;
    v15 = v26;

    v10 = 0;
LABEL_10:

    if (v19)
    {
      break;
    }

    if ([v9 count] <= ++v11)
    {
      goto LABEL_12;
    }
  }

  if (errorCopy)
  {
    v45 = WFLocalizedString(@"Could not evaluate the key path.");
    localizedDescription = [v19 localizedDescription];
    v40 = MEMORY[0x277CCA9B8];
    domain = [v19 domain];
    code = [v19 code];
    v36 = v12;
    v37 = code;
    v48[0] = *MEMORY[0x277CCA470];
    v48[1] = v43;
    v49[0] = v45;
    v49[1] = localizedDescription;
    v48[2] = *MEMORY[0x277CCA7E8];
    v49[2] = v19;
    v38 = [*(v36 + 2752) dictionaryWithObjects:v49 forKeys:v48 count:3];
    *errorCopy = [v40 errorWithDomain:domain code:v37 userInfo:v38];
  }

  v32 = 0;
LABEL_17:

  objectCopy = v42;
LABEL_18:

  return v32;
}

@end