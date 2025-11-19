@interface TDEffectStyleProduction
- (id)displayName;
- (void)generateRenditionsWithDocument:(id)a3;
@end

@implementation TDEffectStyleProduction

- (void)generateRenditionsWithDocument:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  obj = [-[TDEffectStyleProduction partDefinition](self "partDefinition")];
  v40 = self;
  if ([-[TDEffectStyleProduction renditions](self "renditions")])
  {
    NSLog(&cfstr_DeletingExisti.isa);
    v5 = [(TDEffectStyleProduction *)self managedObjectContext];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v6 = [(TDEffectStyleProduction *)self renditions];
    v7 = [v6 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v52;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v52 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [v5 deleteObject:*(*(&v51 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v8);
    }
  }

  v41 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v11 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v48;
    v14 = 0x277CCA000uLL;
    v34 = *v48;
    do
    {
      v15 = 0;
      v35 = v12;
      do
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v47 + 1) + 8 * v15);
        v39 = [objc_msgSend(objc_msgSend(-[TDEffectStyleProduction entity](v40 entity];
        v17 = [[TDEffectRenditionSpec alloc] initWithEntity:v39 insertIntoManagedObjectContext:[(TDEffectStyleProduction *)v40 managedObjectContext]];
        v18 = v17;
        [(TDEffectRenditionSpec *)v17 setProduction:v40];
        [(TDRenditionSpec *)v17 resetToBaseKeySpec];
        v19 = [(TDEffectRenditionSpec *)v17 keySpec];
        [v19 setAttributesFromRenditionKey:objc_msgSend(v16 withDocument:{"key"), a3}];
        v20 = [v16 effectPreset];
        v21 = *(v14 + 2992);
        [v20 effectScale];
        *&v22 = v22;
        -[TDEffectRenditionSpec setEffectScale:](v17, "setEffectScale:", [v21 numberWithFloat:v22]);
        v38 = v20;
        [(TDEffectRenditionSpec *)v17 setComponentsFromEffectPreset:v20 withDocument:a3];
        if ([objc_msgSend(a3 "catalogGlobals")])
        {
          v37 = v15;
          v46 = 0;
          v23 = a3;
          v24 = [a3 allObjectsForEntity:@"Appearance" withSortDescriptors:0 error:&v46];
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v25 = v24;
          v26 = [v24 countByEnumeratingWithState:&v42 objects:v55 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v43;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v43 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v42 + 1) + 8 * j);
                v31 = v17;
                if ([v19 appearance])
                {
                  v31 = [[TDEffectRenditionSpec alloc] initWithEntity:v39 insertIntoManagedObjectContext:[(TDEffectStyleProduction *)v40 managedObjectContext]];
                  [(TDEffectRenditionSpec *)v31 setProduction:v40];
                  [(TDRenditionSpec *)v31 resetToBaseKeySpec];
                  [v19 copyAttributesInto:{-[TDEffectRenditionSpec keySpec](v31, "keySpec")}];
                  [(TDEffectRenditionSpec *)v31 setEffectScale:[(TDEffectRenditionSpec *)v17 effectScale]];
                  [(TDEffectRenditionSpec *)v31 setComponentsFromEffectPreset:v38 withDocument:v23];
                  v32 = v31;
                }

                [-[TDEffectRenditionSpec keySpec](v31 "keySpec")];
                [v41 addObject:v31];
              }

              v27 = [v25 countByEnumeratingWithState:&v42 objects:v55 count:16];
            }

            while (v27);
          }

          a3 = v23;
          v13 = v34;
          v12 = v35;
          v14 = 0x277CCA000;
          v15 = v37;
        }

        else
        {
          [v41 addObject:v17];
        }

        ++v15;
      }

      while (v15 != v12);
      v12 = [obj countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v12);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)displayName
{
  if (![(TDEffectStyleProduction *)self name])
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"Effect: %@ – %@", objc_msgSend(objc_msgSend(-[TDEffectStyleProduction baseKeySpec](self, "baseKeySpec"), "element"), "displayName"), objc_msgSend(objc_msgSend(-[TDEffectStyleProduction baseKeySpec](self, "baseKeySpec"), "part"), "displayName")];
  }

  v3 = [(TDEffectStyleProduction *)self name];

  return [v3 name];
}

@end