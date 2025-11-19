@interface UITableView(NAUIAdditions)
- (void)naui_applyGroupedItemDiff:()NAUIAdditions;
@end

@implementation UITableView(NAUIAdditions)

- (void)naui_applyGroupedItemDiff:()NAUIAdditions
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 groupOperations];
  if ([v5 count])
  {

LABEL_4:
    [a1 beginUpdates];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = [v4 groupOperations];
    v9 = [v8 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (!v9)
    {
      goto LABEL_21;
    }

    v10 = v9;
    v11 = *v35;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        v14 = [v13 type];
        if (v14 > 1)
        {
          if (v14 == 3)
          {
            v16 = [v13 fromIndex];
            v20 = [v16 unsignedIntegerValue];
            v17 = [v13 toIndex];
            [a1 moveSection:v20 toSection:{objc_msgSend(v17, "unsignedIntegerValue")}];
          }

          else
          {
            if (v14 != 2)
            {
              continue;
            }

            v18 = MEMORY[0x277CCAA78];
            v16 = [v13 fromIndex];
            v17 = [v18 indexSetWithIndex:{objc_msgSend(v16, "unsignedIntegerValue")}];
            [a1 deleteSections:v17 withRowAnimation:100];
          }
        }

        else if (v14)
        {
          if (v14 != 1)
          {
            continue;
          }

          v15 = MEMORY[0x277CCAA78];
          v16 = [v13 toIndex];
          v17 = [v15 indexSetWithIndex:{objc_msgSend(v16, "unsignedIntegerValue")}];
          [a1 insertSections:v17 withRowAnimation:100];
        }

        else
        {
          v19 = MEMORY[0x277CCAA78];
          v16 = [v13 fromIndex];
          v17 = [v19 indexSetWithIndex:{objc_msgSend(v16, "unsignedIntegerValue")}];
          [a1 reloadSections:v17 withRowAnimation:100];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (!v10)
      {
LABEL_21:

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v21 = [v4 itemOperations];
        v22 = [v21 countByEnumeratingWithState:&v30 objects:v41 count:16];
        if (!v22)
        {
          goto LABEL_38;
        }

        v23 = v22;
        v24 = *v31;
        while (1)
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v31 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v30 + 1) + 8 * j);
            v27 = [v26 type];
            if (v27 > 1)
            {
              if (v27 == 2)
              {
                v28 = [v26 fromIndexPath];
                v39 = v28;
                v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
                [a1 deleteRowsAtIndexPaths:v29 withRowAnimation:100];
              }

              else
              {
                if (v27 != 3)
                {
                  continue;
                }

                v28 = [v26 fromIndexPath];
                v29 = [v26 toIndexPath];
                [a1 moveRowAtIndexPath:v28 toIndexPath:v29];
              }
            }

            else if (v27)
            {
              if (v27 != 1)
              {
                continue;
              }

              v28 = [v26 toIndexPath];
              v40 = v28;
              v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
              [a1 insertRowsAtIndexPaths:v29 withRowAnimation:100];
            }

            else
            {
              v28 = [v26 toIndexPath];
              v38 = v28;
              v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
              [a1 reloadRowsAtIndexPaths:v29 withRowAnimation:100];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v30 objects:v41 count:16];
          if (!v23)
          {
LABEL_38:

            [a1 endUpdates];
            goto LABEL_39;
          }
        }
      }
    }
  }

  v6 = [v4 itemOperations];
  v7 = [v6 count];

  if (v7)
  {
    goto LABEL_4;
  }

LABEL_39:
}

@end