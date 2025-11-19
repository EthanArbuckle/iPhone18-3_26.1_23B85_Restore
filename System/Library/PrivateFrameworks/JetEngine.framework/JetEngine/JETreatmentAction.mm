@interface JETreatmentAction
+ (id)treatmentActionWithField:(id)a3 configuration:(id)a4 topic:(id)a5;
- (JETreatmentAction)initWithField:(id)a3 configuration:(id)a4;
- (id)performAction:(id)a3 context:(id)a4;
- (id)performAction:(uint64_t)a3 atKeyIndex:(void *)a4 context:;
- (uint64_t)sourceField;
- (void)performActionWithContext:(id)a3;
@end

@implementation JETreatmentAction

+ (id)treatmentActionWithField:(id)a3 configuration:(id)a4 topic:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    v14 = 0;
    goto LABEL_15;
  }

  v12 = [v11 objectForKeyedSubscript:@"treatmentType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if ([v13 isEqualToString:@"numberDeres"])
  {
    v15 = JEDeresNumberTreatmentAction;
  }

  else if ([v13 isEqualToString:@"urlDeres"])
  {
    v15 = JEDeresURLTreatmentAction;
  }

  else
  {
    if ([v13 isEqualToString:@"hash"])
    {
      v16 = [[JEHashTreatmentAction alloc] initWithField:v7 configuration:v11 topic:v9];
      goto LABEL_14;
    }

    if ([v13 isEqualToString:@"versionDeres"])
    {
      v15 = JEDeresVersionTreatmentAction;
    }

    else if ([v13 isEqualToString:@"impressionDurationFilter"])
    {
      v15 = JEImpressionDurationFilteringTreatmentAction;
    }

    else if ([v13 isEqualToString:@"allowList"])
    {
      v15 = _TtC9JetEngine33AllowedFieldValuesTreatmentAction;
    }

    else if ([v13 isEqualToString:@"arrayFilter"])
    {
      v15 = _TtC9JetEngine26ArrayFilterTreatmentAction;
    }

    else
    {
      v15 = JETreatmentAction;
    }
  }

  v16 = [[v15 alloc] initWithField:v7 configuration:v11];
LABEL_14:
  v14 = v16;

LABEL_15:

  return v14;
}

- (JETreatmentAction)initWithField:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v51.receiver = self;
  v51.super_class = JETreatmentAction;
  v8 = [(JETreatmentAction *)&v51 init];
  if (v8)
  {
    v9 = [v6 copy];
    field = v8->_field;
    v8->_field = v9;

    v11 = [v7 objectForKeyedSubscript:@"sourceField"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v12 copy];
    sourceField = v8->_sourceField;
    v8->_sourceField = v13;

    v15 = [v7 objectForKeyedSubscript:@"overrideFieldValue"];
    overrideFieldValue = v8->_overrideFieldValue;
    v8->_overrideFieldValue = v15;

    v17 = [v7 objectForKeyedSubscript:@"denylisted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v20 = [v7 objectForKeyedSubscript:@"blacklisted"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v20;
      }

      else
      {
        v19 = 0;
      }
    }

    v8->_denylisted = [v19 BOOLValue];
    v21 = [v7 objectForKeyedSubscript:@"allowlistedFields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v24 = [v7 objectForKeyedSubscript:@"whitelistedFields"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v24;
      }

      else
      {
        v23 = 0;
      }
    }

    v25 = [v23 copy];
    allowlistedFields = v8->_allowlistedFields;
    v8->_allowlistedFields = v25;

    v27 = [v7 objectForKeyedSubscript:@"denylistedFields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v28)
    {
      v29 = v28;
    }

    else
    {
      v30 = [v7 objectForKeyedSubscript:@"blacklistedFields"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v30;
      }

      else
      {
        v29 = 0;
      }
    }

    v31 = [v29 copy];
    denylistedFields = v8->_denylistedFields;
    v8->_denylistedFields = v31;

    v33 = [v7 objectForKeyedSubscript:@"fieldsMap"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v35 = [v34 copy];
    fieldsMap = v8->_fieldsMap;
    v8->_fieldsMap = v35;

    v37 = [v7 objectForKeyedSubscript:@"extractAndReplace"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v39 = [v38 copy];
    extractAndReplaceConfig = v8->_extractAndReplaceConfig;
    v8->_extractAndReplaceConfig = v39;

    v41 = v8->_field;
    v42 = [(NSString *)v41 componentsSeparatedByString:@"."];
    destinationKeyPath = v8->_destinationKeyPath;
    v8->_destinationKeyPath = v42;

    v44 = [(NSString *)v8->_sourceField length];
    v45 = v8->_destinationKeyPath;
    if (v44)
    {
      v46 = [(NSArray *)v45 mutableCopy];
      [(NSArray *)v46 removeLastObject];
      [(NSArray *)v46 addObject:v8->_sourceField];
      v47 = [(NSArray *)v46 copy];
      sourceKeyPath = v8->_sourceKeyPath;
      v8->_sourceKeyPath = v47;
    }

    else
    {
      v49 = v45;
      v46 = v8->_sourceKeyPath;
      v8->_sourceKeyPath = v49;
    }
  }

  return v8;
}

- (void)performActionWithContext:(id)a3
{
  v4 = a3;
  v6 = [(JETreatmentContext *)v4 metrics];
  v5 = [(JETreatmentAction *)&self->super.isa performAction:v6 atKeyIndex:0 context:v4];
  [(JETreatmentContext *)v4 setMetrics:v5];
}

- (id)performAction:(id)a3 context:(id)a4
{
  v74 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self)
  {
    if (self->_denylisted)
    {
      v8 = 0;
      goto LABEL_64;
    }

    if (self->_overrideFieldValue)
    {
      v9 = self->_overrideFieldValue;

      v6 = v9;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self)
    {
      fieldsMap = self->_fieldsMap;
    }

    else
    {
      fieldsMap = 0;
    }

    v49 = v7;
    if ([(NSDictionary *)fieldsMap count])
    {
      v56 = [v6 mutableCopy];
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      if (self)
      {
        v11 = self->_fieldsMap;
      }

      else
      {
        v11 = 0;
      }

      obj = v11;
      v54 = [(NSDictionary *)obj countByEnumeratingWithState:&v66 objects:v73 count:16];
      if (v54)
      {
        v52 = *v67;
        v53 = self;
        do
        {
          v12 = 0;
          do
          {
            if (*v67 != v52)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v66 + 1) + 8 * v12);
            if (self)
            {
              v14 = self->_fieldsMap;
            }

            else
            {
              v14 = 0;
            }

            v15 = v14;
            v16 = [(NSDictionary *)v15 objectForKeyedSubscript:v13];

            objc_opt_class();
            v55 = v13;
            v57 = v16;
            if (objc_opt_isKindOfClass())
            {
              v72 = v16;
              v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v17 = v16;
              }

              else
              {
                v17 = 0;
              }
            }

            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v18 = v17;
            v19 = [v18 countByEnumeratingWithState:&v62 objects:v71 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v63;
              while (2)
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v63 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = *(*(&v62 + 1) + 8 * i);
                  v24 = v6;
                  v25 = [v23 componentsSeparatedByString:@"."];
                  v26 = NullableValueForKeyPathArray(v24, v25, 0);

                  if (v26)
                  {
                    [v56 setObject:v26 forKeyedSubscript:v55];

                    goto LABEL_34;
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v62 objects:v71 count:16];
                if (v20)
                {
                  continue;
                }

                break;
              }
            }

LABEL_34:

            ++v12;
            self = v53;
          }

          while (v12 != v54);
          v27 = [(NSDictionary *)obj countByEnumeratingWithState:&v66 objects:v73 count:16];
          v54 = v27;
        }

        while (v27);
      }

      v7 = v49;
      if (self)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v56 = v6;
      if (self)
      {
LABEL_39:
        allowlistedFields = self->_allowlistedFields;
        goto LABEL_40;
      }
    }

    allowlistedFields = 0;
LABEL_40:
    if ([(NSArray *)allowlistedFields count])
    {
      v29 = objc_alloc(MEMORY[0x1E695DF90]);
      if (self)
      {
        v30 = self->_allowlistedFields;
      }

      else
      {
        v30 = 0;
      }

      v31 = [v29 initWithCapacity:{-[NSArray count](v30, "count")}];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      if (self)
      {
        v32 = self->_allowlistedFields;
      }

      else
      {
        v32 = 0;
      }

      v33 = v32;
      v34 = [(NSArray *)v33 countByEnumeratingWithState:&v58 objects:v70 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v59;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v59 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v58 + 1) + 8 * j);
            v39 = [v56 objectForKeyedSubscript:v38];
            [v31 setObject:v39 forKeyedSubscript:v38];
          }

          v35 = [(NSArray *)v33 countByEnumeratingWithState:&v58 objects:v70 count:16];
        }

        while (v35);
      }

      v7 = v50;
      if (self)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v31 = v56;
      if (self)
      {
LABEL_53:
        denylistedFields = self->_denylistedFields;
        goto LABEL_54;
      }
    }

    denylistedFields = 0;
LABEL_54:
    if ([(NSArray *)denylistedFields count])
    {
      v41 = [v31 mutableCopy];
      v6 = v41;
      if (self)
      {
        v42 = self->_denylistedFields;
      }

      else
      {
        v42 = 0;
      }

      [v41 removeObjectsForKeys:v42];

      if (self)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v6 = v31;
      if (self)
      {
LABEL_58:
        extractAndReplaceConfig = self->_extractAndReplaceConfig;
        goto LABEL_59;
      }
    }

    extractAndReplaceConfig = 0;
LABEL_59:
    if ([(NSDictionary *)extractAndReplaceConfig count])
    {
      if (self)
      {
        v44 = self->_extractAndReplaceConfig;
      }

      else
      {
        v44 = 0;
      }

      v45 = v44;
      v46 = [(JETreatmentContext *)v7 metrics];
      v47 = [JEExtractAndReplaceField metricsAfterExtractAndReplaceSubFieldWithConfig:v45 metrics:v46];

      v6 = v47;
    }
  }

  v6 = v6;
  v8 = v6;
LABEL_64:

  return v8;
}

- (id)performAction:(uint64_t)a3 atKeyIndex:(void *)a4 context:
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    if ([a1[10] count] == a3)
    {
      a1 = [a1 performAction:v7 context:v8];
    }

    else
    {
      v9 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        v11 = [a1[10] objectAtIndexedSubscript:a3];
        v12 = [a1[9] objectAtIndexedSubscript:a3];
        if ([v11 hasSuffix:@"[]"])
        {
          v13 = [v11 substringToIndex:{objc_msgSend(v11, "length") - 2}];

          v14 = [v10 objectForKeyedSubscript:v13];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = v14;
          }

          else
          {
            v15 = 0;
          }

          if (v15)
          {
            v31 = v13;
            v32 = v12;
            v33 = v10;
            v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v29 = v15;
            v17 = v15;
            v18 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v35;
              do
              {
                for (i = 0; i != v19; ++i)
                {
                  if (*v35 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = [(JETreatmentAction *)a1 performAction:a3 + 1 atKeyIndex:v8 context:?];
                  if (v22)
                  {
                    [v16 addObject:v22];
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
              }

              while (v19);
            }

            v12 = v32;
            if ([v32 hasSuffix:@"[]"])
            {
              v23 = [v32 substringToIndex:{objc_msgSend(v32, "length") - 2}];

              v12 = v23;
            }

            v10 = v33;
            v24 = [v33 mutableCopy];
            [v24 setObject:v16 forKeyedSubscript:v12];
            a1 = [v24 copy];

            v15 = v30;
            v13 = v31;
          }

          else
          {
            a1 = v9;
          }

          v11 = v13;
        }

        else
        {
          v26 = [v10 objectForKeyedSubscript:v11];
          v27 = [(JETreatmentAction *)a1 performAction:v26 atKeyIndex:a3 + 1 context:v8];

          v28 = [v10 mutableCopy];
          [v28 setObject:v27 forKeyedSubscript:v12];
          a1 = [v28 copy];
        }
      }

      else
      {
        a1 = v9;
      }
    }
  }

  return a1;
}

- (uint64_t)sourceField
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

@end