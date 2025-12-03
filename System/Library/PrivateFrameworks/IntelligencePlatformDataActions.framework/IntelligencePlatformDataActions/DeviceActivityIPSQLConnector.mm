@interface DeviceActivityIPSQLConnector
+ (BMSQLSchema)schema;
- (void)vtabMetadataWithDatabase:(id)database;
@end

@implementation DeviceActivityIPSQLConnector

+ (BMSQLSchema)schema
{
  v2 = static DeviceActivityIPSQLConnector.schema.getter();

  return v2;
}

- (void)vtabMetadataWithDatabase:(id)database
{
  databaseCopy = database;

  v4 = sub_254FD5E84();

  return v4;
}

@end