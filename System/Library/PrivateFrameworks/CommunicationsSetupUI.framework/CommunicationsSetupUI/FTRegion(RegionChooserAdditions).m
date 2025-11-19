@interface FTRegion(RegionChooserAdditions)
- (BOOL)isLeafNode;
- (uint64_t)search:()RegionChooserAdditions withResults:;
@end

@implementation FTRegion(RegionChooserAdditions)

- (BOOL)isLeafNode
{
  v2 = [a1 subRegions];
  if (v2)
  {
    v3 = [a1 subRegions];
    v4 = [v3 count] == 0;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (uint64_t)search:()RegionChooserAdditions withResults:
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 length])
  {
    if ([a1 isLeafNode])
    {
      v8 = [a1 label];
      v9 = v8;
      if (v8 && [v8 length] && (v10 = objc_msgSend(v9, "length"), objc_msgSend(a1, "label"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "rangeOfString:options:range:locale:", v6, 1, 0, v10, 0), v11, v12 != 0x7FFFFFFFFFFFFFFFLL))
      {
        [v7 addObject:a1];
        LOBYTE(v13) = 1;
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v14 = [a1 subRegions];
      v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v15)
      {
        v16 = v15;
        v13 = 0;
        v17 = *v22;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v13 |= [*(*(&v21 + 1) + 8 * i) search:v6 withResults:v7];
          }

          v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v16);
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

@end