@interface HDFHIRResourceSearchSet
+ (id)searchSetWithFHIRJSONObject:(id)object serverBaseURL:(id)l error:(id *)error;
- (id)_initWithEntries:(id)entries serverBaseURL:(id)l pageURL:(id)rL nextPageURL:(id)uRL;
@end

@implementation HDFHIRResourceSearchSet

- (id)_initWithEntries:(id)entries serverBaseURL:(id)l pageURL:(id)rL nextPageURL:(id)uRL
{
  entriesCopy = entries;
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  v24.receiver = self;
  v24.super_class = HDFHIRResourceSearchSet;
  v14 = [(HDFHIRResourceSearchSet *)&v24 init];
  if (v14)
  {
    v15 = [entriesCopy copy];
    entries = v14->_entries;
    v14->_entries = v15;

    v17 = [lCopy copy];
    serverBaseURL = v14->_serverBaseURL;
    v14->_serverBaseURL = v17;

    v19 = [rLCopy copy];
    pageURL = v14->_pageURL;
    v14->_pageURL = v19;

    v21 = [uRLCopy copy];
    nextPageURL = v14->_nextPageURL;
    v14->_nextPageURL = v21;
  }

  return v14;
}

+ (id)searchSetWithFHIRJSONObject:(id)object serverBaseURL:(id)l error:(id *)error
{
  v104 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  lCopy = l;
  if (!lCopy)
  {
    [HDFHIRResourceSearchSet searchSetWithFHIRJSONObject:a2 serverBaseURL:self error:?];
  }

  detectedResourceType = [objectCopy detectedResourceType];
  v11 = [detectedResourceType isEqualToString:@"Bundle"];

  if ((v11 & 1) == 0)
  {
    v39 = MEMORY[0x277CCA9B8];
    detectedResourceType2 = [objectCopy detectedResourceType];
    [v39 hk_assignError:error code:3 format:{@"searchSetWithFHIRJSONObject needs Bundle resource, but got %@", detectedResourceType2}];

    v41 = 0;
    goto LABEL_67;
  }

  selfCopy = self;
  sourceURL = [objectCopy sourceURL];
  jSONObject = [objectCopy JSONObject];
  v14 = [jSONObject hk_safeArrayIfExistsForKeyPath:@"link" error:0];

  errorCopy = error;
  v77 = objectCopy;
  v72 = v14;
  if (!v14)
  {
    v17 = 0;
    goto LABEL_29;
  }

  v79 = sourceURL;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v94 objects:v103 count:16];
  if (!v15)
  {
    v17 = 0;
    goto LABEL_28;
  }

  v16 = v15;
  v17 = 0;
  v18 = *v95;
  v19 = @"url";
  v20 = 0x277CCA000uLL;
  v21 = @"link.url";
  do
  {
    v22 = 0;
    v81 = v16;
    do
    {
      if (*v95 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v94 + 1) + 8 * v22);
      v24 = [v23 objectForKeyedSubscript:v19];
      v25 = *(v20 + 3240);
      objc_opt_class();
      v26 = HKSafeObject();

      if (v26)
      {
        v27 = [lCopy hrs_URLByExpandingReference:v26];
        if (v27)
        {
          v28 = v18;
          v29 = v21;
          v30 = v19;
          v31 = v20;
          v32 = [v23 valueForKeyPath:@"relation"];
          if ([v32 isEqual:@"self"])
          {
            v33 = v79;
            v79 = v27;
            goto LABEL_19;
          }

          v36 = [v32 isEqual:@"next"];
          v37 = v17;
          v33 = v17;
          v17 = v27;
          if (v36)
          {
LABEL_19:
            v38 = v27;

            v37 = v17;
          }

          v17 = v37;

          v20 = v31;
          v19 = v30;
          v21 = v29;
          v18 = v28;
          v16 = v81;
        }

        else
        {
          _HKInitializeLogging();
          v35 = *MEMORY[0x277CCC2C0];
          if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
          {
            [(HDFHIRResourceSearchSet *)v101 searchSetWithFHIRJSONObject:v35 serverBaseURL:v26 error:&v102];
          }
        }

        goto LABEL_22;
      }

      _HKInitializeLogging();
      v34 = *MEMORY[0x277CCC2C0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_251CC8000, v34, OS_LOG_TYPE_DEFAULT, "Ignoring link entry missing its url in Bundle", buf, 2u);
      }

LABEL_22:

      ++v22;
    }

    while (v16 != v22);
    v16 = [obj countByEnumeratingWithState:&v94 objects:v103 count:16];
  }

  while (v16);
LABEL_28:

  error = errorCopy;
  objectCopy = v77;
  sourceURL = v79;
  v14 = v72;
LABEL_29:
  array = [MEMORY[0x277CBEB18] array];
  jSONObject2 = [objectCopy JSONObject];
  v93 = 0;
  v44 = [jSONObject2 hk_safeArrayForKeyPath:@"entry" error:&v93];
  v71 = v93;

  if (v44)
  {
    v73 = array;
    v80 = sourceURL;
    date = [MEMORY[0x277CBEAA8] date];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v69 = v44;
    v74 = v44;
    v82 = [v74 countByEnumeratingWithState:&v89 objects:v100 count:16];
    if (v82)
    {
      v78 = *v90;
      while (2)
      {
        for (i = 0; i != v82; ++i)
        {
          if (*v90 != v78)
          {
            objc_enumerationMutation(v74);
          }

          v46 = *(*(&v89 + 1) + 8 * i);
          objc_opt_class();
          v47 = HKSafeObject();

          if (!v47)
          {

            v41 = 0;
            sourceURL = v80;
            v14 = v72;
            array = v73;
            v44 = v69;
            goto LABEL_66;
          }

          v48 = [v46 hk_safeStringIfExistsForKeyPath:@"fullUrl" error:0];
          if (v48)
          {
            v49 = [MEMORY[0x277CBEBC0] URLWithString:v48];
          }

          else
          {
            v49 = 0;
          }

          v88 = 0;
          v50 = [v46 hk_safeDictionaryForKeyPath:@"resource" error:&v88];
          v51 = v88;
          if (v50)
          {
            v52 = MEMORY[0x277D12380];
            fHIRVersion = [objectCopy FHIRVersion];
            obja = v49;
            if (v49)
            {
              v87 = v51;
              v54 = &v87;
              [v52 resourceObjectWithJSONObject:v50 sourceURL:v49 FHIRVersion:fHIRVersion receivedDate:date extractionHints:0 error:&v87];
            }

            else
            {
              v86 = v51;
              v54 = &v86;
              [v52 resourceObjectWithJSONObject:v50 serverBaseURL:lCopy FHIRVersion:fHIRVersion receivedDate:date error:&v86];
            }
            v57 = ;
            v56 = *v54;

            if (v57)
            {
              [v73 addObject:v57];
              objectCopy = v77;
            }

            else
            {
              _HKInitializeLogging();
              v58 = *MEMORY[0x277CCC2C0];
              objectCopy = v77;
              if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v99 = v56;
                _os_log_error_impl(&dword_251CC8000, v58, OS_LOG_TYPE_ERROR, "Failed to create resource object from search set entry: %@", buf, 0xCu);
              }
            }

            v49 = obja;
          }

          else
          {
            _HKInitializeLogging();
            v55 = *MEMORY[0x277CCC2C0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2C0], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v99 = v51;
              _os_log_impl(&dword_251CC8000, v55, OS_LOG_TYPE_DEFAULT, "No resource in search set entry: %@", buf, 0xCu);
            }

            v56 = v51;
          }
        }

        v82 = [v74 countByEnumeratingWithState:&v89 objects:v100 count:16];
        if (v82)
        {
          continue;
        }

        break;
      }
    }

    sourceURL = v80;
    v14 = v72;
    array = v73;
    v44 = v69;
LABEL_63:
    v41 = [[selfCopy alloc] _initWithEntries:array serverBaseURL:lCopy pageURL:sourceURL nextPageURL:v17];
  }

  else
  {
    jSONObject3 = [objectCopy JSONObject];
    v60 = [jSONObject3 objectForKeyedSubscript:@"entry"];

    _HKInitializeLogging();
    v61 = *MEMORY[0x277CCC2C0];
    v62 = *MEMORY[0x277CCC2C0];
    if (!v60)
    {
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v65 = v61;
        v66 = HKSensitiveLogItem();
        *buf = 138412290;
        v99 = v66;
        _os_log_impl(&dword_251CC8000, v65, OS_LOG_TYPE_DEFAULT, "There's no entry key on Bundle obtained from %@", buf, 0xCu);
      }

      goto LABEL_63;
    }

    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      [HDFHIRResourceSearchSet searchSetWithFHIRJSONObject:v61 serverBaseURL:? error:?];
    }

    v63 = v71;
    if (v63)
    {
      if (error)
      {
        v64 = v63;
        *error = v63;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v41 = 0;
  }

LABEL_66:

LABEL_67:
  v67 = *MEMORY[0x277D85DE8];

  return v41;
}

@end