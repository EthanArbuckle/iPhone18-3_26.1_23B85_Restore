@interface CADMCProfileConnectionManagedConfigurationHandler
- (BOOL)isOpenInRestrictionInEffect;
- (CADMCProfileConnectionManagedConfigurationHandler)initWithMCProfileConnection:(id)a3;
@end

@implementation CADMCProfileConnectionManagedConfigurationHandler

- (BOOL)isOpenInRestrictionInEffect
{
  v2 = [(CADMCProfileConnectionManagedConfigurationHandler *)self connection];
  v3 = [v2 isOpenInRestrictionInEffect];

  return v3;
}

- (CADMCProfileConnectionManagedConfigurationHandler)initWithMCProfileConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CADMCProfileConnectionManagedConfigurationHandler;
  v6 = [(CADMCProfileConnectionManagedConfigurationHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

@end