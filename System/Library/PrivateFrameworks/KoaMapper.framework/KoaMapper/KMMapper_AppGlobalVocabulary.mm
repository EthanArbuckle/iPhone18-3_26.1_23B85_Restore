@interface KMMapper_AppGlobalVocabulary
- (BOOL)_addItemWithItemId:(id)id fieldType:(int64_t)type values:(id)values error:(id *)error;
- (KMMapper_AppGlobalVocabulary)init;
- (id)_resolveFieldTypeFromIntentSlotName:(id)name;
- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error;
@end

@implementation KMMapper_AppGlobalVocabulary

- (id)_resolveFieldTypeFromIntentSlotName:(id)name
{
  v4 = [name componentsSeparatedByString:@"."];
  if ([v4 count] >= 2)
  {
    v6 = [v4 objectAtIndex:0];
    v7 = [v4 objectAtIndex:1];
    if ([v6 length] && objc_msgSend(v7, "length"))
    {
      v8 = [(NSDictionary *)self->_intentSlotToFieldTypeMap objectForKey:v6];
      v5 = [v8 objectForKey:v7];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_addItemWithItemId:(id)id fieldType:(int64_t)type values:(id)values error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  builder = self->_builder;
  v36 = 0;
  v12 = [(KVItemBuilder *)builder setItemType:14 itemId:id error:&v36];
  v13 = v36;

  if (v12)
  {
    errorCopy = error;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = valuesCopy;
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      while (2)
      {
        v18 = 0;
        v19 = v13;
        do
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v32 + 1) + 8 * v18);
          v21 = self->_builder;
          v31 = v19;
          v22 = [(KVItemBuilder *)v21 addFieldWithType:type value:v20 error:&v31];
          v13 = v31;

          if (!v22)
          {
            KMMapperSetBuilderError(errorCopy, v13);

            goto LABEL_14;
          }

          ++v18;
          v19 = v13;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v23 = v13;

    v24 = self->_builder;
    v30 = v13;
    v25 = [(KVItemBuilder *)v24 buildItemWithError:&v30];
    v13 = v30;

    v26 = v25 != 0;
    if (v25)
    {
      [(NSMutableArray *)self->_items addObject:v25];
    }

    else
    {
      KMMapperSetBuilderError(errorCopy, v13);
    }
  }

  else
  {
    KMMapperSetBuilderError(error, v13);
LABEL_14:
    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error
{
  v116 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  items = self->_items;
  self->_items = v8;

  v58 = objectCopy;
  v10 = [objectCopy arrayValueForKey:*MEMORY[0x277CD4488] expectedObjectsType:objc_opt_class() keyRequired:1 error:error];
  v57 = v10;
  if (v10)
  {
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    obj = v10;
    v54 = [obj countByEnumeratingWithState:&v105 objects:v115 count:16];
    if (v54)
    {
      v56 = *v106;
      v55 = *MEMORY[0x277CD4468];
      v53 = *MEMORY[0x277CD44A0];
      v68 = *MEMORY[0x277CD4478];
      v62 = *MEMORY[0x277CD4498];
      v79 = *MEMORY[0x277CD4480];
      v78 = *MEMORY[0x277CD4470];
      selfCopy = self;
      errorCopy = error;
      do
      {
        v11 = 0;
        do
        {
          if (*v106 != v56)
          {
            objc_enumerationMutation(obj);
          }

          v60 = v11;
          v12 = *(*(&v105 + 1) + 8 * v11);
          v69 = objc_opt_new();
          v13 = [v12 arrayValueForKey:v55 expectedObjectsType:objc_opt_class() keyRequired:1 error:error];
          if (v13)
          {
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v64 = v13;
            v14 = [v64 countByEnumeratingWithState:&v101 objects:v114 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v102;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v102 != v16)
                  {
                    objc_enumerationMutation(v64);
                  }

                  v18 = [(KMMapper_AppGlobalVocabulary *)self _resolveFieldTypeFromIntentSlotName:*(*(&v101 + 1) + 8 * i)];
                  if (v18)
                  {
                    [v69 addObject:v18];
                  }
                }

                v15 = [v64 countByEnumeratingWithState:&v101 objects:v114 count:16];
              }

              while (v15);
            }

            error = errorCopy;
            v19 = [v12 arrayValueForKey:v53 expectedObjectsType:objc_opt_class() keyRequired:1 error:errorCopy];
            if (v19)
            {
              v20 = v19;
              v65 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v97 = 0u;
              v98 = 0u;
              v99 = 0u;
              v100 = 0u;
              v61 = v20;
              v70 = [v61 countByEnumeratingWithState:&v97 objects:v113 count:16];
              if (v70)
              {
                v66 = *v98;
                do
                {
                  for (j = 0; j != v70; ++j)
                  {
                    if (*v98 != v66)
                    {
                      objc_enumerationMutation(v61);
                    }

                    v22 = *(*(&v97 + 1) + 8 * j);
                    v23 = [v22 stringValueForKey:v68 error:error];
                    if ([v23 length])
                    {
                      v74 = j;
                      v24 = [v65 objectForKey:v23];
                      if (!v24)
                      {
                        v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
                        [v24 addObject:v23];
                        [v65 setObject:v24 forKey:v23];
                      }

                      v72 = v23;
                      v76 = [v22 arrayValueForKey:v62 expectedObjectsType:objc_opt_class() keyRequired:1 error:error];
                      if (v76)
                      {
                        v95 = 0u;
                        v96 = 0u;
                        v93 = 0u;
                        v94 = 0u;
                        v25 = [v76 countByEnumeratingWithState:&v93 objects:v112 count:16];
                        if (v25)
                        {
                          v26 = v25;
                          v27 = *v94;
                          do
                          {
                            for (k = 0; k != v26; ++k)
                            {
                              if (*v94 != v27)
                              {
                                objc_enumerationMutation(v76);
                              }

                              v29 = *(*(&v93 + 1) + 8 * k);
                              v30 = [v29 stringValueForKey:v79 error:error];
                              if ([v30 length])
                              {
                                [v24 addObject:v30];
                              }

                              v31 = [v29 arrayValueForKey:v78 expectedObjectsType:objc_opt_class() keyRequired:0 error:error];
                              v89 = 0u;
                              v90 = 0u;
                              v91 = 0u;
                              v92 = 0u;
                              v32 = [v31 countByEnumeratingWithState:&v89 objects:v111 count:16];
                              if (v32)
                              {
                                v33 = v32;
                                v34 = *v90;
                                do
                                {
                                  for (m = 0; m != v33; ++m)
                                  {
                                    if (*v90 != v34)
                                    {
                                      objc_enumerationMutation(v31);
                                    }

                                    v36 = *(*(&v89 + 1) + 8 * m);
                                    if ([v36 length])
                                    {
                                      [v24 addObject:v36];
                                    }
                                  }

                                  v33 = [v31 countByEnumeratingWithState:&v89 objects:v111 count:16];
                                }

                                while (v33);
                              }

                              error = errorCopy;
                            }

                            v26 = [v76 countByEnumeratingWithState:&v93 objects:v112 count:16];
                          }

                          while (v26);
                        }
                      }

                      self = selfCopy;
                      v23 = v72;
                      j = v74;
                    }
                  }

                  v70 = [v61 countByEnumeratingWithState:&v97 objects:v113 count:16];
                }

                while (v70);
              }

              v87 = 0u;
              v88 = 0u;
              v85 = 0u;
              v86 = 0u;
              v37 = v69;
              v71 = [v37 countByEnumeratingWithState:&v85 objects:v110 count:16];
              if (v71)
              {
                v38 = *v86;
                v75 = v37;
                v67 = *v86;
                do
                {
                  v39 = 0;
                  do
                  {
                    if (*v86 != v38)
                    {
                      objc_enumerationMutation(v37);
                    }

                    v73 = v39;
                    v40 = *(*(&v85 + 1) + 8 * v39);
                    v77 = KVFieldTypeFromNumber();
                    v81 = 0u;
                    v82 = 0u;
                    v83 = 0u;
                    v84 = 0u;
                    v41 = v65;
                    v42 = [v41 countByEnumeratingWithState:&v81 objects:v109 count:16];
                    if (v42)
                    {
                      v43 = v42;
                      v44 = *v82;
                      while (2)
                      {
                        for (n = 0; n != v43; ++n)
                        {
                          if (*v82 != v44)
                          {
                            objc_enumerationMutation(v41);
                          }

                          v46 = *(*(&v81 + 1) + 8 * n);
                          v47 = [v41 setValueForKey:v46 expectedObjectsType:objc_opt_class() keyRequired:1 error:error];
                          v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u#%@", v77, v46];
                          v49 = [(KMMapper_AppGlobalVocabulary *)self _addItemWithItemId:v48 fieldType:v77 values:v47 error:error];

                          if (!v49)
                          {

                            v50 = 0;
                            goto LABEL_70;
                          }

                          self = selfCopy;
                        }

                        v43 = [v41 countByEnumeratingWithState:&v81 objects:v109 count:16];
                        if (v43)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    v39 = v73 + 1;
                    v37 = v75;
                    v38 = v67;
                  }

                  while (v73 + 1 != v71);
                  v71 = [v75 countByEnumeratingWithState:&v85 objects:v110 count:16];
                }

                while (v71);
              }
            }
          }

          v11 = v60 + 1;
        }

        while (v60 + 1 != v54);
        v54 = [obj countByEnumeratingWithState:&v105 objects:v115 count:16];
      }

      while (v54);
    }
  }

  v50 = self->_items;
LABEL_70:

  v51 = *MEMORY[0x277D85DE8];

  return v50;
}

- (KMMapper_AppGlobalVocabulary)init
{
  v21[1] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = KMMapper_AppGlobalVocabulary;
  v2 = [(KMMapper_AppGlobalVocabulary *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v20 = v6;
    v18[0] = @"playlistTitle";
    v7 = KVFieldTypeToNumber();
    v19[0] = v7;
    v18[1] = @"musicArtistName";
    v8 = KVFieldTypeToNumber();
    v19[1] = v8;
    v18[2] = @"audiobookTitle";
    v9 = KVFieldTypeToNumber();
    v19[2] = v9;
    v18[3] = @"audiobookAuthor";
    v10 = KVFieldTypeToNumber();
    v19[3] = v10;
    v18[4] = @"showTitle";
    v11 = KVFieldTypeToNumber();
    v19[4] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
    v21[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    intentSlotToFieldTypeMap = v2->_intentSlotToFieldTypeMap;
    v2->_intentSlotToFieldTypeMap = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2;
}

@end