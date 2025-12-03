@interface _MKFCameraAccessModeBulletinRegistration
+ (id)modelIDForParentRelationshipTo:(id)to;
- (BOOL)validateForInsertOrUpdate:(id *)update;
- (MKFCameraAccessModeBulletinRegistrationDatabaseID)databaseID;
- (MKFHome)home;
@end

@implementation _MKFCameraAccessModeBulletinRegistration

- (MKFHome)home
{
  user = [(_MKFCameraAccessModeBulletinRegistration *)self user];
  home = [user home];

  return home;
}

- (MKFCameraAccessModeBulletinRegistrationDatabaseID)databaseID
{
  v2 = [(MKFObjectDatabaseID *)[MKFCameraAccessModeBulletinRegistrationDatabaseID alloc] initWithMKFObject:self];

  return v2;
}

- (BOOL)validateForInsertOrUpdate:(id *)update
{
  v9.receiver = self;
  v9.super_class = _MKFCameraAccessModeBulletinRegistration;
  LODWORD(v5) = [(_MKFModel *)&v9 validateForInsertOrUpdate:?];
  if (v5)
  {
    accessory = [(_MKFCameraAccessModeBulletinRegistration *)self accessory];

    if (accessory)
    {
      LOBYTE(v5) = 1;
    }

    else if (update)
    {
      v7 = [MEMORY[0x277CCA9B8] hmd_validationErrorWithDescription:@"accessory is required"];
      v5 = v7;
      LOBYTE(v5) = 0;
      *update = v7;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

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

@end