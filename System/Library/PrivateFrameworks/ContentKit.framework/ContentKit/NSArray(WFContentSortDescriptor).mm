@interface NSArray(WFContentSortDescriptor)
- (void)sortedArrayUsingContentSortDescriptors:()WFContentSortDescriptor propertySubstitutor:completionHandler:;
@end

@implementation NSArray(WFContentSortDescriptor)

- (void)sortedArrayUsingContentSortDescriptors:()WFContentSortDescriptor propertySubstitutor:completionHandler:
{
  v71 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if ([v8 count])
    {
      v11 = +[WFContentSortDescriptor randomSortDescriptor];
      v12 = [v8 containsObject:v11];

      if (v12)
      {
        v13 = [self mutableCopy];
        if ([self count] >= 2)
        {
          v14 = [self count];
          v15 = v14 - 1;
          if (v14 != 1)
          {
            do
            {
              [v13 exchangeObjectAtIndex:v15 withObjectAtIndex:arc4random_uniform(v15 + 1)];
              --v15;
            }

            while (v15);
          }
        }

        v16 = [v13 copy];
        v10[2](v10, v16);
      }

      v36 = v10;
      weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = self;
      v17 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v65;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v65 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v64 + 1) + 8 * i);
            v22 = [MEMORY[0x277CBEB38] dictionaryWithObject:v21 forKey:@"object"];
            [weakToStrongObjectsMapTable setObject:v22 forKey:v21];
          }

          v18 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
        }

        while (v18);
      }

      v44 = objc_opt_new();
      v23 = dispatch_group_create();
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v37 = v8;
      v38 = v8;
      v40 = [v38 countByEnumeratingWithState:&v60 objects:v69 count:16];
      if (v40)
      {
        v39 = *v61;
        do
        {
          v24 = 0;
          do
          {
            if (*v61 != v39)
            {
              objc_enumerationMutation(v38);
            }

            v42 = v24;
            v25 = *(*(&v60 + 1) + 8 * v24);
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v43 = obj;
            v26 = [v43 countByEnumeratingWithState:&v56 objects:v68 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v57;
              do
              {
                for (j = 0; j != v27; ++j)
                {
                  if (*v57 != v28)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v30 = *(*(&v56 + 1) + 8 * j);
                  dispatch_group_enter(v23);
                  property = [v25 property];
                  if (v9)
                  {
                    v32 = v9[2](v9, v30, property);

                    property = v32;
                  }

                  v50[0] = MEMORY[0x277D85DD0];
                  v50[1] = 3221225472;
                  v50[2] = __113__NSArray_WFContentSortDescriptor__sortedArrayUsingContentSortDescriptors_propertySubstitutor_completionHandler___block_invoke;
                  v50[3] = &unk_2783499F8;
                  v51 = property;
                  v52 = v44;
                  v53 = weakToStrongObjectsMapTable;
                  v54 = v30;
                  v55 = v23;
                  v33 = property;
                  [v33 getValueForObject:v30 completionHandler:v50];
                }

                v27 = [v43 countByEnumeratingWithState:&v56 objects:v68 count:16];
              }

              while (v27);
            }

            v24 = v42 + 1;
          }

          while (v42 + 1 != v40);
          v40 = [v38 countByEnumeratingWithState:&v60 objects:v69 count:16];
        }

        while (v40);
      }

      v34 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __113__NSArray_WFContentSortDescriptor__sortedArrayUsingContentSortDescriptors_propertySubstitutor_completionHandler___block_invoke_74;
      block[3] = &unk_278349EF0;
      v47 = weakToStrongObjectsMapTable;
      v48 = v38;
      v10 = v36;
      v49 = v36;
      v35 = weakToStrongObjectsMapTable;
      dispatch_group_notify(v23, v34, block);

      v8 = v37;
    }

    else
    {
      v10[2](v10, self);
    }
  }
}

@end