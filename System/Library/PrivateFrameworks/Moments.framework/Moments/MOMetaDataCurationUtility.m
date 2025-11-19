@interface MOMetaDataCurationUtility
+ (id)getPersonFromBirthdayPhotoTrait:(id)a3 eventBundle:(id)a4;
+ (id)selectBirthdayFromPhotoTraits:(id)a3;
+ (id)selectHolidayFromPhotoTraits:(id)a3;
+ (unint64_t)getTheBestPersonRelationtshipTagFor:(id)a3 useRelationshipInference:(BOOL)a4;
@end

@implementation MOMetaDataCurationUtility

+ (unint64_t)getTheBestPersonRelationtshipTagFor:(id)a3 useRelationshipInference:(BOOL)a4
{
  v4 = a4;
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = 1.0;
  v7 = 1.0;
  v8 = 1.0;
  v9 = 1.0;
  if (v4)
  {
    v9 = 0.927661;
    v8 = 0.959;
    v7 = 0.949924;
    v6 = 0.96;
  }

  v10 = objc_opt_new();
  v11 = [v5 personRelationships];
  v12 = [v11 count];

  if (v12)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = [v5 personRelationships];
    v14 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v36 + 1) + 8 * i);
          if ([v18 relationship] == 4)
          {
            [v18 score];
            v19 = &unk_284100B58;
            if (v20 >= v9)
            {
              goto LABEL_19;
            }
          }

          if ([v18 relationship] == 15)
          {
            [v18 score];
            v19 = &unk_284100B70;
            if (v21 >= v8)
            {
              goto LABEL_19;
            }
          }

          if ([v18 relationship] != 27 || (objc_msgSend(v18, "score"), v19 = &unk_284100B88, v22 < 1.0))
          {
            if ([v18 relationship] != 21 || (objc_msgSend(v18, "score"), v19 = &unk_284100BA0, v23 < v7))
            {
              if ([v18 relationship] != 22)
              {
                continue;
              }

              [v18 score];
              v19 = &unk_284100BB8;
              if (v24 < v6)
              {
                continue;
              }
            }
          }

LABEL_19:
          v25 = MEMORY[0x277CCABB0];
          [v18 score];
          v26 = [v25 numberWithDouble:?];
          [v10 setObject:v26 forKeyedSubscript:v19];
        }

        v15 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v15);
    }

    if ([v10 count])
    {
      v27 = [v10 keysOfEntriesPassingTest:&__block_literal_global_5];
      if ([v27 count])
      {
        if (([v27 containsObject:&unk_284100B70]& 1) != 0)
        {
          goto LABEL_40;
        }

        if (([v27 containsObject:&unk_284100B88]& 1) != 0)
        {
LABEL_26:
          v28 = 27;
          goto LABEL_41;
        }

        if (([v27 containsObject:&unk_284100B58]& 1) != 0)
        {
LABEL_38:
          v28 = 4;
          goto LABEL_41;
        }

        if (([v27 containsObject:&unk_284100BA0]& 1) != 0)
        {
          goto LABEL_44;
        }

        if (([v27 containsObject:&unk_284100BB8]& 1) != 0)
        {
          v28 = 22;
          goto LABEL_41;
        }
      }

      v29 = [v10 objectForKey:&unk_284100B58];

      if (v29)
      {
        goto LABEL_38;
      }

      v30 = [v10 objectForKey:&unk_284100B70];

      if (v30)
      {
LABEL_40:
        v28 = 15;
        goto LABEL_41;
      }

      v33 = [v10 objectForKey:&unk_284100B88];

      if (v33)
      {
        goto LABEL_26;
      }

      v34 = [v10 objectForKey:&unk_284100BA0];

      if (v34)
      {
LABEL_44:
        v28 = 21;
        goto LABEL_41;
      }

      v35 = [v10 objectForKey:&unk_284100BB8];

      if (v35)
      {
        v28 = 22;
      }

      else
      {
        v28 = 1;
      }
    }

    else
    {
      v27 = _mo_log_facility_get_os_log(MOLogFacilityPatternEmbedding);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        [MOMetaDataCurationUtility getTheBestPersonRelationtshipTagFor:v5 useRelationshipInference:?];
      }

      v28 = 1;
    }
  }

  else
  {
    v27 = _mo_log_facility_get_os_log(MOLogFacilityPatternEmbedding);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [MOMetaDataCurationUtility getTheBestPersonRelationtshipTagFor:v5 useRelationshipInference:?];
    }

    v28 = 0;
  }

LABEL_41:

  v31 = *MEMORY[0x277D85DE8];
  return v28;
}

+ (id)selectHolidayFromPhotoTraits:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (!v3 || ![v3 count])
  {
    v16 = 0;
    goto LABEL_20;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = v4;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v6)
  {
    v20 = 0;
    goto LABEL_19;
  }

  v7 = v6;
  v20 = 0;
  v8 = 0;
  v9 = *v22;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v21 + 1) + 8 * i);
      v12 = [v11 labelType];
      if ([v12 isEqualToString:@"holiday"])
      {
        v13 = [v11 relevantAssetUUIDs];
        if ([v13 count] <= v8)
        {
        }

        else
        {
          v14 = [v11 name];

          if (!v14)
          {
            continue;
          }

          v15 = [v11 relevantAssetUUIDs];
          v8 = [v15 count];

          v12 = v20;
          v20 = v11;
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v7);
LABEL_19:

  v4 = v19;
  v16 = v20;
LABEL_20:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)selectBirthdayFromPhotoTraits:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (!v3 || ![v3 count])
  {
    v23 = 0;
    goto LABEL_23;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v26 = v4;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v6)
  {
    v27 = 0;
    goto LABEL_22;
  }

  v7 = v6;
  v29 = 0;
  v8 = *v31;
  v9 = @"Birthday";
  v27 = 0;
  v28 = *v31;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v31 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v30 + 1) + 8 * i);
      v12 = [v11 labelType];
      if (![v12 isEqualToString:@"meaning"])
      {
        goto LABEL_15;
      }

      v13 = [v11 meaningIdentifier];
      if (([v13 isEqualToString:v9] & 1) == 0)
      {

        goto LABEL_15;
      }

      v14 = v5;
      v15 = v9;
      v16 = [v11 relevantAssetUUIDs];
      v17 = [v16 count];

      if (v17 > v29)
      {
        v18 = [v11 associatedPersonLocalIdentifiers];
        if (v18)
        {
          v19 = v18;
          v20 = [v11 associatedPersonLocalIdentifiers];
          v21 = [v20 count];

          if (v21)
          {
            v22 = [v11 relevantAssetUUIDs];
            v29 = [v22 count];

            v12 = v27;
            v27 = v11;
            v9 = v15;
            v5 = v14;
            v8 = v28;
LABEL_15:

            continue;
          }
        }
      }

      v9 = v15;
      v5 = v14;
      v8 = v28;
    }

    v7 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  }

  while (v7);
LABEL_22:

  v4 = v26;
  v23 = v27;
LABEL_23:

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)getPersonFromBirthdayPhotoTrait:(id)a3 eventBundle:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (!v5 || !v6)
  {
    goto LABEL_22;
  }

  v9 = [v5 associatedPersonLocalIdentifiers];
  v8 = [v9 firstObject];
  if (!v8)
  {

    goto LABEL_22;
  }

  v10 = [v7 persons];
  if (!v10)
  {

    goto LABEL_20;
  }

  v11 = v10;
  v12 = [v7 persons];
  v13 = [v12 count];

  if (!v13)
  {
LABEL_20:
    v8 = 0;
    goto LABEL_22;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = v7;
  obj = [v7 persons];
  v14 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        v19 = [v18 localIdentifier];
        v20 = [v5 associatedPersonLocalIdentifiers];
        v21 = [v20 firstObject];
        if ([v19 isEqualToString:v21])
        {
          v22 = [v18 name];
          v23 = [v22 length];

          if (v23)
          {
            v8 = v18;

            goto LABEL_21;
          }
        }

        else
        {
        }
      }

      v15 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v15);
  }

  v8 = 0;
LABEL_21:
  v7 = v26;
LABEL_22:

  v24 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (void)getTheBestPersonRelationtshipTagFor:(void *)a1 useRelationshipInference:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_8(&dword_22D8C5000, v2, v3, "None of personalRelationships are confident enough to generate the best relationship tag for person %{private}@", v4, v5, v6, v7, 3u);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)getTheBestPersonRelationtshipTagFor:(void *)a1 useRelationshipInference:.cold.2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_8(&dword_22D8C5000, v2, v3, "No personalRelationship is available for person %{private}@", v4, v5, v6, v7, 3u);

  v8 = *MEMORY[0x277D85DE8];
}

@end