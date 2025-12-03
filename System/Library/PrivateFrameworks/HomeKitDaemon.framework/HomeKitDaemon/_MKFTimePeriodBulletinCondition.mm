@interface _MKFTimePeriodBulletinCondition
+ (id)modelIDForParentRelationshipTo:(id)to;
- (MKFHome)home;
- (MKFTimePeriodBulletinConditionDatabaseID)databaseID;
- (id)createEndElementRelationOfType:(id)type modelID:(id)d;
- (id)createStartElementRelationOfType:(id)type modelID:(id)d;
- (id)materializeOrCreateEndElementRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new;
- (id)materializeOrCreateStartElementRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new;
@end

@implementation _MKFTimePeriodBulletinCondition

+ (id)modelIDForParentRelationshipTo:(id)to
{
  toCopy = to;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)createStartElementRelationOfType:(id)type modelID:(id)d
{
  dCopy = d;
  v7 = NSStringFromProtocol(type);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"startElement" modelProtocol:v7 keyValue:dCopy];

  return v8;
}

- (id)materializeOrCreateStartElementRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new
{
  dCopy = d;
  v9 = NSStringFromProtocol(type);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"startElement" modelProtocol:v9 keyValue:dCopy createdNew:new];

  return v10;
}

- (id)createEndElementRelationOfType:(id)type modelID:(id)d
{
  dCopy = d;
  v7 = NSStringFromProtocol(type);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"endElement" modelProtocol:v7 keyValue:dCopy];

  return v8;
}

- (id)materializeOrCreateEndElementRelationOfType:(id)type modelID:(id)d createdNew:(BOOL *)new
{
  dCopy = d;
  v9 = NSStringFromProtocol(type);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"endElement" modelProtocol:v9 keyValue:dCopy createdNew:new];

  return v10;
}

- (MKFHome)home
{
  bulletinRegistration = [(_MKFTimePeriodBulletinCondition *)self bulletinRegistration];
  home = [bulletinRegistration home];

  return home;
}

- (MKFTimePeriodBulletinConditionDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFTimePeriodBulletinConditionDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end