@interface DESMetadataSchema
- (DESMetadataSchema)initWith:(id)with key:(id)key attachments:(id)attachments error:(id *)error;
@end

@implementation DESMetadataSchema

- (DESMetadataSchema)initWith:(id)with key:(id)key attachments:(id)attachments error:(id *)error
{
  v116[1] = *MEMORY[0x277D85DE8];
  withCopy = with;
  keyCopy = key;
  attachmentsCopy = attachments;
  v95.receiver = self;
  v95.super_class = DESMetadataSchema;
  v13 = [(DESMetadataSchema *)&v95 init];
  if (!v13)
  {
    goto LABEL_36;
  }

  v14 = [withCopy objectForKey:keyCopy];
  if (!v14)
  {
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"No schema for metadata key %@, skip encoding.", keyCopy];
    v20 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
    }

    if (!error)
    {
      goto LABEL_31;
    }

    v21 = MEMORY[0x277CCA9B8];
    errorCopy5 = error;
    v115 = *MEMORY[0x277CCA470];
    v116[0] = keyCopy;
    v23 = MEMORY[0x277CBEAC0];
    v24 = v116;
    v25 = &v115;
    goto LABEL_29;
  }

  v15 = 0x277CBE000uLL;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Schema for %@ is not a dictionary.", keyCopy];
    v26 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
    }

    if (!error)
    {
      goto LABEL_31;
    }

    v21 = MEMORY[0x277CCA9B8];
    errorCopy5 = error;
    v113 = *MEMORY[0x277CCA470];
    v114 = keyCopy;
    v23 = MEMORY[0x277CBEAC0];
    v24 = &v114;
    v25 = &v113;
    goto LABEL_29;
  }

  objc_storeStrong(&v13->_key, key);
  v16 = [v14 objectForKey:@"type"];
  v17 = [v16 isEqualToString:@"categorical"];

  if (v17)
  {
    v18 = 1;
  }

  else
  {
    v27 = [v14 objectForKey:@"type"];
    v28 = [v27 isEqualToString:@"numeric"];

    if ((v28 & 1) == 0)
    {
      v39 = [v14 objectForKey:@"type"];
      v40 = [v39 isEqualToString:@"fedstats"];

      if (!error || (v40 & 1) != 0)
      {
        goto LABEL_32;
      }

      keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed schema, type is neither categorical nor numeric for %@.", keyCopy];
      v21 = MEMORY[0x277CCA9B8];
      errorCopy5 = error;
      v111 = *MEMORY[0x277CCA470];
      v112 = keyCopy;
      v23 = MEMORY[0x277CBEAC0];
      v24 = &v112;
      v25 = &v111;
      goto LABEL_29;
    }

    v18 = 0;
  }

  v13->_outputType = v18;
  v29 = [v14 objectForKey:@"buckets"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = [v14 objectForKey:@"buckets"];
    integerValue = [v30 integerValue];

    if (integerValue)
    {
      v32 = [v14 objectForKey:@"buckets"];
      v13->_buckets = [v32 integerValue];

      v33 = [v14 objectForKey:@"description"];
      desc = v13->_desc;
      v13->_desc = v33;

      if (v13->_outputType == 1)
      {
        v35 = [v14 objectForKey:@"dictionary"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          keyCopy = [v14 objectForKey:@"dictionary"];
LABEL_21:
          v37 = [[DESCategoricalMetadataEncoder alloc] initWithSingleSchema:keyCopy];
          if (v37)
          {
            encoder = v13->_encoder;
            v13->_encoder = v37;

LABEL_35:
LABEL_36:
            v42 = v13;
            goto LABEL_37;
          }

          keyCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create CategoricalMetadataEncoder for: %@", keyCopy];
          v58 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
          }

          if (error)
          {
            v87 = MEMORY[0x277CCA9B8];
            v98 = *MEMORY[0x277CCA470];
            v99 = keyCopy2;
            [*(v15 + 2752) dictionaryWithObjects:&v99 forKeys:&v98 count:1];
            v60 = v59 = error;
            *v59 = [v87 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2007 userInfo:v60];
          }

          goto LABEL_30;
        }

        v46 = [v14 objectForKey:@"dictionary_path"];
        objc_opt_class();
        v47 = objc_opt_isKindOfClass();

        if (v47)
        {
          keyCopy2 = [v14 objectForKey:@"dictionary_path"];
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          obj = attachmentsCopy;
          keyCopy = [obj countByEnumeratingWithState:&v91 objects:v108 count:16];
          if (!keyCopy)
          {
LABEL_66:

            goto LABEL_21;
          }

          errorCopy4 = error;
          v84 = attachmentsCopy;
          v86 = *v92;
LABEL_41:
          v48 = 0;
          while (1)
          {
            if (*v92 != v86)
            {
              objc_enumerationMutation(obj);
            }

            v49 = *(*(&v91 + 1) + 8 * v48);
            lastPathComponent = [v49 lastPathComponent];
            v51 = [lastPathComponent isEqualToString:keyCopy2];

            if (v51)
            {
              break;
            }

            if (keyCopy == ++v48)
            {
              keyCopy = [obj countByEnumeratingWithState:&v91 objects:v108 count:16];
              if (keyCopy)
              {
                goto LABEL_41;
              }

              error = errorCopy4;
              attachmentsCopy = v84;
              goto LABEL_65;
            }
          }

          v90 = 0;
          v61 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v49 options:1 error:&v90];
          keyCopy = v90;
          v88 = v61;
          if (!v61)
          {
            v88 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed schema, unreadable dictionary_path %@ for %@, error: %@", keyCopy2, keyCopy, keyCopy];
            v67 = +[DESLogging coreChannel];
            attachmentsCopy = v84;
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
            }

            if (!errorCopy4)
            {
              goto LABEL_83;
            }

            v68 = MEMORY[0x277CCA9B8];
            v69 = *MEMORY[0x277CCA470];
            v106[0] = *MEMORY[0x277CCA7E8];
            v106[1] = v69;
            v107[0] = keyCopy;
            v107[1] = v88;
            v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:2];
            *errorCopy4 = [v68 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2007 userInfo:v70];
LABEL_82:

LABEL_83:
            goto LABEL_30;
          }

          v89 = keyCopy;
          v62 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v61 options:0 error:&v89];
          v63 = v89;

          objc_opt_class();
          attachmentsCopy = v84;
          v82 = v63;
          if (objc_opt_isKindOfClass())
          {
            v64 = [v62 objectForKey:@"dictionary"];
            objc_opt_class();
            v65 = objc_opt_isKindOfClass();

            v66 = v62;
            error = errorCopy4;
            if (v65)
            {
              keyCopy = [v66 objectForKey:@"dictionary"];

              obj = v63;
LABEL_65:
              v15 = 0x277CBE000;
              goto LABEL_66;
            }

            v81 = v66;
            v77 = v63;
            v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed schema, unparsable dictionary read from dictionary_path %@ for %@, error: %@", keyCopy2, keyCopy, v63];
            v78 = +[DESLogging coreChannel];
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
            }

            if (!errorCopy4)
            {
              goto LABEL_81;
            }

            v73 = MEMORY[0x277CCA9B8];
            v102 = *MEMORY[0x277CCA470];
            v103 = v71;
            v80 = v71;
            v74 = MEMORY[0x277CBEAC0];
            v75 = &v103;
            v76 = &v102;
          }

          else
          {
            v81 = v62;
            v71 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed schema, unparsable dictionary_path %@ for %@, error: %@", keyCopy2, keyCopy, v63];
            v72 = +[DESLogging coreChannel];
            error = errorCopy4;
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
            }

            if (!errorCopy4)
            {
              v77 = v82;
              goto LABEL_81;
            }

            v73 = MEMORY[0x277CCA9B8];
            v104 = *MEMORY[0x277CCA470];
            v105 = v71;
            v80 = v71;
            v74 = MEMORY[0x277CBEAC0];
            v75 = &v105;
            v76 = &v104;
          }

          v79 = [v74 dictionaryWithObjects:v75 forKeys:v76 count:1];
          *error = [v73 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2007 userInfo:v79];

          v77 = v82;
          v71 = v80;
LABEL_81:

          keyCopy = v77;
          v70 = v81;
          goto LABEL_82;
        }

        keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed schema, neither dictionary nor dictionary_path has the correct format for: %@", keyCopy];
        v57 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
        }

        if (!error)
        {
          goto LABEL_31;
        }

        v53 = MEMORY[0x277CCA9B8];
        v100 = *MEMORY[0x277CCA470];
        v101 = keyCopy;
        v54 = MEMORY[0x277CBEAC0];
        v55 = &v101;
        v56 = &v100;
      }

      else
      {
        v43 = objc_alloc_init(DESNumericMetadataEncoder);
        if (v43)
        {
          keyCopy = v13->_encoder;
          v13->_encoder = v43;
          goto LABEL_35;
        }

        keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create NumericMetadataEncoder for: %@", keyCopy];
        v52 = +[DESLogging coreChannel];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          +[DESDediscoUploader uploadViaDedisco:jsonResult:recipe:bundleIdentifier:submissionCount:error:];
        }

        if (!error)
        {
          goto LABEL_31;
        }

        v53 = MEMORY[0x277CCA9B8];
        v96 = *MEMORY[0x277CCA470];
        v97 = keyCopy;
        v54 = MEMORY[0x277CBEAC0];
        v55 = &v97;
        v56 = &v96;
      }

      keyCopy2 = [v54 dictionaryWithObjects:v55 forKeys:v56 count:1];
      *error = [v53 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2007 userInfo:keyCopy2];
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }
  }

  else
  {
  }

  if (error)
  {
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed schema, buckets %ld is <= 0 for %@.", v13->_buckets, keyCopy];
    v21 = MEMORY[0x277CCA9B8];
    errorCopy5 = error;
    v109 = *MEMORY[0x277CCA470];
    v110 = keyCopy;
    v23 = MEMORY[0x277CBEAC0];
    v24 = &v110;
    v25 = &v109;
LABEL_29:
    keyCopy2 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
    *errorCopy5 = [v21 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:2007 userInfo:keyCopy2];
    goto LABEL_30;
  }

LABEL_32:

  v42 = 0;
LABEL_37:

  v44 = *MEMORY[0x277D85DE8];
  return v42;
}

@end