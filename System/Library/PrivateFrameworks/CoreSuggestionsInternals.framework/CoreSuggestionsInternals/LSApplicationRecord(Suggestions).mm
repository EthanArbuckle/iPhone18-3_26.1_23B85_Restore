@interface LSApplicationRecord(Suggestions)
+ (id)sg_applicationRecordForDefaultWebBrowser;
+ (id)sg_preferredApplicationRecordForURL:()Suggestions;
+ (id)sg_preferredApplicationRecordForUserActivityType:()Suggestions withTeamIdentifier:preferredBundleIdentifier:;
- (uint64_t)sg_isAppleBundleIdentifier;
@end

@implementation LSApplicationRecord(Suggestions)

- (uint64_t)sg_isAppleBundleIdentifier
{
  bundleIdentifier = [self bundleIdentifier];
  v2 = [bundleIdentifier hasPrefix:@"com.apple."];

  return v2;
}

+ (id)sg_applicationRecordForDefaultWebBrowser
{
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"http://"];
  if (!v4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSApplicationRecord+Suggestions.m" lineNumber:112 description:@"HTTP URL should always construct"];
  }

  v10 = 0;
  v5 = [objc_alloc(MEMORY[0x277CC1E98]) initWithURL:v4 error:&v10];
  v6 = v5;
  if (v5)
  {
    bundleRecord = [v5 bundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }
  }

  bundleRecord = 0;
LABEL_7:

  return bundleRecord;
}

+ (id)sg_preferredApplicationRecordForURL:()Suggestions
{
  v3 = a3;
  v11 = 0;
  v4 = [MEMORY[0x277CC1E48] appLinksWithURL:v3 limit:1 includeLinksForCurrentApplication:1 error:&v11];
  v5 = v11;
  if ([v4 count])
  {
    firstObject = [v4 firstObject];
    targetApplicationRecord = [firstObject targetApplicationRecord];
    goto LABEL_8;
  }

  v10 = v5;
  firstObject = [objc_alloc(MEMORY[0x277CC1E98]) initWithURL:v3 error:&v10];
  v8 = v10;

  if (!firstObject)
  {
    goto LABEL_6;
  }

  targetApplicationRecord = [firstObject bundleRecord];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_6:
    targetApplicationRecord = 0;
  }

  v5 = v8;
LABEL_8:

  return targetApplicationRecord;
}

+ (id)sg_preferredApplicationRecordForUserActivityType:()Suggestions withTeamIdentifier:preferredBundleIdentifier:
{
  v70 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 hasPrefix:@"com.apple."])
  {
    firstObject = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v9 allowPlaceholder:0 error:0];
  }

  else if (v8)
  {
    v11 = *MEMORY[0x277CBECE8];
    v12 = _LSCopyAdvertisementStringForTeamIdentifierAndActivityType();
    if (v12)
    {
      v57 = 0;
      v13 = [MEMORY[0x277CC1E70] applicationRecordsForUserActivityType:v12 limit:5 error:&v57];
      v14 = v57;
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __130__LSApplicationRecord_Suggestions__sg_preferredApplicationRecordForUserActivityType_withTeamIdentifier_preferredBundleIdentifier___block_invoke;
      v55[3] = &unk_27894D5D0;
      v15 = v8;
      v56 = v15;
      v16 = [v13 _pas_filteredArrayWithTest:v55];
      v17 = sgEventsLogHandle();
      v46 = v14;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v13 count];
        v19 = [v16 count];
        *buf = 134219010;
        v61 = v18;
        v62 = 2048;
        v63 = v19;
        v64 = 2112;
        v65 = v15;
        v66 = 2112;
        v67 = v13;
        v68 = 2112;
        v69 = v16;
        _os_log_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEFAULT, "Filtered event records from %tu to %tu filtering for teamIdentifier %@: %@ -> %@", buf, 0x34u);
      }

      if ([v16 count] == 1 && (objc_msgSend(v16, "firstObject"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "applicationState"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isInstalled"), v21, v20, v22))
      {
        firstObject = [v16 firstObject];
      }

      else if ([v16 count])
      {
        v45 = v16;
        if (v9)
        {
          v43 = v13;
          v44 = v12;
          v42 = v7;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v23 = v16;
          v24 = [v23 countByEnumeratingWithState:&v51 objects:v59 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v52;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v52 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v51 + 1) + 8 * i);
                applicationState = [v28 applicationState];
                if ([applicationState isInstalled])
                {
                  bundleIdentifier = [v28 bundleIdentifier];
                  v31 = [bundleIdentifier isEqualToString:v9];

                  if (v31)
                  {
                    firstObject = v28;

                    goto LABEL_36;
                  }
                }

                else
                {
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v51 objects:v59 count:16];
            }

            while (v25);
          }

          firstObject = 0;
LABEL_36:
          v7 = v42;
LABEL_38:
          v13 = v43;
          v12 = v44;
          v14 = v46;
        }

        else
        {
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v32 = v16;
          v33 = [v32 countByEnumeratingWithState:&v47 objects:v58 count:16];
          if (v33)
          {
            v34 = v33;
            v35 = *v48;
            v43 = v13;
            v44 = v12;
            while (2)
            {
              for (j = 0; j != v34; ++j)
              {
                if (*v48 != v35)
                {
                  objc_enumerationMutation(v32);
                }

                v37 = *(*(&v47 + 1) + 8 * j);
                applicationState2 = [v37 applicationState];
                isInstalled = [applicationState2 isInstalled];

                if (isInstalled)
                {
                  firstObject = v37;

                  goto LABEL_38;
                }
              }

              v34 = [v32 countByEnumeratingWithState:&v47 objects:v58 count:16];
              v13 = v43;
              v12 = v44;
              v14 = v46;
              if (v34)
              {
                continue;
              }

              break;
            }
          }

          firstObject = 0;
        }

        v16 = v45;
      }

      else
      {
        firstObject = 0;
      }
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    firstObject = 0;
  }

  v40 = *MEMORY[0x277D85DE8];

  return firstObject;
}

@end