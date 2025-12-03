@interface MLRTrialDediscoRecipe
- (MLRTrialDediscoRecipe)initWithAssetURL:(id)l configOverride:(id)override error:(id *)error;
- (id)description;
- (id)mlrDediscoMetadata;
@end

@implementation MLRTrialDediscoRecipe

- (MLRTrialDediscoRecipe)initWithAssetURL:(id)l configOverride:(id)override error:(id *)error
{
  v77[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  overrideCopy = override;
  if (!(lCopy | overrideCopy))
  {
    v58 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"assetURL and configOverride cannot be both nil" userInfo:0];
    objc_exception_throw(v58);
  }

  v10 = overrideCopy;
  v67.receiver = self;
  v67.super_class = MLRTrialDediscoRecipe;
  v11 = [(MLRTrialDediscoRecipe *)&v67 init];
  if (v11)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if (lCopy)
    {
      errorCopy = error;
      v66 = 0;
      v13 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:8 error:&v66];
      v14 = v66;
      if (v13)
      {
        v65 = v14;
        v15 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v13 options:0 error:&v65];
        v16 = v65;

        if (v15)
        {
          v61 = v16;
          v17 = [v15 objectForKeyedSubscript:@"dediscoConfig"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v19 = [v15 objectForKeyedSubscript:@"dediscoConfig"];
            v20 = [v19 mutableCopy];

            dictionary = v20;
            v21 = v61;
            error = errorCopy;
            if (!v10)
            {
LABEL_12:
              v23 = [dictionary objectForKeyedSubscript:@"encodingSchema"];
              encodingSchema = v11->_encodingSchema;
              v11->_encodingSchema = v23;

              v25 = v11->_encodingSchema;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v26 = [dictionary objectForKeyedSubscript:@"baseKey"];
                baseKeyFormat = v11->_baseKeyFormat;
                v11->_baseKeyFormat = v26;

                v28 = v11->_baseKeyFormat;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v29 = [dictionary objectForKeyedSubscript:@"DifferentialPrivacyParameters"];
                  dpConfig = v11->_dpConfig;
                  v11->_dpConfig = v29;

                  v31 = [dictionary objectForKeyedSubscript:@"DediscoTaskConfig"];
                  dediscoTaskConfig = v11->_dediscoTaskConfig;
                  v11->_dediscoTaskConfig = v31;

                  v22 = v11;
                  v33 = v21;
LABEL_29:

                  goto LABEL_30;
                }

                v64 = dictionary;
                v34 = MEMORY[0x277CCA9B8];
                v35 = v21;
                v36 = *MEMORY[0x277D05640];
                v68 = *MEMORY[0x277CCA450];
                v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"key=%@ is of wrong type, value=%@", @"baseKey", v11->_baseKeyFormat];
                v69 = v37;
                v38 = MEMORY[0x277CBEAC0];
                v39 = &v69;
                v40 = &v68;
              }

              else
              {
                v64 = dictionary;
                v34 = MEMORY[0x277CCA9B8];
                v35 = v21;
                v36 = *MEMORY[0x277D05640];
                v70 = *MEMORY[0x277CCA450];
                v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"key=%@ is of wrong type, value=%@", @"encodingSchema", v11->_encodingSchema];
                v71 = v37;
                v38 = MEMORY[0x277CBEAC0];
                v39 = &v71;
                v40 = &v70;
              }

              v49 = [v38 dictionaryWithObjects:v39 forKeys:v40 count:1];
              v33 = [v34 errorWithDomain:v36 code:5007 userInfo:v49];

              if (error)
              {
                v50 = v33;
                v22 = 0;
                *error = v33;
              }

              else
              {
                v22 = 0;
              }

              dictionary = v64;
              goto LABEL_29;
            }

LABEL_11:
            [dictionary addEntriesFromDictionary:v10];
            goto LABEL_12;
          }

          v60 = MEMORY[0x277CCA9B8];
          v59 = *MEMORY[0x277D05640];
          v72 = *MEMORY[0x277CCA450];
          v51 = MEMORY[0x277CCACA8];
          v52 = [v15 objectForKeyedSubscript:@"dediscoConfig"];
          v53 = [v51 stringWithFormat:@"key=%@ is of wrong type, value=%@", @"dediscoConfig", v52];
          v73 = v53;
          v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
          v33 = [v60 errorWithDomain:v59 code:5007 userInfo:v54];
        }

        else
        {
          v62 = MEMORY[0x277CCA9B8];
          v46 = *MEMORY[0x277D05640];
          v74[0] = *MEMORY[0x277CCA450];
          lCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to decode recipe from path=%@", lCopy];
          v74[1] = *MEMORY[0x277CCA7E8];
          v75[0] = lCopy;
          v75[1] = v16;
          v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:2];
          v33 = [v62 errorWithDomain:v46 code:5007 userInfo:v48];
        }

        if (errorCopy)
        {
          v55 = v33;
          *errorCopy = v33;
        }
      }

      else
      {
        v41 = MEMORY[0x277CCA9B8];
        v42 = *MEMORY[0x277D05640];
        v76[0] = *MEMORY[0x277CCA450];
        lCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to read recipe with path=%@", lCopy];
        v76[1] = *MEMORY[0x277CCA7E8];
        v77[0] = lCopy2;
        v77[1] = v14;
        v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
        v33 = [v41 errorWithDomain:v42 code:5007 userInfo:v44];

        if (errorCopy)
        {
          v45 = v33;
          v22 = 0;
          *errorCopy = v33;
          goto LABEL_29;
        }
      }

      v22 = 0;
      goto LABEL_29;
    }

    v21 = 0;
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v22 = 0;
LABEL_30:

  v56 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  baseKeyFormat = [(MLRTrialDediscoRecipe *)self baseKeyFormat];
  encodingSchema = [(MLRTrialDediscoRecipe *)self encodingSchema];
  dpConfig = [(MLRTrialDediscoRecipe *)self dpConfig];
  dediscoTaskConfig = [(MLRTrialDediscoRecipe *)self dediscoTaskConfig];
  v10 = [v3 stringWithFormat:@"%@\n(%@, %@, %@, %@)\n", v5, baseKeyFormat, encodingSchema, dpConfig, dediscoTaskConfig];

  return v10;
}

- (id)mlrDediscoMetadata
{
  dpConfig = [(MLRTrialDediscoRecipe *)self dpConfig];

  if (dpConfig)
  {
    dediscoTaskConfig = [(MLRTrialDediscoRecipe *)self dediscoTaskConfig];

    if (dediscoTaskConfig)
    {
      v5 = MEMORY[0x277CBEB38];
      dpConfig2 = [(MLRTrialDediscoRecipe *)self dpConfig];
      dpConfig = [v5 dictionaryWithDictionary:dpConfig2];

      dediscoTaskConfig2 = [(MLRTrialDediscoRecipe *)self dediscoTaskConfig];
      [dpConfig setObject:dediscoTaskConfig2 forKeyedSubscript:@"DediscoTaskConfig"];
    }

    else
    {
      dpConfig = [(MLRTrialDediscoRecipe *)self dpConfig];
    }
  }

  return dpConfig;
}

@end