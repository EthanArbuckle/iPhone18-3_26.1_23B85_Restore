@interface CalDatabaseInitializationConfiguration
- (CalDatabaseInitializationConfiguration)initWithDirectoryURL:(id)l;
- (id)redactedDescription;
@end

@implementation CalDatabaseInitializationConfiguration

- (CalDatabaseInitializationConfiguration)initWithDirectoryURL:(id)l
{
  lCopy = l;
  v16.receiver = self;
  v16.super_class = CalDatabaseInitializationConfiguration;
  v6 = [(CalDatabaseInitializationConfiguration *)&v16 init];
  v7 = v6;
  if (lCopy && v6)
  {
    objc_storeStrong(&v6->_directoryURL, l);
    v8 = [lCopy URLByAppendingPathComponent:*MEMORY[0x1E6993110] isDirectory:1];
    v9 = [objc_alloc(MEMORY[0x1E6992FF8]) initWithCalendarDataContainerURL:v8];
    dataContainerProvider = v7->_dataContainerProvider;
    v7->_dataContainerProvider = v9;
    v11 = v9;

    path = [lCopy path];
    v13 = [CDBPreferences preferencesForDirectory:path];
    preferences = v7->_preferences;
    v7->_preferences = v13;
  }

  return v7;
}

- (id)redactedDescription
{
  v2 = @"(not null)";
  if (self->_directoryURL)
  {
    v3 = @"(not null)";
  }

  else
  {
    v3 = @"(null)";
  }

  if (self->_dataContainerProvider)
  {
    v4 = @"(not null)";
  }

  else
  {
    v4 = @"(null)";
  }

  if (!self->_preferences)
  {
    v2 = @"(null)";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"[<CalDatabaseInitializationConfiguration:%p> options=%i, directoryURL=%@, dataContainerProvider=%@ preferences=%@]", self, self->_options, v3, v4, v2];
}

@end