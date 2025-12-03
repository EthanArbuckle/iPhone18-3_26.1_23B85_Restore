@interface CSSessionStateUpdate
+ (id)requiredParameters;
- (CSSessionStateUpdate)initWithMessage:(id)message;
- (CSSessionStateUpdate)initWithSessionState:(id)state;
- (id)dictionaryRepresentation;
@end

@implementation CSSessionStateUpdate

- (CSSessionStateUpdate)initWithMessage:(id)message
{
  messageCopy = message;
  v38.receiver = self;
  v38.super_class = CSSessionStateUpdate;
  v5 = [(CSMessage *)&v38 initWithMessage:messageCopy];
  if (!v5)
  {
    goto LABEL_27;
  }

  v6 = NSDictionaryGetNSNumber();
  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  v8 = NSDictionaryGetNSNumber();
  v9 = NSDictionaryGetNSNumber();
  v10 = v9;
  v11 = !v6 || v8 == 0;
  v12 = v11 || v9 == 0;
  v13 = !v12;
  if (v12)
  {
    v20 = ContinuitySingLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(CSSessionStateUpdate *)messageCopy initWithMessage:v20];
    }
  }

  else
  {
    v30 = v13;
    v5->_reverbLevel = [v6 integerValue];
    v31 = v8;
    [v8 doubleValue];
    v5->_micVolume = v14;
    v32 = v7;
    objc_storeStrong(&v5->_activeMicRemoteDisplayID, v7);
    v5->_sdrMode = [v10 integerValue];
    objc_opt_class();
    v15 = NSDictionaryGetNSArrayOfClass();
    v16 = v15;
    v17 = MEMORY[0x277CBEBF8];
    if (v15)
    {
      v17 = v15;
    }

    v18 = v17;

    array = [MEMORY[0x277CBEB18] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v35;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [objc_alloc(MEMORY[0x277CF6C40]) initWithDictionary:*(*(&v34 + 1) + 8 * i)];
          if (v25)
          {
            [array addObject:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v34 objects:v33 count:16];
      }

      while (v22);
    }

    v26 = [array copy];
    participants = v5->_participants;
    v5->_participants = v26;

    v7 = v32;
    v8 = v31;
    v13 = v30;
  }

  if (!v13)
  {
    v28 = 0;
  }

  else
  {
LABEL_27:
    v28 = v5;
  }

  return v28;
}

- (CSSessionStateUpdate)initWithSessionState:(id)state
{
  stateCopy = state;
  v12.receiver = self;
  v12.super_class = CSSessionStateUpdate;
  v5 = [(CSSessionStateUpdate *)&v12 init];
  if (v5)
  {
    v5->_reverbLevel = [stateCopy reverbLevel];
    [stateCopy micVolume];
    v5->_micVolume = v6;
    activeMicRemoteDisplayID = [stateCopy activeMicRemoteDisplayID];
    activeMicRemoteDisplayID = v5->_activeMicRemoteDisplayID;
    v5->_activeMicRemoteDisplayID = activeMicRemoteDisplayID;

    participants = [stateCopy participants];
    participants = v5->_participants;
    v5->_participants = participants;

    v5->_sdrMode = [stateCopy sdrMode];
  }

  return v5;
}

+ (id)requiredParameters
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CSSessionStateUpdate;
  v2 = objc_msgSendSuper2(&v5, sel_requiredParameters);
  v3 = [v2 mutableCopy];

  [v3 addObject:@"ReverbLevel"];
  [v3 addObject:@"MicVolume"];
  [v3 addObject:@"SDRMode"];

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_participants, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_participants;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:dictionaryRepresentation];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v6);
  }

  v17.receiver = self;
  v17.super_class = CSSessionStateUpdate;
  dictionaryRepresentation2 = [(CSMessage *)&v17 dictionaryRepresentation];
  v11 = [dictionaryRepresentation2 mutableCopy];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:self->_reverbLevel];
  [v11 setObject:v12 forKey:@"ReverbLevel"];

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_micVolume];
  [v11 setObject:v13 forKey:@"MicVolume"];

  [v11 setObject:v3 forKey:@"Participants"];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:self->_sdrMode];
  [v11 setObject:v14 forKey:@"SDRMode"];

  activeMicRemoteDisplayID = self->_activeMicRemoteDisplayID;
  if (activeMicRemoteDisplayID)
  {
    [v11 setObject:activeMicRemoteDisplayID forKey:@"ActiveMicRemoteDisplayID"];
  }

  return v11;
}

- (void)initWithMessage:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[CSSessionStateUpdate initWithMessage:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_2441FB000, a2, OS_LOG_TYPE_ERROR, "%s: Failed to decode CSSessionStateUpdate with message: %@", &v2, 0x16u);
}

@end