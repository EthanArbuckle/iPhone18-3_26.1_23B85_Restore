@interface ML3ClientImportResult
- (ML3ClientImportResult)initWithCoder:(id)coder;
- (ML3ClientImportResult)initWithSuccess:(BOOL)success resultingDatabasePersistentIDs:(id)ds;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ML3ClientImportResult

- (void)encodeWithCoder:(id)coder
{
  success = self->_success;
  coderCopy = coder;
  [coderCopy encodeBool:success forKey:@"success"];
  [coderCopy encodeObject:self->_resultingDatabasePersistentIDs forKey:@"persistentIDs"];
}

- (ML3ClientImportResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ML3ClientImportResult;
  v5 = [(ML3ClientImportResult *)&v13 init];
  if (v5)
  {
    v5->_success = [coderCopy decodeBoolForKey:@"success"];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"persistentIDs"];
    resultingDatabasePersistentIDs = v5->_resultingDatabasePersistentIDs;
    v5->_resultingDatabasePersistentIDs = v10;
  }

  return v5;
}

- (ML3ClientImportResult)initWithSuccess:(BOOL)success resultingDatabasePersistentIDs:(id)ds
{
  dsCopy = ds;
  v7 = [(ML3ClientImportResult *)self init];
  v8 = v7;
  if (v7)
  {
    v7->_success = success;
    v9 = [dsCopy copy];
    resultingDatabasePersistentIDs = v8->_resultingDatabasePersistentIDs;
    v8->_resultingDatabasePersistentIDs = v9;
  }

  return v8;
}

@end