@interface MDMESSODetails
+ (id)essoDetailsWithJSONDictionary:(id)dictionary;
- (MDMESSODetails)initWithiTunesStoreID:(id)d appIDs:(id)ds associatedDomains:(id)domains associatedDomainsEnableDirectDownloads:(id)downloads configurationProfile:(id)profile declarations:(id)declarations;
@end

@implementation MDMESSODetails

+ (id)essoDetailsWithJSONDictionary:(id)dictionary
{
  v44 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"iTunesStoreID"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || ([MEMORY[0x277D034E8] ESSOTestModeEnabled] & 1) != 0)
  {
    if ([MEMORY[0x277D034E8] ESSOTestModeEnabled])
    {
      v5 = [dictionaryCopy objectForKeyedSubscript:@"AppIDs"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v5 count])
      {
        v6 = *DMCLogObjects();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v43 = dictionaryCopy;
          _os_log_impl(&dword_22E997000, v6, OS_LOG_TYPE_ERROR, "ESSO app IDs is invalid: %{public}@", buf, 0xCu);
        }

        v7 = 0;
        goto LABEL_59;
      }
    }

    else
    {
      v5 = 0;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"AssociatedDomains"];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v16 = *DMCLogObjects();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v43 = dictionaryCopy;
          _os_log_impl(&dword_22E997000, v16, OS_LOG_TYPE_ERROR, "ESSO associated domains is invalid: %{public}@", buf, 0xCu);
        }

        v7 = 0;
        goto LABEL_58;
      }
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"AssociatedDomainsEnableDirectDownloads"];
    if (v10)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v27 = *DMCLogObjects();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v43 = dictionaryCopy;
          _os_log_impl(&dword_22E997000, v27, OS_LOG_TYPE_ERROR, "ESSO associated domains enable direct downloads is invalid: %{public}@", buf, 0xCu);
        }

        v7 = 0;
        goto LABEL_57;
      }
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"ConfigurationProfile"];
    if (v11 && (v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v11 options:0]) != 0)
    {
      v13 = v12;
      objc_opt_class();
      v14 = v13;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = *DMCLogObjects();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v43 = dictionaryCopy;
          _os_log_impl(&dword_22E997000, v15, OS_LOG_TYPE_ERROR, "ESSO details configuration profile data is invalid or missing: %{public}@", buf, 0xCu);
        }

        v7 = 0;
        goto LABEL_56;
      }
    }

    else
    {
      v14 = 0;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"Declarations"];
    v36 = v17;
    if (v17)
    {
      v18 = v17;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = *DMCLogObjects();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v43 = dictionaryCopy;
          _os_log_impl(&dword_22E997000, v29, OS_LOG_TYPE_ERROR, "ESSO details declarations data is missing: %{public}@", buf, 0xCu);
        }

        v7 = 0;
        goto LABEL_55;
      }

      v33 = v14;
      v34 = v9;
      v35 = v11;
      v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(0, "count")}];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v20 = v18;
      v21 = [v20 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v38;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v38 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:*(*(&v37 + 1) + 8 * i) options:0];
            if (!v25)
            {
              v30 = *DMCLogObjects();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v43 = dictionaryCopy;
                _os_log_impl(&dword_22E997000, v30, OS_LOG_TYPE_ERROR, "ESSO details declaration data is invalid or missing: %{public}@", buf, 0xCu);
              }

              v7 = 0;
              v9 = v34;
              v11 = v35;
              v14 = v33;
              goto LABEL_55;
            }

            v26 = v25;
            [v19 addObject:v25];
          }

          v22 = [v20 countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      v9 = v34;
      v14 = v33;
    }

    else
    {
      v35 = v11;
      v19 = 0;
    }

    if (v14 | v19)
    {
      v7 = [[MDMESSODetails alloc] initWithiTunesStoreID:v4 appIDs:v5 associatedDomains:v9 associatedDomainsEnableDirectDownloads:v10 configurationProfile:v14 declarations:v19];
    }

    else
    {
      v28 = *DMCLogObjects();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_22E997000, v28, OS_LOG_TYPE_ERROR, "ESSO details: a configuration profile and/or declarations must be present", buf, 2u);
      }

      v7 = 0;
    }

    v11 = v35;
LABEL_55:

LABEL_56:
LABEL_57:

LABEL_58:
LABEL_59:

    goto LABEL_60;
  }

  v8 = *DMCLogObjects();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v43 = dictionaryCopy;
    _os_log_impl(&dword_22E997000, v8, OS_LOG_TYPE_ERROR, "ESSO details app store ID is invalid or missing: %{public}@", buf, 0xCu);
  }

  v7 = 0;
LABEL_60:

  v31 = *MEMORY[0x277D85DE8];

  return v7;
}

- (MDMESSODetails)initWithiTunesStoreID:(id)d appIDs:(id)ds associatedDomains:(id)domains associatedDomainsEnableDirectDownloads:(id)downloads configurationProfile:(id)profile declarations:(id)declarations
{
  dCopy = d;
  dsCopy = ds;
  domainsCopy = domains;
  downloadsCopy = downloads;
  profileCopy = profile;
  declarationsCopy = declarations;
  v28.receiver = self;
  v28.super_class = MDMESSODetails;
  v20 = [(MDMESSODetails *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_iTunesStoreID, d);
    v22 = [dsCopy copy];
    appIDs = v21->_appIDs;
    v21->_appIDs = v22;

    v24 = [domainsCopy copy];
    associatedDomains = v21->_associatedDomains;
    v21->_associatedDomains = v24;

    objc_storeStrong(&v21->_associatedDomainsEnableDirectDownloads, downloads);
    objc_storeStrong(&v21->_configurationProfile, profile);
    objc_storeStrong(&v21->_declarations, declarations);
  }

  return v21;
}

@end