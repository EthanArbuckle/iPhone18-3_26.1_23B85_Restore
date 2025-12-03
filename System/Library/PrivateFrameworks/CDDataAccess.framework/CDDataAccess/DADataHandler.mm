@interface DADataHandler
+ (id)newDataHandlerForDataclass:(int64_t)dataclass container:(void *)container changeTrackingID:(id)d;
- (BOOL)closeDBAndSave:(BOOL)save;
- (BOOL)saveContainer;
- (BOOL)wipeServerIds;
- (DADataHandler)initWithContainer:(void *)container changeTrackingID:(id)d;
- (id)copyOfAllLocalObjectsInContainer;
- (id)getDAExceptionObjectWithLocalItem:(void *)item originalEvent:(id)event account:(id)account;
- (id)getDAObjectWithLocalItem:(void *)item serverId:(id)id account:(id)account;
- (int)getIdFromLocalObject:(void *)object;
- (int64_t)dataclass;
- (void)copyLocalObjectFromId:(int)id;
- (void)dealloc;
- (void)drainContainer;
- (void)drainSuperfluousChanges;
- (void)openDB;
- (void)setContainer:(void *)container;
@end

@implementation DADataHandler

- (DADataHandler)initWithContainer:(void *)container changeTrackingID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    [DADataHandler initWithContainer:a2 changeTrackingID:self];
  }

  v12.receiver = self;
  v12.super_class = DADataHandler;
  v8 = [(DADataHandler *)&v12 init];
  if (v8)
  {
    if (container)
    {
      v8->_container = CFRetain(container);
    }

    v9 = [dCopy copy];
    changeTrackingID = v8->_changeTrackingID;
    v8->_changeTrackingID = v9;
  }

  return v8;
}

- (void)setContainer:(void *)container
{
  container = self->_container;
  if (container != container)
  {
    if (container)
    {
      CFRelease(container);
      self->_container = 0;
    }

    if (container)
    {
      CFRetain(container);
    }

    self->_container = container;
  }
}

- (void)dealloc
{
  container = self->_container;
  if (container)
  {
    CFRelease(container);
    self->_container = 0;
  }

  v4.receiver = self;
  v4.super_class = DADataHandler;
  [(DADataHandler *)&v4 dealloc];
}

- (int64_t)dataclass
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24244C000, v3, v4, "%s to be implemented by subclass", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (int)getIdFromLocalObject:(void *)object
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v8 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24244C000, v4, v5, "%s to be implemented by subclass", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)copyLocalObjectFromId:(int)id
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v8 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24244C000, v4, v5, "%s to be implemented by subclass", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)saveContainer
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24244C000, v3, v4, "%s to be implemented by subclass", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)copyOfAllLocalObjectsInContainer
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24244C000, v3, v4, "%s to be implemented by subclass", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)drainContainer
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24244C000, v3, v4, "%s to be implemented by subclass", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)wipeServerIds
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24244C000, v3, v4, "%s to be implemented by subclass", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)drainSuperfluousChanges
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24244C000, v3, v4, "%s to be implemented by subclass", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)openDB
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24244C000, v3, v4, "%s to be implemented by subclass", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)closeDBAndSave:(BOOL)save
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v8 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24244C000, v4, v5, "%s to be implemented by subclass", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)newDataHandlerForDataclass:(int64_t)dataclass container:(void *)container changeTrackingID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    v10 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24244C000, v6, v7, "%s to be implemented by subclass", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)getDAObjectWithLocalItem:(void *)item serverId:(id)id account:(id)account
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    v10 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24244C000, v6, v7, "%s to be implemented by subclass", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)getDAExceptionObjectWithLocalItem:(void *)item originalEvent:(id)event account:(id)account
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    v10 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24244C000, v6, v7, "%s to be implemented by subclass", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)initWithContainer:(uint64_t)a1 changeTrackingID:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DADataHandlers.m" lineNumber:20 description:@"Can't initialize a DADataHandler with a nil changeTrackingID"];
}

@end