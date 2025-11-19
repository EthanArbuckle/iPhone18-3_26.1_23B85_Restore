@interface LNSpotlightAppEntityMapper
+ (void)tagCSSearchableItem:(id)a3 entityInstanceIdentifier:(id)a4 typeIdentifier:(id)a5 displayTitle:(id)a6 displaySubtitle:(id)a7 displaySynonyms:(id)a8 typeDisplayName:(id)a9 typeDisplaySynonyms:(id)a10 propertyDictionary:(id)a11 priority:(id)a12;
@end

@implementation LNSpotlightAppEntityMapper

+ (void)tagCSSearchableItem:(id)a3 entityInstanceIdentifier:(id)a4 typeIdentifier:(id)a5 displayTitle:(id)a6 displaySubtitle:(id)a7 displaySynonyms:(id)a8 typeDisplayName:(id)a9 typeDisplaySynonyms:(id)a10 propertyDictionary:(id)a11 priority:(id)a12
{
  v53 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v47 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v46 = a11;
  v24 = a12;
  if (v17)
  {
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:a1 file:@"LNSpotlightAppEntityMapper.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"attributes"}];

    if (v18)
    {
      goto LABEL_3;
    }
  }

  v35 = [MEMORY[0x1E696AAA8] currentHandler];
  [v35 handleFailureInMethod:a2 object:a1 file:@"LNSpotlightAppEntityMapper.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"instanceIdentifier"}];

LABEL_3:
  if (v47)
  {
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_27:
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:a1 file:@"LNSpotlightAppEntityMapper.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"title"}];

    if (v24)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

  v36 = [MEMORY[0x1E696AAA8] currentHandler];
  [v36 handleFailureInMethod:a2 object:a1 file:@"LNSpotlightAppEntityMapper.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"typeIdentifier"}];

  if (!v19)
  {
    goto LABEL_27;
  }

LABEL_5:
  if (v24)
  {
    goto LABEL_6;
  }

LABEL_28:
  v38 = [MEMORY[0x1E696AAA8] currentHandler];
  [v38 handleFailureInMethod:a2 object:a1 file:@"LNSpotlightAppEntityMapper.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"priority"}];

LABEL_6:
  [v17 setAttribute:v18 forKey:@"_kMDItemAppEntityInstanceIdentifier"];
  [v17 setAttribute:v47 forKey:@"_kMDItemAppEntityTypeIdentifier"];
  [v17 setAttribute:v19 forKey:@"kMDItemAppEntityTitle"];
  if (v20)
  {
    [v17 setAttribute:v20 forKey:@"kMDItemAppEntitySubtitle"];
  }

  if (v21 && [v21 count])
  {
    [v17 setAttribute:v21 forKey:@"kMDItemAppEntityDisplayRepresentationSynonyms"];
  }

  v43 = v19;
  if (v22)
  {
    [v17 setAttribute:v22 forKey:@"_kMDItemAppEntityTypeDisplayRepresentationName"];
  }

  v40 = v21;
  v41 = v20;
  v45 = v18;
  if (v23 && [v23 count])
  {
    [v17 setAttribute:v23 forKey:@"_kMDItemAppEntityTypeDisplayRepresentationSynonyms"];
  }

  v39 = v23;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v25 = [v46 allKeys];
  v26 = [v25 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v49;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v49 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v48 + 1) + 8 * i);
        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_%@", @"kMDItemAppEntity", v47, v30];
        v32 = [v46 objectForKey:v30];
        [v17 setAttribute:v32 forKey:v31];
      }

      v27 = [v25 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v27);
  }

  [v17 setAttribute:v24 forKey:@"_kMDItemAppEntityPriority"];
  v33 = *MEMORY[0x1E69E9840];
}

@end