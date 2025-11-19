@interface DADataHandler
+ (id)newDataHandlerForDataclass:(int64_t)a3 container:(void *)a4 changeTrackingID:(id)a5;
- (BOOL)closeDBAndSave:(BOOL)a3;
- (BOOL)saveContainer;
- (BOOL)wipeServerIds;
- (DADataHandler)initWithContainer:(void *)a3 changeTrackingID:(id)a4;
- (id)copyOfAllLocalObjectsInContainer;
- (id)getDAExceptionObjectWithLocalItem:(void *)a3 originalEvent:(id)a4 account:(id)a5;
- (id)getDAObjectWithLocalItem:(void *)a3 serverId:(id)a4 account:(id)a5;
- (int)getIdFromLocalObject:(void *)a3;
- (int64_t)dataclass;
- (void)copyLocalObjectFromId:(int)a3;
- (void)dealloc;
- (void)drainContainer;
- (void)drainSuperfluousChanges;
- (void)openDB;
- (void)setContainer:(void *)a3;
@end

@implementation DADataHandler

- (DADataHandler)initWithContainer:(void *)a3 changeTrackingID:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    [DADataHandler initWithContainer:a2 changeTrackingID:self];
  }

  v12.receiver = self;
  v12.super_class = DADataHandler;
  v8 = [(DADataHandler *)&v12 init];
  if (v8)
  {
    if (a3)
    {
      v8->_container = CFRetain(a3);
    }

    v9 = [v7 copy];
    changeTrackingID = v8->_changeTrackingID;
    v8->_changeTrackingID = v9;
  }

  return v8;
}

- (void)setContainer:(void *)a3
{
  container = self->_container;
  if (container != a3)
  {
    if (container)
    {
      CFRelease(container);
      self->_container = 0;
    }

    if (a3)
    {
      CFRetain(a3);
    }

    self->_container = a3;
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
  v4 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24844D000, v3, v4, "%s to be implemented by subclass", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

- (int)getIdFromLocalObject:(void *)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v8 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24844D000, v4, v5, "%s to be implemented by subclass", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)copyLocalObjectFromId:(int)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v8 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24844D000, v4, v5, "%s to be implemented by subclass", &v8, 0xCu);
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
    _os_log_impl(&dword_24844D000, v3, v4, "%s to be implemented by subclass", &v7, 0xCu);
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
    _os_log_impl(&dword_24844D000, v3, v4, "%s to be implemented by subclass", &v7, 0xCu);
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
    _os_log_impl(&dword_24844D000, v3, v4, "%s to be implemented by subclass", &v6, 0xCu);
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
    _os_log_impl(&dword_24844D000, v3, v4, "%s to be implemented by subclass", &v7, 0xCu);
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
    _os_log_impl(&dword_24844D000, v3, v4, "%s to be implemented by subclass", &v6, 0xCu);
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
    _os_log_impl(&dword_24844D000, v3, v4, "%s to be implemented by subclass", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)closeDBAndSave:(BOOL)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    v8 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24844D000, v4, v5, "%s to be implemented by subclass", &v8, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (id)newDataHandlerForDataclass:(int64_t)a3 container:(void *)a4 changeTrackingID:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    v10 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24844D000, v6, v7, "%s to be implemented by subclass", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)getDAObjectWithLocalItem:(void *)a3 serverId:(id)a4 account:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    v10 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24844D000, v6, v7, "%s to be implemented by subclass", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)getDAExceptionObjectWithLocalItem:(void *)a3 originalEvent:(id)a4 account:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    v10 = 136315138;
    Name = sel_getName(a2);
    _os_log_impl(&dword_24844D000, v6, v7, "%s to be implemented by subclass", &v10, 0xCu);
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