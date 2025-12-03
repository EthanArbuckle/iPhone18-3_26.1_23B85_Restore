@interface CalItemMetadata
+ (BOOL)isRecognizedParameter:(id)parameter forProperty:(id)property inComponent:(id)component;
+ (BOOL)isRecognizedProperty:(id)property inComponent:(id)component;
+ (BOOL)shouldSkipSavingUnrecognizedParametersForProperty:(id)property inComponent:(id)component;
+ (id)_whitelistedClassesForSecureCoding;
+ (id)metadataWithData:(id)data;
+ (id)metadataWithICSComponent:(id)component;
- (CalItemMetadata)initWithCoder:(id)coder;
- (CalItemMetadata)initWithICSComponent:(id)component;
- (id)dataRepresentationWithExistingMetaData:(id)data;
- (id)propertyValueForComparison:(id)comparison propertyKey:(id)key;
- (void)applyToComponent:(id)component;
@end

@implementation CalItemMetadata

+ (BOOL)isRecognizedProperty:(id)property inComponent:(id)component
{
  propertyCopy = property;
  componentCopy = component;
  if (isRecognizedProperty_inComponent__onceToken_0 != -1)
  {
    +[CalItemMetadata isRecognizedProperty:inComponent:];
  }

  if ([componentCopy isEqualToString:@"VTODO"] && (objc_msgSend(isRecognizedProperty_inComponent__savedPropertiesForTodosOnly, "containsObject:", propertyCopy) & 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = [isRecognizedProperty_inComponent__sSavedProps containsObject:propertyCopy];
  }

  return v7;
}

uint64_t __52__CalItemMetadata_isRecognizedProperty_inComponent___block_invoke()
{
  v14 = objc_alloc(MEMORY[0x1E695DFD8]);
  v13 = *MEMORY[0x1E69E3FF8];
  v12 = *MEMORY[0x1E69E4008];
  v11 = *MEMORY[0x1E69E4028];
  v10 = *MEMORY[0x1E69E3E70];
  v0 = *MEMORY[0x1E69E3D58];
  v1 = *MEMORY[0x1E69E3D78];
  v2 = *MEMORY[0x1E69E3D88];
  v3 = *MEMORY[0x1E69E3DD0];
  v4 = [v14 initWithObjects:{*MEMORY[0x1E69E3EA8], *MEMORY[0x1E69E3EB0], *MEMORY[0x1E69E3EB8], *MEMORY[0x1E69E3EE0], *MEMORY[0x1E69E3ED8], *MEMORY[0x1E69E3EF0], *MEMORY[0x1E69E3EF8], *MEMORY[0x1E69E3F00], *MEMORY[0x1E69E3F08], *MEMORY[0x1E69E3F18], *MEMORY[0x1E69E3F30], *MEMORY[0x1E69E3F38], *MEMORY[0x1E69E3F50], *MEMORY[0x1E69E3F58], *MEMORY[0x1E69E3F70], *MEMORY[0x1E69E3F80], *MEMORY[0x1E69E3F98], *MEMORY[0x1E69E3FA0], *MEMORY[0x1E69E3FA8], *MEMORY[0x1E69E3FC0], *MEMORY[0x1E69E3FE8], *MEMORY[0x1E69E3FF8], *MEMORY[0x1E69E4000], *MEMORY[0x1E69E4008], *MEMORY[0x1E69E4020], *MEMORY[0x1E69E4028], *MEMORY[0x1E69E3F78], *MEMORY[0x1E69E3E70], *MEMORY[0x1E69E3E50], *MEMORY[0x1E69E3E48], *MEMORY[0x1E69E3DF0], *MEMORY[0x1E69E3D70], *MEMORY[0x1E69E3DB8], *MEMORY[0x1E69E3F48], *MEMORY[0x1E69E3DC0], *MEMORY[0x1E69E3D68], *MEMORY[0x1E69E3E20], *MEMORY[0x1E69E3E30], *MEMORY[0x1E69E3E38], *MEMORY[0x1E69E3E28], *MEMORY[0x1E69E3E40], *MEMORY[0x1E69E3D58], *MEMORY[0x1E69E3D60], *MEMORY[0x1E69E3D78], *MEMORY[0x1E69E3D80], *MEMORY[0x1E69E3D88], *MEMORY[0x1E69E3D90], *MEMORY[0x1E69E3DA0], *MEMORY[0x1E69E3DE8], *MEMORY[0x1E69E3DF8], *MEMORY[0x1E69E3E00], *MEMORY[0x1E69E3E08], *MEMORY[0x1E69E3E10], *MEMORY[0x1E69E3E18], *MEMORY[0x1E69E3D40], *MEMORY[0x1E69E3DD0], *MEMORY[0x1E69E3D48], *MEMORY[0x1E69E3D50], 0}];
  v5 = isRecognizedProperty_inComponent__sSavedProps;
  isRecognizedProperty_inComponent__sSavedProps = v4;

  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = [v6 initWithObjects:{*MEMORY[0x1E69E3F90], *MEMORY[0x1E69E3F10], *MEMORY[0x1E69E3ED0], *MEMORY[0x1E69E3DC8], *MEMORY[0x1E69E3D28], 0}];
  v8 = isRecognizedProperty_inComponent__savedPropertiesForTodosOnly;
  isRecognizedProperty_inComponent__savedPropertiesForTodosOnly = v7;

  return MEMORY[0x1EEE66BB8](v7, v8);
}

+ (BOOL)isRecognizedParameter:(id)parameter forProperty:(id)property inComponent:(id)component
{
  v6 = isRecognizedParameter_forProperty_inComponent__onceToken_0;
  propertyCopy = property;
  parameterCopy = parameter;
  if (v6 != -1)
  {
    +[CalItemMetadata isRecognizedParameter:forProperty:inComponent:];
  }

  v9 = [isRecognizedParameter_forProperty_inComponent__recognizedParametersByPropertyName_0 objectForKeyedSubscript:propertyCopy];

  v10 = [v9 containsObject:parameterCopy];
  return v10;
}

void __65__CalItemMetadata_isRecognizedParameter_forProperty_inComponent___block_invoke()
{
  v17[9] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69E3E88], *MEMORY[0x1E69E3E80], *MEMORY[0x1E69E3DB0], 0}];
  v16[0] = *MEMORY[0x1E69E3EF8];
  v1 = *MEMORY[0x1E69E4018];
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69E4018], 0}];
  v17[0] = v2;
  v16[1] = *MEMORY[0x1E69E3F08];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{v1, 0}];
  v17[1] = v3;
  v16[2] = *MEMORY[0x1E69E3F30];
  v4 = *MEMORY[0x1E69E4030];
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69E4030], v1, 0}];
  v17[2] = v5;
  v16[3] = *MEMORY[0x1E69E3FA0];
  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{v4, v1, 0}];
  v17[3] = v6;
  v16[4] = *MEMORY[0x1E69E3FA8];
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69E3FB0], 0}];
  v8 = *MEMORY[0x1E69E3DF0];
  v17[4] = v7;
  v17[5] = v0;
  v9 = *MEMORY[0x1E69E3D68];
  v16[5] = v8;
  v16[6] = v9;
  v10 = *MEMORY[0x1E69E3E38];
  v17[6] = v0;
  v17[7] = v0;
  v11 = *MEMORY[0x1E69E3E50];
  v16[7] = v10;
  v16[8] = v11;
  v12 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69E3E60], *MEMORY[0x1E69E3E58], 0}];
  v17[8] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:9];
  v14 = isRecognizedParameter_forProperty_inComponent__recognizedParametersByPropertyName_0;
  isRecognizedParameter_forProperty_inComponent__recognizedParametersByPropertyName_0 = v13;

  v15 = *MEMORY[0x1E69E9840];
}

+ (BOOL)shouldSkipSavingUnrecognizedParametersForProperty:(id)property inComponent:(id)component
{
  v4 = shouldSkipSavingUnrecognizedParametersForProperty_inComponent__onceToken_0;
  propertyCopy = property;
  if (v4 != -1)
  {
    +[CalItemMetadata shouldSkipSavingUnrecognizedParametersForProperty:inComponent:];
  }

  v6 = [shouldSkipSavingUnrecognizedParametersForProperty_inComponent__propertiesToSkipSavingUnrecognizedParameters_0 containsObject:propertyCopy];

  return v6;
}

uint64_t __81__CalItemMetadata_shouldSkipSavingUnrecognizedParametersForProperty_inComponent___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = *MEMORY[0x1E69E3EB0];
  v2 = [v0 initWithObjects:{*MEMORY[0x1E69E3EA8], *MEMORY[0x1E69E3EB0], *MEMORY[0x1E69E3F80], *MEMORY[0x1E69E3F38], 0}];
  v3 = shouldSkipSavingUnrecognizedParametersForProperty_inComponent__propertiesToSkipSavingUnrecognizedParameters_0;
  shouldSkipSavingUnrecognizedParametersForProperty_inComponent__propertiesToSkipSavingUnrecognizedParameters_0 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (CalItemMetadata)initWithICSComponent:(id)component
{
  v67 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  v61.receiver = self;
  v61.super_class = CalItemMetadata;
  v5 = [(CalItemMetadata *)&v61 init];
  if (v5)
  {
    v6 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_DEBUG, "Initializing calItem metadata", buf, 2u);
    }

    name = [objc_opt_class() name];
    v8 = name;
    if (name)
    {
      unrecognizedComponentName = name;
    }

    else
    {
      unrecognizedComponentName = [componentCopy unrecognizedComponentName];
    }

    v10 = unrecognizedComponentName;

    v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v38 = componentCopy;
    properties = [componentCopy properties];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v12 = [properties countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v58;
      v39 = *v58;
      v40 = properties;
      do
      {
        v15 = 0;
        v42 = v13;
        do
        {
          if (*v58 != v14)
          {
            objc_enumerationMutation(properties);
          }

          v16 = *(*(&v57 + 1) + 8 * v15);
          uppercaseString = [v16 uppercaseString];
          v18 = [properties objectForKey:v16];
          if ([objc_opt_class() isRecognizedProperty:uppercaseString inComponent:v10])
          {
            if (([objc_opt_class() shouldSkipSavingUnrecognizedParametersForProperty:uppercaseString inComponent:v10] & 1) == 0)
            {
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v19 = v18;
              v43 = [v19 countByEnumeratingWithState:&v53 objects:v63 count:16];
              if (v43)
              {
                v20 = *v54;
                v46 = v18;
                v47 = uppercaseString;
                v45 = v19;
                v41 = *v54;
                do
                {
                  v21 = 0;
                  do
                  {
                    if (*v54 != v20)
                    {
                      v22 = v21;
                      objc_enumerationMutation(v19);
                      v21 = v22;
                    }

                    v44 = v21;
                    v23 = *(*(&v53 + 1) + 8 * v21);
                    v49 = 0u;
                    v50 = 0u;
                    v51 = 0u;
                    v52 = 0u;
                    allParameters = [v23 allParameters];
                    v25 = [allParameters countByEnumeratingWithState:&v49 objects:v62 count:16];
                    if (v25)
                    {
                      v26 = v25;
                      v27 = *v50;
                      while (2)
                      {
                        for (i = 0; i != v26; ++i)
                        {
                          if (*v50 != v27)
                          {
                            objc_enumerationMutation(allParameters);
                          }

                          v29 = *(*(&v49 + 1) + 8 * i);
                          v30 = objc_opt_class();
                          uppercaseString2 = [v29 uppercaseString];
                          LOBYTE(v30) = [v30 isRecognizedParameter:uppercaseString2 forProperty:v16 inComponent:v10];

                          if ((v30 & 1) == 0)
                          {

                            [(NSDictionary *)v48 setObject:v45 forKey:v16];
                            v14 = v39;
                            properties = v40;
                            v13 = v42;
                            v18 = v46;
                            uppercaseString = v47;
                            goto LABEL_34;
                          }
                        }

                        v26 = [allParameters countByEnumeratingWithState:&v49 objects:v62 count:16];
                        if (v26)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v21 = v44 + 1;
                    v14 = v39;
                    properties = v40;
                    v20 = v41;
                    v13 = v42;
                    v18 = v46;
                    uppercaseString = v47;
                    v19 = v45;
                  }

                  while (v44 + 1 != v43);
                  v32 = [v45 countByEnumeratingWithState:&v53 objects:v63 count:16];
                  v20 = v41;
                  v43 = v32;
                }

                while (v32);
              }
            }
          }

          else
          {
            v33 = v18;
            v34 = CDBiCalendarConversionHandle;
            if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v65 = v16;
              _os_log_impl(&dword_1DEBB1000, v34, OS_LOG_TYPE_DEBUG, "Found an unrecognized property: %@", buf, 0xCu);
            }

            v18 = v33;
            [(NSDictionary *)v48 setObject:v33 forKey:v16];
          }

LABEL_34:

          ++v15;
        }

        while (v15 != v13);
        v13 = [properties countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v13);
    }

    unrecognizedProperties = v5->_unrecognizedProperties;
    v5->_unrecognizedProperties = v48;

    componentCopy = v38;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)propertyValueForComparison:(id)comparison propertyKey:(id)key
{
  comparisonCopy = comparison;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    values = [comparisonCopy values];

    if ([values count] == 1)
    {
      [values objectAtIndexedSubscript:0];
    }

    else
    {
      [values sortedArrayUsingSelector:sel_compare_];
    }
    value = ;
    comparisonCopy = values;
  }

  else
  {
    value = [comparisonCopy value];
  }

  return value;
}

- (void)applyToComponent:(id)component
{
  v81 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  name = [objc_opt_class() name];
  v5 = name;
  if (name)
  {
    unrecognizedComponentName = name;
  }

  else
  {
    unrecognizedComponentName = [componentCopy unrecognizedComponentName];
  }

  v54 = unrecognizedComponentName;

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = self->_unrecognizedProperties;
  v44 = [(NSDictionary *)obj countByEnumeratingWithState:&v69 objects:v80 count:16];
  if (v44)
  {
    v43 = *v70;
    *&v7 = 138543362;
    v41 = v7;
    v46 = componentCopy;
    do
    {
      v8 = 0;
      do
      {
        if (*v70 != v43)
        {
          v9 = v8;
          objc_enumerationMutation(obj);
          v8 = v9;
        }

        v45 = v8;
        v10 = *(*(&v69 + 1) + 8 * v8);
        uppercaseString = [v10 uppercaseString];
        if (([objc_opt_class() isRecognizedProperty:uppercaseString inComponent:v54] & 1) == 0)
        {
          v11 = [componentCopy propertiesForName:v10];

          if (!v11)
          {
            v47 = [(NSDictionary *)self->_unrecognizedProperties objectForKey:v10];
            [componentCopy setProperties:? forName:?];
            goto LABEL_53;
          }

          v12 = CDBiCalendarConversionHandle;
          if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_FAULT))
          {
            *buf = v41;
            v74 = v10;
            _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_FAULT, "We have a value for %{public}@, but the item already has properties with that name! _isSavedProp may be out of date.", buf, 0xCu);
          }
        }

        v13 = [componentCopy propertiesForName:v10];
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v47 = v13;
        v50 = [v13 countByEnumeratingWithState:&v65 objects:v79 count:16];
        if (v50)
        {
          v52 = 0;
          v49 = *v66;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v66 != v49)
              {
                objc_enumerationMutation(v47);
              }

              v15 = *(*(&v65 + 1) + 8 * i);
              v53 = [(CalItemMetadata *)self propertyValueForComparison:v15 propertyKey:v10];
              v61 = 0u;
              v62 = 0u;
              v63 = 0u;
              v64 = 0u;
              v16 = [(NSDictionary *)self->_unrecognizedProperties objectForKeyedSubscript:v10];
              v17 = [v16 countByEnumeratingWithState:&v61 objects:v78 count:16];
              if (v17)
              {
                v18 = v17;
                v51 = i;
                v19 = *v62;
LABEL_20:
                v20 = 0;
                while (1)
                {
                  if (*v62 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v61 + 1) + 8 * v20);
                  v22 = v10;
                  v23 = [(CalItemMetadata *)self propertyValueForComparison:v21 propertyKey:v10];
                  if ([v23 isEqual:v53])
                  {
                    if (![v52 containsObject:v21])
                    {
                      break;
                    }
                  }

                  ++v20;
                  v10 = v22;
                  if (v18 == v20)
                  {
                    v18 = [v16 countByEnumeratingWithState:&v61 objects:v78 count:16];
                    if (v18)
                    {
                      goto LABEL_20;
                    }

                    i = v51;
                    goto LABEL_46;
                  }
                }

                v24 = v21;

                if (!v24)
                {
                  v10 = v22;
                  i = v51;
                  goto LABEL_48;
                }

                v25 = v52;
                if (!v52)
                {
                  v25 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                }

                v52 = v25;
                [v25 addObject:v24];
                allParameters = [v15 allParameters];
                v48 = v24;
                allParameters2 = [v24 allParameters];
                v57 = 0u;
                v58 = 0u;
                v59 = 0u;
                v60 = 0u;
                v28 = [allParameters2 countByEnumeratingWithState:&v57 objects:v77 count:16];
                if (v28)
                {
                  v29 = v28;
                  v30 = *v58;
                  do
                  {
                    for (j = 0; j != v29; ++j)
                    {
                      if (*v58 != v30)
                      {
                        objc_enumerationMutation(allParameters2);
                      }

                      v32 = *(*(&v57 + 1) + 8 * j);
                      v33 = [allParameters objectForKey:v32];
                      if (v33)
                      {
                      }

                      else
                      {
                        v34 = objc_opt_class();
                        uppercaseString2 = [v32 uppercaseString];
                        LOBYTE(v34) = [v34 isRecognizedParameter:uppercaseString2 forProperty:uppercaseString inComponent:v54];

                        if ((v34 & 1) == 0)
                        {
                          v36 = [v15 parameterValueForName:v32];

                          if (v36)
                          {
                            v37 = CDBiCalendarConversionHandle;
                            if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_FAULT))
                            {
                              *buf = 138543618;
                              v74 = v32;
                              v75 = 2114;
                              v76 = v22;
                              _os_log_impl(&dword_1DEBB1000, v37, OS_LOG_TYPE_FAULT, "We have a value for parameter %{public}@ on %{public}@, but the property already has a parameter with that name! -isRecognizedParameter:forProperty:inComponent: may be out of date.", buf, 0x16u);
                            }
                          }

                          else
                          {
                            v38 = [allParameters2 objectForKey:v32];
                            [v15 setParameterValue:v38 forName:v32];
                          }
                        }
                      }
                    }

                    v29 = [allParameters2 countByEnumeratingWithState:&v57 objects:v77 count:16];
                  }

                  while (v29);
                }

                componentCopy = v46;
                v10 = v22;
                i = v51;
                v16 = v48;
              }

LABEL_46:

LABEL_48:
            }

            v50 = [v47 countByEnumeratingWithState:&v65 objects:v79 count:16];
          }

          while (v50);
        }

        else
        {
          v52 = 0;
        }

LABEL_53:
        v8 = v45 + 1;
      }

      while (v45 + 1 != v44);
      v39 = [(NSDictionary *)obj countByEnumeratingWithState:&v69 objects:v80 count:16];
      v44 = v39;
    }

    while (v39);
  }

  v40 = *MEMORY[0x1E69E9840];
}

+ (id)_whitelistedClassesForSecureCoding
{
  if (_whitelistedClassesForSecureCoding_onceToken != -1)
  {
    +[CalItemMetadata _whitelistedClassesForSecureCoding];
  }

  v3 = _whitelistedClassesForSecureCoding_whitelistedClasses;

  return v3;
}

void __53__CalItemMetadata__whitelistedClassesForSecureCoding__block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:5];
  v2 = [v0 setWithArray:{v1, v5, v6, v7, v8}];
  v3 = _whitelistedClassesForSecureCoding_whitelistedClasses;
  _whitelistedClassesForSecureCoding_whitelistedClasses = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (id)dataRepresentationWithExistingMetaData:(id)data
{
  v25 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
  {
    goto LABEL_12;
  }

  v5 = MEMORY[0x1E696ACD0];
  _whitelistedClassesForSecureCoding = [objc_opt_class() _whitelistedClassesForSecureCoding];
  v22 = 0;
  v7 = [v5 unarchivedObjectOfClasses:_whitelistedClassesForSecureCoding fromData:dataCopy error:&v22];
  v8 = v22;

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v7 mutableCopy];

      if (v9)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v10 = CDBiCalendarConversionHandle;
    if (!os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    *buf = 138412290;
    v24 = v7;
    v11 = "Unknown object in external data for item.  Dropping it.  object is %@";
    goto LABEL_10;
  }

  v10 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v24 = v8;
    v11 = "Failed to unarchive external data for item. Error = %@";
LABEL_10:
    _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_DEBUG, v11, buf, 0xCu);
  }

LABEL_11:

LABEL_12:
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
LABEL_13:
  v21 = 0;
  v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v21];
  v13 = v21;
  if (v12)
  {
    [v9 setObject:v12 forKey:@"iCalExtraProperties"];
  }

  else
  {
    v14 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v13;
      _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_ERROR, "Error archiving item metadata: %@", buf, 0xCu);
    }
  }

  v20 = 0;
  v15 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v20];
  v16 = v20;
  if (!v15)
  {
    v17 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&dword_1DEBB1000, v17, OS_LOG_TYPE_ERROR, "Error archiving external representation dictionary: %@", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)metadataWithICSComponent:(id)component
{
  componentCopy = component;
  v5 = [[self alloc] initWithICSComponent:componentCopy];

  return v5;
}

+ (id)metadataWithData:(id)data
{
  v19 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
  {
LABEL_12:
    v9 = 0;
    goto LABEL_15;
  }

  v4 = MEMORY[0x1E696ACD0];
  _whitelistedClassesForSecureCoding = [objc_opt_class() _whitelistedClassesForSecureCoding];
  v16 = 0;
  v6 = [v4 unarchivedObjectOfClasses:_whitelistedClassesForSecureCoding fromData:dataCopy error:&v16];
  v7 = v16;

  if (!v6)
  {
    v12 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_DEBUG, "Failed to unarchive external data to fetch item metadata. Error = %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v8 = [v6 objectForKey:@"iCalExtraProperties"];
  if (v8)
  {
    v15 = v7;
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v15];
    v10 = v15;

    if (!v9)
    {
      v11 = CDBiCalendarConversionHandle;
      if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v10;
        _os_log_impl(&dword_1DEBB1000, v11, OS_LOG_TYPE_DEBUG, "Failed to unarchive extra properties from external data. Error = %@", buf, 0xCu);
      }

      v9 = 0;
    }

    v7 = v10;
  }

  else
  {
    v9 = 0;
  }

LABEL_15:
  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (CalItemMetadata)initWithCoder:(id)coder
{
  v20[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CalItemMetadata;
  v5 = [(CalItemMetadata *)&v19 init];
  if (v5)
  {
    if (initWithCoder__onceToken_0 != -1)
    {
      [CalItemMetadata initWithCoder:];
    }

    v6 = [coderCopy decodeObjectOfClasses:initWithCoder__xPropsClasses forKey:@"CalXProps"];
    unrecognizedProperties = v5->_unrecognizedProperties;
    v5->_unrecognizedProperties = v6;

    if ([coderCopy containsValueForKey:@"CalClassification"])
    {
      v8 = [coderCopy decodeIntForKey:@"CalClassification"];
      v9 = objc_alloc(MEMORY[0x1E69E3CD0]);
      v10 = [MEMORY[0x1E69E3C70] numberWithLong:v8];
      v11 = [v9 initWithValue:v10 type:5005];

      v12 = v5->_unrecognizedProperties;
      if (v12)
      {
        v13 = [(NSDictionary *)v12 mutableCopy];
      }

      else
      {
        v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
      }

      v14 = v13;
      v20[0] = v11;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      [(NSDictionary *)v14 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69E3EC0]];

      v16 = v5->_unrecognizedProperties;
      v5->_unrecognizedProperties = v14;
    }

    if (!v5->_unrecognizedProperties)
    {
      v5->_unrecognizedProperties = MEMORY[0x1E695E0F8];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

void __33__CalItemMetadata_initWithCoder___block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = initWithCoder__xPropsClasses;
  initWithCoder__xPropsClasses = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (void)dataRepresentationWithExistingMetaData:(void *)a1 .cold.1(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = objc_begin_catch(a1);
  v2 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = 138412290;
    v5 = v1;
    _os_log_impl(&dword_1DEBB1000, v2, OS_LOG_TYPE_DEBUG, "exception %@ while trying to unarchive external data for item", &v4, 0xCu);
  }

  objc_end_catch();
  v3 = *MEMORY[0x1E69E9840];
}

@end