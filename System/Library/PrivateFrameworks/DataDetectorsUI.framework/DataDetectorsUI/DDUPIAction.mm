@interface DDUPIAction
+ (BOOL)actionAvailableForResult:(__DDResult *)a3 url:(id)a4 context:(id)a5;
+ (id)actionsWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5;
- (DDUPIAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5 appRecord:(id)a6 upiIdentifier:(id)a7;
- (id)localizedName;
- (void)performFromView:(id)a3;
@end

@implementation DDUPIAction

+ (BOOL)actionAvailableForResult:(__DDResult *)a3 url:(id)a4 context:(id)a5
{
  v5 = [DDUPIAction actionsWithURL:a4 result:a3 context:a5];
  v6 = [v5 count] != 0;

  return v6;
}

+ (id)actionsWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5
{
  v62[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [v9 bundleIdentifier];
  v11 = [v10 isEqualToString:@"com.apple.MobileSMS"];

  if (v11)
  {
    v12 = [DDCopyAction actionWithURL:v7 result:a4 context:v8];
    v62[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];

    if ((dd_isLSTrusted() & 1) == 0)
    {
LABEL_3:
      v14 = v13;
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0;
    if ((dd_isLSTrusted() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  if (!v7 && a4)
  {
    v16 = *MEMORY[0x277D041B8];
    if (DDResultHasType())
    {
      v15 = DDResultCopyUPIIdentifierValue();
      if (v15)
      {
        v17 = MEMORY[0x277CBEBC0];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"upi://pay?pa=%@", v15];
        v7 = [v17 URLWithString:v18];

        goto LABEL_12;
      }
    }

    else
    {
      v15 = 0;
    }

    v7 = 0;
  }

LABEL_12:
  v19 = [v7 scheme];
  v20 = [v19 lowercaseString];
  v21 = [v20 isEqualToString:@"upi"];

  if (v21)
  {
    if (qword_280B12338 == -1)
    {
      if (_MergedGlobals_13)
      {
LABEL_15:
        v50 = v15;
        v22 = v8;
        v23 = [MEMORY[0x277CC1E80] defaultWorkspace];
        v24 = v7;
        v25 = [v23 applicationsAvailableForOpeningURL:v7];

        v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v26 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v47 = [v26 stringForKey:@"DDUIUPILastUsed"];

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        obj = v25;
        v27 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v57;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v57 != v29)
              {
                objc_enumerationMutation(obj);
              }

              v31 = [*(*(&v56 + 1) + 8 * i) bundleIdentifier];
              v32 = objc_alloc(MEMORY[0x277CC1E70]);
              v55 = 0;
              v33 = [v32 initWithBundleIdentifier:v31 allowPlaceholder:1 error:&v55];
              v34 = v33;
              if (!v55 && v33 && v31 != 0)
              {
                if ([v47 isEqualToString:v31])
                {
                  [v48 insertObject:v34 atIndex:0];
                }

                else
                {
                  [v48 addObject:v34];
                }
              }
            }

            v28 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
          }

          while (v28);
        }

        v36 = v48;
        if ([v48 count])
        {
          v46 = v13;
          v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v48, "count")}];
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v37 = v48;
          v38 = [v37 countByEnumeratingWithState:&v51 objects:v60 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v52;
            do
            {
              for (j = 0; j != v39; ++j)
              {
                if (*v52 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = [[DDUPIAction alloc] initWithURL:v24 result:a4 context:v22 appRecord:*(*(&v51 + 1) + 8 * j) upiIdentifier:v50];
                [v14 addObject:v42];
              }

              v39 = [v37 countByEnumeratingWithState:&v51 objects:v60 count:16];
            }

            while (v39);
          }

          v7 = v24;
          v8 = v22;
          v43 = [DDCopyAction actionWithURL:v24 result:a4 context:v22];
          if (v43)
          {
            [v14 addObject:v43];
          }

          v13 = v46;
          v15 = v50;
          v36 = v48;
        }

        else
        {
          v14 = v13;
          v8 = v22;
          v15 = v50;
        }

        goto LABEL_46;
      }
    }

    else
    {
      +[DDUPIAction actionsWithURL:result:context:];
      if (_MergedGlobals_13)
      {
        goto LABEL_15;
      }
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

LABEL_46:

LABEL_47:
  v44 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __45__DDUPIAction_actionsWithURL_result_context___block_invoke()
{
  result = _os_feature_enabled_impl();
  _MergedGlobals_13 = result;
  return result;
}

- (DDUPIAction)initWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5 appRecord:(id)a6 upiIdentifier:(id)a7
{
  v13 = a6;
  v14 = a7;
  v20.receiver = self;
  v20.super_class = DDUPIAction;
  v15 = [(DDAction *)&v20 initWithURL:a3 result:a4 context:a5];
  v16 = v15;
  if (v13 && v15)
  {
    objc_storeStrong(&v15->_appRecord, a6);
    v17 = [v13 localizedName];
    appName = v16->_appName;
    v16->_appName = v17;

    objc_storeStrong(&v16->_upiIdentifier, a7);
  }

  return v16;
}

- (id)localizedName
{
  if (self->_appName)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = DDLocalizedString(@"Pay with %@");
    v5 = [v3 localizedStringWithFormat:v4, self->_appName];

    v6 = v5;
  }

  else
  {
    v6 = DDLocalizedString(@"Pay");
  }

  return v6;
}

- (void)performFromView:(id)a3
{
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  url = self->super._url;
  v6 = [(LSApplicationRecord *)self->_appRecord bundleIdentifier];
  v9 = [v4 operationToOpenResource:url usingApplication:v6 uniqueDocumentIdentifier:0 isContentManaged:0 sourceAuditToken:0 userInfo:0 options:0 delegate:0];

  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = [(LSApplicationRecord *)self->_appRecord bundleIdentifier];
  [v7 setObject:v8 forKey:@"DDUIUPILastUsed"];

  [v9 start];
}

@end