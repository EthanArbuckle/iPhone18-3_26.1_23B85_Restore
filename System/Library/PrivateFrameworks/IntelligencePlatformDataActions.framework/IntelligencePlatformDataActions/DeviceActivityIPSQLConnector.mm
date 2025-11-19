@interface DeviceActivityIPSQLConnector
+ (BMSQLSchema)schema;
- (void)vtabMetadataWithDatabase:(id)a3;
@end

@implementation DeviceActivityIPSQLConnector

+ (BMSQLSchema)schema
{
  v2 = static DeviceActivityIPSQLConnector.schema.getter();

  return v2;
}

- (void)vtabMetadataWithDatabase:(id)a3
{
  v3 = a3;

  v4 = sub_254FD5E84();

  return v4;
}

@end