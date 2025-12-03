@interface NPKSettingsPreservingFileDataAccessor
- (void)updateSettings:(unint64_t)settings;
@end

@implementation NPKSettingsPreservingFileDataAccessor

- (void)updateSettings:(unint64_t)settings
{
  connection = self->_connection;
  objectUniqueID = [(NPKSettingsPreservingFileDataAccessor *)self objectUniqueID];
  [(NPKCompanionAgentConnection *)connection updateSettings:settings forPassWithUniqueID:objectUniqueID];
}

@end