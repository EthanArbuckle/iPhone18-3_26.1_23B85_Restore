@interface SGWalletPassAttachmentDissector
+ (BOOL)canAddPass:(id)a3;
+ (BOOL)isPassAvailable:(id)a3;
- (id)_enrichmentsForWalletPassDictionary:(id)a3 filePath:(id)a4 parentMessage:(id)a5 parentEntity:(id)a6;
- (id)_extractPassInformation:(id)a3 filePath:(id)a4 state:(int)a5;
- (id)_extractRelevantSemanticTagsFromPass:(id)a3;
- (id)_passDataForFilePath:(id)a3;
- (void)_dissectMessage:(id)a3 entity:(id)a4;
- (void)dissectMailMessage:(id)a3 entity:(id)a4 context:(id)a5;
- (void)dissectTextMessage:(id)a3 entity:(id)a4 context:(id)a5;
@end

@implementation SGWalletPassAttachmentDissector

+ (BOOL)isPassAvailable:(id)a3
{
  v3 = a3;
  if ([getPKPassLibraryClass() isPassLibraryAvailable])
  {
    v4 = [getPKPassLibraryClass() sharedInstance];
    v5 = [v4 containsPass:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)canAddPass:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getPKAddPassesViewControllerClass_softClass;
  v12 = getPKAddPassesViewControllerClass_softClass;
  if (!getPKAddPassesViewControllerClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getPKAddPassesViewControllerClass_block_invoke;
    v8[3] = &unk_278955BF0;
    v8[4] = &v9;
    __getPKAddPassesViewControllerClass_block_invoke(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6 = [v4 canAddPasses];

  return v6;
}

- (void)dissectTextMessage:(id)a3 entity:(id)a4 context:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  [(SGWalletPassAttachmentDissector *)self _dissectMessage:v11 entity:v8];
  objc_autoreleasePoolPop(v10);
}

- (void)dissectMailMessage:(id)a3 entity:(id)a4 context:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  [(SGWalletPassAttachmentDissector *)self _dissectMessage:v11 entity:v8];
  objc_autoreleasePoolPop(v10);
}

- (void)_dissectMessage:(id)a3 entity:(id)a4
{
  v63 = *MEMORY[0x277D85DE8];
  v45 = a3;
  v46 = a4;
  v6 = [v45 attachments];
  v40 = [(SGWalletPassAttachmentDissector *)self _filteredWalletPassAttachmentsFrom:v6];

  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v39 = [v45 attachments];
    *buf = 138412802;
    *&buf[4] = v38;
    *&buf[12] = 2048;
    *&buf[14] = [v39 count];
    *&buf[22] = 2048;
    v61 = [v40 count];
    _os_log_debug_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEBUG, "%@: Message with %tu attachments (%tu downloaded wallet pass attachments)", buf, 0x20u);
  }

  if ([v40 count])
  {
    v47 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v40;
    v8 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (!v8)
    {
      goto LABEL_41;
    }

    v49 = *v52;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v52 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v51 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 path];
        if (v12)
        {
          v13 = [(SGWalletPassAttachmentDissector *)self _passDataForFilePath:v12];
          if (v13)
          {
            v55 = 0;
            v56 = &v55;
            v57 = 0x2050000000;
            v14 = getPKPassClass_softClass;
            v58 = getPKPassClass_softClass;
            if (!getPKPassClass_softClass)
            {
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __getPKPassClass_block_invoke;
              v61 = &unk_278955BF0;
              v62 = &v55;
              __getPKPassClass_block_invoke(buf);
              v14 = v56[3];
            }

            v15 = v14;
            _Block_object_dispose(&v55, 8);
            v16 = [v14 alloc];
            v50 = 0;
            v17 = [v16 initWithData:v13 error:&v50];
            v18 = v50;
            v19 = v18;
            if (!v17 || v18)
            {
              v26 = sgLogHandle();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v27 = objc_opt_class();
                v41 = NSStringFromClass(v27);
                v28 = [v19 localizedDescription];
                *buf = 138412546;
                *&buf[4] = v41;
                *&buf[12] = 2112;
                *&buf[14] = v28;
                _os_log_error_impl(&dword_231E60000, v26, OS_LOG_TYPE_ERROR, "%@: Error encountered while initializing Wallet Pass from NSData: %@", buf, 0x16u);
              }
            }

            else
            {
              if ([objc_opt_class() isPassAvailable:v17])
              {
                v20 = sgLogHandle();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  v30 = objc_opt_class();
                  v42 = NSStringFromClass(v30);
                  v31 = [v17 serialNumber];
                  *buf = 138412547;
                  *&buf[4] = v42;
                  *&buf[12] = 2113;
                  *&buf[14] = v31;
                  _os_log_debug_impl(&dword_231E60000, v20, OS_LOG_TYPE_DEBUG, "%@, Wallet Pass with Serial No. %{private}@ exists, setting state duplicate", buf, 0x16u);
                }

                v21 = 3;
                goto LABEL_30;
              }

              if ([objc_opt_class() canAddPass:v17])
              {
                v21 = 1;
              }

              else
              {
                v20 = sgLogHandle();
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  v34 = objc_opt_class();
                  v44 = NSStringFromClass(v34);
                  v35 = [v17 serialNumber];
                  *buf = 138412547;
                  *&buf[4] = v44;
                  *&buf[12] = 2113;
                  *&buf[14] = v35;
                  _os_log_error_impl(&dword_231E60000, v20, OS_LOG_TYPE_ERROR, "%@, Cannot add wallet pass with Serial No. %{private}@ exists", buf, 0x16u);
                }

                v21 = 1;
LABEL_30:
              }

              v26 = [(SGWalletPassAttachmentDissector *)self _extractPassInformation:v17 filePath:v12 state:v21];
              if (v26)
              {
                v29 = [(SGWalletPassAttachmentDissector *)self _enrichmentsForWalletPassDictionary:v26 filePath:v12 parentMessage:v45 parentEntity:v46];
                if ([v47 count] <= 9)
                {
                  [v47 addObjectsFromArray:v29];
                }
              }

              else
              {
                v29 = sgLogHandle();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v32 = objc_opt_class();
                  v33 = NSStringFromClass(v32);
                  *buf = 138412290;
                  *&buf[4] = v33;
                  v43 = v33;
                  _os_log_error_impl(&dword_231E60000, v29, OS_LOG_TYPE_ERROR, "%@: Pass dictionary is nil. Skipping further processing of this pass", buf, 0xCu);
                }
              }
            }
          }

          else
          {
            v19 = sgLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v24 = objc_opt_class();
              v25 = NSStringFromClass(v24);
              *buf = 138412290;
              *&buf[4] = v25;
              _os_log_debug_impl(&dword_231E60000, v19, OS_LOG_TYPE_DEBUG, "%@: Attachment is not of type Wallet Pass", buf, 0xCu);
            }
          }

          goto LABEL_39;
        }

        v13 = sgLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          *buf = 138412290;
          *&buf[4] = v23;
          _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, "%@: Path is nil for pass attachment. Skipping this pass", buf, 0xCu);
        }

LABEL_39:

        objc_autoreleasePoolPop(v11);
      }

      v8 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (!v8)
      {
LABEL_41:

        [v46 addEnrichments:v47];
        break;
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (id)_extractPassInformation:(id)a3 filePath:(id)a4 state:(int)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  v11 = [v8 localizedDescription];
  if ([v11 length])
  {
    v12 = [v8 localizedDescription];
    [v10 setObject:v12 forKeyedSubscript:@"description"];
  }

  else
  {
    [v10 setObject:&stru_284703F00 forKeyedSubscript:@"description"];
  }

  v13 = [v8 localizedName];
  if ([v13 length])
  {
    v14 = [v8 localizedName];
    [v10 setObject:v14 forKeyedSubscript:@"name"];
  }

  else
  {
    [v10 setObject:&stru_284703F00 forKeyedSubscript:@"name"];
  }

  v15 = [v8 serialNumber];
  if ([v15 length])
  {
    v16 = [v8 serialNumber];
    [v10 setObject:v16 forKeyedSubscript:@"serial"];
  }

  else
  {
    [v10 setObject:&stru_284703F00 forKeyedSubscript:@"serial"];
  }

  v17 = [v8 organizationName];
  if ([v17 length])
  {
    v18 = [v8 organizationName];
    [v10 setObject:v18 forKeyedSubscript:@"organization"];
  }

  else
  {
    [v10 setObject:&stru_284703F00 forKeyedSubscript:@"organization"];
  }

  v19 = [v8 passURL];
  v20 = [v19 absoluteString];
  if ([v20 length])
  {
    v21 = [v8 passURL];
    v22 = [v21 absoluteString];
    [v10 setObject:v22 forKeyedSubscript:@"url"];
  }

  else
  {
    [v10 setObject:&stru_284703F00 forKeyedSubscript:@"url"];
  }

  [v10 setObject:v9 forKeyedSubscript:@"filepath"];
  v23 = walletPassStateDescription(a5);
  [v10 setObject:v23 forKeyedSubscript:@"passState"];

  v24 = [v8 localizedName];
  v25 = [v24 isEqualToString:@"BoardingPass"];

  v26 = [v8 allSemantics];
  v27 = [v26 count];

  if (v27)
  {
    v28 = [(SGWalletPassAttachmentDissector *)self _extractRelevantSemanticTagsFromPass:v8];
    [v10 setValuesForKeysWithDictionary:v28];
  }

  v29 = [v8 serialNumber];

  if (!v29)
  {
    v31 = sgLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v47 = 138412290;
      v48 = v38;
      _os_log_error_impl(&dword_231E60000, v31, OS_LOG_TYPE_ERROR, "%@: Missing serial number. Skipping wallet pass", &v47, 0xCu);
LABEL_30:
    }

LABEL_31:

    v41 = 0;
    goto LABEL_34;
  }

  if (!v25)
  {
    goto LABEL_33;
  }

  v30 = getPKPassSemanticDateKeyOriginalDepartureDate();
  v31 = [v10 objectForKeyedSubscript:v30];

  if (!v31)
  {
    v31 = sgLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v39 = objc_opt_class();
      v38 = NSStringFromClass(v39);
      v40 = [v8 localizedDescription];
      v47 = 138412547;
      v48 = v38;
      v49 = 2113;
      v50 = v40;
      _os_log_debug_impl(&dword_231E60000, v31, OS_LOG_TYPE_DEBUG, "%@: Ignoring pass without departure date: %{private}@", &v47, 0x16u);

      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v32 = [MEMORY[0x277D02098] showPastEvents];
  v33 = [MEMORY[0x277CBEAA8] date];
  [v31 timeIntervalSinceDate:v33];
  v35 = v34;

  if (v35 < 0.0 && (v32 & 1) == 0)
  {
    v36 = sgLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = [v8 localizedDescription];
      v47 = 138412547;
      v48 = v45;
      v49 = 2113;
      v50 = v46;
      _os_log_debug_impl(&dword_231E60000, v36, OS_LOG_TYPE_DEBUG, "%@: Ignoring old pass: %{private}@", &v47, 0x16u);
    }

    goto LABEL_31;
  }

LABEL_33:
  v41 = v10;
LABEL_34:

  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

- (id)_extractRelevantSemanticTagsFromPass:(id)a3
{
  v118[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 allSemantics];

  v6 = getPKPassSemanticStringKeyEventType();
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 stringValue];
  v9 = getPKPassSemanticStringKeyEventType();
  [v4 setObject:v8 forKeyedSubscript:v9];

  v10 = getPKPassSemanticStringKeyEventName();
  v11 = [v5 objectForKeyedSubscript:v10];
  v12 = [v11 stringValue];
  v13 = getPKPassSemanticStringKeyEventName();
  [v4 setObject:v12 forKeyedSubscript:v13];

  v14 = getPKPassSemanticDateKeyEventStartDate();
  v15 = [v5 objectForKeyedSubscript:v14];
  v16 = [v15 dateValue];
  v17 = getPKPassSemanticDateKeyEventStartDate();
  [v4 setObject:v16 forKeyedSubscript:v17];

  v18 = getPKPassSemanticDateKeyEventEndDate();
  v19 = [v5 objectForKeyedSubscript:v18];
  v20 = [v19 dateValue];
  v21 = getPKPassSemanticDateKeyEventEndDate();
  [v4 setObject:v20 forKeyedSubscript:v21];

  v22 = getPKPassSemanticNumberKeySilenceRequested();
  v23 = [v5 objectForKeyedSubscript:v22];
  v24 = [v23 numberValue];
  v25 = getPKPassSemanticNumberKeySilenceRequested();
  [v4 setObject:v24 forKeyedSubscript:v25];

  v26 = getPKPassSemanticStringKeyVenueName();
  v27 = [v5 objectForKeyedSubscript:v26];
  v28 = [v27 stringValue];
  v29 = getPKPassSemanticStringKeyVenueName();
  [v4 setObject:v28 forKeyedSubscript:v29];

  v30 = getPKPassSemanticStringKeyVenueRoom();
  v31 = [v5 objectForKeyedSubscript:v30];
  v32 = [v31 stringValue];
  v33 = getPKPassSemanticStringKeyVenueRoom();
  [v4 setObject:v32 forKeyedSubscript:v33];

  v34 = getPKPassSemanticStringKeyVenueEntrance();
  v35 = [v5 objectForKeyedSubscript:v34];
  v36 = [v35 stringValue];
  v37 = getPKPassSemanticStringKeyVenueEntrance();
  [v4 setObject:v36 forKeyedSubscript:v37];

  v38 = getPKPassSemanticStringKeyVenuePhoneNumber();
  v39 = [v5 objectForKeyedSubscript:v38];
  v40 = [v39 stringValue];
  v41 = getPKPassSemanticStringKeyVenuePhoneNumber();
  [v4 setObject:v40 forKeyedSubscript:v41];

  v42 = getPKPassSemanticLocationKeyVenueLocation();
  v43 = [v5 objectForKeyedSubscript:v42];
  v44 = [v43 locationValue];

  if (v44)
  {
    v117[0] = @"lat";
    v45 = MEMORY[0x277CCABB0];
    [v44 coordinate];
    v46 = [v45 numberWithDouble:?];
    v117[1] = @"lon";
    v118[0] = v46;
    v47 = MEMORY[0x277CCABB0];
    [v44 coordinate];
    v49 = [v47 numberWithDouble:v48];
    v118[1] = v49;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:2];
    v51 = getPKPassSemanticLocationKeyVenueLocation();
    [v4 setObject:v50 forKeyedSubscript:v51];
  }

  v52 = getPKPassSemanticDateKeyOriginalDepartureDate();
  v53 = [v5 objectForKeyedSubscript:v52];
  v54 = [v53 dateValue];
  v55 = getPKPassSemanticDateKeyOriginalDepartureDate();
  [v4 setObject:v54 forKeyedSubscript:v55];

  v56 = getPKPassSemanticDateKeyOriginalArrivalDate();
  v57 = [v5 objectForKeyedSubscript:v56];
  v58 = [v57 dateValue];
  v59 = getPKPassSemanticDateKeyOriginalArrivalDate();
  [v4 setObject:v58 forKeyedSubscript:v59];

  v60 = getPKPassSemanticStringKeyDepartureLocationDescription();
  v61 = [v5 objectForKeyedSubscript:v60];
  v62 = [v61 stringValue];
  v63 = getPKPassSemanticStringKeyDepartureLocationDescription();
  [v4 setObject:v62 forKeyedSubscript:v63];

  v64 = getPKPassSemanticLocationKeyDepartureLocation();
  v65 = [v5 objectForKeyedSubscript:v64];
  v66 = [v65 locationValue];

  if (v66)
  {
    v115[0] = @"lat";
    v67 = MEMORY[0x277CCABB0];
    [v66 coordinate];
    v68 = [v67 numberWithDouble:?];
    v115[1] = @"lon";
    v116[0] = v68;
    v69 = MEMORY[0x277CCABB0];
    [v66 coordinate];
    v71 = [v69 numberWithDouble:v70];
    v116[1] = v71;
    v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:2];
    v73 = getPKPassSemanticLocationKeyDepartureLocation();
    [v4 setObject:v72 forKeyedSubscript:v73];
  }

  v74 = getPKPassSemanticLocationKeyDestinationLocation();
  v75 = [v5 objectForKeyedSubscript:v74];
  v76 = [v75 locationValue];

  if (v76)
  {
    v113[0] = @"lat";
    v77 = MEMORY[0x277CCABB0];
    [v76 coordinate];
    v78 = [v77 numberWithDouble:?];
    v113[1] = @"lon";
    v114[0] = v78;
    v79 = MEMORY[0x277CCABB0];
    [v76 coordinate];
    v81 = [v79 numberWithDouble:v80];
    v114[1] = v81;
    v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:2];
    v83 = getPKPassSemanticLocationKeyDestinationLocation();
    [v4 setObject:v82 forKeyedSubscript:v83];
  }

  v84 = getPKPassSemanticStringKeyDestinationLocationDescription();
  v85 = [v5 objectForKeyedSubscript:v84];
  v86 = [v85 stringValue];
  v87 = getPKPassSemanticStringKeyDestinationLocationDescription();
  [v4 setObject:v86 forKeyedSubscript:v87];

  v88 = getPKPassSemanticStringKeyFlightCode();
  v89 = [v5 objectForKeyedSubscript:v88];
  v90 = [v89 stringValue];
  v91 = getPKPassSemanticStringKeyFlightCode();
  [v4 setObject:v90 forKeyedSubscript:v91];

  v92 = getPKPassSemanticNumberKeyFlightNumber();
  v93 = [v5 objectForKeyedSubscript:v92];
  v94 = [v93 numberValue];
  v95 = getPKPassSemanticNumberKeyFlightNumber();
  [v4 setObject:v94 forKeyedSubscript:v95];

  v96 = getPKPassSemanticStringKeyAirlineCode();
  v97 = [v5 objectForKeyedSubscript:v96];
  v98 = [v97 stringValue];
  v99 = getPKPassSemanticStringKeyAirlineCode();
  [v4 setObject:v98 forKeyedSubscript:v99];

  v100 = getPKPassSemanticStringKeyDepartureAirportCode();
  v101 = [v5 objectForKeyedSubscript:v100];
  v102 = [v101 stringValue];
  v103 = getPKPassSemanticStringKeyDepartureAirportCode();
  [v4 setObject:v102 forKeyedSubscript:v103];

  v104 = getPKPassSemanticStringKeyDestinationAirportCode();
  v105 = [v5 objectForKeyedSubscript:v104];
  v106 = [v105 stringValue];
  v107 = getPKPassSemanticStringKeyDestinationAirportCode();
  [v4 setObject:v106 forKeyedSubscript:v107];

  v108 = sgLogHandle();
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
  {
    v111 = 138477827;
    v112 = v4;
    _os_log_debug_impl(&dword_231E60000, v108, OS_LOG_TYPE_DEBUG, "SGWalletPassAttachmentDissector: Extracted relevant semantic tags from pass: %{private}@", &v111, 0xCu);
  }

  v109 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_passDataForFilePath:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CBEA90];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  v15 = 0;
  v6 = [v4 dataWithContentsOfURL:v5 options:1 error:&v15];
  v7 = v15;

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = &stru_284703F00;
      *buf = 138412802;
      v17 = v13;
      if (v7)
      {
        v14 = v7;
      }

      v18 = 2112;
      v19 = v3;
      v20 = 2112;
      v21 = v14;
      _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "%@: Failed to read data for wallet pass: %@ - Error: %@", buf, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_enrichmentsForWalletPassDictionary:(id)a3 filePath:(id)a4 parentMessage:(id)a5 parentEntity:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a6;
  v11 = [v8 objectForKeyedSubscript:@"serial"];
  v12 = [v10 duplicateKey];
  v13 = [SGDuplicateKey duplicateKeyForWalletPassIdentifier:v11 parentKey:v12];

  v14 = [SGPipelineEnrichment alloc];
  v15 = [v8 objectForKeyedSubscript:@"description"];
  v16 = [(SGPipelineEnrichment *)v14 initWithDuplicateKey:v13 title:v15 parent:v10];

  v33 = 0;
  v17 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v9 options:1 error:&v33];
  v18 = v33;
  if (v17)
  {
    v19 = [MEMORY[0x277D01FA0] walletPassData:v17];
    if (v19)
    {
      v20 = v19;
      [(SGEntity *)v16 addTag:v19];
    }

    else
    {
      v23 = sgLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        *buf = 138412290;
        v36 = v32;
        _os_log_error_impl(&dword_231E60000, v23, OS_LOG_TYPE_ERROR, "%@: Entity tag is nil for wallet pass data. Skipping this order", buf, 0xCu);
      }

      v20 = 0;
    }
  }

  else
  {
    v20 = sgLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138412802;
      v36 = v22;
      v37 = 2112;
      v38 = v9;
      v39 = 2112;
      v40 = v18;
      _os_log_error_impl(&dword_231E60000, v20, OS_LOG_TYPE_ERROR, "%@: Could not load data for file path: %@. Error: %@", buf, 0x20u);
    }
  }

  v24 = [MEMORY[0x277D01FA0] walletPassDictionary:v8];
  if (v24)
  {
    [(SGEntity *)v16 addTag:v24];
    if (v16)
    {
LABEL_11:
      v34 = v16;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
      goto LABEL_16;
    }
  }

  else
  {
    v26 = sgLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138412290;
      v36 = v30;
      _os_log_error_impl(&dword_231E60000, v26, OS_LOG_TYPE_ERROR, "%@: Entity tag is nil for wallet pass dictionary. Skipping this order", buf, 0xCu);
    }

    if (v16)
    {
      goto LABEL_11;
    }
  }

  v25 = 0;
LABEL_16:

  v27 = *MEMORY[0x277D85DE8];

  return v25;
}

uint64_t __70__SGWalletPassAttachmentDissector__filteredWalletPassAttachmentsFrom___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isWalletPassMimeType])
  {
    v3 = [v2 isDownloadedLocally];
  }

  else
  {
    v4 = [v2 path];
    v5 = [v4 pathExtension];
    if ([v5 isEqualToString:@"pkpass"])
    {
      v3 = [v2 isDownloadedLocally];
    }

    else
    {
      v6 = [v2 filename];
      v7 = [v6 pathExtension];
      if ([v7 isEqualToString:@"pkpass"])
      {
        v3 = [v2 isDownloadedLocally];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

@end