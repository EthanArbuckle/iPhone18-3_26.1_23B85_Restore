@interface IMFamilySenderMessageProcessingPipelineComponent
- (IMFamilySenderMessageProcessingPipelineComponent)initWithAccount:(id)a3 idsTrustedData:(id)a4;
- (id)_fromFamilyMember:(id)a3;
- (id)_generateError:(id)a3;
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMFamilySenderMessageProcessingPipelineComponent

- (id)_fromFamilyMember:(id)a3
{
  v109 = *MEMORY[0x277D85DE8];
  v71 = a3;
  v75 = objc_alloc_init(MEMORY[0x277D18E08]);
  v97 = 0;
  v98 = &v97;
  v99 = 0x2050000000;
  v3 = qword_27D8CFEC8;
  v100 = qword_27D8CFEC8;
  if (!qword_27D8CFEC8)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v106 = sub_22B5936B0;
    v107 = &unk_278703200;
    v108 = &v97;
    sub_22B5936B0(&buf);
    v3 = v98[3];
  }

  v4 = v3;
  _Block_object_dispose(&v97, 8);
  v74 = objc_alloc_init(v3);
  [v74 setCachePolicy:1];
  v96 = 0;
  v73 = [v74 fetchFamilyCircleWithError:&v96];
  v5 = v96;
  v70 = v5;
  if (!v73)
  {
    v8 = v5 == 0;
    v9 = IMLogHandleForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (v10)
      {
        sub_22B7D3F50(v9);
      }

      v76 = [(IMFamilySenderMessageProcessingPipelineComponent *)self _generateError:@"Unknown FamilyCircle fetch error"];
      [v75 failWithError:v76];
    }

    else
    {
      if (v10)
      {
        sub_22B7D3EDC();
      }

      v76 = [(IMFamilySenderMessageProcessingPipelineComponent *)self _generateError:@"FamilyCircle fetch failed with specific error"];
      [v75 failWithError:v76];
    }

LABEL_108:

    v61 = v75;
    goto LABEL_109;
  }

  v6 = [v71 fromIdentifier];
  v76 = [v6 _stripFZIDPrefix];

  if (!IMGetDomainBoolForKey())
  {
LABEL_17:
    v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    obj = [v73 members];
    v67 = [obj countByEnumeratingWithState:&v92 objects:v104 count:16];
    if (v67)
    {
      v15 = *v93;
      v66 = *v93;
      while (2)
      {
        for (i = 0; i != v67; ++i)
        {
          if (*v93 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v92 + 1) + 8 * i);
          v18 = [v17 appleID];
          v19 = v18 == 0;

          if (!v19)
          {
            if (([v17 isMe] & 1) == 0)
            {
              v20 = [v17 appleID];
              [v68 addObject:v20];
            }

            v21 = [v17 appleID];
            v22 = [v76 isEqualToString:v21];

            if (v22)
            {
              if (IMOSLoggingEnabled())
              {
                v64 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
                {
                  v65 = [v17 appleID];
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = v65;
                  _os_log_impl(&dword_22B4CC000, v64, OS_LOG_TYPE_INFO, "Apple ID matches Family member %@", &buf, 0xCu);
                }
              }

LABEL_95:

              if (IMOSLoggingEnabled())
              {
                v55 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                {
                  v56 = [v71 fromIdentifier];
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = v56;
                  _os_log_impl(&dword_22B4CC000, v55, OS_LOG_TYPE_INFO, "Found family member relation using raw handles! %@", &buf, 0xCu);
                }
              }

              [v75 fullfillWithValue:v71];
              goto LABEL_107;
            }
          }

          v23 = [v17 dictionary];
          v24 = [v23 objectForKey:@"member-appleID-aliases"];
          if (v24)
          {
            if (([v17 isMe] & 1) == 0)
            {
              [v68 addObjectsFromArray:v24];
            }

            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v25 = v24;
            v26 = [v25 countByEnumeratingWithState:&v88 objects:v103 count:16];
            if (v26)
            {
              v27 = *v89;
              while (2)
              {
                for (j = 0; j != v26; ++j)
                {
                  if (*v89 != v27)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v29 = *(*(&v88 + 1) + 8 * j);
                  if ([v76 isEqualToString:v29])
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v53 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
                      {
                        LODWORD(buf) = 138412290;
                        *(&buf + 4) = v29;
                        _os_log_impl(&dword_22B4CC000, v53, OS_LOG_TYPE_INFO, "Alias matches Family member %@", &buf, 0xCu);
                      }
                    }

                    goto LABEL_95;
                  }
                }

                v26 = [v25 countByEnumeratingWithState:&v88 objects:v103 count:16];
                if (v26)
                {
                  continue;
                }

                break;
              }
            }
          }

          v30 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:v76];
          if (v30)
          {
            v31 = [v17 memberPhoneNumbers];
            v32 = [v31 componentsSeparatedByString:{@", "}];

            if (([v17 isMe] & 1) == 0)
            {
              [v68 addObjectsFromArray:v32];
            }

            v86 = 0u;
            v87 = 0u;
            v85 = 0u;
            v84 = 0u;
            v33 = v32;
            v34 = [v33 countByEnumeratingWithState:&v84 objects:v102 count:16];
            if (v34)
            {
              v35 = *v85;
              while (2)
              {
                for (k = 0; k != v34; ++k)
                {
                  if (*v85 != v35)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v37 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:*(*(&v84 + 1) + 8 * k)];
                  if ([v30 isLikePhoneNumber:v37])
                  {
                    if (IMOSLoggingEnabled())
                    {
                      v54 = OSLogHandleForIMFoundationCategory();
                      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
                      {
                        LODWORD(buf) = 138412290;
                        *(&buf + 4) = v30;
                        _os_log_impl(&dword_22B4CC000, v54, OS_LOG_TYPE_INFO, "Phone number matches Family member %@", &buf, 0xCu);
                      }
                    }

                    goto LABEL_95;
                  }
                }

                v34 = [v33 countByEnumeratingWithState:&v84 objects:v102 count:16];
                if (v34)
                {
                  continue;
                }

                break;
              }
            }
          }

          v15 = v66;
        }

        v67 = [obj countByEnumeratingWithState:&v92 objects:v104 count:16];
        v15 = v66;
        if (v67)
        {
          continue;
        }

        break;
      }
    }

    v38 = [(IMFamilySenderMessageProcessingPipelineComponent *)self idsTrustedData];
    v39 = [v38 senderCorrelationIdentifier];
    v40 = v39 == 0;

    if (v40)
    {
      v57 = IMLogHandleForCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D3E54(v71);
      }

      v58 = [(IMFamilySenderMessageProcessingPipelineComponent *)self _generateError:@"IDS data had no sender correlation identifier"];
      [v75 failWithError:v58];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_22B4CC000, v41, OS_LOG_TYPE_INFO, "Didn't find family member relation using raw handles. Attempting to lookup using SCIs.", &buf, 2u);
        }
      }

      v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v43 = v68;
      v44 = [v43 countByEnumeratingWithState:&v80 objects:v101 count:16];
      if (v44)
      {
        v45 = *v81;
        do
        {
          for (m = 0; m != v44; ++m)
          {
            if (*v81 != v45)
            {
              objc_enumerationMutation(v43);
            }

            v47 = *(*(&v80 + 1) + 8 * m);
            if ([v47 length])
            {
              v48 = IDSCopyBestGuessIDForID();
              if (v48)
              {
                [v42 addObject:v48];
              }

              else if (IMOSLoggingEnabled())
              {
                v50 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                {
                  LODWORD(buf) = 138412290;
                  *(&buf + 4) = v47;
                  _os_log_impl(&dword_22B4CC000, v50, OS_LOG_TYPE_INFO, "handle could not be normalized for IDS lookup: %@", &buf, 0xCu);
                }
              }
            }

            else if (IMOSLoggingEnabled())
            {
              v49 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
              {
                LOWORD(buf) = 0;
                _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "Skipping normalization of empty handle in allFamilyMemberHandles", &buf, 2u);
              }
            }
          }

          v44 = [v43 countByEnumeratingWithState:&v80 objects:v101 count:16];
        }

        while (v44);
      }

      if (IMOSLoggingEnabled())
      {
        v51 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v42;
          _os_log_impl(&dword_22B4CC000, v51, OS_LOG_TYPE_INFO, "normalizedFamilyMemberHandles: %@", &buf, 0xCu);
        }
      }

      if ([v42 count])
      {
        v52 = MEMORY[0x277D1AA00];
        v77[0] = MEMORY[0x277D85DD0];
        v77[1] = 3221225472;
        v77[2] = sub_22B592CE0;
        v77[3] = &unk_278705348;
        v77[4] = self;
        v78 = v75;
        v79 = v71;
        [v52 currentRemoteDevicesForDestinations:v42 service:@"com.apple.madrid" listenerID:@"IMFamilySenderMessageProcessingPipelineComponent" queue:MEMORY[0x277D85CD0] completionBlock:v77];
      }

      else
      {
        v59 = IMLogHandleForCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D3DCC(v71);
        }

        v60 = [(IMFamilySenderMessageProcessingPipelineComponent *)self _generateError:@"Family IDS handles were empty"];
        [v75 failWithError:v60];
      }
    }

LABEL_107:

    goto LABEL_108;
  }

  v7 = [v73 childBotAllowlistedParents];
  if (![v7 containsObject:v76])
  {
    v11 = [v73 parentAllowlistedChildBots];
    v12 = [v11 containsObject:v76];

    if (v12)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

LABEL_12:
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Found fromHandle in child-bot allow list", &buf, 2u);
    }
  }

  [v75 fullfillWithValue:v71];
  v14 = v75;

LABEL_109:
  v62 = *MEMORY[0x277D85DE8];

  return v75;
}

- (id)_generateError:(id)a3
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithObjectsAndKeys:{v4, *MEMORY[0x277CCA068], 0}];

  v7 = objc_alloc(MEMORY[0x277CCA9B8]);
  v8 = [v7 initWithDomain:*MEMORY[0x277D18DF8] code:21 userInfo:v6];

  return v8;
}

- (IMFamilySenderMessageProcessingPipelineComponent)initWithAccount:(id)a3 idsTrustedData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IMFamilySenderMessageProcessingPipelineComponent;
  v9 = [(IMFamilySenderMessageProcessingPipelineComponent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_idsTrustedData, a4);
  }

  return v10;
}

- (id)runIndividuallyWithInput:(id)a3
{
  v31[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277D19700];
  v31[0] = *MEMORY[0x277D196F8];
  v31[1] = v4;
  v31[2] = *MEMORY[0x277D196D0];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "<IMFamilySenderMessageProcessingPipelineComponent> Started processing", buf, 2u);
    }
  }

  if ([v3 isFromMe])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [v3 fromIdentifier];
        *buf = 138412290;
        v30 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Message is a message from me: %@", buf, 0xCu);
      }
    }

    v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v3];
  }

  else
  {
    if ([v3 conformsToProtocol:&unk_283F6EB70])
    {
      v10 = v3;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v11 = v5;
      v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v12)
      {
        v13 = 0;
        v14 = *v25;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v11);
            }

            if (v13)
            {
              v13 = 1;
            }

            else
            {
              v16 = *(*(&v24 + 1) + 8 * i);
              v17 = [v10 balloonPluginBundleID];
              v18 = IMBalloonExtensionIDWithSuffix();
              v13 = [v17 isEqualToString:v18];
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v12);

        if (v13)
        {
          v9 = [(IMFamilySenderMessageProcessingPipelineComponent *)self _fromFamilyMember:v10];
          goto LABEL_30;
        }
      }

      else
      {
      }
    }

    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Message is not family extension", buf, 2u);
      }
    }

    v9 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v3];
  }

LABEL_30:
  v20 = v9;

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end