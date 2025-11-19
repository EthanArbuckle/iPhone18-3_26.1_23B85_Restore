@interface EDMessageQueryHandlerList
@end

@implementation EDMessageQueryHandlerList

uint64_t __60___EDMessageQueryHandlerList__comparatorForSortDescriptors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 sectionIndex];
  if (v7 >= [v6 sectionIndex])
  {
    v9 = [v5 sectionIndex];
    if (v9 <= [v6 sectionIndex])
    {
      if (![*(a1 + 32) count])
      {
        goto LABEL_21;
      }

      v10 = [*(a1 + 32) objectAtIndexedSubscript:0];
      v11 = [v10 ascending];

      if (v11)
      {
        v12 = [v5 primarySortValue];
        [v6 primarySortValue];
      }

      else
      {
        v12 = [v6 primarySortValue];
        [v5 primarySortValue];
      }
      v13 = ;
      v8 = [v12 compare:v13];

      if (!v8)
      {
LABEL_21:
        if ([*(a1 + 32) count] < 2)
        {
          goto LABEL_15;
        }

        v14 = [*(a1 + 32) objectAtIndexedSubscript:1];
        v15 = [v14 ascending];

        if (v15)
        {
          v16 = [v5 secondarySortValue];
          [v6 secondarySortValue];
        }

        else
        {
          v16 = [v6 primarySortValue];
          [v5 primarySortValue];
        }
        v17 = ;
        v8 = [v16 compare:v17];

        if (!v8)
        {
LABEL_15:
          v18 = [v5 globalMessageID];
          if (v18 < [v6 globalMessageID])
          {
            v8 = 1;
          }

          else
          {
            v8 = -1;
          }
        }
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

id __49___EDMessageQueryHandlerList_allMessageGlobalIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v2, "globalMessageID")}];

  return v3;
}

id __49___EDMessageQueryHandlerList_allMessageObjectIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 messageObjectID];

  return v2;
}

@end