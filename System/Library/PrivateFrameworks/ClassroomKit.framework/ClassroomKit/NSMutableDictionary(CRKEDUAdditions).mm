@interface NSMutableDictionary(CRKEDUAdditions)
- (id)crk_validateAndRemoveArrayOfClass:()CRKEDUAdditions withKey:isRequired:allowZeroLengthString:outError:;
- (id)crk_validateAndRemoveNonZeroLengthStringWithKey:()CRKEDUAdditions isRequired:outError:;
- (id)crk_validateAndRemoveObjectOfClass:()CRKEDUAdditions withKey:isRequired:outError:;
@end

@implementation NSMutableDictionary(CRKEDUAdditions)

- (id)crk_validateAndRemoveNonZeroLengthStringWithKey:()CRKEDUAdditions isRequired:outError:
{
  v8 = a3;
  v9 = [a1 objectForKey:v8];
  if (!v9)
  {
    goto LABEL_5;
  }

  [a1 removeObjectForKey:v8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v9 length])
    {
      v10 = v9;
      goto LABEL_12;
    }

LABEL_5:
    v10 = 0;
    if (a5 && a4)
    {
      v11 = [MEMORY[0x277CCA9B8] crk_missingFieldErrorWithField:v8];
LABEL_10:
      v10 = 0;
      *a5 = v11;
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (a5)
  {
    v11 = [MEMORY[0x277CCA9B8] crk_badFieldTypeErrorWithField:v8];
    goto LABEL_10;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (id)crk_validateAndRemoveObjectOfClass:()CRKEDUAdditions withKey:isRequired:outError:
{
  v9 = a4;
  v10 = [a1 objectForKey:v9];
  if (v10)
  {
    [a1 removeObjectForKey:v9];
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
      goto LABEL_11;
    }

    if (a6)
    {
      v12 = [MEMORY[0x277CCA9B8] crk_badFieldTypeErrorWithField:v9];
      goto LABEL_9;
    }

    v11 = 0;
  }

  else
  {
    v11 = 0;
    if (a6 && a5)
    {
      v12 = [MEMORY[0x277CCA9B8] crk_missingFieldErrorWithField:v9];
LABEL_9:
      v11 = 0;
      *a6 = v12;
    }
  }

LABEL_11:

  return v11;
}

- (id)crk_validateAndRemoveArrayOfClass:()CRKEDUAdditions withKey:isRequired:allowZeroLengthString:outError:
{
  v28 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = [a1 objectForKey:v11];
  if (!v12)
  {
    v19 = 0;
    if (!a7 || !a5)
    {
      goto LABEL_25;
    }

    v20 = [MEMORY[0x277CCA9B8] crk_missingFieldErrorWithField:v11];
LABEL_20:
    v19 = 0;
    *a7 = v20;
    goto LABEL_25;
  }

  [a1 removeObjectForKey:v11];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a7)
    {
LABEL_24:
      v19 = 0;
      goto LABEL_25;
    }

    v20 = [MEMORY[0x277CCA9B8] crk_badFieldTypeErrorWithField:v11];
    goto LABEL_20;
  }

  v22 = a7;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          if (a6)
          {
            continue;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || [v18 length])
          {
            continue;
          }
        }

        if (v22)
        {
          *v22 = [MEMORY[0x277CCA9B8] crk_badFieldTypeErrorWithField:v11];
        }

        goto LABEL_24;
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = v13;
LABEL_25:

  return v19;
}

@end