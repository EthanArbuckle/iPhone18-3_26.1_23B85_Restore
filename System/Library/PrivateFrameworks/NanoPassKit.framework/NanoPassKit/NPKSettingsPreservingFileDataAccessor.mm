@interface NPKSettingsPreservingFileDataAccessor
- (void)updateSettings:(unint64_t)a3;
@end

@implementation NPKSettingsPreservingFileDataAccessor

- (void)updateSettings:(unint64_t)a3
{
  connection = self->_connection;
  v5 = [(NPKSettingsPreservingFileDataAccessor *)self objectUniqueID];
  [(NPKCompanionAgentConnection *)connection updateSettings:a3 forPassWithUniqueID:v5];
}

@end