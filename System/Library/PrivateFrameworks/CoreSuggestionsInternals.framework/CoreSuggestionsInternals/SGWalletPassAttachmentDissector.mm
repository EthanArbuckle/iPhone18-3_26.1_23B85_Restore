@interface SGWalletPassAttachmentDissector
+ (BOOL)canAddPass:(id)pass;
+ (BOOL)isPassAvailable:(id)available;
- (id)_enrichmentsForWalletPassDictionary:(id)dictionary filePath:(id)path parentMessage:(id)message parentEntity:(id)entity;
- (id)_extractPassInformation:(id)information filePath:(id)path state:(int)state;
- (id)_extractRelevantSemanticTagsFromPass:(id)pass;
- (id)_passDataForFilePath:(id)path;
- (void)_dissectMessage:(id)message entity:(id)entity;
- (void)dissectMailMessage:(id)message entity:(id)entity context:(id)context;
- (void)dissectTextMessage:(id)message entity:(id)entity context:(id)context;
@end

@implementation SGWalletPassAttachmentDissector

+ (BOOL)isPassAvailable:(id)available
{
  availableCopy = available;
  if ([getPKPassLibraryClass() isPassLibraryAvailable])
  {
    sharedInstance = [getPKPassLibraryClass() sharedInstance];
    v5 = [sharedInstance containsPass:availableCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)canAddPass:(id)pass
{
  passCopy = pass;
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
  canAddPasses = [v4 canAddPasses];

  return canAddPasses;
}

- (void)dissectTextMessage:(id)message entity:(id)entity context:(id)context
{
  messageCopy = message;
  entityCopy = entity;
  contextCopy = context;
  v10 = objc_autoreleasePoolPush();
  [(SGWalletPassAttachmentDissector *)self _dissectMessage:messageCopy entity:entityCopy];
  objc_autoreleasePoolPop(v10);
}

- (void)dissectMailMessage:(id)message entity:(id)entity context:(id)context
{
  messageCopy = message;
  entityCopy = entity;
  contextCopy = context;
  v10 = objc_autoreleasePoolPush();
  [(SGWalletPassAttachmentDissector *)self _dissectMessage:messageCopy entity:entityCopy];
  objc_autoreleasePoolPop(v10);
}

- (void)_dissectMessage:(id)message entity:(id)entity
{
  v63 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  entityCopy = entity;
  attachments = [messageCopy attachments];
  v40 = [(SGWalletPassAttachmentDissector *)self _filteredWalletPassAttachmentsFrom:attachments];

  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    attachments2 = [messageCopy attachments];
    *buf = 138412802;
    *&buf[4] = v38;
    *&buf[12] = 2048;
    *&buf[14] = [attachments2 count];
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
        path = [v10 path];
        if (path)
        {
          v13 = [(SGWalletPassAttachmentDissector *)self _passDataForFilePath:path];
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
                localizedDescription = [v19 localizedDescription];
                *buf = 138412546;
                *&buf[4] = v41;
                *&buf[12] = 2112;
                *&buf[14] = localizedDescription;
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
                  serialNumber = [v17 serialNumber];
                  *buf = 138412547;
                  *&buf[4] = v42;
                  *&buf[12] = 2113;
                  *&buf[14] = serialNumber;
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
                  serialNumber2 = [v17 serialNumber];
                  *buf = 138412547;
                  *&buf[4] = v44;
                  *&buf[12] = 2113;
                  *&buf[14] = serialNumber2;
                  _os_log_error_impl(&dword_231E60000, v20, OS_LOG_TYPE_ERROR, "%@, Cannot add wallet pass with Serial No. %{private}@ exists", buf, 0x16u);
                }

                v21 = 1;
LABEL_30:
              }

              v26 = [(SGWalletPassAttachmentDissector *)self _extractPassInformation:v17 filePath:path state:v21];
              if (v26)
              {
                v29 = [(SGWalletPassAttachmentDissector *)self _enrichmentsForWalletPassDictionary:v26 filePath:path parentMessage:messageCopy parentEntity:entityCopy];
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

        [entityCopy addEnrichments:v47];
        break;
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (id)_extractPassInformation:(id)information filePath:(id)path state:(int)state
{
  v51 = *MEMORY[0x277D85DE8];
  informationCopy = information;
  pathCopy = path;
  v10 = objc_opt_new();
  localizedDescription = [informationCopy localizedDescription];
  if ([localizedDescription length])
  {
    localizedDescription2 = [informationCopy localizedDescription];
    [v10 setObject:localizedDescription2 forKeyedSubscript:@"description"];
  }

  else
  {
    [v10 setObject:&stru_284703F00 forKeyedSubscript:@"description"];
  }

  localizedName = [informationCopy localizedName];
  if ([localizedName length])
  {
    localizedName2 = [informationCopy localizedName];
    [v10 setObject:localizedName2 forKeyedSubscript:@"name"];
  }

  else
  {
    [v10 setObject:&stru_284703F00 forKeyedSubscript:@"name"];
  }

  serialNumber = [informationCopy serialNumber];
  if ([serialNumber length])
  {
    serialNumber2 = [informationCopy serialNumber];
    [v10 setObject:serialNumber2 forKeyedSubscript:@"serial"];
  }

  else
  {
    [v10 setObject:&stru_284703F00 forKeyedSubscript:@"serial"];
  }

  organizationName = [informationCopy organizationName];
  if ([organizationName length])
  {
    organizationName2 = [informationCopy organizationName];
    [v10 setObject:organizationName2 forKeyedSubscript:@"organization"];
  }

  else
  {
    [v10 setObject:&stru_284703F00 forKeyedSubscript:@"organization"];
  }

  passURL = [informationCopy passURL];
  absoluteString = [passURL absoluteString];
  if ([absoluteString length])
  {
    passURL2 = [informationCopy passURL];
    absoluteString2 = [passURL2 absoluteString];
    [v10 setObject:absoluteString2 forKeyedSubscript:@"url"];
  }

  else
  {
    [v10 setObject:&stru_284703F00 forKeyedSubscript:@"url"];
  }

  [v10 setObject:pathCopy forKeyedSubscript:@"filepath"];
  v23 = walletPassStateDescription(state);
  [v10 setObject:v23 forKeyedSubscript:@"passState"];

  localizedName3 = [informationCopy localizedName];
  v25 = [localizedName3 isEqualToString:@"BoardingPass"];

  allSemantics = [informationCopy allSemantics];
  v27 = [allSemantics count];

  if (v27)
  {
    v28 = [(SGWalletPassAttachmentDissector *)self _extractRelevantSemanticTagsFromPass:informationCopy];
    [v10 setValuesForKeysWithDictionary:v28];
  }

  serialNumber3 = [informationCopy serialNumber];

  if (!serialNumber3)
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
      localizedDescription3 = [informationCopy localizedDescription];
      v47 = 138412547;
      v48 = v38;
      v49 = 2113;
      v50 = localizedDescription3;
      _os_log_debug_impl(&dword_231E60000, v31, OS_LOG_TYPE_DEBUG, "%@: Ignoring pass without departure date: %{private}@", &v47, 0x16u);

      goto LABEL_30;
    }

    goto LABEL_31;
  }

  showPastEvents = [MEMORY[0x277D02098] showPastEvents];
  date = [MEMORY[0x277CBEAA8] date];
  [v31 timeIntervalSinceDate:date];
  v35 = v34;

  if (v35 < 0.0 && (showPastEvents & 1) == 0)
  {
    v36 = sgLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      localizedDescription4 = [informationCopy localizedDescription];
      v47 = 138412547;
      v48 = v45;
      v49 = 2113;
      v50 = localizedDescription4;
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

- (id)_extractRelevantSemanticTagsFromPass:(id)pass
{
  v118[2] = *MEMORY[0x277D85DE8];
  passCopy = pass;
  v4 = objc_opt_new();
  allSemantics = [passCopy allSemantics];

  v6 = getPKPassSemanticStringKeyEventType();
  v7 = [allSemantics objectForKeyedSubscript:v6];
  stringValue = [v7 stringValue];
  v9 = getPKPassSemanticStringKeyEventType();
  [v4 setObject:stringValue forKeyedSubscript:v9];

  v10 = getPKPassSemanticStringKeyEventName();
  v11 = [allSemantics objectForKeyedSubscript:v10];
  stringValue2 = [v11 stringValue];
  v13 = getPKPassSemanticStringKeyEventName();
  [v4 setObject:stringValue2 forKeyedSubscript:v13];

  v14 = getPKPassSemanticDateKeyEventStartDate();
  v15 = [allSemantics objectForKeyedSubscript:v14];
  dateValue = [v15 dateValue];
  v17 = getPKPassSemanticDateKeyEventStartDate();
  [v4 setObject:dateValue forKeyedSubscript:v17];

  v18 = getPKPassSemanticDateKeyEventEndDate();
  v19 = [allSemantics objectForKeyedSubscript:v18];
  dateValue2 = [v19 dateValue];
  v21 = getPKPassSemanticDateKeyEventEndDate();
  [v4 setObject:dateValue2 forKeyedSubscript:v21];

  v22 = getPKPassSemanticNumberKeySilenceRequested();
  v23 = [allSemantics objectForKeyedSubscript:v22];
  numberValue = [v23 numberValue];
  v25 = getPKPassSemanticNumberKeySilenceRequested();
  [v4 setObject:numberValue forKeyedSubscript:v25];

  v26 = getPKPassSemanticStringKeyVenueName();
  v27 = [allSemantics objectForKeyedSubscript:v26];
  stringValue3 = [v27 stringValue];
  v29 = getPKPassSemanticStringKeyVenueName();
  [v4 setObject:stringValue3 forKeyedSubscript:v29];

  v30 = getPKPassSemanticStringKeyVenueRoom();
  v31 = [allSemantics objectForKeyedSubscript:v30];
  stringValue4 = [v31 stringValue];
  v33 = getPKPassSemanticStringKeyVenueRoom();
  [v4 setObject:stringValue4 forKeyedSubscript:v33];

  v34 = getPKPassSemanticStringKeyVenueEntrance();
  v35 = [allSemantics objectForKeyedSubscript:v34];
  stringValue5 = [v35 stringValue];
  v37 = getPKPassSemanticStringKeyVenueEntrance();
  [v4 setObject:stringValue5 forKeyedSubscript:v37];

  v38 = getPKPassSemanticStringKeyVenuePhoneNumber();
  v39 = [allSemantics objectForKeyedSubscript:v38];
  stringValue6 = [v39 stringValue];
  v41 = getPKPassSemanticStringKeyVenuePhoneNumber();
  [v4 setObject:stringValue6 forKeyedSubscript:v41];

  v42 = getPKPassSemanticLocationKeyVenueLocation();
  v43 = [allSemantics objectForKeyedSubscript:v42];
  locationValue = [v43 locationValue];

  if (locationValue)
  {
    v117[0] = @"lat";
    v45 = MEMORY[0x277CCABB0];
    [locationValue coordinate];
    v46 = [v45 numberWithDouble:?];
    v117[1] = @"lon";
    v118[0] = v46;
    v47 = MEMORY[0x277CCABB0];
    [locationValue coordinate];
    v49 = [v47 numberWithDouble:v48];
    v118[1] = v49;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v118 forKeys:v117 count:2];
    v51 = getPKPassSemanticLocationKeyVenueLocation();
    [v4 setObject:v50 forKeyedSubscript:v51];
  }

  v52 = getPKPassSemanticDateKeyOriginalDepartureDate();
  v53 = [allSemantics objectForKeyedSubscript:v52];
  dateValue3 = [v53 dateValue];
  v55 = getPKPassSemanticDateKeyOriginalDepartureDate();
  [v4 setObject:dateValue3 forKeyedSubscript:v55];

  v56 = getPKPassSemanticDateKeyOriginalArrivalDate();
  v57 = [allSemantics objectForKeyedSubscript:v56];
  dateValue4 = [v57 dateValue];
  v59 = getPKPassSemanticDateKeyOriginalArrivalDate();
  [v4 setObject:dateValue4 forKeyedSubscript:v59];

  v60 = getPKPassSemanticStringKeyDepartureLocationDescription();
  v61 = [allSemantics objectForKeyedSubscript:v60];
  stringValue7 = [v61 stringValue];
  v63 = getPKPassSemanticStringKeyDepartureLocationDescription();
  [v4 setObject:stringValue7 forKeyedSubscript:v63];

  v64 = getPKPassSemanticLocationKeyDepartureLocation();
  v65 = [allSemantics objectForKeyedSubscript:v64];
  locationValue2 = [v65 locationValue];

  if (locationValue2)
  {
    v115[0] = @"lat";
    v67 = MEMORY[0x277CCABB0];
    [locationValue2 coordinate];
    v68 = [v67 numberWithDouble:?];
    v115[1] = @"lon";
    v116[0] = v68;
    v69 = MEMORY[0x277CCABB0];
    [locationValue2 coordinate];
    v71 = [v69 numberWithDouble:v70];
    v116[1] = v71;
    v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:2];
    v73 = getPKPassSemanticLocationKeyDepartureLocation();
    [v4 setObject:v72 forKeyedSubscript:v73];
  }

  v74 = getPKPassSemanticLocationKeyDestinationLocation();
  v75 = [allSemantics objectForKeyedSubscript:v74];
  locationValue3 = [v75 locationValue];

  if (locationValue3)
  {
    v113[0] = @"lat";
    v77 = MEMORY[0x277CCABB0];
    [locationValue3 coordinate];
    v78 = [v77 numberWithDouble:?];
    v113[1] = @"lon";
    v114[0] = v78;
    v79 = MEMORY[0x277CCABB0];
    [locationValue3 coordinate];
    v81 = [v79 numberWithDouble:v80];
    v114[1] = v81;
    v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v114 forKeys:v113 count:2];
    v83 = getPKPassSemanticLocationKeyDestinationLocation();
    [v4 setObject:v82 forKeyedSubscript:v83];
  }

  v84 = getPKPassSemanticStringKeyDestinationLocationDescription();
  v85 = [allSemantics objectForKeyedSubscript:v84];
  stringValue8 = [v85 stringValue];
  v87 = getPKPassSemanticStringKeyDestinationLocationDescription();
  [v4 setObject:stringValue8 forKeyedSubscript:v87];

  v88 = getPKPassSemanticStringKeyFlightCode();
  v89 = [allSemantics objectForKeyedSubscript:v88];
  stringValue9 = [v89 stringValue];
  v91 = getPKPassSemanticStringKeyFlightCode();
  [v4 setObject:stringValue9 forKeyedSubscript:v91];

  v92 = getPKPassSemanticNumberKeyFlightNumber();
  v93 = [allSemantics objectForKeyedSubscript:v92];
  numberValue2 = [v93 numberValue];
  v95 = getPKPassSemanticNumberKeyFlightNumber();
  [v4 setObject:numberValue2 forKeyedSubscript:v95];

  v96 = getPKPassSemanticStringKeyAirlineCode();
  v97 = [allSemantics objectForKeyedSubscript:v96];
  stringValue10 = [v97 stringValue];
  v99 = getPKPassSemanticStringKeyAirlineCode();
  [v4 setObject:stringValue10 forKeyedSubscript:v99];

  v100 = getPKPassSemanticStringKeyDepartureAirportCode();
  v101 = [allSemantics objectForKeyedSubscript:v100];
  stringValue11 = [v101 stringValue];
  v103 = getPKPassSemanticStringKeyDepartureAirportCode();
  [v4 setObject:stringValue11 forKeyedSubscript:v103];

  v104 = getPKPassSemanticStringKeyDestinationAirportCode();
  v105 = [allSemantics objectForKeyedSubscript:v104];
  stringValue12 = [v105 stringValue];
  v107 = getPKPassSemanticStringKeyDestinationAirportCode();
  [v4 setObject:stringValue12 forKeyedSubscript:v107];

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

- (id)_passDataForFilePath:(id)path
{
  v22 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v4 = MEMORY[0x277CBEA90];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
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
      v19 = pathCopy;
      v20 = 2112;
      v21 = v14;
      _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "%@: Failed to read data for wallet pass: %@ - Error: %@", buf, 0x20u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_enrichmentsForWalletPassDictionary:(id)dictionary filePath:(id)path parentMessage:(id)message parentEntity:(id)entity
{
  v41 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  pathCopy = path;
  entityCopy = entity;
  v11 = [dictionaryCopy objectForKeyedSubscript:@"serial"];
  duplicateKey = [entityCopy duplicateKey];
  v13 = [SGDuplicateKey duplicateKeyForWalletPassIdentifier:v11 parentKey:duplicateKey];

  v14 = [SGPipelineEnrichment alloc];
  v15 = [dictionaryCopy objectForKeyedSubscript:@"description"];
  v16 = [(SGPipelineEnrichment *)v14 initWithDuplicateKey:v13 title:v15 parent:entityCopy];

  v33 = 0;
  v17 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:pathCopy options:1 error:&v33];
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
      v38 = pathCopy;
      v39 = 2112;
      v40 = v18;
      _os_log_error_impl(&dword_231E60000, v20, OS_LOG_TYPE_ERROR, "%@: Could not load data for file path: %@. Error: %@", buf, 0x20u);
    }
  }

  v24 = [MEMORY[0x277D01FA0] walletPassDictionary:dictionaryCopy];
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