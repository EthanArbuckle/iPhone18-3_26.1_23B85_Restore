@interface PKApplicationMessageNodeMultipleGroupBranch
- (id)createSummary;
@end

@implementation PKApplicationMessageNodeMultipleGroupBranch

- (id)createSummary
{
  v57 = *MEMORY[0x1E69E9840];
  v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_children reverseObjectEnumerator];
  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v51;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        [v4 addObject:*(*(&v50 + 1) + 8 * i)];
      }

      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    while (1)
    {
      lastObject = [v4 lastObject];
      [v4 removeLastObject];
      type = [lastObject type];
      if (type == 2)
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        if (lastObject)
        {
          v23 = [lastObject[5] copy];
        }

        else
        {
          v23 = 0;
        }

        reverseObjectEnumerator2 = [v23 reverseObjectEnumerator];

        v24 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v47;
          do
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v47 != v26)
              {
                objc_enumerationMutation(reverseObjectEnumerator2);
              }

              [v4 addObject:*(*(&v46 + 1) + 8 * j)];
            }

            v25 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v46 objects:v55 count:16];
          }

          while (v25);
        }

        goto LABEL_35;
      }

      if (type != 1)
      {
        break;
      }

      if (lastObject)
      {
        reverseObjectEnumerator2 = lastObject[6];
        v13 = [lastObject[5] copy];
      }

      else
      {
        reverseObjectEnumerator2 = 0;
        v13 = 0;
      }

      v17 = [v13 count];
LABEL_20:

      if (reverseObjectEnumerator2)
      {
        v18 = [v3 objectForKeyedSubscript:reverseObjectEnumerator2];
        v19 = v18;
        if (v18)
        {
          v20 = MEMORY[0x1E696AD98];
          v21 = [v18 unsignedIntegerValue] + v17;
          v22 = v20;
        }

        else
        {
          [v41 addObject:reverseObjectEnumerator2];
          v22 = MEMORY[0x1E696AD98];
          v21 = v17;
        }

        v28 = [v22 numberWithUnsignedInteger:v21];
        [v3 setObject:v28 forKeyedSubscript:reverseObjectEnumerator2];

LABEL_35:
      }

LABEL_36:

      if (![v4 count])
      {
        goto LABEL_43;
      }
    }

    if (type)
    {
      goto LABEL_36;
    }

    if (lastObject)
    {
      v12 = lastObject[5];
      v13 = v12;
      if (v12)
      {
        v14 = v12[2];
        v15 = v14;
        if (v14)
        {
          reverseObjectEnumerator2 = v14[2];
LABEL_16:

          v17 = 1;
          goto LABEL_20;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
      v13 = 0;
    }

    reverseObjectEnumerator2 = 0;
    goto LABEL_16;
  }

LABEL_43:
  v29 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v30 = v41;
  v31 = [v30 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v43;
    v34 = 1;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v43 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v36 = *(*(&v42 + 1) + 8 * k);
        if ((v34 & 1) == 0)
        {
          [v29 appendString:{@", "}];
        }

        v37 = [v3 objectForKeyedSubscript:v36];
        if ([v37 unsignedIntegerValue] > 1)
        {
          [v36 pluralSummary];
        }

        else
        {
          [v36 singularSummary];
        }
        v38 = ;

        [v29 appendString:v38];
        v34 = 0;
      }

      v32 = [v30 countByEnumeratingWithState:&v42 objects:v54 count:16];
      v34 = 0;
    }

    while (v32);
  }

  v39 = [v29 copy];
  return v39;
}

uint64_t __61__PKApplicationMessageNodeMultipleGroupBranch__sortWithDate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [(PKApplicationMessageNodeGroupBranch *)a2 _primaryRegistration];
  v7 = [(PKApplicationMessageNodeGroupBranch *)v5 _primaryRegistration];

  v8 = PKApplicationMessageRegistrationComparison(v6, v7, *(a1 + 32));
  return v8;
}

@end