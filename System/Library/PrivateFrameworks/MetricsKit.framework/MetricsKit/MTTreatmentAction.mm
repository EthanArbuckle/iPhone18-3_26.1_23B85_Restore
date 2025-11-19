@interface MTTreatmentAction
+ (id)treatmentActionWithField:(id)a3 configData:(id)a4;
- (MTTreatmentAction)initWithField:(id)a3 configDictionary:(id)a4;
- (id)performAction:(id)a3 atKeyIndex:(int64_t)a4 context:(id)a5;
- (id)performAction:(id)a3 context:(id)a4;
- (void)computeKeyPaths;
- (void)performActionWithContext:(id)a3;
@end

@implementation MTTreatmentAction

+ (id)treatmentActionWithField:(id)a3 configData:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v7 = v6;
  v8 = [v7 objectForKeyedSubscript:@"treatmentType"];
  v9 = objc_opt_class();
  if ([v8 isEqualToString:@"numberDeres"])
  {
    v10 = off_2798CCC50;
LABEL_11:
    v12 = *v10;
    v9 = objc_opt_class();
    goto LABEL_12;
  }

  if ([v8 isEqualToString:@"urlDeres"])
  {
    v10 = off_2798CCD50;
    goto LABEL_11;
  }

  if ([v8 isEqualToString:@"hash"])
  {
    v10 = off_2798CCB78;
    goto LABEL_11;
  }

  if ([v8 isEqualToString:@"versionDeres"])
  {
    v10 = &off_2798CCD68;
    goto LABEL_11;
  }

LABEL_12:
  v11 = [[v9 alloc] initWithField:v5 configDictionary:v7];

LABEL_13:

  return v11;
}

- (MTTreatmentAction)initWithField:(id)a3 configDictionary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v46.receiver = self;
  v46.super_class = MTTreatmentAction;
  v8 = [(MTTreatmentAction *)&v46 init];
  v9 = v8;
  if (v8)
  {
    [(MTTreatmentAction *)v8 setField:v6];
    v10 = [v7 objectForKeyedSubscript:@"sourceField"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MTTreatmentAction *)v9 setSourceField:v10];
    }

    v11 = [v7 objectForKeyedSubscript:@"overrideFieldValue"];
    [(MTTreatmentAction *)v9 setOverrideFieldValue:v11];

    v12 = [v7 objectForKeyedSubscript:@"denylisted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTTreatmentAction setDenylisted:](v9, "setDenylisted:", [v12 BOOLValue]);
    }

    v13 = [v7 objectForKeyedSubscript:@"allowlistedFields"];
    v14 = 0x277CBE000uLL;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MTTreatmentAction *)v9 setAllowlistedFields:v13];
    }

    v15 = [v7 objectForKeyedSubscript:@"denylistedFields"];
    objc_opt_class();
    v45 = v15;
    if (objc_opt_isKindOfClass())
    {
      [(MTTreatmentAction *)v9 setDenylistedFields:v15];
    }

    v16 = [v7 objectForKeyedSubscript:@"blacklisted"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && !-[MTTreatmentAction denylisted](v9, "denylisted") && [v16 BOOLValue])
    {
      -[MTTreatmentAction setDenylisted:](v9, "setDenylisted:", [v16 BOOLValue]);
    }

    v44 = v16;
    v17 = [v7 objectForKeyedSubscript:@"whitelistedFields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [(MTTreatmentAction *)v9 allowlistedFields];
      if (v18)
      {
        v19 = MEMORY[0x277CBEB70];
        [(MTTreatmentAction *)v9 allowlistedFields];
        v21 = v20 = v17;
        [v21 arrayByAddingObjectsFromArray:v20];
        v40 = v12;
        v22 = v42 = v6;
        v23 = [v19 orderedSetWithArray:v22];
        [v23 array];
        v24 = v13;
        v26 = v25 = v10;
        [(MTTreatmentAction *)v9 setAllowlistedFields:v26];

        v10 = v25;
        v13 = v24;

        v12 = v40;
        v6 = v42;

        v17 = v20;
        v14 = 0x277CBE000;
      }

      else
      {
        [(MTTreatmentAction *)v9 setAllowlistedFields:v17];
      }
    }

    v27 = [v7 objectForKeyedSubscript:@"blacklistedFields"];
    v28 = *(v14 + 2656);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [(MTTreatmentAction *)v9 denylistedFields];
      if (v29)
      {
        v39 = v17;
        v30 = MEMORY[0x277CBEB70];
        [(MTTreatmentAction *)v9 denylistedFields];
        v31 = v43 = v6;
        [v31 arrayByAddingObjectsFromArray:v27];
        v32 = v41 = v10;
        v33 = [v30 orderedSetWithArray:v32];
        [v33 array];
        v34 = v13;
        v36 = v35 = v12;
        [(MTTreatmentAction *)v9 setDenylistedFields:v36];

        v12 = v35;
        v13 = v34;

        v17 = v39;
        v10 = v41;

        v6 = v43;
      }

      else
      {
        [(MTTreatmentAction *)v9 setDenylistedFields:v27];
      }
    }

    v37 = [v7 objectForKeyedSubscript:@"fieldsMap"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MTTreatmentAction *)v9 setFieldsMap:v37];
    }

    [(MTTreatmentAction *)v9 computeKeyPaths];
  }

  return v9;
}

- (void)computeKeyPaths
{
  v3 = [(MTTreatmentAction *)self field];
  v4 = [v3 componentsSeparatedByString:@"."];
  dstKeyPath = self->_dstKeyPath;
  self->_dstKeyPath = v4;

  v6 = [(MTTreatmentAction *)self sourceField];
  v7 = [v6 length];

  v8 = self->_dstKeyPath;
  if (v7)
  {
    v14 = [(NSArray *)v8 mutableCopy];
    [v14 removeLastObject];
    v9 = [(MTTreatmentAction *)self sourceField];
    [v14 addObject:v9];

    v10 = [v14 copy];
    srcKeyPath = self->_srcKeyPath;
    self->_srcKeyPath = v10;
  }

  else
  {
    v12 = v8;
    v13 = self->_srcKeyPath;
    self->_srcKeyPath = v12;
  }

  MEMORY[0x2821F96F8]();
}

- (void)performActionWithContext:(id)a3
{
  v4 = a3;
  v6 = [v4 metrics];
  v5 = [(MTTreatmentAction *)self performAction:v6 atKeyIndex:0 context:v4];
  [v4 setMetrics:v5];
}

- (id)performAction:(id)a3 context:(id)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(MTTreatmentAction *)self denylisted])
  {
    v6 = 0;
    goto LABEL_45;
  }

  v7 = [(MTTreatmentAction *)self overrideFieldValue];

  if (v7)
  {
    v8 = [(MTTreatmentAction *)self overrideFieldValue];

    v5 = v8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(MTTreatmentAction *)self fieldsMap];
    v10 = [v9 count];

    if (v10)
    {
      v51 = [v5 mutableCopy];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      obj = [(MTTreatmentAction *)self fieldsMap];
      v11 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
      if (!v11)
      {
        goto LABEL_30;
      }

      v12 = v11;
      v13 = *v61;
      v14 = 0x277CCA000uLL;
      v15 = 0x277CBE000uLL;
      v48 = *v61;
      while (1)
      {
        v16 = 0;
        v49 = v12;
        do
        {
          if (*v61 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v60 + 1) + 8 * v16);
          v18 = [(MTTreatmentAction *)self fieldsMap];
          v19 = [v18 objectForKeyedSubscript:v17];

          v20 = *(v14 + 3240);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v66 = v19;
            v21 = [*(v15 + 2656) arrayWithObjects:&v66 count:1];
            if (!v21)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v22 = *(v15 + 2656);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_28;
            }

            v21 = v19;
            if (!v21)
            {
              goto LABEL_28;
            }
          }

          v23 = self;
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v24 = v21;
          v25 = [v24 countByEnumeratingWithState:&v56 objects:v65 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v57;
            while (2)
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v57 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = [v5 mt_nullableValueForKeyPathExt:*(*(&v56 + 1) + 8 * i)];
                if (v29)
                {
                  v30 = v29;
                  [v51 setObject:v29 forKeyedSubscript:v17];

                  goto LABEL_27;
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v56 objects:v65 count:16];
              if (v26)
              {
                continue;
              }

              break;
            }
          }

LABEL_27:

          self = v23;
          v13 = v48;
          v12 = v49;
          v14 = 0x277CCA000;
          v15 = 0x277CBE000;
LABEL_28:

          ++v16;
        }

        while (v16 != v12);
        v12 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
        if (!v12)
        {
LABEL_30:

          goto LABEL_32;
        }
      }
    }

    v51 = v5;
LABEL_32:
    v31 = [(MTTreatmentAction *)self allowlistedFields];
    v32 = [v31 count];

    if (v32)
    {
      v33 = MEMORY[0x277CBEB38];
      v34 = [(MTTreatmentAction *)self allowlistedFields];
      v5 = [v33 dictionaryWithCapacity:{objc_msgSend(v34, "count")}];

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v35 = [(MTTreatmentAction *)self allowlistedFields];
      v36 = [v35 countByEnumeratingWithState:&v52 objects:v64 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v53;
        do
        {
          for (j = 0; j != v37; ++j)
          {
            if (*v53 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v52 + 1) + 8 * j);
            v41 = [v51 objectForKeyedSubscript:v40];
            [v5 setObject:v41 forKeyedSubscript:v40];
          }

          v37 = [v35 countByEnumeratingWithState:&v52 objects:v64 count:16];
        }

        while (v37);
      }
    }

    else
    {
      v5 = v51;
    }

    v42 = [(MTTreatmentAction *)self denylistedFields];
    v43 = [v42 count];

    if (v43)
    {
      v44 = [v5 mutableCopy];
      v45 = [(MTTreatmentAction *)self denylistedFields];
      [v44 removeObjectsForKeys:v45];

      v5 = v44;
    }
  }

  v5 = v5;
  v6 = v5;
LABEL_45:

  v46 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)performAction:(id)a3 atKeyIndex:(int64_t)a4 context:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(MTTreatmentAction *)self srcKeyPath];
  v11 = [v10 count];

  if (v11 == a4)
  {
    v12 = [(MTTreatmentAction *)self performAction:v8 context:v9];
LABEL_21:
    self = v12;
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  v13 = v8;
  v14 = [(MTTreatmentAction *)self srcKeyPath];
  v15 = [v14 objectAtIndexedSubscript:a4];

  v16 = [(MTTreatmentAction *)self dstKeyPath];
  v17 = [v16 objectAtIndexedSubscript:a4];

  if (![v15 hasSuffix:@"[]"])
  {
    v30 = [v13 objectForKeyedSubscript:v15];
    v31 = [(MTTreatmentAction *)self performAction:v30 atKeyIndex:a4 + 1 context:v9];

    self = [v13 mt_dictionarybyReplacingKey:v17 value:v31];

    goto LABEL_22;
  }

  v18 = [v15 substringToIndex:{objc_msgSend(v15, "length") - 2}];

  v19 = [v13 objectForKeyedSubscript:v18];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v21 = isKindOfClass;
  if (isKindOfClass)
  {
    v35 = isKindOfClass;
    v36 = v18;
    v37 = v17;
    v38 = v13;
    v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v19, "count")}];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v34 = v19;
    v23 = v19;
    v24 = [v23 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v40;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v40 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [(MTTreatmentAction *)self performAction:*(*(&v39 + 1) + 8 * i) atKeyIndex:a4 + 1 context:v9];
          if (v28)
          {
            [v22 addObject:v28];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v25);
    }

    v17 = v37;
    if ([v37 hasSuffix:@"[]"])
    {
      v29 = [v37 substringToIndex:{objc_msgSend(v37, "length") - 2}];

      v17 = v29;
    }

    v13 = v38;
    v18 = v36;
    v21 = v35;
    v19 = v34;
    self = [v38 mt_dictionarybyReplacingKey:v17 value:v22];
  }

  if ((v21 & 1) == 0)
  {
LABEL_20:
    v12 = v8;
    goto LABEL_21;
  }

LABEL_22:

  v32 = *MEMORY[0x277D85DE8];

  return self;
}

@end