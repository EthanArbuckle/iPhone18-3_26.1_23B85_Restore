@interface MBDriveProperties
+ (id)propertiesWithDrive:(id)a3 path:(id)a4 error:(id *)a5;
- (MBDriveProperties)initWithDrive:(id)a3 path:(id)a4 error:(id *)a5;
- (void)removeAllContainers;
@end

@implementation MBDriveProperties

+ (id)propertiesWithDrive:(id)a3 path:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[MBDriveProperties alloc] initWithDrive:v8 path:v7 error:a5];

  return v9;
}

- (MBDriveProperties)initWithDrive:(id)a3 path:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [MBProtectionClassFileHandleFactory factoryWithProtectionClass:1];
  v15 = @"FileHandleFactory";
  v16 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v12 = [v9 dataAtPath:v8 options:v11 error:a5];

  if (v12)
  {
    v13 = [(MBProperties *)self initWithData:v12 error:a5];
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