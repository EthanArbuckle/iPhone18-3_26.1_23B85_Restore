@interface WFKeyPath
+ (id)evaluateKeyPath:(id)a3 onObject:(id)a4 error:(id *)a5;
+ (id)valueFromArray:(id)a3 component:(id)a4 previousKeyPath:(id)a5 error:(id *)a6;
+ (id)valueFromDictionary:(id)a3 component:(id)a4 previousKeyPath:(id)a5 isLastComponent:(BOOL)a6 error:(id *)a7;
@end

@implementation WFKeyPath

+ (id)valueFromDictionary:(id)a3 component:(id)a4 previousKeyPath:(id)a5 isLastComponent:(BOOL)a6 error:(id *)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = [a3 objectForKey:v11];
  v14 = v13;
  if (v13 || a6)
  {
    v20 = v13;
  }

  else if (a7)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = WFLocalizedString(@"In '%1$@', no value was found for dictionary key '%2$@'.");
    v17 = [v15 stringWithFormat:v16, v12, v11];

    v18 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = v17;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    *a7 = [v18 errorWithDomain:@"WFKeyPathErrorDomain" code:2 userInfo:v19];
  }

  return v14;
}

+ (id)valueFromArray:(id)a3 component:(id)a4 previousKeyPath:(id)a5 error:(id *)a6
{
  v37[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v37[0] = v11;
  v37[1] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v13 = [v12 componentsJoinedByString:@"."];

  v14 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
  v15 = [v14 invertedSet];
  v16 = [v10 rangeOfCharacterFromSet:v15];

  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!a6)
    {
      goto LABEL_12;
    }

    v25 = MEMORY[0x277CCACA8];
    v26 = WFLocalizedString(@"The value at '%1$@' is an array, but '%2$@' is not a valid index.");
    v20 = [v25 stringWithFormat:v26, v11, v10];

    v21 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36 = v20;
    v22 = MEMORY[0x277CBEAC0];
    v23 = &v36;
    v24 = &v35;
    goto LABEL_10;
  }

  v17 = [v10 integerValue];
  if (v17 <= 0)
  {
    if (!a6)
    {
      goto LABEL_12;
    }

    v27 = MEMORY[0x277CCACA8];
    v28 = WFLocalizedString(@"In '%1$@', you asked for item %2$d, but the first item is at index 1.");
    v20 = [v27 stringWithFormat:v28, v13, v17];

    v21 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA450];
    v34 = v20;
    v22 = MEMORY[0x277CBEAC0];
    v23 = &v34;
    v24 = &v33;
    goto LABEL_10;
  }

  if (v17 > [v9 count])
  {
    if (!a6)
    {
      goto LABEL_12;
    }

    v18 = MEMORY[0x277CCACA8];
    v19 = WFLocalizedString(@"In '%1$@', the index you specified was outside of the possible range for the array (you asked for item %3$d, and the array has only %4$d).");
    v20 = [v18 stringWithFormat:v19, v11, v17, objc_msgSend(v9, "count")];

    v21 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v32 = v20;
    v22 = MEMORY[0x277CBEAC0];
    v23 = &v32;
    v24 = &v31;
LABEL_10:
    v29 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
    *a6 = [v21 errorWithDomain:@"WFKeyPathErrorDomain" code:0 userInfo:v29];

    a6 = 0;
    goto LABEL_12;
  }

  a6 = [v9 objectAtIndex:v17 - 1];
LABEL_12:

  return a6;
}

+ (id)evaluateKeyPath:(id)a3 onObject:(id)a4 error:(id *)a5
{
  v52[2] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [a3 componentsSeparatedByString:@"."];
  if (![v9 count])
  {
    v32 = 0;
    goto LABEL_18;
  }

  v42 = v8;
  v10 = v8;
  if (![v9 count])
  {
LABEL_12:
    v10 = v10;
    v32 = v10;
    goto LABEL_17;
  }

  v41 = a5;
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
      v17 = [a1 valueFromArray:v10 component:v13 previousKeyPath:v15 error:&v47];
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
      v17 = [a1 valueFromDictionary:v10 component:v13 previousKeyPath:v15 isLastComponent:v11 == v16 - 1 error:&v46];
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
    v29 = a1;
    v31 = v30 = v12;
    v19 = [v25 errorWithDomain:@"WFKeyPathErrorDomain" code:3 userInfo:v31];

    v12 = v30;
    a1 = v29;
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

  if (v41)
  {
    v45 = WFLocalizedString(@"Could not evaluate the key path.");
    v33 = [v19 localizedDescription];
    v40 = MEMORY[0x277CCA9B8];
    v34 = [v19 domain];
    v35 = [v19 code];
    v36 = v12;
    v37 = v35;
    v48[0] = *MEMORY[0x277CCA470];
    v48[1] = v43;
    v49[0] = v45;
    v49[1] = v33;
    v48[2] = *MEMORY[0x277CCA7E8];
    v49[2] = v19;
    v38 = [*(v36 + 2752) dictionaryWithObjects:v49 forKeys:v48 count:3];
    *v41 = [v40 errorWithDomain:v34 code:v37 userInfo:v38];
  }

  v32 = 0;
LABEL_17:

  v8 = v42;
LABEL_18:

  return v32;
}

@end