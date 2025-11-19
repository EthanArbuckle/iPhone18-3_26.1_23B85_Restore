@interface IREventDO
+ (IREventDO)eventDOWithAppleTVControlType:(int64_t)a3;
+ (IREventDO)eventDOWithHomeType:(int64_t)a3;
+ (IREventDO)eventDOWithMediaType:(int64_t)a3 bundleID:(id)a4;
+ (id)atvUserInteractionEvents;
+ (id)homeUserInteractionEvents;
+ (id)mediaBrokeredDeviceEvents;
+ (id)mediaUserInteractionEvents;
+ (id)pickerChoiceEvents;
- (BOOL)isBannerEvent;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEventDO:(id)a3;
- (BOOL)isPickerChoiceEvent;
- (BOOL)isUserIntentionEvent;
- (IREventDO)initWithCoder:(id)a3;
- (IREventDO)initWithEventType:(int64_t)a3 eventSubType:(int64_t)a4 name:(id)a5 bundleID:(id)a6 contextIdentifier:(id)a7 isOutsideApp:(BOOL)a8 isEligibleApp:(BOOL)a9;
- (id)copyWithReplacementBundleID:(id)a3;
- (id)copyWithReplacementContextIdentifier:(id)a3;
- (id)copyWithReplacementEventSubType:(int64_t)a3;
- (id)copyWithReplacementEventType:(int64_t)a3;
- (id)copyWithReplacementName:(id)a3;
- (id)description;
- (id)exportAsDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IREventDO

+ (id)mediaUserInteractionEvents
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [IREventDO eventDOWithMediaType:5];
  v4 = [IREventDO eventDOWithMediaType:0];
  v5 = [v2 setWithObjects:{v3, v4, 0}];

  return v5;
}

+ (id)mediaBrokeredDeviceEvents
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [IREventDO eventDOWithMediaType:9];
  v4 = [IREventDO eventDOWithMediaType:10];
  v5 = [v2 setWithObjects:{v3, v4, 0}];

  return v5;
}

+ (IREventDO)eventDOWithMediaType:(int64_t)a3 bundleID:(id)a4
{
  v5 = a4;
  v6 = [IREventDO alloc];
  LOBYTE(v9) = 0;
  v7 = [(IREventDO *)v6 initWithEventType:a3 eventSubType:0 name:*MEMORY[0x277D21300] bundleID:v5 contextIdentifier:0 isOutsideApp:0 isEligibleApp:v9];

  return v7;
}

+ (IREventDO)eventDOWithAppleTVControlType:(int64_t)a3
{
  v4 = [IREventDO alloc];
  LOBYTE(v7) = 0;
  v5 = [(IREventDO *)v4 initWithEventType:a3 eventSubType:0 name:*MEMORY[0x277D212F0] bundleID:0 contextIdentifier:0 isOutsideApp:0 isEligibleApp:v7];

  return v5;
}

+ (IREventDO)eventDOWithHomeType:(int64_t)a3
{
  v4 = [IREventDO alloc];
  LOBYTE(v7) = 0;
  v5 = [(IREventDO *)v4 initWithEventType:a3 eventSubType:0 name:*MEMORY[0x277D212F8] bundleID:0 contextIdentifier:0 isOutsideApp:0 isEligibleApp:v7];

  return v5;
}

+ (id)atvUserInteractionEvents
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [IREventDO eventDOWithAppleTVControlType:0];
  v4 = [IREventDO eventDOWithAppleTVControlType:3];
  v5 = [v2 setWithObjects:{v3, v4, 0}];

  return v5;
}

+ (id)homeUserInteractionEvents
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [IREventDO eventDOWithHomeType:0];
  v4 = [v2 setWithObjects:{v3, 0}];

  return v4;
}

+ (id)pickerChoiceEvents
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [IREventDO eventDOWithAppleTVControlType:0];
  v4 = [IREventDO eventDOWithMediaType:0];
  v5 = [v2 setWithObjects:{v3, v4, 0}];

  return v5;
}

- (id)exportAsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277D212B0] eventTypeStringEventDO:self];
  [v3 setObject:v4 forKeyedSubscript:@"eventType"];

  v5 = [MEMORY[0x277D212B0] eventSubTypeStringEventDO:self];
  [v3 setObject:v5 forKeyedSubscript:@"eventSubType"];

  v6 = [(IREventDO *)self name];
  [v3 setObject:v6 forKeyedSubscript:@"name"];

  v7 = [(IREventDO *)self bundleID];
  [v3 setObject:v7 forKeyedSubscript:@"bundleID"];

  v8 = [(IREventDO *)self contextIdentifier];
  [v3 setObject:v8 forKeyedSubscript:@"contextIdentifier"];

  return v3;
}

- (BOOL)isUserIntentionEvent
{
  v3 = +[IREventDO mediaUserInteractionEvents];
  if ([v3 containsObject:self])
  {
    v4 = 1;
  }

  else
  {
    v5 = +[IREventDO atvUserInteractionEvents];
    if ([v5 containsObject:self])
    {
      v4 = 1;
    }

    else
    {
      v6 = +[IREventDO mediaBrokeredDeviceEvents];
      if ([v6 containsObject:self])
      {
        v4 = 1;
      }

      else
      {
        v7 = +[IREventDO homeUserInteractionEvents];
        v4 = [v7 containsObject:self];
      }
    }
  }

  return v4;
}

- (BOOL)isPickerChoiceEvent
{
  v3 = +[IREventDO pickerChoiceEvents];
  LOBYTE(self) = [v3 containsObject:self];

  return self;
}

- (BOOL)isBannerEvent
{
  v17[5] = *MEMORY[0x277D85DE8];
  v3 = 1;
  v4 = [IREventDO eventDOWithMediaType:1];
  v17[0] = v4;
  v5 = [IREventDO eventDOWithMediaType:2];
  v17[1] = v5;
  v6 = [IREventDO eventDOWithMediaType:3];
  v17[2] = v6;
  v7 = [IREventDO eventDOWithMediaType:4];
  v17[3] = v7;
  v8 = [IREventDO eventDOWithMediaType:8];
  v17[4] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];

  v10 = [IREventDO eventDOWithAppleTVControlType:4];
  v16[0] = v10;
  v11 = [IREventDO eventDOWithAppleTVControlType:5];
  v16[1] = v11;
  v12 = [IREventDO eventDOWithAppleTVControlType:2];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  if (([v9 containsObject:self] & 1) == 0)
  {
    v3 = [v13 containsObject:self];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

- (IREventDO)initWithEventType:(int64_t)a3 eventSubType:(int64_t)a4 name:(id)a5 bundleID:(id)a6 contextIdentifier:(id)a7 isOutsideApp:(BOOL)a8 isEligibleApp:(BOOL)a9
{
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v22.receiver = self;
  v22.super_class = IREventDO;
  v19 = [(IREventDO *)&v22 init];
  v20 = v19;
  if (v19)
  {
    v19->_eventType = a3;
    v19->_eventSubType = a4;
    objc_storeStrong(&v19->_name, a5);
    objc_storeStrong(&v20->_bundleID, a6);
    objc_storeStrong(&v20->_contextIdentifier, a7);
    v20->_isOutsideApp = a8;
    v20->_isEligibleApp = a9;
  }

  return v20;
}

- (id)copyWithReplacementEventType:(int64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  LOBYTE(v7) = self->_isEligibleApp;
  return [v5 initWithEventType:a3 eventSubType:self->_eventSubType name:self->_name bundleID:self->_bundleID contextIdentifier:self->_contextIdentifier isOutsideApp:self->_isOutsideApp isEligibleApp:v7];
}

- (id)copyWithReplacementEventSubType:(int64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  LOBYTE(v7) = self->_isEligibleApp;
  return [v5 initWithEventType:self->_eventType eventSubType:a3 name:self->_name bundleID:self->_bundleID contextIdentifier:self->_contextIdentifier isOutsideApp:self->_isOutsideApp isEligibleApp:v7];
}

- (id)copyWithReplacementName:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LOBYTE(v8) = self->_isEligibleApp;
  v6 = [v5 initWithEventType:self->_eventType eventSubType:self->_eventSubType name:v4 bundleID:self->_bundleID contextIdentifier:self->_contextIdentifier isOutsideApp:self->_isOutsideApp isEligibleApp:v8];

  return v6;
}

- (id)copyWithReplacementBundleID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LOBYTE(v8) = self->_isEligibleApp;
  v6 = [v5 initWithEventType:self->_eventType eventSubType:self->_eventSubType name:self->_name bundleID:v4 contextIdentifier:self->_contextIdentifier isOutsideApp:self->_isOutsideApp isEligibleApp:v8];

  return v6;
}

- (id)copyWithReplacementContextIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LOBYTE(v8) = self->_isEligibleApp;
  v6 = [v5 initWithEventType:self->_eventType eventSubType:self->_eventSubType name:self->_name bundleID:self->_bundleID contextIdentifier:v4 isOutsideApp:self->_isOutsideApp isEligibleApp:v8];

  return v6;
}

- (BOOL)isEqualToEventDO:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (eventType = self->_eventType, eventType == [v4 eventType]) && (eventSubType = self->_eventSubType, eventSubType == objc_msgSend(v5, "eventSubType")) && (v8 = self->_name == 0, objc_msgSend(v5, "name"), v9 = objc_claimAutoreleasedReturnValue(), v10 = v9 != 0, v9, v8 != v10))
  {
    name = self->_name;
    if (name)
    {
      v12 = [v5 name];
      v13 = [(NSString *)name isEqual:v12];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IREventDO *)self isEqualToEventDO:v5];
  }

  return v6;
}

- (IREventDO)initWithCoder:(id)a3
{
  v53[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"eventType"];
  if (!v5)
  {
    v15 = [v4 error];

    if (v15)
    {
      goto LABEL_10;
    }

    if (([v4 containsValueForKey:@"eventType"] & 1) == 0)
    {
      v52 = *MEMORY[0x277CCA450];
      v53[0] = @"Missing serialized value for IREventDO.eventType";
      v16 = MEMORY[0x277CBEAC0];
      v17 = v53;
      v18 = &v52;
      goto LABEL_18;
    }
  }

  v6 = [v4 decodeInt64ForKey:@"eventSubType"];
  if (v6)
  {
LABEL_3:
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IREventDO key name (expected %@, decoded %@)", v9, v11, 0];
        v48 = *MEMORY[0x277CCA450];
        v49 = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
        v14 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IREventDOOCNTErrorDomain" code:3 userInfo:v13];
        [v4 failWithError:v14];
LABEL_25:

LABEL_26:
LABEL_27:
        v20 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      v21 = [v4 error];

      if (v21)
      {
        v20 = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = objc_opt_class();
        v11 = NSStringFromClass(v22);
        v23 = objc_opt_class();
        v12 = NSStringFromClass(v23);
        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IREventDO key bundleID (expected %@, decoded %@)", v11, v12, 0];
        v46 = *MEMORY[0x277CCA450];
        v47 = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v24 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IREventDOOCNTErrorDomain" code:3 userInfo:v14];
        [v4 failWithError:v24];
LABEL_24:

        goto LABEL_25;
      }

LABEL_21:
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contextIdentifier"];
      if (v11)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v26 = objc_opt_class();
          v12 = NSStringFromClass(v26);
          v27 = objc_opt_class();
          v13 = NSStringFromClass(v27);
          v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IREventDO key contextIdentifier (expected %@, decoded %@)", v12, v13, 0];
          v44 = *MEMORY[0x277CCA450];
          v45 = v14;
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
          v28 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IREventDOOCNTErrorDomain" code:3 userInfo:v24];
          [v4 failWithError:v28];

          goto LABEL_24;
        }
      }

      else
      {
        v31 = [v4 error];

        if (v31)
        {
          goto LABEL_27;
        }
      }

      v32 = [v4 decodeInt64ForKey:@"isOutsideApp"];
      if (v32)
      {
        goto LABEL_34;
      }

      v34 = [v4 error];

      if (v34)
      {
        goto LABEL_27;
      }

      if ([v4 containsValueForKey:@"isOutsideApp"])
      {
LABEL_34:
        v33 = [v4 decodeInt64ForKey:@"isEligibleApp"];
        if (v33)
        {
          goto LABEL_35;
        }

        v38 = [v4 error];

        if (v38)
        {
          goto LABEL_27;
        }

        if ([v4 containsValueForKey:@"isEligibleApp"])
        {
LABEL_35:
          LOBYTE(v39) = v33 != 0;
          self = [(IREventDO *)self initWithEventType:v5 eventSubType:v6 name:v7 bundleID:v9 contextIdentifier:v11 isOutsideApp:v32 != 0 isEligibleApp:v39];
          v20 = self;
          goto LABEL_28;
        }

        v40 = *MEMORY[0x277CCA450];
        v41 = @"Missing serialized value for IREventDO.isEligibleApp";
        v35 = MEMORY[0x277CBEAC0];
        v36 = &v41;
        v37 = &v40;
      }

      else
      {
        v42 = *MEMORY[0x277CCA450];
        v43 = @"Missing serialized value for IREventDO.isOutsideApp";
        v35 = MEMORY[0x277CBEAC0];
        v36 = &v43;
        v37 = &v42;
      }

      v12 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:1];
      v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IREventDOOCNTErrorDomain" code:1 userInfo:v12];
      [v4 failWithError:v13];
      goto LABEL_26;
    }

    v25 = [v4 error];

    if (!v25)
    {
      goto LABEL_21;
    }

LABEL_20:
    v20 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v19 = [v4 error];

  if (!v19)
  {
    if ([v4 containsValueForKey:@"eventSubType"])
    {
      goto LABEL_3;
    }

    v50 = *MEMORY[0x277CCA450];
    v51 = @"Missing serialized value for IREventDO.eventSubType";
    v16 = MEMORY[0x277CBEAC0];
    v17 = &v51;
    v18 = &v50;
LABEL_18:
    v7 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
    v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IREventDOOCNTErrorDomain" code:1 userInfo:v7];
    [v4 failWithError:v9];
    goto LABEL_20;
  }

LABEL_10:
  v20 = 0;
LABEL_31:

  v29 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeInt64:self->_eventType forKey:@"eventType"];
  [v8 encodeInt64:self->_eventSubType forKey:@"eventSubType"];
  name = self->_name;
  if (name)
  {
    [v8 encodeObject:name forKey:@"name"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v8 encodeObject:bundleID forKey:@"bundleID"];
  }

  contextIdentifier = self->_contextIdentifier;
  v7 = v8;
  if (contextIdentifier)
  {
    [v8 encodeObject:contextIdentifier forKey:@"contextIdentifier"];
    v7 = v8;
  }

  [v7 encodeInt64:self->_isOutsideApp forKey:@"isOutsideApp"];
  [v8 encodeInt64:self->_isEligibleApp forKey:@"isEligibleApp"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_eventType];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_eventSubType];
  v11 = *&self->_name;
  contextIdentifier = self->_contextIdentifier;
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isOutsideApp];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEligibleApp];
  v9 = [v3 initWithFormat:@"<IREventDO | eventType:%@ eventSubType:%@ name:%@ bundleID:%@ contextIdentifier:%@ isOutsideApp:%@ isEligibleApp:%@>", v4, v5, v11, contextIdentifier, v7, v8];

  return v9;
}

@end