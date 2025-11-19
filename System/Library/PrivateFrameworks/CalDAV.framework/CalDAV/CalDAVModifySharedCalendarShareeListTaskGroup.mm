@interface CalDAVModifySharedCalendarShareeListTaskGroup
- (CalDAVModifySharedCalendarShareeListTaskGroup)initWithAccountInfoProvider:(id)a3 taskManager:(id)a4;
- (id)generateModificationMessageBody;
- (void)startTaskGroup;
- (void)task:(id)a3 didFinishWithError:(id)a4;
@end

@implementation CalDAVModifySharedCalendarShareeListTaskGroup

- (CalDAVModifySharedCalendarShareeListTaskGroup)initWithAccountInfoProvider:(id)a3 taskManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Initializing this class instance with an inherited initializer not allowed." userInfo:0];
  objc_exception_throw(v7);
}

- (void)startTaskGroup
{
  v3 = [CalDAVModifySharedCalendarShareeListPostTask alloc];
  v4 = [(CalDAVModifySharedCalendarShareeListTaskGroup *)self generateModificationMessageBody];
  v5 = [(CalDAVModifySharedCalendarShareeListTaskGroup *)self calendarURL];
  v8 = [(CoreDAVPostTask *)v3 initWithDataPayload:v4 dataContentType:@"text/xml" atURL:v5 previousETag:0];

  v6 = [(CoreDAVTaskGroup *)self accountInfoProvider];
  [(CalDAVModifySharedCalendarShareeListPostTask *)v8 setAccountInfoProvider:v6];

  [(CalDAVModifySharedCalendarShareeListPostTask *)v8 setDelegate:self];
  v7 = [(CoreDAVTaskGroup *)self taskManager];
  [v7 submitQueuedCoreDAVTask:v8];
}

- (id)generateModificationMessageBody
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CFDCA0]);
  v4 = *MEMORY[0x277CFDE90];
  [v3 startElement:? inNamespace:? withAttributeNamesAndValues:?];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v41 = self;
  obj = [(CalDAVModifySharedCalendarShareeListTaskGroup *)self shareesToSet];
  v5 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v5)
  {
    v6 = v5;
    v39 = *v47;
    v37 = *MEMORY[0x277CFDF38];
    v35 = *MEMORY[0x277CFDEF8];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v47 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v46 + 1) + 8 * i);
        [v3 startElement:@"set" inNamespace:v4 withAttributeNamesAndValues:0];
        v9 = [v8 href];
        v10 = [v9 payloadAsString];
        [v3 appendElement:v37 inNamespace:v35 withStringContent:v10 withAttributeNamesAndValues:0];

        v11 = [v8 commonName];
        v12 = [v11 payloadAsString];
        [v3 appendElement:@"common-name" inNamespace:v4 withStringContent:v12 withAttributeNamesAndValues:0];

        v13 = [(CalDAVModifySharedCalendarShareeListTaskGroup *)v41 summary];
        [v3 appendElement:@"summary" inNamespace:v4 withStringContent:v13 withAttributeNamesAndValues:0];

        v14 = [v8 access];
        v15 = [v14 accessLevel];

        v16 = [v15 name];

        if (v16)
        {
          v17 = [v15 name];
          v18 = [v15 nameSpace];
          [v3 appendElement:v17 inNamespace:v18 withStringContent:0 withAttributeNamesAndValues:0];
        }

        [v3 endElement:@"set" inNamespace:v4];
      }

      v6 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v6);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v36 = [(CalDAVModifySharedCalendarShareeListTaskGroup *)v41 shareesToRemove];
  v19 = [v36 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v43;
    v40 = *MEMORY[0x277CFDF38];
    v38 = *MEMORY[0x277CFDEF8];
    obja = *MEMORY[0x277CFDFA0];
    v32 = *MEMORY[0x277CFE050];
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(v36);
        }

        v23 = *(*(&v42 + 1) + 8 * j);
        v24 = [v23 href];
        v25 = [v24 payloadAsString];
        v26 = [v25 length];

        if (v26)
        {
          [v3 startElement:@"remove" inNamespace:v4 withAttributeNamesAndValues:0];
          v27 = [v23 href];
          v28 = [v27 payloadAsString];
          [v3 appendElement:v40 inNamespace:v38 withStringContent:v28 withAttributeNamesAndValues:0];

          if ([(CalDAVModifySharedCalendarShareeListTaskGroup *)v41 muteNotifications])
          {
            [v3 appendElement:obja inNamespace:v32 withStringContent:0 withAttributeNamesAndValues:0];
          }

          [v3 endElement:@"remove" inNamespace:v4];
        }
      }

      v20 = [v36 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v20);
  }

  [v3 endElement:@"share" inNamespace:v4];
  v29 = [v3 data];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)task:(id)a3 didFinishWithError:(id)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    if ([v6 responseStatusCode] == 207)
    {
      v55 = self;
      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v51 = v6;
      v50 = [v6 responseBodyParser];
      [v50 rootElement];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v49 = v68 = 0u;
      obj = [v49 responses];
      v9 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v66;
        v52 = *v66;
        do
        {
          v12 = 0;
          v53 = v10;
          do
          {
            if (*v66 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v65 + 1) + 8 * v12);
            v14 = [v13 status];
            v15 = [v14 payloadAsString];
            v16 = [v15 CDVIsHTTPStatusLineWithStatusCode:403];

            if (v16)
            {
              v56 = v12;
              v63 = 0u;
              v64 = 0u;
              v61 = 0u;
              v62 = 0u;
              v17 = [v13 hrefs];
              v18 = [v17 countByEnumeratingWithState:&v61 objects:v72 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v62;
                do
                {
                  for (i = 0; i != v19; ++i)
                  {
                    if (*v62 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v22 = *(*(&v61 + 1) + 8 * i);
                    v23 = [v22 payloadAsFullURL];
                    v24 = [v23 absoluteString];

                    if (v24)
                    {
                      [v8 addObject:v24];
                    }

                    else
                    {
                      v25 = [MEMORY[0x277CFDC18] sharedLogging];
                      v26 = [v25 logHandleForAccountInfoProvider:0];
                      v27 = v26;
                      if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        v71 = v22;
                        _os_log_impl(&dword_242742000, v27, OS_LOG_TYPE_ERROR, "HREF had unusable URL payload, %@", buf, 0xCu);
                      }
                    }
                  }

                  v19 = [v17 countByEnumeratingWithState:&v61 objects:v72 count:16];
                }

                while (v19);
              }

              v11 = v52;
              v10 = v53;
              v12 = v56;
            }

            ++v12;
          }

          while (v12 != v10);
          v10 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
        }

        while (v10);
      }

      if ([v8 count])
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        self = v55;
        v28 = [(CalDAVModifySharedCalendarShareeListTaskGroup *)v55 shareesToSet];
        v29 = [v28 countByEnumeratingWithState:&v57 objects:v69 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v58;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v58 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v57 + 1) + 8 * j);
              v34 = [v33 href];
              v35 = [v34 payloadAsFullURL];
              v36 = [v35 absoluteString];
              v37 = [v8 containsObject:v36];

              self = v55;
              if (v37)
              {
                v38 = [(CalDAVModifySharedCalendarShareeListTaskGroup *)v55 invalidSharees];

                if (!v38)
                {
                  v39 = objc_alloc_init(MEMORY[0x277CBEB58]);
                  [(CalDAVModifySharedCalendarShareeListTaskGroup *)v55 setInvalidSharees:v39];
                }

                v40 = [(CalDAVModifySharedCalendarShareeListTaskGroup *)v55 invalidSharees];
                [v40 addObject:v33];
              }
            }

            v30 = [v28 countByEnumeratingWithState:&v57 objects:v69 count:16];
          }

          while (v30);
        }

        v41 = [(CalDAVModifySharedCalendarShareeListTaskGroup *)self invalidSharees];
        v42 = [v41 count];

        v43 = v49;
        if (v42)
        {
          v7 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"CalDAVErrorDomain" code:0 userInfo:0];
        }

        else
        {
          v7 = 0;
        }

        v47 = v50;
        v6 = v51;
      }

      else
      {
        v44 = [MEMORY[0x277CFDC18] sharedLogging];
        v45 = [v44 logHandleForAccountInfoProvider:0];
        v46 = v45;
        self = v55;
        if (v45 && os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v71) = 207;
          _os_log_impl(&dword_242742000, v46, OS_LOG_TYPE_DEFAULT, "No invalid sharees found but status was %d", buf, 8u);
        }

        v7 = 0;
        v47 = v50;
        v6 = v51;
        v43 = v49;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  [(CoreDAVTaskGroup *)self finishCoreDAVTaskGroupWithError:v7 delegateCallbackBlock:0];

  v48 = *MEMORY[0x277D85DE8];
}

@end