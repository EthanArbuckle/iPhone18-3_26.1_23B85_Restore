@interface CADMCProfileConnectionManagedConfigurationHandler
- (BOOL)isOpenInRestrictionInEffect;
- (CADMCProfileConnectionManagedConfigurationHandler)initWithMCProfileConnection:(id)connection;
@end

@implementation CADMCProfileConnectionManagedConfigurationHandler

- (BOOL)isOpenInRestrictionInEffect
{
  connection = [(CADMCProfileConnectionManagedConfigurationHandler *)self connection];
  isOpenInRestrictionInEffect = [connection isOpenInRestrictionInEffect];

  return isOpenInRestrictionInEffect;
}

- (CADMCProfileConnectionManagedConfigurationHandler)initWithMCProfileConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = CADMCProfileConnectionManagedConfigurationHandler;
  v6 = [(CADMCProfileConnectionManagedConfigurationHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

@end