@interface _MKFTimePeriodBulletinCondition
+ (id)modelIDForParentRelationshipTo:(id)a3;
- (MKFHome)home;
- (MKFTimePeriodBulletinConditionDatabaseID)databaseID;
- (id)createEndElementRelationOfType:(id)a3 modelID:(id)a4;
- (id)createStartElementRelationOfType:(id)a3 modelID:(id)a4;
- (id)materializeOrCreateEndElementRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5;
- (id)materializeOrCreateStartElementRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5;
@end

@implementation _MKFTimePeriodBulletinCondition

+ (id)modelIDForParentRelationshipTo:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)createStartElementRelationOfType:(id)a3 modelID:(id)a4
{
  v6 = a4;
  v7 = NSStringFromProtocol(a3);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"startElement" modelProtocol:v7 keyValue:v6];

  return v8;
}

- (id)materializeOrCreateStartElementRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5
{
  v8 = a4;
  v9 = NSStringFromProtocol(a3);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"startElement" modelProtocol:v9 keyValue:v8 createdNew:a5];

  return v10;
}

- (id)createEndElementRelationOfType:(id)a3 modelID:(id)a4
{
  v6 = a4;
  v7 = NSStringFromProtocol(a3);
  v8 = [(NSManagedObject *)self mkf_createRelationOnProperty:@"endElement" modelProtocol:v7 keyValue:v6];

  return v8;
}

- (id)materializeOrCreateEndElementRelationOfType:(id)a3 modelID:(id)a4 createdNew:(BOOL *)a5
{
  v8 = a4;
  v9 = NSStringFromProtocol(a3);
  v10 = [(NSManagedObject *)self mkf_materializeOrCreateRelationOnProperty:@"endElement" modelProtocol:v9 keyValue:v8 createdNew:a5];

  return v10;
}

- (MKFHome)home
{
  v2 = [(_MKFTimePeriodBulletinCondition *)self bulletinRegistration];
  v3 = [v2 home];

  return v3;
}

- (MKFTimePeriodBulletinConditionDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFTimePeriodBulletinConditionDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

@end