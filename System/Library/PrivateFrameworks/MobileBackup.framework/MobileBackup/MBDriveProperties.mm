@interface MBDriveProperties
+ (id)propertiesWithDrive:(id)drive path:(id)path error:(id *)error;
- (MBDriveProperties)initWithDrive:(id)drive path:(id)path error:(id *)error;
- (void)removeAllContainers;
@end

@implementation MBDriveProperties

+ (id)propertiesWithDrive:(id)drive path:(id)path error:(id *)error
{
  pathCopy = path;
  driveCopy = drive;
  v9 = [[MBDriveProperties alloc] initWithDrive:driveCopy path:pathCopy error:error];

  return v9;
}

- (MBDriveProperties)initWithDrive:(id)drive path:(id)path error:(id *)error
{
  pathCopy = path;
  driveCopy = drive;
  v10 = [MBProtectionClassFileHandleFactory factoryWithProtectionClass:1];
  v15 = @"FileHandleFactory";
  v16 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v12 = [driveCopy dataAtPath:pathCopy options:v11 error:error];

  if (v12)
  {
    v13 = [(MBProperties *)self initWithData:v12 error:error];
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

- (void)removeAllContainers
{
  v2.receiver = self;
  v2.super_class = MBDriveProperties;
  [(MBProperties *)&v2 removeAllContainers];
}

@end