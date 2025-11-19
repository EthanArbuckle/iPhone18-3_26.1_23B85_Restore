@interface IMMessageMomentShareProcessingPipelineComponent
- (IMMessageMomentShareProcessingPipelineComponent)initWithTrustedData:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMMessageMomentShareProcessingPipelineComponent

- (IMMessageMomentShareProcessingPipelineComponent)initWithTrustedData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IMMessageMomentShareProcessingPipelineComponent;
  v5 = [(IMMessageMomentShareProcessingPipelineComponent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(IMMessageMomentShareProcessingPipelineComponent *)v5 setTrustedData:v4];
  }

  return v6;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v34 = a3;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [v34 messageItems];
      *buf = 138412290;
      v45 = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "<IMMessageMomentShareProcessingPipelineComponent> Started processing for Messages: %@", buf, 0xCu);
    }
  }

  v5 = [v34 messageItems];
  v6 = [v5 count] == 0;

  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_INFO, "<IMMessageMomentShareProcessingPipelineComponent> Failed to find any message items", buf, 2u);
      }
    }

    v28 = objc_alloc(MEMORY[0x277CCA9B8]);
    v29 = [v28 initWithDomain:*MEMORY[0x277D18DF8] code:10 userInfo:0];
    v33 = [objc_alloc(MEMORY[0x277D18E08]) initWithError:v29];
  }

  else
  {
    v33 = objc_alloc_init(MEMORY[0x277D18E08]);
    v35 = [v34 chat];
    if (v35)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v7 = [v34 messageItems];
      v8 = [v7 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (!v8)
      {
        goto LABEL_35;
      }

      LOBYTE(v37) = 0;
      v9 = 0;
      v10 = *v41;
      obj = v7;
      while (1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v40 + 1) + 8 * i);
          if (([v12 isTypingMessage] & 1) == 0)
          {
            v39 = 0;
            v13 = MEMORY[0x277D1AAB0];
            v14 = [v12 balloonBundleID];
            v15 = [v12 body];
            v16 = [v12 payloadData];
            v17 = [v13 photoShareURLFromPluginBundleID:v14 contentString:v15 payload:v16 shouldAccept:&v39];

            if (v17)
            {
              if (v9)
              {
                if (v37)
                {
                  goto LABEL_16;
                }

LABEL_19:
                v37 = 0;
LABEL_21:
                if (IMOSLoggingEnabled())
                {
                  v24 = OSLogHandleForIMEventCategory();
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                  {
                    if (v37)
                    {
                      v25 = @"YES";
                    }

                    else
                    {
                      v25 = @"NO";
                    }

                    *buf = 138412546;
                    if (v39)
                    {
                      v26 = @"YES";
                    }

                    else
                    {
                      v26 = @"NO";
                    }

                    v45 = v25;
                    v46 = 2112;
                    v47 = v26;
                    _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Not accepting moment share, both isFromKnownSender (%@) and shouldAccept (%@) must be true", buf, 0x16u);
                  }
                }
              }

              else
              {
                v19 = [(IMMessageMomentShareProcessingPipelineComponent *)self trustedData];
                v20 = [v19 fromIdentifier];
                v21 = [v20 _stripFZIDPrefix];
                v48 = v21;
                v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
                v23 = IMDAreAllAliasesUnknown();

                if (v23)
                {
                  goto LABEL_19;
                }

LABEL_16:
                if (v39 != 1)
                {
                  v37 = 1;
                  goto LABEL_21;
                }

                v18 = +[IMDMomentShareManager sharedInstance];
                [v18 registerAndAcceptMomentShareForMessage:v12 inChat:v35 resetAssetTransfers:1];

                LOBYTE(v37) = 1;
              }

              v9 = 1;
            }

            continue;
          }
        }

        v7 = obj;
        v8 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (!v8)
        {
LABEL_35:

          goto LABEL_45;
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v45 = @"NO";
        _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Not accepting moment share hasChat: %@", buf, 0xCu);
      }
    }

LABEL_45:
    [v33 fullfillWithValue:v34];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v33;
}

@end