@interface NSDiffableDataSourceSnapshot(IC)
- (void)ic_updateWithSectionIdentifiers:()IC;
@end

@implementation NSDiffableDataSourceSnapshot(IC)

- (void)ic_updateWithSectionIdentifiers:()IC
{
  v21 = a3;
  v4 = [a1 sectionIdentifiers];
  v5 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v4];
  v6 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v21];
  v7 = [v5 mutableCopy];
  [v7 minusOrderedSet:v6];
  v8 = [v7 array];
  [a1 deleteSectionsWithIdentifiers:v8];

  v9 = [v6 mutableCopy];
  [v9 minusOrderedSet:v5];
  v10 = [v9 array];
  [a1 appendSectionsWithIdentifiers:v10];

  v11 = [a1 sectionIdentifiers];
  v12 = [v11 count];

  if (v12)
  {
    v13 = 0;
    do
    {
      v14 = [a1 sectionIdentifiers];
      v15 = [v14 objectAtIndexedSubscript:v13];

      v16 = [a1 indexOfSectionIdentifier:v15];
      v17 = [v21 indexOfObject:v15];
      if (v16 == v17)
      {
        ++v13;
      }

      else
      {
        if (v16 > v17)
        {
          v18 = [v21 ic_objectAfter:v15];
          if ([a1 indexOfSectionIdentifier:v18] != 0x7FFFFFFFFFFFFFFFLL)
          {
            [a1 moveSectionWithIdentifier:v15 beforeSectionWithIdentifier:v18];
          }
        }

        else
        {
          v18 = [v21 ic_objectBefore:v15];
          if ([a1 indexOfSectionIdentifier:v18] != 0x7FFFFFFFFFFFFFFFLL)
          {
            [a1 moveSectionWithIdentifier:v15 afterSectionWithIdentifier:v18];
          }
        }
      }

      v19 = [a1 sectionIdentifiers];
      v20 = [v19 count];
    }

    while (v13 < v20);
  }
}

@end