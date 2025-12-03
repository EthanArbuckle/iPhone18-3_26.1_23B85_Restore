@interface ESDataHandler
+ (id)newDataHandlerForDataclass:(int64_t)dataclass container:(void *)container changeTrackingID:(id)d accountID:(id)iD;
- (BOOL)closeDBAndSave:(BOOL)save;
- (BOOL)saveContainer;
- (BOOL)wipeServerIds;
- (ESDataHandler)initWithContainer:(void *)container changeTrackingID:(id)d accountID:(id)iD;
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

@implementation ESDataHandler

- (ESDataHandler)initWithContainer:(void *)container changeTrackingID:(id)d accountID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (!dCopy)
  {
    [ESDataHandler initWithContainer:a2 changeTrackingID:self accountID:?];
  }

  v17.receiver = self;
  v17.super_class = ESDataHandler;
  v11 = [(ESDataHandler *)&v17 init];
  if (v11)
  {
    if (container)
    {
      v11->_container = CFRetain(container);
    }

    v12 = [dCopy copy];
    changeTrackingID = v11->_changeTrackingID;
    v11->_changeTrackingID = v12;

    v14 = [iDCopy copy];
    accountID = v11->_accountID;
    v11->_accountID = v14;
  }

  return v11;
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
  v4.super_class = ESDataHandler;
  [(ESDataHandler *)&v4 dealloc];
}

- (int64_t)dataclass
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A097000, v3, v4, "%s to be implemented by subclass", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (int)getIdFromLocalObject:(void *)object
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v8 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A097000, v4, v5, "%s to be implemented by subclass", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)copyLocalObjectFromId:(int)id
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v8 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A097000, v4, v5, "%s to be implemented by subclass", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)saveContainer
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A097000, v3, v4, "%s to be implemented by subclass", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)copyOfAllLocalObjectsInContainer
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A097000, v3, v4, "%s to be implemented by subclass", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)drainContainer
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A097000, v3, v4, "%s to be implemented by subclass", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)wipeServerIds
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A097000, v3, v4, "%s to be implemented by subclass", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)drainSuperfluousChanges
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A097000, v3, v4, "%s to be implemented by subclass", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)openDB
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A097000, v3, v4, "%s to be implemented by subclass", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)closeDBAndSave:(BOOL)save
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v8 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A097000, v4, v5, "%s to be implemented by subclass", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)newDataHandlerForDataclass:(int64_t)dataclass container:(void *)container changeTrackingID:(id)d accountID:(id)iD
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v7, v8))
  {
    v11 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A097000, v7, v8, "%s to be implemented by subclass", &v11, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)getDAObjectWithLocalItem:(void *)item serverId:(id)id account:(id)account
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    v10 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A097000, v6, v7, "%s to be implemented by subclass", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)getDAExceptionObjectWithLocalItem:(void *)item originalEvent:(id)event account:(id)account
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    v10 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24A097000, v6, v7, "%s to be implemented by subclass", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)initWithContainer:(uint64_t)a1 changeTrackingID:(uint64_t)a2 accountID:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ESDataHandlers.m" lineNumber:21 description:@"Can't initialize a DADataHandler with a nil changeTrackingID"];
}

@end