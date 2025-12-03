@interface SGNestedArray
+ (void)traversalWithNestedArray:(id)array depthCallback:(id)callback itemCallback:(id)itemCallback;
@end

@implementation SGNestedArray

+ (void)traversalWithNestedArray:(id)array depthCallback:(id)callback itemCallback:(id)itemCallback
{
  v52 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  callbackCopy = callback;
  itemCallbackCopy = itemCallback;
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v39 = arrayCopy;
  v13 = arrayCopy;
  v14 = v12;
  [v10 addObject:v13];
  v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:-1];
  [v11 addObject:v15];

  if ([v10 count])
  {
    v40 = v14;
    v16 = -1;
    v41 = itemCallbackCopy;
    v42 = callbackCopy;
    do
    {
      lastObject = [v10 lastObject];
      lastObject2 = [v11 lastObject];
      integerValue = [lastObject2 integerValue];

      [v10 removeLastObject];
      [v11 removeLastObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = lastObject;
        v21 = [v20 count];
        v46 = v21 != 0;
        if (v21)
        {
          v44 = v16;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v43 = v20;
          reverseObjectEnumerator = [v20 reverseObjectEnumerator];
          v23 = [reverseObjectEnumerator countByEnumeratingWithState:&v47 objects:v51 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v48;
            do
            {
              v26 = 0;
              do
              {
                if (*v48 != v25)
                {
                  objc_enumerationMutation(reverseObjectEnumerator);
                }

                [v10 addObject:*(*(&v47 + 1) + 8 * v26)];
                v27 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:integerValue + 1];
                [v11 addObject:v27];

                ++v26;
              }

              while (v24 != v26);
              v24 = [reverseObjectEnumerator countByEnumeratingWithState:&v47 objects:v51 count:16];
            }

            while (v24);
          }

          itemCallbackCopy = v41;
          callbackCopy = v42;
          v14 = v40;
          v16 = v44;
          v20 = v43;
        }
      }

      else
      {
        v46 = 0;
      }

      if (integerValue > v16)
      {
        v28 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:-1];
        [v14 addObject:v28];

        v16 = integerValue;
        if (callbackCopy)
        {
          callbackCopy[2](callbackCopy);
          v16 = integerValue;
        }
      }

      if ((integerValue & 0x8000000000000000) == 0)
      {
        v29 = [v14 objectAtIndexedSubscript:integerValue];
        v45 = lastObject;
        v30 = v14;
        v31 = itemCallbackCopy;
        v32 = callbackCopy;
        v33 = v16;
        unsignedIntegerValue = [v29 unsignedIntegerValue];

        v35 = objc_alloc(MEMORY[0x277CCABB0]);
        v36 = unsignedIntegerValue + 1;
        v16 = v33;
        callbackCopy = v32;
        itemCallbackCopy = v31;
        v14 = v30;
        lastObject = v45;
        v37 = [v35 initWithUnsignedInteger:v36];
        [v14 setObject:v37 atIndexedSubscript:integerValue];

        (*(itemCallbackCopy + 2))(itemCallbackCopy, v45, v14, integerValue, v16, v46);
      }
    }

    while ([v10 count]);
  }

  v38 = *MEMORY[0x277D85DE8];
}

@end