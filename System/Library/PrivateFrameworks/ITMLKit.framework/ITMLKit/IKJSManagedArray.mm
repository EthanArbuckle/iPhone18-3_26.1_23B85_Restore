@interface IKJSManagedArray
- (IKJSManagedArray)initWithArray:(id)array ownerObject:(id)object;
- (id)jsValuesWithContext:(id)context;
- (void)dealloc;
@end

@implementation IKJSManagedArray

- (IKJSManagedArray)initWithArray:(id)array ownerObject:(id)object
{
  v31 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  objectCopy = object;
  v29.receiver = self;
  v29.super_class = IKJSManagedArray;
  v8 = [(IKJSManagedArray *)&v29 init];
  v9 = v8;
  if (v8)
  {
    v23 = objectCopy;
    objc_storeStrong(&v8->_ownerObject, object);
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(arrayCopy, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = arrayCopy;
    v11 = arrayCopy;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          if ([v16 isObject])
          {
            toObject = [MEMORY[0x277CD4650] managedValueWithValue:v16];
            context = [v16 context];
            virtualMachine = [context virtualMachine];
            [virtualMachine addManagedReference:toObject withOwner:v9->_ownerObject];
          }

          else
          {
            toObject = [v16 toObject];
          }

          [(NSArray *)v10 addObject:toObject];
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v13);
    }

    managedArray = v9->_managedArray;
    v9->_managedArray = v10;

    objectCopy = v23;
    arrayCopy = v24;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)dealloc
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  managedArray = [(IKJSManagedArray *)self managedArray];
  v3 = [managedArray countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(managedArray);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          value = [v7 value];
          context = [value context];
          virtualMachine = [context virtualMachine];
          ownerObject = [(IKJSManagedArray *)self ownerObject];
          [virtualMachine removeManagedReference:v7 withOwner:ownerObject];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [managedArray countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  [(IKJSManagedArray *)self setManagedArray:0];
  v14.receiver = self;
  v14.super_class = IKJSManagedArray;
  [(IKJSManagedArray *)&v14 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (id)jsValuesWithContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = MEMORY[0x277CBEB18];
  managedArray = [(IKJSManagedArray *)self managedArray];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(managedArray, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  managedArray2 = [(IKJSManagedArray *)self managedArray];
  v9 = [managedArray2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(managedArray2);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v13 value];
        }

        else
        {
          [MEMORY[0x277CD4658] valueWithObject:v13 inContext:contextCopy];
        }
        v14 = ;
        [v7 addObject:v14];
      }

      v10 = [managedArray2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

@end