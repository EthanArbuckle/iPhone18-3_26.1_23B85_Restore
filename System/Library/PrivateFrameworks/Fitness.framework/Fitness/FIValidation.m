@interface FIValidation
+ (BOOL)performValidations:(id)a3 withObject:(id)a4 error:(id *)a5;
+ (id)validationWithName:(id)a3 test:(id)a4;
- (BOOL)validateObject:(id)a3 withError:(id *)a4;
@end

@implementation FIValidation

+ (id)validationWithName:(id)a3 test:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(FIValidation);
  name = v7->_name;
  v7->_name = v5;
  v9 = v5;

  v10 = _Block_copy(v6);
  test = v7->_test;
  v7->_test = v10;

  return v7;
}

- (BOOL)validateObject:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [(FIValidation *)self test];
  v8 = (v7)[2](v7, v6);

  if ((v8 & 1) == 0)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [(FIValidation *)self name];
    v11 = [v9 stringWithFormat:@"Failed validation step: %@ for object %@", v10, v6];

    v12 = FIIntervalErrorWithDescription(v11);
    FISetOutErrorIfNotNull(a4, v12);
  }

  return v8;
}

+ (BOOL)performValidations:(id)a3 withObject:(id)a4 error:(id *)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (![*(*(&v17 + 1) + 8 * i) validateObject:v8 withError:{a5, v17}])
        {
          v14 = 0;
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

@end