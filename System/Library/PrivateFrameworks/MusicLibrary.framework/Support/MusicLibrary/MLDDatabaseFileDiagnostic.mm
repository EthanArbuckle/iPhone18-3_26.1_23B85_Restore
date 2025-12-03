@interface MLDDatabaseFileDiagnostic
- (MLDDatabaseFileDiagnostic)initWithDatabasePath:(id)path;
- (id)description;
@end

@implementation MLDDatabaseFileDiagnostic

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p {\n  path: %@\n  file attributes: %@\n}", v4, self, self->_databasePath, self->_fileAttributes];

  return v5;
}

- (MLDDatabaseFileDiagnostic)initWithDatabasePath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = MLDDatabaseFileDiagnostic;
  v5 = [(MLDDatabaseFileDiagnostic *)&v12 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    databasePath = v5->_databasePath;
    v5->_databasePath = v6;

    v8 = +[NSFileManager defaultManager];
    v9 = [v8 attributesOfItemAtPath:v5->_databasePath error:0];
    fileAttributes = v5->_fileAttributes;
    v5->_fileAttributes = v9;
  }

  return v5;
}

@end