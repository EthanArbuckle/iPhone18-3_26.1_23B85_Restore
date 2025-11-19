@interface HDFHIRResourceSearchSet
+ (id)searchSetWithFHIRJSONObject:(id)a3 serverBaseURL:(id)a4 error:(id *)a5;
- (id)_initWithEntries:(id)a3 serverBaseURL:(id)a4 pageURL:(id)a5 nextPageURL:(id)a6;
@end

@implementation HDFHIRResourceSearchSet

- (id)_initWithEntries:(id)a3 serverBaseURL:(id)a4 pageURL:(id)a5 nextPageURL:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = HDFHIRResourceSearchSet;
  v14 = [(HDFHIRResourceSearchSet *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    entries = v14->_entries;
    v14->_entries = v15;

    v17 = [v11 copy];
    serverBaseURL = v14->_serverBaseURL;
    v14->_serverBaseURL = v17;

    v19 = [v12 copy];
    pageURL = v14->_pageURL;
    v14->_pageURL = v19;

    v21 = [v13 copy];
    nextPageURL = v14->_nextPageURL;
    v14->_nextPageURL = v21;
  }

  return v14;
}

+ (id)searchSetWithFHIRJSONObject:(id)a3 serverBaseURL:(id)a4 error:(id *)a5
{
  v104 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v85 = a4;
  if (!v85)
  {
    [HDFHIRResourceSearchSet searchSetWithFHIRJSONObject:a2 serverBaseURL:a1 error:?];
  }

  v10 = [v9 detectedResourceType];
  v11 = [v10 isEqualToString:@"Bundle"];

  if ((v11 & 1) == 0)
  {
    v39 = MEMORY[0x277CCA9B8];
    v40 = [v9 detectedResourceType];
    [v39 hk_assignError:a5 code:3 format:{@"searchSetWithFHIRJSONObject needs Bundle resource, but got %@", v40}];

    v41 = 0;
    goto LABEL_67;
  }

  v70 = a1;
  v12 = [v9 sourceURL];
  v13 = [v9 JSONObject];
  v14 = [v13 hk_safeArrayIfExistsForKeyPath:@"link" error:0];

  v76 = a5;
  v77 = v9;
  v72 = v14;
  if (!v14)
  {
    v17 = 0;
    goto LABEL_29;
  }

  v79 = v12;
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
        v27 = [v85 hrs_URLByExpandingReference:v26];
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

  a5 = v76;
  v9 = v77;
  v12 = v79;
  v14 = v72;
LABEL_29:
  v42 = [MEMORY[0x277CBEB18] array];
  v43 = [v9 JSONObject];
  v93 = 0;
  v44 = [v43 hk_safeArrayForKeyPath:@"entry" error:&v93];
  v71 = v93;

  if (v44)
  {
    v73 = v42;
    v80 = v12;
    v75 = [MEMORY[0x277CBEAA8] date];
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
            v12 = v80;
            v14 = v72;
            v42 = v73;
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
            v53 = [v9 FHIRVersion];
            obja = v49;
            if (v49)
            {
              v87 = v51;
              v54 = &v87;
              [v52 resourceObjectWithJSONObject:v50 sourceURL:v49 FHIRVersion:v53 receivedDate:v75 extractionHints:0 error:&v87];
            }

            else
            {
              v86 = v51;
              v54 = &v86;
              [v52 resourceObjectWithJSONObject:v50 serverBaseURL:v85 FHIRVersion:v53 receivedDate:v75 error:&v86];
            }
            v57 = ;
            v56 = *v54;

            if (v57)
            {
              [v73 addObject:v57];
              v9 = v77;
            }

            else
            {
              _HKInitializeLogging();
              v58 = *MEMORY[0x277CCC2C0];
              v9 = v77;
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

    v12 = v80;
    v14 = v72;
    v42 = v73;
    v44 = v69;
LABEL_63:
    v41 = [[v70 alloc] _initWithEntries:v42 serverBaseURL:v85 pageURL:v12 nextPageURL:v17];
  }

  else
  {
    v59 = [v9 JSONObject];
    v60 = [v59 objectForKeyedSubscript:@"entry"];

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
      if (a5)
      {
        v64 = v63;
        *a5 = v63;
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