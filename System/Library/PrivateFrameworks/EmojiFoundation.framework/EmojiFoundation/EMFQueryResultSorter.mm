@interface EMFQueryResultSorter
+ (id)_sortResults_clusterGenderVariantsTogether:(id)together withLocaleData:(__EmojiLocaleDataWrapper *)data;
+ (id)sortResults:(id)results withLocaleData:(__EmojiLocaleDataWrapper *)data sortType:(unint64_t)type;
@end

@implementation EMFQueryResultSorter

+ (id)sortResults:(id)results withLocaleData:(__EmojiLocaleDataWrapper *)data sortType:(unint64_t)type
{
  resultsCopy = results;
  v8 = resultsCopy;
  if (type == 1)
  {
    v10 = [objc_opt_class() _sortResults_clusterGenderVariantsTogether:resultsCopy withLocaleData:data];
  }

  else
  {
    v9 = resultsCopy;
    if (type)
    {
      goto LABEL_6;
    }

    v10 = [objc_opt_class() _sortResults_default:resultsCopy withLocaleData:data];
  }

  v9 = v10;

LABEL_6:

  return v9;
}

+ (id)_sortResults_clusterGenderVariantsTogether:(id)together withLocaleData:(__EmojiLocaleDataWrapper *)data
{
  v50 = *MEMORY[0x1E69E9840];
  togetherCopy = together;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(togetherCopy, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = togetherCopy;
  v6 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v41;
    *&v7 = 138543618;
    v30 = v7;
    v31 = *v41;
    do
    {
      v10 = 0;
      v32 = v8;
      do
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v40 + 1) + 8 * v10);
        if (([v5 containsObject:{v11, v30}] & 1) == 0)
        {
          v12 = CEMEmojiTokenCreateWithString();
          Gender = CEMEmojiTokenGetGender();
          if (Gender)
          {
            v14 = Gender;
            v33 = v10;
            v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
            for (i = 0; i != 4; ++i)
            {
              v17 = kEMFEmojiGenderInclusiveSortCollation[i];
              if (v17 == v14)
              {
                [v15 addObject:v12];
                v18 = v12;
              }

              else
              {
                v18 = [[EMFEmojiStringGenderVariantFactory alloc] initWithSourceString:v11 gender:v17];
                v19 = [(EMFEmojiStringGenderVariantFactory *)v18 stringForGenderVariant:v17];
                if ([obj containsObject:v19])
                {
                  v20 = CEMEmojiTokenCreateWithString();
                  if (v20)
                  {
                    v21 = v20;
                    [v15 addObject:v20];
                  }

                  else
                  {
                    v21 = emf_logging_get_default_log();
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                    {
                      *buf = v30;
                      v46 = 0;
                      v47 = 1026;
                      v48 = v17;
                      _os_log_error_impl(&dword_1AF04E000, v21, OS_LOG_TYPE_ERROR, "EMFQueryResultSorter: Failed to find a CoreEmoji entry for '%{public}@' (variantGender: %{public}d", buf, 0x12u);
                    }
                  }
                }
              }
            }

            [v15 sortUsingFunction:_compareEmojiTokensUsingDefaultSortCollation context:data];
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v22 = v15;
            v23 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v37;
              do
              {
                for (j = 0; j != v24; ++j)
                {
                  if (*v37 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = CEMEmojiTokenGetString();
                  [v5 addObject:v27];
                }

                v24 = [v22 countByEnumeratingWithState:&v36 objects:v44 count:16];
              }

              while (v24);
            }

            v9 = v31;
            v8 = v32;
            v10 = v33;
          }

          else
          {
            [v5 addObject:v11];
            if (v12)
            {
              CFRelease(v12);
            }
          }
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v8);
  }

  v28 = [v5 copy];

  return v28;
}

@end