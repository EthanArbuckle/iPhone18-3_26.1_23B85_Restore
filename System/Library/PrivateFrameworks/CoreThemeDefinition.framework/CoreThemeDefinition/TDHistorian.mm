@interface TDHistorian
- (BOOL)foundDataChangesSinceDate:(id)date;
- (TDHistorian)initWithDocument:(id)document;
- (id)_updateRecordsWithName:(id)name sinceDate:(id)date;
- (id)keySpecsForRenditionsRemovedSinceDate:(id)date;
- (id)productionsChangedSinceDate:(id)date uuidNeedsReset:(BOOL *)reset;
- (id)productionsWithModifiedAssets;
- (void)_updateEntryForManagedObject:(id)object;
- (void)updateEntriesForManagedObjects:(id)objects;
@end

@implementation TDHistorian

- (id)_updateRecordsWithName:(id)name sinceDate:(id)date
{
  date = [MEMORY[0x277CCAC30] predicateWithFormat:@"dateOfLastChange > %@", date];
  document = self->document;

  return [(CoreThemeDocument *)document objectsForEntity:name withPredicate:date sortDescriptors:0];
}

- (void)_updateEntryForManagedObject:(id)object
{
  date = [MEMORY[0x277CBEAA8] date];
  dateOfLastChange = [object dateOfLastChange];
  if (!dateOfLastChange || ([date timeIntervalSinceDate:dateOfLastChange], v6 > 5.0))
  {
    [object setDateOfLastChange:date];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      production = [object production];

      [production setDateOfLastChange:date];
    }
  }
}

- (void)updateEntriesForManagedObjects:(id)objects
{
  if ([objects count])
  {
    v5 = 0;
    do
    {
      v6 = [objects objectAtIndex:v5];
      if (objc_opt_respondsToSelector())
      {
        [(TDHistorian *)self _updateEntryForManagedObject:v6];
      }

      ++v5;
    }

    while (v5 < [objects count]);
  }
}

- (BOOL)foundDataChangesSinceDate:(id)date
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(CoreThemeDocument *)self->document allObjectsForEntity:@"ElementProduction" withSortDescriptors:0];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([date compare:{objc_msgSend(*(*(&v12 + 1) + 8 * v9), "associatedFileModificationDateWithDocument:", self->document)}] == -1)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)productionsWithModifiedAssets
{
  v35 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v3 = [(CoreThemeDocument *)self->document allObjectsForEntity:@"PhotoshopElementProduction" withSortDescriptors:0];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    v28 = v3;
    do
    {
      v7 = 0;
      do
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v30 + 1) + 8 * v7);
        v9 = [v8 associatedFileModificationDateWithDocument:self->document];
        if (v9 && [v9 compare:{objc_msgSend(v8, "dateOfLastChange")}] == 1)
        {
          v10 = -[CTDPSDPreviewRef initWithPath:]([CTDPSDPreviewRef alloc], "initWithPath:", [objc_msgSend(objc_msgSend(v8 "asset")]);
          v11 = [v8 valueForKey:@"renditions"];
          if ([v11 count])
          {
            v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"layer" ascending:1];
            allObjects = [v11 allObjects];
            v14 = [allObjects sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v12)}];
            v15 = [objc_msgSend(objc_msgSend(v14 "lastObject")];
          }

          else
          {
            v14 = 0;
            v15 = -1;
          }

          v16 = [(CUIPSDImageRef *)v10 numberOfLayers]- 1;
          if (v14 && v15 == v16)
          {
            v17 = [objc_msgSend(v14 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"layer == %d", 0)), "count"}];
            v18 = [objc_msgSend(v8 "renditionType")];
            if (v18 == 8 || v18 == 5)
            {
              sliceRowCount = [(CTDPSDPreviewRef *)v10 sliceRowCount];
              if (!(sliceRowCount % [objc_msgSend(v8 "rowCount")]))
              {
                sliceColumnCount = [(CTDPSDPreviewRef *)v10 sliceColumnCount];
                if (!(sliceColumnCount % [objc_msgSend(v8 "columnCount")]))
                {
                  goto LABEL_20;
                }
              }
            }

            else
            {
              v21 = v18;
              [(CTDPSDPreviewRef *)v10 evaluateSliceGrid];
              if (v21 == 6)
              {
                v22 = 1;
                v23 = 1;
              }

              else
              {
                v22 = [TDPhotoshopElementProduction sliceRowsPerRendition:v21];
                v23 = [TDPhotoshopElementProduction sliceColumnsPerRendition:v21];
              }

              v24 = ([(CTDPSDPreviewRef *)v10 sliceRowCount]/ v22);
              v3 = v28;
              if (v17 == ([(CTDPSDPreviewRef *)v10 sliceColumnCount]/ v23) * v24)
              {
                goto LABEL_20;
              }
            }

LABEL_19:
            NSLog(&cfstr_NeedToUpdatePr.isa, [objc_msgSend(v8 "asset")]);
            [array addObject:v8];
          }

          else if (v15 != v16)
          {
            goto LABEL_19;
          }

LABEL_20:
        }

        ++v7;
      }

      while (v5 != v7);
      v25 = [v3 countByEnumeratingWithState:&v30 objects:v34 count:16];
      v5 = v25;
    }

    while (v25);
  }

  v26 = *MEMORY[0x277D85DE8];
  return array;
}

- (id)productionsChangedSinceDate:(id)date uuidNeedsReset:(BOOL *)reset
{
  array = [MEMORY[0x277CBEB18] array];
  v8 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  [array addObjectsFromArray:{-[TDHistorian _updateRecordsWithName:sinceDate:](self, "_updateRecordsWithName:sinceDate:", @"ElementProduction", date)}];
  if (reset)
  {
    v9 = *reset || [array count] != 0;
    *reset = v9;
  }

  v10 = [-[CoreThemeDocument allObjectsForEntity:withSortDescriptors:](self->document allObjectsForEntity:@"ElementProduction" withSortDescriptors:{0), "objectEnumerator"}];
  nextObject = [v10 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      if ([array containsObject:nextObject2])
      {
        break;
      }

      v13 = objc_alloc_init(MEMORY[0x277CCA8B0]);
      v14 = [nextObject2 associatedFileModificationDateWithDocument:self->document];
      [date timeIntervalSinceReferenceDate];
      if (v14)
      {
        v16 = v15;
        [v14 timeIntervalSinceReferenceDate];
        if (v17 > v16)
        {
          [array addObject:nextObject2];
        }
      }

      [v13 drain];
      nextObject2 = [v10 nextObject];
    }

    while (nextObject2);
  }

  [v8 drain];
  return array;
}

- (id)keySpecsForRenditionsRemovedSinceDate:(id)date
{
  v3 = [(TDHistorian *)self _updateRecordsWithName:@"RenditionSpec" sinceDate:date];

  return [v3 valueForKey:@"keySpec"];
}

- (TDHistorian)initWithDocument:(id)document
{
  v5.receiver = self;
  v5.super_class = TDHistorian;
  result = [(TDHistorian *)&v5 init];
  result->document = document;
  return result;
}

@end