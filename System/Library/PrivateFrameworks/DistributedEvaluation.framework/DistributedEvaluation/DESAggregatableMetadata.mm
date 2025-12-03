@interface DESAggregatableMetadata
+ (id)encodeMetadata:(id)metadata recipe:(id)recipe error:(id *)error;
@end

@implementation DESAggregatableMetadata

+ (id)encodeMetadata:(id)metadata recipe:(id)recipe error:(id *)error
{
  v90[2] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  recipeCopy = recipe;
  v89[0] = @"encodedCategoricalMetadata";
  v89[1] = @"encodedNumericMetadata";
  v73 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v74 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v90[0] = v73;
  v90[1] = v74;
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:2];
  if (![metadataCopy count])
  {
    v61 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      recipeID = [recipeCopy recipeID];
      *buf = 138412290;
      v83 = recipeID;
      _os_log_impl(&dword_248FF7000, v61, OS_LOG_TYPE_INFO, "No metadata for recipe %@", buf, 0xCu);
    }

    goto LABEL_56;
  }

  if (([recipeCopy useAggregatableMetadata] & 1) == 0)
  {
    v61 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      recipeID2 = [recipeCopy recipeID];
      *buf = 138412290;
      v83 = recipeID2;
      _os_log_impl(&dword_248FF7000, v61, OS_LOG_TYPE_INFO, "Recipe %@ is not configured to use aggregatable metadata.", buf, 0xCu);
    }

LABEL_56:

    v64 = v70;
    v60 = v70;
    goto LABEL_61;
  }

  recipeUserInfo = [recipeCopy recipeUserInfo];
  v76 = [recipeUserInfo objectForKeyedSubscript:@"MetadataEncoding"];

  allKeys = [v76 allKeys];
  v10 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v78 objects:v88 count:16];
  if (v11)
  {
    v75 = *v79;
    v68 = *MEMORY[0x277CCA7D8];
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v79 != v75)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v78 + 1) + 8 * v12);
        v14 = [DESMetadataSchema alloc];
        attachments = [recipeCopy attachments];
        v77 = 0;
        v16 = [(DESMetadataSchema *)v14 initWith:v76 key:v13 attachments:attachments error:&v77];
        v17 = v77;

        if (v16)
        {
          v18 = [metadataCopy valueForKeyPath:v13];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v20 = [metadataCopy valueForKeyPath:v13];
            v21 = +[DESLogging coreChannel];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              recipeID3 = [recipeCopy recipeID];
              *buf = 138412802;
              v83 = v20;
              v84 = 2112;
              v85 = v13;
              v86 = 2112;
              v87 = recipeID3;
              _os_log_debug_impl(&dword_248FF7000, v21, OS_LOG_TYPE_DEBUG, "Encoding string value %@ for metadata entry %@, recipe %@", buf, 0x20u);
            }

            encoder = [(DESMetadataSchema *)v16 encoder];
            v23 = [encoder encodeString:v20 toLength:{-[DESMetadataSchema buckets](v16, "buckets")}];
          }

          else
          {
            v24 = [metadataCopy valueForKeyPath:v13];
            objc_opt_class();
            v25 = objc_opt_isKindOfClass();

            if (v25)
            {
              v26 = [metadataCopy valueForKeyPath:v13];
              v27 = +[DESLogging coreChannel];
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                recipeID4 = [recipeCopy recipeID];
                *buf = 138412802;
                v83 = v26;
                v84 = 2112;
                v85 = v13;
                v86 = 2112;
                v87 = recipeID4;
                _os_log_debug_impl(&dword_248FF7000, v27, OS_LOG_TYPE_DEBUG, "Encoding numeric value %@ for metadata entry %@, recipe %@", buf, 0x20u);
              }

              encoder2 = [(DESMetadataSchema *)v16 encoder];
              v23 = [encoder2 encodeNumber:v26 toLength:{-[DESMetadataSchema buckets](v16, "buckets")}];
            }

            else
            {
              v29 = [metadataCopy valueForKeyPath:v13];
              objc_opt_class();
              v30 = objc_opt_isKindOfClass();

              if (v30)
              {
                v71 = [metadataCopy valueForKeyPath:v13];
                if ([v71 count])
                {
                  firstObject = [v71 firstObject];
                  objc_opt_class();
                  v32 = objc_opt_isKindOfClass();

                  if (v32)
                  {
                    encoder4 = [metadataCopy valueForKeyPath:v13];
                    v34 = +[DESLogging coreChannel];
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                    {
                      recipeID5 = [recipeCopy recipeID];
                      *buf = 138412802;
                      v83 = encoder4;
                      v84 = 2112;
                      v85 = v13;
                      v86 = 2112;
                      v87 = recipeID5;
                      _os_log_debug_impl(&dword_248FF7000, v34, OS_LOG_TYPE_DEBUG, "Encoding string vector %@ for metadata entry %@, recipe %@", buf, 0x20u);
                    }

                    encoder3 = [(DESMetadataSchema *)v16 encoder];
                    v36 = [encoder3 encodeStringVector:encoder4 toLength:{-[DESMetadataSchema buckets](v16, "buckets")}];
                  }

                  else
                  {
                    firstObject2 = [v71 firstObject];
                    objc_opt_class();
                    v48 = objc_opt_isKindOfClass();

                    if (v48)
                    {
                      encoder4 = [metadataCopy valueForKeyPath:v13];
                      v49 = +[DESLogging coreChannel];
                      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                      {
                        recipeID6 = [recipeCopy recipeID];
                        *buf = 138412802;
                        v83 = encoder4;
                        v84 = 2112;
                        v85 = v13;
                        v86 = 2112;
                        v87 = recipeID6;
                        _os_log_debug_impl(&dword_248FF7000, v49, OS_LOG_TYPE_DEBUG, "Encoding numeric vector %@ for metadata entry %@, recipe %@", buf, 0x20u);
                      }

                      encoder3 = [(DESMetadataSchema *)v16 encoder];
                      v36 = [encoder3 encodeNumberVector:encoder4 toLength:{-[DESMetadataSchema buckets](v16, "buckets")}];
                    }

                    else
                    {
                      v51 = MEMORY[0x277CCACA8];
                      recipeID7 = [recipeCopy recipeID];
                      encoder4 = [v51 stringWithFormat:@"Array data type of %@ is not supported by schema for recipe %@, must be either string or number.", v13, recipeID7];

                      v53 = +[DESLogging coreChannel];
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v83 = encoder4;
                        _os_log_error_impl(&dword_248FF7000, v53, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
                      }

                      encoder3 = [(DESMetadataSchema *)v16 encoder];
                      v36 = [encoder3 zeroWithLength:{-[DESMetadataSchema buckets](v16, "buckets")}];
                    }
                  }

                  v23 = v36;
                }

                else
                {
                  v44 = +[DESLogging coreChannel];
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                  {
                    recipeID8 = [recipeCopy recipeID];
                    *buf = 138412546;
                    v83 = v13;
                    v84 = 2112;
                    v85 = recipeID8;
                    _os_log_debug_impl(&dword_248FF7000, v44, OS_LOG_TYPE_DEBUG, "Zero encode empty vector for metadata entry %@, recipe %@", buf, 0x16u);
                  }

                  encoder4 = [(DESMetadataSchema *)v16 encoder];
                  v23 = [encoder4 zeroWithLength:{-[DESMetadataSchema buckets](v16, "buckets")}];
                }
              }

              else
              {
                v37 = [metadataCopy valueForKeyPath:v13];
                v38 = v37 == 0;

                if (v38)
                {
                  v45 = +[DESLogging coreChannel];
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
                  {
                    recipeID9 = [recipeCopy recipeID];
                    *buf = 138412546;
                    v83 = v13;
                    v84 = 2112;
                    v85 = recipeID9;
                    _os_log_debug_impl(&dword_248FF7000, v45, OS_LOG_TYPE_DEBUG, "Metadata %@ is specified in schema but missing from user data for recipe %@", buf, 0x16u);
                  }

                  encoder5 = [(DESMetadataSchema *)v16 encoder];
                  v23 = [encoder5 zeroWithLength:{-[DESMetadataSchema buckets](v16, "buckets")}];
                }

                else
                {
                  v39 = MEMORY[0x277CCACA8];
                  recipeID10 = [recipeCopy recipeID];
                  v41 = [v39 stringWithFormat:@"Data type of %@ is not supported by schema for recipe %@, must be either string or number.", v13, recipeID10];

                  v42 = +[DESLogging coreChannel];
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v83 = v41;
                    _os_log_error_impl(&dword_248FF7000, v42, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
                  }

                  encoder6 = [(DESMetadataSchema *)v16 encoder];
                  v23 = [encoder6 zeroWithLength:{-[DESMetadataSchema buckets](v16, "buckets")}];
                }
              }
            }
          }

          if ([(DESMetadataSchema *)v16 outputType]== 1)
          {
            v54 = v73;
          }

          else
          {
            v54 = v74;
          }

          [v54 appendData:v23];
        }

        else if (v17)
        {
          if (error)
          {
            v65 = v17;
            *error = v17;
          }

          v60 = 0;
          goto LABEL_60;
        }

        ++v12;
      }

      while (v11 != v12);
      v11 = [obj countByEnumeratingWithState:&v78 objects:v88 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v60 = v70;
LABEL_60:

  v64 = v70;
LABEL_61:

  v66 = *MEMORY[0x277D85DE8];

  return v60;
}

@end