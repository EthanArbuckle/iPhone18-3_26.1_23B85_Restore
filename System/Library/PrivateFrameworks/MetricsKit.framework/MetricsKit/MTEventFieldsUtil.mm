@interface MTEventFieldsUtil
+ (id)applyFieldsMap:(id)map data:(id)data sectionName:(id)name error:(id *)error;
+ (id)mapForSectionName:(id)name inFieldsMap:(id)map;
@end

@implementation MTEventFieldsUtil

+ (id)mapForSectionName:(id)name inFieldsMap:(id)map
{
  nameCopy = name;
  mapCopy = map;
  v7 = nameCopy;
  v8 = [mapCopy valueForKeyPath:v7];
  v9 = v7;
  if (!v8)
  {
    v9 = [@"custom." stringByAppendingString:v7];

    v8 = [mapCopy valueForKeyPath:v9];
  }

  return v8;
}

+ (id)applyFieldsMap:(id)map data:(id)data sectionName:(id)name error:(id *)error
{
  v89 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  dataCopy = data;
  nameCopy = name;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [self mapForSectionName:nameCopy inFieldsMap:mapCopy];
    if (v25)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v66 = nameCopy;
        v67 = mapCopy;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v65 = v25;
        v26 = v25;
        v27 = [v26 countByEnumeratingWithState:&v79 objects:v88 count:16];
        if (!v27)
        {
          goto LABEL_44;
        }

        v28 = v27;
        v29 = *v80;
        v30 = 0x277CCA000uLL;
        v31 = 0x277CBE000uLL;
        v69 = v26;
        while (1)
        {
          v32 = 0;
          v70 = v28;
          do
          {
            if (*v80 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v33 = *(*(&v79 + 1) + 8 * v32);
            v34 = [v26 objectForKeyedSubscript:v33];
            v35 = *(v30 + 3240);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v87 = v34;
              v36 = [*(v31 + 2656) arrayWithObjects:&v87 count:1];
              if (!v36)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v37 = *(v31 + 2656);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || (v36 = v34) == 0)
              {
LABEL_23:
                v39 = 0;
                goto LABEL_26;
              }
            }

            v38 = v29;
            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            v39 = v36;
            v40 = [v39 countByEnumeratingWithState:&v75 objects:v86 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v76;
              while (2)
              {
                for (i = 0; i != v41; ++i)
                {
                  if (*v76 != v42)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v44 = [dataCopy mt_nullableValueForKeyPathExt:*(*(&v75 + 1) + 8 * i)];
                  if (v44)
                  {
                    v45 = v44;
                    [dictionary setObject:v44 forKey:v33];

                    goto LABEL_25;
                  }
                }

                v41 = [v39 countByEnumeratingWithState:&v75 objects:v86 count:16];
                if (v41)
                {
                  continue;
                }

                break;
              }
            }

LABEL_25:

            v29 = v38;
            v26 = v69;
            v28 = v70;
            v30 = 0x277CCA000;
            v31 = 0x277CBE000;
LABEL_26:

            ++v32;
          }

          while (v32 != v28);
          v28 = [v26 countByEnumeratingWithState:&v79 objects:v88 count:16];
          if (!v28)
          {
            goto LABEL_44;
          }
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v66 = nameCopy;
        v67 = mapCopy;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v65 = v25;
        v53 = v25;
        v54 = [v53 countByEnumeratingWithState:&v71 objects:v85 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = *v72;
          do
          {
            for (j = 0; j != v55; ++j)
            {
              if (*v72 != v56)
              {
                objc_enumerationMutation(v53);
              }

              v58 = *(*(&v71 + 1) + 8 * j);
              v59 = [dataCopy mt_nullableValueForKey:v58];
              if (v59)
              {
                [dictionary setObject:v59 forKey:v58];
              }
            }

            v55 = [v53 countByEnumeratingWithState:&v71 objects:v85 count:16];
          }

          while (v55);
        }

LABEL_44:
        v25 = v65;

        v60 = dictionary;
        nameCopy = v66;
        if (![dictionary count])
        {
          v61 = MTMetricsKitOSLog();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v84 = v66;
            _os_log_impl(&dword_258F4B000, v61, OS_LOG_TYPE_ERROR, "MetricsKit: No matched fields found in data for fieldsMap section %@", buf, 0xCu);
          }
        }

        v46 = [dictionary copy];
        mapCopy = v67;
      }

      else
      {
        if (error)
        {
          MTError(106, @"fieldsMap section %@ in config sources is not valid", v47, v48, v49, v50, v51, v52, nameCopy);
          *error = v46 = 0;
        }

        else
        {
          v46 = 0;
        }

        v60 = dictionary;
      }
    }

    else if (error)
    {
      MTError(105, @"fieldsMap section %@ is not found in config sources", v19, v20, v21, v22, v23, v24, nameCopy);
      *error = v46 = 0;
    }

    else
    {
      v46 = 0;
    }
  }

  else if (error)
  {
    MTError(104, @"fieldsMap in config sources is not a dictionary object", v13, v14, v15, v16, v17, v18, v64);
    *error = v46 = 0;
  }

  else
  {
    v46 = 0;
  }

  v62 = *MEMORY[0x277D85DE8];

  return v46;
}

@end