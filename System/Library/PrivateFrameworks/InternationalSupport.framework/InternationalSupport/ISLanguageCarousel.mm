@interface ISLanguageCarousel
+ (id)_rankedItems:(id)items usePreferredLanguages:(BOOL)languages guessedRegion:(BOOL)region;
+ (id)guessedRegion;
+ (id)rankedItemsFromItems:(id)items usingSystemLanguages:(id)languages preferredLanguages:(id)preferredLanguages region:(id)region;
- (ISLanguageCarousel)initWithItems:(id)items;
- (id)_itemsWithMergedDuplicates:(id)duplicates;
- (id)nextItem;
- (void)reloadQueue;
- (void)setItems:(id)items;
@end

@implementation ISLanguageCarousel

- (ISLanguageCarousel)initWithItems:(id)items
{
  itemsCopy = items;
  v8.receiver = self;
  v8.super_class = ISLanguageCarousel;
  v5 = [(ISLanguageCarousel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ISLanguageCarousel *)v5 setItems:itemsCopy];
    [(ISLanguageCarousel *)v6 setCycle:1];
    [(ISLanguageCarousel *)v6 setWeightedRepetition:1];
  }

  return v6;
}

- (id)nextItem
{
  queueIndex = [(ISLanguageCarousel *)self queueIndex];
  queue = [(ISLanguageCarousel *)self queue];
  if (queueIndex >= [queue count])
  {
    cycle = [(ISLanguageCarousel *)self cycle];

    if (cycle)
    {
      [(ISLanguageCarousel *)self setQueueIndex:0];
    }
  }

  else
  {
  }

  queueIndex2 = [(ISLanguageCarousel *)self queueIndex];
  queue2 = [(ISLanguageCarousel *)self queue];
  v8 = [queue2 count];

  if (queueIndex2 >= v8)
  {
    v10 = 0;
  }

  else
  {
    queue3 = [(ISLanguageCarousel *)self queue];
    v10 = [queue3 objectAtIndexedSubscript:{-[ISLanguageCarousel queueIndex](self, "queueIndex")}];

    [(ISLanguageCarousel *)self setQueueIndex:[(ISLanguageCarousel *)self queueIndex]+ 1];
  }

  return v10;
}

+ (id)rankedItemsFromItems:(id)items usingSystemLanguages:(id)languages preferredLanguages:(id)preferredLanguages region:(id)region
{
  v60 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  languagesCopy = languages;
  preferredLanguagesCopy = preferredLanguages;
  regionCopy = region;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v13 = [languagesCopy componentsJoinedByString:{@", "}];
    v14 = [preferredLanguagesCopy componentsJoinedByString:{@", "}];
    v15 = preferredLanguagesCopy;
    v16 = languagesCopy;
    v17 = [itemsCopy count];
    v18 = [itemsCopy valueForKey:@"languageIdentifier"];
    v19 = [v18 componentsJoinedByString:{@", "}];
    *buf = 136316418;
    v49 = "+[ISLanguageCarousel rankedItemsFromItems:usingSystemLanguages:preferredLanguages:region:]";
    v50 = 2114;
    v51 = v13;
    v52 = 2114;
    v53 = v14;
    v54 = 2114;
    v55 = regionCopy;
    v56 = 2048;
    v57 = v17;
    languagesCopy = v16;
    preferredLanguagesCopy = v15;
    v58 = 2114;
    v59 = v19;
    _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: systemLanguages = [%{public}@], preferredLanguages = [%{public}@], region = %{public}@, items (%lu) = [%{public}@]", buf, 0x3Eu);
  }

  v20 = [itemsCopy valueForKey:@"languageIdentifier"];
  v21 = [v20 mutableCopy];

  if (![v21 count])
  {
    +[ISLanguageCarousel rankedItemsFromItems:usingSystemLanguages:preferredLanguages:region:];
  }

  v38 = languagesCopy;
  if ([v21 count])
  {
    v22 = languagesCopy;
    if ([regionCopy length])
    {
      v23 = [MEMORY[0x1E695DF58] languagesForRegion:regionCopy subdivision:0 withThreshold:1 filter:0];
      v24 = [v23 arrayByAddingObjectsFromArray:v22];

      v22 = v24;
    }

    if ([preferredLanguagesCopy count])
    {
      v25 = [preferredLanguagesCopy arrayByAddingObjectsFromArray:v22];

      v22 = v25;
    }

    v41 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(v21, "count")}];
    if ([v21 count])
    {
      v39 = v22;
      v40 = v21;
      while (1)
      {
        v26 = [MEMORY[0x1E696AAE8] preferredLocalizationsFromArray:v21 forPreferences:v22];
        if (![v26 count])
        {
          +[ISLanguageCarousel rankedItemsFromItems:usingSystemLanguages:preferredLanguages:region:];
        }

        if (![v26 count])
        {
          break;
        }

        [v21 removeObjectsInArray:v26];
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v27 = v26;
        v28 = [v27 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v44;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v44 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v43 + 1) + 8 * i);
              v42[0] = MEMORY[0x1E69E9820];
              v42[1] = 3221225472;
              v42[2] = __90__ISLanguageCarousel_rankedItemsFromItems_usingSystemLanguages_preferredLanguages_region___block_invoke;
              v42[3] = &unk_1E7D072E0;
              v42[4] = v32;
              v33 = [itemsCopy indexOfObjectPassingTest:v42];
              if (v33 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v34 = [itemsCopy objectAtIndexedSubscript:v33];
                [v41 addObject:v34];
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v43 objects:v47 count:16];
          }

          while (v29);
        }

        v21 = v40;
        v22 = v39;
        if (![v40 count])
        {
          goto LABEL_26;
        }
      }
    }

LABEL_26:
    array = [v41 array];
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  v36 = *MEMORY[0x1E69E9840];

  return array;
}

uint64_t __90__ISLanguageCarousel_rankedItemsFromItems_usingSystemLanguages_preferredLanguages_region___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 languageIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

+ (id)guessedRegion
{
  v2 = +[ISRegionDetector sharedRegionDetector];
  guessedCountries = [v2 guessedCountries];
  firstObject = [guessedCountries firstObject];

  return firstObject;
}

+ (id)_rankedItems:(id)items usePreferredLanguages:(BOOL)languages guessedRegion:(BOOL)region
{
  languagesCopy = languages;
  itemsCopy = items;
  v8 = objc_opt_class();
  systemLanguages = [MEMORY[0x1E695DF58] systemLanguages];
  if (languagesCopy)
  {
    preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
    if (!region)
    {
      goto LABEL_3;
    }

LABEL_6:
    guessedRegion = [objc_opt_class() guessedRegion];
    v11 = [v8 rankedItemsFromItems:itemsCopy usingSystemLanguages:systemLanguages preferredLanguages:preferredLanguages region:guessedRegion];

    if (!languagesCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  preferredLanguages = 0;
  if (region)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = [v8 rankedItemsFromItems:itemsCopy usingSystemLanguages:systemLanguages preferredLanguages:preferredLanguages region:0];
  if (languagesCopy)
  {
LABEL_7:
  }

LABEL_8:

  return v11;
}

- (id)_itemsWithMergedDuplicates:(id)duplicates
{
  v53 = *MEMORY[0x1E69E9840];
  duplicatesCopy = duplicates;
  v5 = objc_opt_new();
  v28 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = duplicatesCopy;
  v31 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v31)
  {
    v30 = *v40;
    v29 = v5;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v39 + 1) + 8 * i);
        v8 = MEMORY[0x1E695DF58];
        languageIdentifier = [v7 languageIdentifier];
        v10 = [v8 baseLanguageFromLanguage:languageIdentifier];

        v11 = [v5 objectForKeyedSubscript:v10];

        if (v11)
        {
          v32 = v10;
          v33 = i;
          v12 = [v5 objectForKeyedSubscript:v10];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v35 objects:v51 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v36;
            v34 = v13;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v36 != v16)
                {
                  objc_enumerationMutation(v34);
                }

                v18 = *(*(&v35 + 1) + 8 * j);
                data = [v18 data];
                if (!data)
                {
                  data2 = [v7 data];
                  if (!data2)
                  {
LABEL_21:
                    v10 = v32;
                    v13 = v34;
                    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                    {
                      languageIdentifier2 = [v18 languageIdentifier];
                      languageIdentifier3 = [v7 languageIdentifier];
                      *buf = 136315906;
                      v44 = "[ISLanguageCarousel _itemsWithMergedDuplicates:]";
                      v45 = 2114;
                      v46 = languageIdentifier2;
                      v47 = 2114;
                      v48 = languageIdentifier3;
                      v49 = 2114;
                      v50 = v32;
                      _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: merging items (%{public}@, %{public}@) with baseLanguage %{public}@", buf, 0x2Au);
                    }

                    v5 = v29;
                    i = v33;
                    goto LABEL_25;
                  }
                }

                data3 = [v18 data];
                data4 = [v7 data];
                v22 = [data3 isEqual:data4];

                if (data)
                {

                  if (v22)
                  {
                    goto LABEL_21;
                  }
                }

                else
                {

                  if (v22)
                  {
                    goto LABEL_21;
                  }
                }
              }

              v13 = v34;
              v15 = [v34 countByEnumeratingWithState:&v35 objects:v51 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          [v28 addObject:v7];
          [v13 addObject:v7];
          v5 = v29;
          v10 = v32;
          i = v33;
        }

        else
        {
          [v28 addObject:v7];
          v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v7, 0}];
          [v5 setObject:v13 forKeyedSubscript:v10];
        }

LABEL_25:
      }

      v31 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v31);
  }

  v25 = *MEMORY[0x1E69E9840];

  return v28;
}

- (void)reloadQueue
{
  v34 = *MEMORY[0x1E69E9840];
  items = [(ISLanguageCarousel *)self items];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136315394;
    v29 = "[ISLanguageCarousel reloadQueue]";
    v30 = 1024;
    LODWORD(v31) = [(ISLanguageCarousel *)self cycle];
    _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: cycle = %d", &v28, 0x12u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    mergeDuplicates = [(ISLanguageCarousel *)self mergeDuplicates];
    v28 = 136315394;
    v29 = "[ISLanguageCarousel reloadQueue]";
    v30 = 1024;
    LODWORD(v31) = mergeDuplicates;
    _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: mergedDuplicates = %d", &v28, 0x12u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    randomize = [(ISLanguageCarousel *)self randomize];
    v28 = 136315394;
    v29 = "[ISLanguageCarousel reloadQueue]";
    v30 = 1024;
    LODWORD(v31) = randomize;
    _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: randomize = %d", &v28, 0x12u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    rankingUsesGuessedRegion = [(ISLanguageCarousel *)self rankingUsesGuessedRegion];
    v28 = 136315394;
    v29 = "[ISLanguageCarousel reloadQueue]";
    v30 = 1024;
    LODWORD(v31) = rankingUsesGuessedRegion;
    _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: rankingUsesGuessedRegion = %d", &v28, 0x12u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    rankingUsesPreferredLanguages = [(ISLanguageCarousel *)self rankingUsesPreferredLanguages];
    v28 = 136315394;
    v29 = "[ISLanguageCarousel reloadQueue]";
    v30 = 1024;
    LODWORD(v31) = rankingUsesPreferredLanguages;
    _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: rankingUsesPreferredLanguages = %d", &v28, 0x12u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    weightedRepetition = [(ISLanguageCarousel *)self weightedRepetition];
    v28 = 136315394;
    v29 = "[ISLanguageCarousel reloadQueue]";
    v30 = 1024;
    LODWORD(v31) = weightedRepetition;
    _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: weightedRepetition = %d", &v28, 0x12u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v9 = [items count];
    v10 = [items valueForKey:@"languageIdentifier"];
    v11 = [v10 componentsJoinedByString:{@", "}];
    v28 = 136315650;
    v29 = "[ISLanguageCarousel reloadQueue]";
    v30 = 2048;
    v31 = v9;
    v32 = 2114;
    v33 = v11;
    _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: items (%lu) = [%{public}@]", &v28, 0x20u);
  }

  if ([items count])
  {
    if ([(ISLanguageCarousel *)self mergeDuplicates])
    {
      v12 = [(ISLanguageCarousel *)self _itemsWithMergedDuplicates:items];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v12 count];
        v14 = [v12 valueForKey:@"languageIdentifier"];
        v15 = [v14 componentsJoinedByString:{@", "}];
        v28 = 136315650;
        v29 = "[ISLanguageCarousel reloadQueue]";
        v30 = 2048;
        v31 = v13;
        v32 = 2114;
        v33 = v15;
        _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: itemsWithMergedDuplicates (%lu) = [%{public}@]", &v28, 0x20u);
      }

      items = v12;
    }

    [(ISLanguageCarousel *)self setQueueIndex:0];
    if ([(ISLanguageCarousel *)self randomize])
    {
      v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(items, "count")}];
      v17 = [items mutableCopy];
      v18 = v17;
      while ([v17 count])
      {
        v19 = arc4random_uniform([v18 count]);
        v20 = [v18 objectAtIndexedSubscript:v19];
        [v16 addObject:v20];

        [v18 removeObjectAtIndex:v19];
        v17 = v18;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v16 count];
        v25 = [v16 valueForKey:@"languageIdentifier"];
        v26 = [v25 componentsJoinedByString:{@", "}];
        v28 = 136315650;
        v29 = "[ISLanguageCarousel reloadQueue]";
        v30 = 2048;
        v31 = v24;
        v32 = 2114;
        v33 = v26;
        _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: randomizedItems (%lu) = [%{public}@]", &v28, 0x20u);
      }

      [(ISLanguageCarousel *)self setQueue:v16];
    }

    else
    {
      v16 = [objc_opt_class() _rankedItems:items usePreferredLanguages:-[ISLanguageCarousel rankingUsesPreferredLanguages](self guessedRegion:{"rankingUsesPreferredLanguages"), -[ISLanguageCarousel rankingUsesGuessedRegion](self, "rankingUsesGuessedRegion")}];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v16 count];
        v22 = [v16 valueForKey:@"languageIdentifier"];
        v23 = [v22 componentsJoinedByString:{@", "}];
        v28 = 136315650;
        v29 = "[ISLanguageCarousel reloadQueue]";
        v30 = 2048;
        v31 = v21;
        v32 = 2114;
        v33 = v23;
        _os_log_impl(&dword_1B869D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s: rankedItems (%lu) = [%{public}@]", &v28, 0x20u);
      }

      [(ISLanguageCarousel *)self setQueue:v16];
    }
  }

  else
  {
    [(ISLanguageCarousel *)self setQueue:items];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)setItems:(id)items
{
  objc_storeStrong(&self->_items, items);

  [(ISLanguageCarousel *)self reloadQueue];
}

@end