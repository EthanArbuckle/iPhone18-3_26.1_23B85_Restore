@interface UITableView(NAUIAdditions)
- (void)naui_applyGroupedItemDiff:()NAUIAdditions;
@end

@implementation UITableView(NAUIAdditions)

- (void)naui_applyGroupedItemDiff:()NAUIAdditions
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  groupOperations = [v4 groupOperations];
  if ([groupOperations count])
  {

LABEL_4:
    [self beginUpdates];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    groupOperations2 = [v4 groupOperations];
    v9 = [groupOperations2 countByEnumeratingWithState:&v34 objects:v42 count:16];
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
          objc_enumerationMutation(groupOperations2);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        type = [v13 type];
        if (type > 1)
        {
          if (type == 3)
          {
            fromIndex = [v13 fromIndex];
            unsignedIntegerValue = [fromIndex unsignedIntegerValue];
            toIndex = [v13 toIndex];
            [self moveSection:unsignedIntegerValue toSection:{objc_msgSend(toIndex, "unsignedIntegerValue")}];
          }

          else
          {
            if (type != 2)
            {
              continue;
            }

            v18 = MEMORY[0x277CCAA78];
            fromIndex = [v13 fromIndex];
            toIndex = [v18 indexSetWithIndex:{objc_msgSend(fromIndex, "unsignedIntegerValue")}];
            [self deleteSections:toIndex withRowAnimation:100];
          }
        }

        else if (type)
        {
          if (type != 1)
          {
            continue;
          }

          v15 = MEMORY[0x277CCAA78];
          fromIndex = [v13 toIndex];
          toIndex = [v15 indexSetWithIndex:{objc_msgSend(fromIndex, "unsignedIntegerValue")}];
          [self insertSections:toIndex withRowAnimation:100];
        }

        else
        {
          v19 = MEMORY[0x277CCAA78];
          fromIndex = [v13 fromIndex];
          toIndex = [v19 indexSetWithIndex:{objc_msgSend(fromIndex, "unsignedIntegerValue")}];
          [self reloadSections:toIndex withRowAnimation:100];
        }
      }

      v10 = [groupOperations2 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (!v10)
      {
LABEL_21:

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        itemOperations = [v4 itemOperations];
        v22 = [itemOperations countByEnumeratingWithState:&v30 objects:v41 count:16];
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
              objc_enumerationMutation(itemOperations);
            }

            v26 = *(*(&v30 + 1) + 8 * j);
            type2 = [v26 type];
            if (type2 > 1)
            {
              if (type2 == 2)
              {
                fromIndexPath = [v26 fromIndexPath];
                v39 = fromIndexPath;
                toIndexPath = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
                [self deleteRowsAtIndexPaths:toIndexPath withRowAnimation:100];
              }

              else
              {
                if (type2 != 3)
                {
                  continue;
                }

                fromIndexPath = [v26 fromIndexPath];
                toIndexPath = [v26 toIndexPath];
                [self moveRowAtIndexPath:fromIndexPath toIndexPath:toIndexPath];
              }
            }

            else if (type2)
            {
              if (type2 != 1)
              {
                continue;
              }

              fromIndexPath = [v26 toIndexPath];
              v40 = fromIndexPath;
              toIndexPath = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
              [self insertRowsAtIndexPaths:toIndexPath withRowAnimation:100];
            }

            else
            {
              fromIndexPath = [v26 toIndexPath];
              v38 = fromIndexPath;
              toIndexPath = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
              [self reloadRowsAtIndexPaths:toIndexPath withRowAnimation:100];
            }
          }

          v23 = [itemOperations countByEnumeratingWithState:&v30 objects:v41 count:16];
          if (!v23)
          {
LABEL_38:

            [self endUpdates];
            goto LABEL_39;
          }
        }
      }
    }
  }

  itemOperations2 = [v4 itemOperations];
  v7 = [itemOperations2 count];

  if (v7)
  {
    goto LABEL_4;
  }

LABEL_39:
}

@end