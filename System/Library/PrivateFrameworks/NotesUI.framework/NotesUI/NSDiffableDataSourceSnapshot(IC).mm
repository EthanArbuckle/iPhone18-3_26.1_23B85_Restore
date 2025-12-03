@interface NSDiffableDataSourceSnapshot(IC)
- (void)ic_updateWithSectionIdentifiers:()IC;
@end

@implementation NSDiffableDataSourceSnapshot(IC)

- (void)ic_updateWithSectionIdentifiers:()IC
{
  v21 = a3;
  sectionIdentifiers = [self sectionIdentifiers];
  v5 = [MEMORY[0x1E695DFB8] orderedSetWithArray:sectionIdentifiers];
  v6 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v21];
  v7 = [v5 mutableCopy];
  [v7 minusOrderedSet:v6];
  array = [v7 array];
  [self deleteSectionsWithIdentifiers:array];

  v9 = [v6 mutableCopy];
  [v9 minusOrderedSet:v5];
  array2 = [v9 array];
  [self appendSectionsWithIdentifiers:array2];

  sectionIdentifiers2 = [self sectionIdentifiers];
  v12 = [sectionIdentifiers2 count];

  if (v12)
  {
    v13 = 0;
    do
    {
      sectionIdentifiers3 = [self sectionIdentifiers];
      v15 = [sectionIdentifiers3 objectAtIndexedSubscript:v13];

      v16 = [self indexOfSectionIdentifier:v15];
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
          if ([self indexOfSectionIdentifier:v18] != 0x7FFFFFFFFFFFFFFFLL)
          {
            [self moveSectionWithIdentifier:v15 beforeSectionWithIdentifier:v18];
          }
        }

        else
        {
          v18 = [v21 ic_objectBefore:v15];
          if ([self indexOfSectionIdentifier:v18] != 0x7FFFFFFFFFFFFFFFLL)
          {
            [self moveSectionWithIdentifier:v15 afterSectionWithIdentifier:v18];
          }
        }
      }

      sectionIdentifiers4 = [self sectionIdentifiers];
      v20 = [sectionIdentifiers4 count];
    }

    while (v13 < v20);
  }
}

@end