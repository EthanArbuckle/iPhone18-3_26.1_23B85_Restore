@interface UARPDynamicAssetTmapEvent
- (UARPDynamicAssetTmapEvent)init;
- (UARPDynamicAssetTmapEvent)initWithCoder:(id)a3;
- (UARPDynamicAssetTmapEvent)initWithEventFields:(id)a3 eventID:(unsigned int)a4 endian:(id)a5;
- (id)description;
- (id)expandMticData:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPDynamicAssetTmapEvent

- (UARPDynamicAssetTmapEvent)init
{
  [(UARPDynamicAssetTmapEvent *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPDynamicAssetTmapEvent)initWithEventFields:(id)a3 eventID:(unsigned int)a4 endian:(id)a5
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v58.receiver = self;
  v58.super_class = UARPDynamicAssetTmapEvent;
  v10 = [(UARPDynamicAssetTmapEvent *)&v58 init];
  if (!v10)
  {
LABEL_17:
    v26 = 0;
    goto LABEL_18;
  }

  v11 = os_log_create("com.apple.accessoryupdater.uarp", "tmap");
  log = v10->_log;
  v10->_log = v11;

  v10->_eventID = a4;
  v13 = [v8 objectForKeyedSubscript:@"EventName"];
  v14 = [v13 copy];
  eventName = v10->_eventName;
  v10->_eventName = v14;

  if (!v10->_eventName)
  {
    v27 = v10->_log;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(UARPDynamicAssetTmapEvent *)v27 initWithEventFields:v28 eventID:v29 endian:v30, v31, v32, v33, v34];
    }

    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v35 = v10->_log;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [(UARPDynamicAssetTmapEvent *)v35 initWithEventFields:v36 eventID:v37 endian:v38, v39, v40, v41, v42];
    }

    goto LABEL_17;
  }

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v53 = v8;
  v17 = [v8 objectForKeyedSubscript:@"EventFields"];
  v18 = [v17 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v55;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v55 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v54 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v45 = v10->_log;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            [(UARPDynamicAssetTmapEvent *)v45 initWithEventFields:v46 eventID:v47 endian:v48, v49, v50, v51, v52];
          }

          v26 = 0;
          goto LABEL_22;
        }

        v23 = [[TmapFieldTLV alloc] initWithDictionary:v22 endian:v9];
        [v16 addObject:v23];
      }

      v19 = [v17 countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v24 = [MEMORY[0x277CBEA60] arrayWithArray:v16];
  eventFields = v10->_eventFields;
  v10->_eventFields = v24;

  v26 = v10;
LABEL_22:
  v8 = v53;

LABEL_18:
  v43 = *MEMORY[0x277D85DE8];
  return v26;
}

- (UARPDynamicAssetTmapEvent)initWithCoder:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = UARPDynamicAssetTmapEvent;
  v5 = [(UARPDynamicAssetTmapEvent *)&v18 init];
  if (v5)
  {
    v5->_eventID = [v4 decodeIntForKey:@"EventID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EventName"];
    eventName = v5->_eventName;
    v5->_eventName = v6;

    v8 = MEMORY[0x277CBEB98];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"EventFields"];
    eventFields = v5->_eventFields;
    v5->_eventFields = v11;

    v13 = os_log_create("com.apple.accessoryupdater.uarp", "tmap");
    log = v5->_log;
    v5->_log = v13;

    v15 = v5;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  eventID = self->_eventID;
  v5 = a3;
  [v5 encodeInteger:eventID forKey:@"EventID"];
  [v5 encodeObject:self->_eventName forKey:@"EventName"];
  [v5 encodeObject:self->_eventFields forKey:@"EventFields"];
}

- (id)expandMticData:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(NSString *)self->_eventName copy];
  [v5 setObject:v6 forKeyedSubscript:@"EventName"];

  v7 = MGGetBoolAnswer();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_eventFields;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (((v7 & 1) != 0 || ([*(*(&v20 + 1) + 8 * i) isFieldPrivacyRestricted] & 1) == 0) && !objc_msgSend(v14, "expandFieldData:withOffset:inCoreAnalytics:", v4, v11, v5) || (v19 = 0, !objc_msgSend(v14, "getNextOffset:fromStart:", &v19, v11)))
        {

          goto LABEL_19;
        }

        v11 = v19;
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v11 == [v4 length])
  {
    v15 = [v5 copy];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(UARPDynamicAssetTmapEvent *)log expandMticData:v4, v11];
    }

LABEL_19:
    v15 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)description
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"Event ID %u\n", self->_eventID];
  if (self->_eventName)
  {
    [v3 appendFormat:@"Event Name %@\n", self->_eventName];
  }

  else
  {
    [v3 appendFormat:@"No Event Name", v12];
  }

  eventFields = self->_eventFields;
  if (eventFields)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = eventFields;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v3 appendFormat:@"TMAP Event TLV %@\n", *(*(&v13 + 1) + 8 * i)];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    [v3 appendFormat:@"No TMAP Event TLVs"];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)initWithEventFields:(uint64_t)a3 eventID:(uint64_t)a4 endian:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a1, a3, "%s: Event Name is not type String", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithEventFields:(uint64_t)a3 eventID:(uint64_t)a4 endian:(uint64_t)a5 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a1, a3, "%s: Event Entry is not type Dictionary", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithEventFields:(uint64_t)a3 eventID:(uint64_t)a4 endian:(uint64_t)a5 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a1, a3, "%s: Event Name doesn't exist in Tmap Event", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)expandMticData:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v7 = 134218240;
  v8 = [a2 length];
  v9 = 2048;
  v10 = a3;
  _os_log_error_impl(&dword_247AA7000, v5, OS_LOG_TYPE_ERROR, "Lengths of MTIC Data(%lu) and TMAP Data(%lu) do not match.", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end