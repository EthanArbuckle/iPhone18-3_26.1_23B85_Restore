@interface _MKFCharacteristicWriteAction
+ (id)modelIDForParentRelationshipTo:(id)a3;
- (BOOL)validateForInsertOrUpdate:(id *)a3;
- (MKFCharacteristicWriteActionDatabaseID)databaseID;
- (MKFHome)home;
- (void)willSave;
@end

@implementation _MKFCharacteristicWriteAction

- (MKFHome)home
{
  v2 = [(_MKFCharacteristicWriteAction *)self actionSet];
  v3 = [v2 home];

  return v3;
}

- (MKFCharacteristicWriteActionDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFCharacteristicWriteActionDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)validateForInsertOrUpdate:(id *)a3
{
  v9.receiver = self;
  v9.super_class = _MKFCharacteristicWriteAction;
  LODWORD(v5) = [(_MKFModel *)&v9 validateForInsertOrUpdate:?];
  if (v5)
  {
    v6 = [(_MKFCharacteristicWriteAction *)self service];

    if (v6)
    {
      LOBYTE(v5) = 1;
    }

    else if (a3)
    {
      v7 = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"service is required"];
      v5 = v7;
      LOBYTE(v5) = 0;
      *a3 = v7;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)willSave
{
  v7.receiver = self;
  v7.super_class = _MKFCharacteristicWriteAction;
  [(_MKFModel *)&v7 willSave];
  v3 = [(_MKFCharacteristicWriteAction *)self service];
  v4 = [v3 accessory];

  if (v4)
  {
    v5 = [(_MKFCharacteristicWriteAction *)self accessory];
    v6 = HMFEqualObjects();

    if ((v6 & 1) == 0)
    {
      [(_MKFCharacteristicWriteAction *)self setAccessory:v4];
    }
  }
}

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

@end