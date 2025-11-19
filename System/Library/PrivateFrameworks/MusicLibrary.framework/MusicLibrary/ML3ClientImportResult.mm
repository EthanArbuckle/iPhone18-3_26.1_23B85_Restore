@interface ML3ClientImportResult
- (ML3ClientImportResult)initWithCoder:(id)a3;
- (ML3ClientImportResult)initWithSuccess:(BOOL)a3 resultingDatabasePersistentIDs:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ML3ClientImportResult

- (void)encodeWithCoder:(id)a3
{
  success = self->_success;
  v5 = a3;
  [v5 encodeBool:success forKey:@"success"];
  [v5 encodeObject:self->_resultingDatabasePersistentIDs forKey:@"persistentIDs"];
}

- (ML3ClientImportResult)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ML3ClientImportResult;
  v5 = [(ML3ClientImportResult *)&v13 init];
  if (v5)
  {
    v5->_success = [v4 decodeBoolForKey:@"success"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"persistentIDs"];
    resultingDatabasePersistentIDs = v5->_resultingDatabasePersistentIDs;
    v5->_resultingDatabasePersistentIDs = v10;
  }

  return v5;
}

- (ML3ClientImportResult)initWithSuccess:(BOOL)a3 resultingDatabasePersistentIDs:(id)a4
{
  v6 = a4;
  v7 = [(ML3ClientImportResult *)self init];
  v8 = v7;
  if (v7)
  {
    v7->_success = a3;
    v9 = [v6 copy];
    resultingDatabasePersistentIDs = v8->_resultingDatabasePersistentIDs;
    v8->_resultingDatabasePersistentIDs = v9;
  }

  return v8;
}

@end