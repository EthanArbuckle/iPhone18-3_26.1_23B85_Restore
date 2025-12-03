@interface ML3BaseLocation
+ (id)newWithDictionary:(id)dictionary inLibrary:(id)library;
- (void)enumerateOrphanedAssetsUsingBlock:(id)block;
@end

@implementation ML3BaseLocation

+ (id)newWithDictionary:(id)dictionary inLibrary:(id)library
{
  dictionaryCopy = dictionary;
  libraryCopy = library;
  v8 = [dictionaryCopy mutableCopy];
  v9 = [dictionaryCopy objectForKey:@"ROWID"];

  if (!v9)
  {
    v10 = [dictionaryCopy objectForKey:@"path"];
    v11 = v10;
    if (v10)
    {
      v12 = ML3BaseLocationIDFromMediaRelativePathInLibrary(v10, libraryCopy);
      if (v12)
      {
        v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v12];
        [v8 setObject:v13 forKey:@"ROWID"];
      }
    }
  }

  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___ML3BaseLocation;
  v14 = objc_msgSendSuper2(&v16, sel_newWithDictionary_inLibrary_, v8, libraryCopy);

  return v14;
}

- (void)enumerateOrphanedAssetsUsingBlock:(id)block
{
  v41 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  context = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained(&self->super._library);
  v5 = [(ML3Entity *)self valueForProperty:@"ROWID"];
  v6 = [ML3ComparisonPredicate predicateWithProperty:@"base_location_id" equalToValue:v5];
  v7 = [(ML3Entity *)ML3Track queryWithLibrary:WeakRetained predicate:v6];

  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [MEMORY[0x277CBEA60] arrayWithObject:@"item_extra.location"];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __53__ML3BaseLocation_enumerateOrphanedAssetsUsingBlock___block_invoke;
  v38[3] = &unk_278762DC0;
  v30 = v8;
  v39 = v30;
  v28 = v7;
  [v7 enumeratePersistentIDsAndProperties:v9 usingBlock:v38];

  v10 = [(ML3Entity *)self valueForProperty:@"path"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v26 = v10;
  v12 = [defaultManager enumeratorAtPath:v10];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    v17 = *MEMORY[0x277CCA1E0];
    v18 = *MEMORY[0x277CCA1F0];
    do
    {
      v19 = 0;
      do
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v20 = *(*(&v34 + 1) + 8 * v19);
        fileAttributes = [v13 fileAttributes];
        v22 = [fileAttributes objectForKey:v17];
        v23 = [v22 isEqualToString:v18];

        if (v23)
        {
          [v30 removeObject:v20];
        }

        ++v19;
      }

      while (v15 != v19);
      v15 = [v13 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v15);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __53__ML3BaseLocation_enumerateOrphanedAssetsUsingBlock___block_invoke_2;
  v31[3] = &unk_278762DE8;
  v24 = blockCopy;
  v32 = v26;
  v33 = v24;
  v25 = v26;
  [v30 enumerateObjectsUsingBlock:v31];

  objc_autoreleasePoolPop(context);
}

uint64_t __53__ML3BaseLocation_enumerateOrphanedAssetsUsingBlock___block_invoke(uint64_t result, uint64_t a2, void *a3)
{
  if (*a3)
  {
    return [*(result + 32) addObject:?];
  }

  return result;
}

@end