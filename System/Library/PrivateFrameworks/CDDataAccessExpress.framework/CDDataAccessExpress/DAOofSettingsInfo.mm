@interface DAOofSettingsInfo
- (DAOofResponseDelegate)consumer;
@end

@implementation DAOofSettingsInfo

- (DAOofResponseDelegate)consumer
{
  WeakRetained = objc_loadWeakRetained(&self->_consumer);

  return WeakRetained;
}

@end