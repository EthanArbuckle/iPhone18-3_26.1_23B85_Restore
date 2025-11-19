@interface SGNestedArray
+ (void)traversalWithNestedArray:(id)a3 depthCallback:(id)a4 itemCallback:(id)a5;
@end

@implementation SGNestedArray

+ (void)traversalWithNestedArray:(id)a3 depthCallback:(id)a4 itemCallback:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v39 = v7;
  v13 = v7;
  v14 = v12;
  [v10 addObject:v13];
  v15 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:-1];
  [v11 addObject:v15];

  if ([v10 count])
  {
    v40 = v14;
    v16 = -1;
    v41 = v9;
    v42 = v8;
    do
    {
      v17 = [v10 lastObject];
      v18 = [v11 lastObject];
      v19 = [v18 integerValue];

      [v10 removeLastObject];
      [v11 removeLastObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v17;
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
          v22 = [v20 reverseObjectEnumerator];
          v23 = [v22 countByEnumeratingWithState:&v47 objects:v51 count:16];
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
                  objc_enumerationMutation(v22);
                }

                [v10 addObject:*(*(&v47 + 1) + 8 * v26)];
                v27 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:v19 + 1];
                [v11 addObject:v27];

                ++v26;
              }

              while (v24 != v26);
              v24 = [v22 countByEnumeratingWithState:&v47 objects:v51 count:16];
            }

            while (v24);
          }

          v9 = v41;
          v8 = v42;
          v14 = v40;
          v16 = v44;
          v20 = v43;
        }
      }

      else
      {
        v46 = 0;
      }

      if (v19 > v16)
      {
        v28 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:-1];
        [v14 addObject:v28];

        v16 = v19;
        if (v8)
        {
          v8[2](v8);
          v16 = v19;
        }
      }

      if ((v19 & 0x8000000000000000) == 0)
      {
        v29 = [v14 objectAtIndexedSubscript:v19];
        v45 = v17;
        v30 = v14;
        v31 = v9;
        v32 = v8;
        v33 = v16;
        v34 = [v29 unsignedIntegerValue];

        v35 = objc_alloc(MEMORY[0x277CCABB0]);
        v36 = v34 + 1;
        v16 = v33;
        v8 = v32;
        v9 = v31;
        v14 = v30;
        v17 = v45;
        v37 = [v35 initWithUnsignedInteger:v36];
        [v14 setObject:v37 atIndexedSubscript:v19];

        (*(v9 + 2))(v9, v45, v14, v19, v16, v46);
      }
    }

    while ([v10 count]);
  }

  v38 = *MEMORY[0x277D85DE8];
}

@end