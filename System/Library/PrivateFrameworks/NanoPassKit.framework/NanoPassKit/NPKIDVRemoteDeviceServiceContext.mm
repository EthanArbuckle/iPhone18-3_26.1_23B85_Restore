@interface NPKIDVRemoteDeviceServiceContext
- (NPKIDVRemoteDeviceServiceContext)init;
- (NPKIDVRemoteDeviceServiceContext)initWithCoder:(id)coder;
- (id)_serviceNamesForEventString:(id)string;
- (id)serviceNamesForEvent:(unint64_t)event;
- (unint64_t)_registeredEventsForServiceName:(id)name;
- (unint64_t)registerEvents:(unint64_t)events forServiceName:(id)name;
- (unint64_t)unregisterEvents:(unint64_t)events forServiceName:(id)name;
- (void)_setServiceNames:(id)names forEventString:(id)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKIDVRemoteDeviceServiceContext

- (NPKIDVRemoteDeviceServiceContext)init
{
  v9.receiver = self;
  v9.super_class = NPKIDVRemoteDeviceServiceContext;
  v2 = [(NPKIDVRemoteDeviceServiceContext *)&v9 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    remoteDeviceID = v2->_remoteDeviceID;
    v2->_remoteDeviceID = uUIDString;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    eventsToServiceNames = v2->_eventsToServiceNames;
    v2->_eventsToServiceNames = v6;
  }

  return v2;
}

- (NPKIDVRemoteDeviceServiceContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (coderCopy)
  {
    v5 = [(NPKIDVRemoteDeviceServiceContext *)self init];
    if (v5)
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remoteDeviceID"];
      if ([v6 length])
      {
        objc_storeStrong(&v5->_remoteDeviceID, v6);
      }

      else
      {
        v7 = pk_Payment_log();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

        if (v8)
        {
          v9 = pk_Payment_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Missing remote DeviceID from archived context, generating a new one", buf, 2u);
          }
        }
      }

      v10 = MEMORY[0x277CBEB98];
      v11 = objc_opt_class();
      v12 = objc_opt_class();
      v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
      v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"eventsToServiceNames"];

      if (v14)
      {
        v15 = [v14 mutableCopy];
        p_super = &v5->_eventsToServiceNames->super.super;
        v5->_eventsToServiceNames = v15;
      }

      else
      {
        v18 = pk_Payment_log();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);

        if (!v19)
        {
          goto LABEL_13;
        }

        p_super = pk_Payment_log();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          *v20 = 0;
          _os_log_impl(&dword_25B300000, p_super, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Missing registered event from archived context, starting fresh", v20, 2u);
        }
      }

LABEL_13:
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  remoteDeviceID = self->_remoteDeviceID;
  coderCopy = coder;
  [coderCopy encodeObject:remoteDeviceID forKey:@"remoteDeviceID"];
  [coderCopy encodeObject:self->_eventsToServiceNames forKey:@"eventsToServiceNames"];
}

- (unint64_t)registerEvents:(unint64_t)events forServiceName:(id)name
{
  nameCopy = name;
  v7 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(events);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __66__NPKIDVRemoteDeviceServiceContext_registerEvents_forServiceName___block_invoke;
  v14 = &unk_279947210;
  selfCopy = self;
  v16 = nameCopy;
  v8 = nameCopy;
  [v7 enumerateObjectsUsingBlock:&v11];
  selfCopy = [(NPKIDVRemoteDeviceServiceContext *)self _registeredEventsForServiceName:v8, v11, v12, v13, v14, selfCopy];

  return selfCopy;
}

void __66__NPKIDVRemoteDeviceServiceContext_registerEvents_forServiceName___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _serviceNamesForEventString:v4];
  [v5 addObject:*(a1 + 40)];
  [*(a1 + 32) _setServiceNames:v5 forEventString:v4];
}

- (unint64_t)unregisterEvents:(unint64_t)events forServiceName:(id)name
{
  nameCopy = name;
  v7 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(events);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __68__NPKIDVRemoteDeviceServiceContext_unregisterEvents_forServiceName___block_invoke;
  v14 = &unk_279947210;
  selfCopy = self;
  v16 = nameCopy;
  v8 = nameCopy;
  [v7 enumerateObjectsUsingBlock:&v11];
  selfCopy = [(NPKIDVRemoteDeviceServiceContext *)self _registeredEventsForServiceName:v8, v11, v12, v13, v14, selfCopy];

  return selfCopy;
}

void __68__NPKIDVRemoteDeviceServiceContext_unregisterEvents_forServiceName___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _serviceNamesForEventString:v4];
  [v5 removeObject:*(a1 + 40)];
  [*(a1 + 32) _setServiceNames:v5 forEventString:v4];
}

- (id)serviceNamesForEvent:(unint64_t)event
{
  v4 = stringsArrayFromNPKIDVRemoteDeviceServiceEvents(event);
  firstObject = [v4 firstObject];

  if (firstObject)
  {
    [(NPKIDVRemoteDeviceServiceContext *)self _serviceNamesForEventString:firstObject];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v6 = ;

  return v6;
}

- (id)_serviceNamesForEventString:(id)string
{
  v3 = [(NSMutableDictionary *)self->_eventsToServiceNames objectForKeyedSubscript:string];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = [v3 mutableCopy];
    }
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v5 = v4;

  return v5;
}

- (void)_setServiceNames:(id)names forEventString:(id)string
{
  namesCopy = names;
  stringCopy = string;
  v7 = [namesCopy count];
  eventsToServiceNames = self->_eventsToServiceNames;
  if (v7)
  {
    [(NSMutableDictionary *)eventsToServiceNames setObject:namesCopy forKeyedSubscript:stringCopy];
  }

  else
  {
    [(NSMutableDictionary *)eventsToServiceNames removeObjectForKey:stringCopy];
  }
}

- (unint64_t)_registeredEventsForServiceName:(id)name
{
  nameCopy = name;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableDictionary count](self->_eventsToServiceNames, "count")}];
  eventsToServiceNames = self->_eventsToServiceNames;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__NPKIDVRemoteDeviceServiceContext__registeredEventsForServiceName___block_invoke;
  v11[3] = &unk_279947238;
  v12 = nameCopy;
  v13 = v5;
  v7 = v5;
  v8 = nameCopy;
  [(NSMutableDictionary *)eventsToServiceNames enumerateKeysAndObjectsUsingBlock:v11];
  v9 = NPKIDVRemoteDeviceServiceEventsFromStringsArray(v7);

  return v9;
}

void __68__NPKIDVRemoteDeviceServiceContext__registeredEventsForServiceName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 containsObject:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v5];
  }
}

@end