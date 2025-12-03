@interface FIValidation
+ (BOOL)performValidations:(id)validations withObject:(id)object error:(id *)error;
+ (id)validationWithName:(id)name test:(id)test;
- (BOOL)validateObject:(id)object withError:(id *)error;
@end

@implementation FIValidation

+ (id)validationWithName:(id)name test:(id)test
{
  nameCopy = name;
  testCopy = test;
  v7 = objc_alloc_init(FIValidation);
  name = v7->_name;
  v7->_name = nameCopy;
  v9 = nameCopy;

  v10 = _Block_copy(testCopy);
  test = v7->_test;
  v7->_test = v10;

  return v7;
}

- (BOOL)validateObject:(id)object withError:(id *)error
{
  objectCopy = object;
  test = [(FIValidation *)self test];
  v8 = (test)[2](test, objectCopy);

  if ((v8 & 1) == 0)
  {
    v9 = MEMORY[0x277CCACA8];
    name = [(FIValidation *)self name];
    objectCopy = [v9 stringWithFormat:@"Failed validation step: %@ for object %@", name, objectCopy];

    v12 = FIIntervalErrorWithDescription(objectCopy);
    FISetOutErrorIfNotNull(error, v12);
  }

  return v8;
}

+ (BOOL)performValidations:(id)validations withObject:(id)object error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  validationsCopy = validations;
  objectCopy = object;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = validationsCopy;
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

        if (![*(*(&v17 + 1) + 8 * i) validateObject:objectCopy withError:{error, v17}])
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