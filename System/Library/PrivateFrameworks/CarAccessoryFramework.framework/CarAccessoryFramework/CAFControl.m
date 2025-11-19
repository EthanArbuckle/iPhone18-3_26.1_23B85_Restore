@interface CAFControl
+ (id)controlWithService:(id)a3 config:(id)a4;
+ (id)registeredControlClasses;
+ (void)_appendParametersDescription:(id)a3 parameters:(id)a4;
+ (void)load;
+ (void)registerControlClass:(Class)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)notifies;
- (BOOL)supportsDisable;
- (BOOL)supportsError;
- (BOOL)supportsRestricted;
- (BOOL)supportsStates;
- (CAFAccessory)accessory;
- (CAFCar)car;
- (CAFControl)initWithService:(id)a3 config:(id)a4;
- (CAFService)service;
- (NSString)description;
- (NSString)fullDescription;
- (id)allInstanceIDs;
- (id)currentDescriptionForCache:(id)a3;
- (id)parametersDescription;
- (id)pluginID;
- (id)propertiesDescription;
- (id)readInstanceIDs;
- (id)registrationInstanceIDs;
- (unint64_t)hash;
- (void)_didUpdate;
- (void)dealloc;
- (void)handleNotificationWithValue:(id)a3;
- (void)handleRequestWithValue:(id)a3 withResponse:(id)a4;
- (void)handleUpdateWithInstanceID:(id)a3 value:(id)a4;
- (void)handleValueAndError:(id)a3 value:(id)a4;
- (void)notifyWithValue:(id)a3;
- (void)registerObserver:(id)a3;
- (void)requestWithValue:(id)a3 response:(id)a4;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFControl

+ (void)load
{
  v2 = objc_opt_class();
  if (v2 != objc_opt_class())
  {
    v3 = objc_opt_class();

    [CAFControl registerControlClass:v3];
  }
}

+ (void)registerControlClass:(Class)a3
{
  if (registerControlClass__onceToken != -1)
  {
    +[CAFControl registerControlClass:];
  }

  obj = _registeredControlClasses;
  objc_sync_enter(obj);
  v4 = _registeredControlClasses;
  v5 = [(objc_class *)a3 controlIdentifier];
  [v4 setObject:a3 forKeyedSubscript:v5];

  objc_sync_exit(obj);
}

uint64_t __35__CAFControl_registerControlClass___block_invoke()
{
  _registeredControlClasses = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)registeredControlClasses
{
  v2 = _registeredControlClasses;
  objc_sync_enter(v2);
  v3 = [_registeredControlClasses copy];
  objc_sync_exit(v2);

  return v3;
}

+ (id)controlWithService:(id)a3 config:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [CAFCarConfiguration getType:v5];
  v8 = +[CAFControl registeredControlClasses];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (!v9)
  {
    v9 = objc_opt_class();
  }

  v10 = [[v9 alloc] initWithService:v6 config:v5];

  return v10;
}

- (CAFControl)initWithService:(id)a3 config:(id)a4
{
  v6 = a3;
  v7 = a4;
  v54.receiver = self;
  v54.super_class = CAFControl;
  v8 = [(CAFControl *)&v54 init];
  v9 = v8;
  if (v8)
  {
    v8->_valueLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v8->_service, v6);
    objc_opt_class();
    v10 = [v7 objectForKeyedSubscript:@"iid"];
    if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    instanceID = v9->_instanceID;
    v9->_instanceID = v11;

    objc_opt_class();
    v13 = [v7 objectForKeyedSubscript:@"iidError"];
    if (v13 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    errorInstanceID = v9->_errorInstanceID;
    v9->_errorInstanceID = v14;

    objc_opt_class();
    v16 = [v7 objectForKeyedSubscript:@"iidDisabled"];
    if (v16 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    disabledInstanceID = v9->_disabledInstanceID;
    v9->_disabledInstanceID = v17;

    objc_opt_class();
    v19 = [v7 objectForKeyedSubscript:@"iidRestricted"];
    if (v19 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    restrictedInstanceID = v9->_restrictedInstanceID;
    v9->_restrictedInstanceID = v20;

    if (v9->_instanceID)
    {
      v22 = [CAFCarConfiguration getType:v7];
      controlType = v9->_controlType;
      v9->_controlType = v22;

      if (!v9->_controlType)
      {
        v37 = CAFControlLogging();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [CAFControl initWithService:v6 config:&v9->_instanceID];
        }

        goto LABEL_47;
      }

      v24 = [v6 pluginID];
      v25 = [CAFCarConfiguration getUUID:v24 instanceID:v9->_instanceID];
      uniqueIdentifier = v9->_uniqueIdentifier;
      v9->_uniqueIdentifier = v25;

      v27 = [CAFControlTypes controlNameForType:v9->_controlType];
      typeName = v9->_typeName;
      v9->_typeName = v27;

      objc_opt_class();
      v29 = [v7 objectForKeyedSubscript:@"priority"];
      if (v29 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      priority = v9->_priority;
      v9->_priority = v30;

      objc_opt_class();
      v33 = [v7 objectForKeyedSubscript:@"sender"];
      if (v33 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }

      if (v34)
      {
        v9->_sender = [v34 unsignedIntegerValue];
        v9->_hasResponse = [CAFCarConfiguration getBoolean:v7 key:@"hasResponse"];
        objc_opt_class();
        v35 = [v7 objectForKeyedSubscript:@"requestParameters"];
        if (v35 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v36 = v35;
        }

        else
        {
          v36 = 0;
        }

        v38 = [CAFControlParameter parseParameters:v36];
        requestParameters = v9->_requestParameters;
        v9->_requestParameters = v38;

        objc_opt_class();
        v40 = [v7 objectForKeyedSubscript:@"responseParameters"];
        if (v40 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v41 = v40;
        }

        else
        {
          v41 = 0;
        }

        v42 = [CAFControlParameter parseParameters:v41];
        responseParameters = v9->_responseParameters;
        v9->_responseParameters = v42;

        v9->_isNotificationEnabled = 0;
        v44 = [(CAFControl *)v9 car];
        v45 = [v44 carManager];
        v9->_shouldInitialize = [v45 shouldInitializeControl:v9];

        v46 = objc_alloc(MEMORY[0x277CF89C0]);
        v47 = [objc_opt_class() observerProtocol];
        v48 = [v46 initWithProtocol:v47];
        observers = v9->_observers;
        v9->_observers = v48;

        v50 = [[CAFCachedDescription alloc] initWithCacheable:v9];
        cachedDescription = v9->_cachedDescription;
        v9->_cachedDescription = v50;

        goto LABEL_43;
      }

      v31 = CAFControlLogging();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [CAFControl initWithService:v31 config:?];
      }
    }

    else
    {
      v31 = CAFControlLogging();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [CAFControl initWithService:v6 config:?];
      }
    }

LABEL_47:
    v52 = 0;
    goto LABEL_48;
  }

LABEL_43:
  v52 = v9;
LABEL_48:

  return v52;
}

- (void)dealloc
{
  v3 = [(CAFControl *)self car];
  [v3 enableNotificationForControl:self enable:0 response:0];

  v4.receiver = self;
  v4.super_class = CAFControl;
  [(CAFControl *)&v4 dealloc];
}

- (unint64_t)hash
{
  v2 = [(CAFControl *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CAFControl *)v4 uniqueIdentifier];
      v6 = [(CAFControl *)self uniqueIdentifier];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (CAFCar)car
{
  v2 = [(CAFControl *)self accessory];
  v3 = [v2 car];

  return v3;
}

- (CAFAccessory)accessory
{
  v2 = [(CAFControl *)self service];
  v3 = [v2 accessory];

  return v3;
}

- (BOOL)notifies
{
  if ([(CAFControl *)self incoming])
  {
    return 1;
  }

  v4 = [(CAFControl *)self errorInstanceID];
  if (v4)
  {
    v3 = 1;
  }

  else
  {
    v5 = [(CAFControl *)self disabledInstanceID];
    if (v5)
    {
      v3 = 1;
    }

    else
    {
      v6 = [(CAFControl *)self restrictedInstanceID];
      v3 = v6 != 0;
    }
  }

  return v3;
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = [(CAFControl *)self observers];
  [v5 registerObserver:v4];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = [(CAFControl *)self observers];
  [v5 unregisterObserver:v4];
}

- (NSString)description
{
  v2 = [(CAFControl *)self cachedDescription];
  v3 = [v2 description];

  return v3;
}

- (void)_didUpdate
{
  v3 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__CAFControl__didUpdate__block_invoke;
  block[3] = &unk_27890D4D0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __24__CAFControl__didUpdate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) service];
  [v2 _controlDidUpdate:*(a1 + 32)];

  v3 = [*(a1 + 32) observers];
  [v3 controlDidUpdate:*(a1 + 32)];
}

- (void)requestWithValue:(id)a3 response:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(CAFControl *)self outgoing])
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    v11 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__CAFControl_requestWithValue_response___block_invoke;
    block[3] = &unk_27890D5E8;
    v17 = v7;
    dispatch_async(v11, block);

    v12 = v17;
LABEL_8:

    goto LABEL_9;
  }

  v8 = [(CAFControl *)self hasResponse];
  v9 = [(CAFControl *)self car];
  v10 = v9;
  if (!v8)
  {
    [v9 notifyControl:self value:v6];

    if (!v7)
    {
      goto LABEL_9;
    }

    v13 = dispatch_get_global_queue(33, 0);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __40__CAFControl_requestWithValue_response___block_invoke_2;
    v14[3] = &unk_27890D5E8;
    v15 = v7;
    dispatch_async(v13, v14);

    v12 = v15;
    goto LABEL_8;
  }

  [v9 requestControl:self value:v6 response:v7];

LABEL_9:
}

void __40__CAFControl_requestWithValue_response___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:10 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)notifyWithValue:(id)a3
{
  v7 = a3;
  if ([(CAFControl *)self outgoing])
  {
    v4 = [(CAFControl *)self hasResponse];
    v5 = [(CAFControl *)self car];
    v6 = v5;
    if (v4)
    {
      [v5 requestControl:self value:v7 response:0];
    }

    else
    {
      [v5 notifyControl:self value:v7];
    }
  }
}

- (BOOL)supportsStates
{
  if ([(CAFControl *)self supportsError])
  {
    return 1;
  }

  return [(CAFControl *)self supportsDisable];
}

- (BOOL)supportsError
{
  v2 = [(CAFControl *)self errorInstanceID];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsDisable
{
  v2 = [(CAFControl *)self disabledInstanceID];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsRestricted
{
  v2 = [(CAFControl *)self restrictedInstanceID];
  v3 = v2 != 0;

  return v3;
}

- (id)propertiesDescription
{
  v3 = [(CAFControl *)self hasResponse];
  v4 = [(CAFControl *)self outgoing];
  if (v3)
  {
    v5 = @"C";
    if (v4)
    {
      goto LABEL_8;
    }

    v6 = [(CAFControl *)self isNotificationEnabled];
    v7 = @"c";
  }

  else
  {
    v5 = @"E";
    if (v4)
    {
      goto LABEL_8;
    }

    v6 = [(CAFControl *)self isNotificationEnabled];
    v7 = @"e";
  }

  if (!v6)
  {
    v5 = v7;
  }

LABEL_8:
  v8 = v5;
  v9 = MEMORY[0x277CCACA8];
  if ([(CAFControl *)self outgoing])
  {
    v10 = @"O";
  }

  else
  {
    v10 = @"I";
  }

  if ([(CAFControl *)self hidden])
  {
    v11 = @"H";
  }

  else
  {
    v11 = &stru_284626CA8;
  }

  v12 = [(CAFControl *)self supportsStates];
  v13 = @"S";
  if (!v12)
  {
    v13 = &stru_284626CA8;
  }

  v14 = [v9 stringWithFormat:@"(%@%@%@%@)", v10, v8, v11, v13];

  return v14;
}

+ (void)_appendParametersDescription:(id)a3 parameters:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          objc_msgSend(v5, "appendString:", @"(");
          v13 = [v12 formatString];
          [v5 appendString:v13];

          if ([v12 supportsInvalid])
          {
            [v5 appendString:@"?"];
          }

          [v5 appendString:@" "]);
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)parametersDescription
{
  v3 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"( ");
  v4 = [(CAFControl *)self requestParameters];
  v5 = [v4 count];

  if (v5)
  {
    [v3 appendString:@"in: "];
    v6 = [(CAFControl *)self requestParameters];
    [CAFControl _appendParametersDescription:v3 parameters:v6];
  }

  v7 = [(CAFControl *)self responseParameters];
  v8 = [v7 count];

  if (v8)
  {
    [v3 appendString:@"out: "];
    v9 = [(CAFControl *)self responseParameters];
    [CAFControl _appendParametersDescription:v3 parameters:v9];
  }

  else if (!v5)
  {
    [v3 appendString:@"void "];
  }

  [v3 appendString:@""]);

  return v3;
}

- (id)allInstanceIDs
{
  v3 = objc_opt_new();
  v4 = [(CAFControl *)self instanceID];
  [v3 addObject:v4];

  v5 = [(CAFControl *)self errorInstanceID];

  if (v5)
  {
    v6 = [(CAFControl *)self errorInstanceID];
    [v3 addObject:v6];
  }

  v7 = [(CAFControl *)self disabledInstanceID];

  if (v7)
  {
    v8 = [(CAFControl *)self disabledInstanceID];
    [v3 addObject:v8];
  }

  v9 = [(CAFControl *)self restrictedInstanceID];

  if (v9)
  {
    v10 = [(CAFControl *)self restrictedInstanceID];
    [v3 addObject:v10];
  }

  return v3;
}

- (id)readInstanceIDs
{
  v3 = objc_opt_new();
  v4 = [(CAFControl *)self errorInstanceID];

  if (v4)
  {
    v5 = [(CAFControl *)self errorInstanceID];
    [v3 addObject:v5];
  }

  v6 = [(CAFControl *)self disabledInstanceID];

  if (v6)
  {
    v7 = [(CAFControl *)self disabledInstanceID];
    [v3 addObject:v7];
  }

  v8 = [(CAFControl *)self restrictedInstanceID];

  if (v8)
  {
    v9 = [(CAFControl *)self restrictedInstanceID];
    [v3 addObject:v9];
  }

  return v3;
}

- (id)registrationInstanceIDs
{
  v3 = objc_opt_new();
  if ([(CAFControl *)self incoming])
  {
    v4 = [(CAFControl *)self instanceID];
    [v3 addObject:v4];
  }

  v5 = [(CAFControl *)self errorInstanceID];

  if (v5)
  {
    v6 = [(CAFControl *)self errorInstanceID];
    [v3 addObject:v6];
  }

  v7 = [(CAFControl *)self disabledInstanceID];

  if (v7)
  {
    v8 = [(CAFControl *)self disabledInstanceID];
    [v3 addObject:v8];
  }

  v9 = [(CAFControl *)self restrictedInstanceID];

  if (v9)
  {
    v10 = [(CAFControl *)self restrictedInstanceID];
    [v3 addObject:v10];
  }

  return v3;
}

- (id)pluginID
{
  v2 = [(CAFControl *)self service];
  v3 = [v2 accessory];
  v4 = [v3 pluginID];

  return v4;
}

- (void)handleNotificationWithValue:(id)a3
{
  v4 = a3;
  v5 = CAFControlLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [CAFControl handleNotificationWithValue:?];
  }

  v6 = dispatch_get_global_queue(33, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__CAFControl_handleNotificationWithValue___block_invoke;
  v8[3] = &unk_27890D548;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __42__CAFControl_handleNotificationWithValue___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _didNotifyWithValue:*(a1 + 40)];
  v2 = [*(a1 + 32) observers];
  [v2 control:*(a1 + 32) didNotifyWithValue:*(a1 + 40)];
}

- (void)handleRequestWithValue:(id)a3 withResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CAFControlLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [CAFControl handleRequestWithValue:? withResponse:?];
  }

  v9 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__CAFControl_handleRequestWithValue_withResponse___block_invoke;
  block[3] = &unk_27890D638;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __50__CAFControl_handleRequestWithValue_withResponse___block_invoke(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = [*(a1 + 32) _didRequestWithValue:*(a1 + 40) response:*(a1 + 48)];
  if ((v16[3] & 1) == 0)
  {
    v2 = [*(a1 + 32) observers];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __50__CAFControl_handleRequestWithValue_withResponse___block_invoke_2;
    v10 = &unk_27890D610;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v14 = &v15;
    v11 = v3;
    v12 = v4;
    v13 = *(a1 + 48);
    [v2 enumerateObserversWithBlock:&v7];

    if ((v16[3] & 1) == 0)
    {
      v5 = *(a1 + 48);
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:{0, v7, v8, v9, v10, v11}];
      (*(v5 + 16))(v5, 0, v6);
    }
  }

  _Block_object_dispose(&v15, 8);
}

uint64_t __50__CAFControl_handleRequestWithValue_withResponse___block_invoke_2(void *a1, void *a2, _BYTE *a3)
{
  result = [a2 control:a1[4] didRequestWithValue:a1[5] response:a1[6]];
  *(*(a1[7] + 8) + 24) = result;
  if (*(*(a1[7] + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

- (void)handleValueAndError:(id)a3 value:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CAFControl *)self errorInstanceID];
  v9 = [v6 isEqual:v8];

  if (v9)
  {
    objc_opt_class();
    v10 = [v7 value];
    if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v15 = CAFControlLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v23 = [(CAFControl *)self pluginID];
      v24 = [(CAFControl *)self instanceID];
      v29 = 138413058;
      v30 = v23;
      v31 = 2112;
      v32 = v24;
      v33 = 2112;
      v34 = v6;
      v35 = 2112;
      v36 = v11;
      _os_log_debug_impl(&dword_231618000, v15, OS_LOG_TYPE_DEBUG, "Handle control error state update pluginID: %@ instanceID: %@ (%@) state value: %@", &v29, 0x2Au);
    }

    p_valueLock = &self->_valueLock;
    os_unfair_lock_lock(&self->_valueLock);
    -[CAFControl setHasErrorState:](self, "setHasErrorState:", [v11 BOOLValue]);
LABEL_25:
    os_unfair_lock_unlock(p_valueLock);
    [(CAFControl *)self _didUpdate];

    goto LABEL_26;
  }

  v12 = [(CAFControl *)self disabledInstanceID];
  v13 = [v6 isEqual:v12];

  if (v13)
  {
    objc_opt_class();
    v14 = [v7 value];
    if (v14 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v11 = v14;
    }

    else
    {
      v11 = 0;
    }

    v20 = CAFControlLogging();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v25 = [(CAFControl *)self pluginID];
      v26 = [(CAFControl *)self instanceID];
      v29 = 138413058;
      v30 = v25;
      v31 = 2112;
      v32 = v26;
      v33 = 2112;
      v34 = v6;
      v35 = 2112;
      v36 = v11;
      _os_log_debug_impl(&dword_231618000, v20, OS_LOG_TYPE_DEBUG, "Handle control disabled state update pluginID: %@ instanceID: %@ (%@) state value: %@", &v29, 0x2Au);
    }

    p_valueLock = &self->_valueLock;
    os_unfair_lock_lock(&self->_valueLock);
    -[CAFControl setIsDisabled:](self, "setIsDisabled:", [v11 BOOLValue]);
    goto LABEL_25;
  }

  v17 = [(CAFControl *)self restrictedInstanceID];
  v18 = [v6 isEqual:v17];

  if (v18)
  {
    objc_opt_class();
    v19 = [v7 value];
    if (v19 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v11 = v19;
    }

    else
    {
      v11 = 0;
    }

    v21 = CAFControlLogging();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v27 = [(CAFControl *)self pluginID];
      v28 = [(CAFControl *)self instanceID];
      v29 = 138413058;
      v30 = v27;
      v31 = 2112;
      v32 = v28;
      v33 = 2112;
      v34 = v6;
      v35 = 2112;
      v36 = v11;
      _os_log_debug_impl(&dword_231618000, v21, OS_LOG_TYPE_DEBUG, "Handle control restricted state update pluginID: %@ instanceID: %@ (%@) state value: %@", &v29, 0x2Au);
    }

    p_valueLock = &self->_valueLock;
    os_unfair_lock_lock(&self->_valueLock);
    -[CAFControl setIsRestricted:](self, "setIsRestricted:", [v11 BOOLValue]);
    goto LABEL_25;
  }

LABEL_26:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdateWithInstanceID:(id)a3 value:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  [(CAFControl *)self handleValueAndError:a3 value:a4];
  v5 = CARSignpostLogForCategory();
  if (self)
  {
    v6 = CARSignpostLogForCategory();
    v7 = os_signpost_id_make_with_pointer(v6, self);

    if (v7 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0xEEEEB0B5B2B2EEEELL;
  }

  if (os_signpost_enabled(v5))
  {
    v8 = [(CAFControl *)self name];
    v9 = [(CAFControl *)self pluginID];
    v10 = [(CAFControl *)self instanceID];
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_signpost_emit_with_name_impl(&dword_231618000, v5, OS_SIGNPOST_EVENT, v7, "Update", "Control: %{public}@ pluginID: %{public}@ instanceID: %{public}@", &v12, 0x20u);
  }

LABEL_7:

  v11 = *MEMORY[0x277D85DE8];
}

- (NSString)fullDescription
{
  if ([(CAFControl *)self supportsStates])
  {
    v3 = MEMORY[0x277CCACA8];
    if ([(CAFControl *)self hasErrorState])
    {
      v4 = @"E";
    }

    else
    {
      v4 = &stru_284626CA8;
    }

    if ([(CAFControl *)self isDisabled])
    {
      v5 = @"D";
    }

    else
    {
      v5 = &stru_284626CA8;
    }

    v6 = [(CAFControl *)self isRestricted];
    v7 = @"R";
    if (!v6)
    {
      v7 = &stru_284626CA8;
    }

    v8 = [v3 stringWithFormat:@" states=%@%@%@", v4, v5, v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = [(CAFControl *)self description];
  v11 = v10;
  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = &stru_284626CA8;
  }

  v13 = [v9 stringWithFormat:@"%@(%@)", v10, v12];

  return v13;
}

- (id)currentDescriptionForCache:(id)a3
{
  v28 = MEMORY[0x277CCACA8];
  v27 = objc_opt_class();
  v26 = [(CAFControl *)self name];
  v31 = [(CAFControl *)self pluginID];
  v24 = [(CAFControl *)self instanceID];
  v4 = [(CAFControl *)self errorInstanceID];
  v30 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"-";
  }

  v23 = v5;
  v6 = [(CAFControl *)self disabledInstanceID];
  v29 = v6;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"-";
  }

  v22 = v7;
  v8 = [(CAFControl *)self restrictedInstanceID];
  v25 = v8;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"-";
  }

  v21 = v9;
  v20 = [(CAFControl *)self controlType];
  v19 = [(CAFControl *)self parametersDescription];
  v10 = [(CAFControl *)self accessory];
  v11 = [(CAFControl *)self accessory];
  v12 = [v11 instanceID];
  v13 = [(CAFControl *)self service];
  v14 = [(CAFControl *)self service];
  v15 = [v14 instanceID];
  v16 = [(CAFControl *)self propertiesDescription];
  v17 = [v28 stringWithFormat:@"<%@: %p %@ %@ %@ (%@|%@|%@) type=%@ parameters=%@ accessory=(%p)%@ service=(%p)%@ properties=%@>", v27, self, v26, v31, v24, v23, v22, v21, v20, v19, v10, v12, v13, v15, v16];

  return v17;
}

- (CAFService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (void)initWithService:(void *)a1 config:(uint64_t *)a2 .cold.2(void *a1, uint64_t *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a1 pluginID];
  v11 = *a2;
  OUTLINED_FUNCTION_1(&dword_231618000, v4, v5, "Parsing control config from pluginID: %@ instanceID: %@ failed for controlType", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)initWithService:(void *)a1 config:.cold.3(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a1 pluginID];
  v10 = [a1 instanceID];
  OUTLINED_FUNCTION_1(&dword_231618000, v3, v4, "Parsing control config from pluginID: %@ service instanceID: %@ failed for instanceID", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleNotificationWithValue:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [a1 pluginID];
  v3 = [a1 instanceID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_231618000, v4, v5, "Handle notification pluginID: %@ instanceID: %@ value: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleRequestWithValue:(void *)a1 withResponse:.cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [a1 pluginID];
  v3 = [a1 instanceID];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_231618000, v4, v5, "Handle request pluginID: %@ instanceID: %@ value: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleRegistrationWithInstanceID:(void *)a1 registered:.cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a1 pluginID];
  v3 = [a1 instanceID];
  OUTLINED_FUNCTION_1_0(&dword_231618000, v4, v5, "Handle registration pluginID: %@ instanceID: %@ registered: %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

@end