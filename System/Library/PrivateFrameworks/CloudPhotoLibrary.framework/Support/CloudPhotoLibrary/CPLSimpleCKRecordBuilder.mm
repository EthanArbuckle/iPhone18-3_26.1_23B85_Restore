@interface CPLSimpleCKRecordBuilder
- (CPLSimpleCKRecordBuilder)initWithBaseCKRecord:(id)record scopeProvider:(id)provider currentUserRecordID:(id)d targetMapping:(id)mapping;
- (id)_recordIDFromScopedIdentifier:(id)identifier cloudKitScope:(id *)scope error:(id *)error;
- (id)recordIDForResourcesOfRecordWithScopedIdentifier:(id)identifier cloudKitScope:(id *)scope error:(id *)error;
- (void)requestRecordWithID:(id)d cloudKitScope:(id)scope forKey:(id)key completionHandler:(id)handler;
- (void)setCKReferenceWithScopedIdentifier:(id)identifier forKey:(id)key referenceAction:(unint64_t)action;
@end

@implementation CPLSimpleCKRecordBuilder

- (CPLSimpleCKRecordBuilder)initWithBaseCKRecord:(id)record scopeProvider:(id)provider currentUserRecordID:(id)d targetMapping:(id)mapping
{
  recordCopy = record;
  providerCopy = provider;
  dCopy = d;
  mappingCopy = mapping;
  v18.receiver = self;
  v18.super_class = CPLSimpleCKRecordBuilder;
  v15 = [(CPLSimpleCKRecordBuilder *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_ckRecord, record);
    objc_storeStrong(&v16->_scopeProvider, provider);
    objc_storeStrong(&v16->_currentUserRecordID, d);
    objc_storeStrong(&v16->_targetMapping, mapping);
  }

  return v16;
}

- (id)_recordIDFromScopedIdentifier:(id)identifier cloudKitScope:(id *)scope error:(id *)error
{
  identifierCopy = identifier;
  scopeProvider = self->_scopeProvider;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  v11 = [(CPLCloudKitScopeProvider *)scopeProvider cloudKitScopeForScopeIdentifier:scopeIdentifier];

  if (v11)
  {
    identifier = [identifierCopy identifier];
    error = [v11 recordIDWithRecordName:identifier];

    v13 = v11;
    *scope = v11;
  }

  else if (error)
  {
    scopeIdentifier2 = [identifierCopy scopeIdentifier];
    *error = [CPLErrors cplErrorWithCode:2001 description:@"Can't find CloudKit scope for %@", scopeIdentifier2];

    error = 0;
  }

  return error;
}

- (id)recordIDForResourcesOfRecordWithScopedIdentifier:(id)identifier cloudKitScope:(id *)scope error:(id *)error
{
  identifierCopy = identifier;
  v10 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:identifierCopy];
  if (!v10)
  {
    sub_1001983A4(a2, self, identifierCopy);
  }

  v11 = v10;
  resourceScopedIdentifier = [v10 resourceScopedIdentifier];
  v13 = [(CPLSimpleCKRecordBuilder *)self _recordIDFromScopedIdentifier:resourceScopedIdentifier cloudKitScope:scope error:error];

  return v13;
}

- (void)setCKReferenceWithScopedIdentifier:(id)identifier forKey:(id)key referenceAction:(unint64_t)action
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    keyCopy = key;
    v9 = [CKRecordID alloc];
    identifier = [identifierCopy identifier];
    recordID = [(CKRecord *)self->_ckRecord recordID];
    zoneID = [recordID zoneID];
    keyCopy2 = [v9 initWithRecordName:identifier zoneID:zoneID];

    v14 = [[CKReference alloc] initWithRecordID:keyCopy2 action:action];
    [(CKRecord *)self->_ckRecord setObject:v14 forKey:keyCopy];
  }

  else
  {
    ckRecord = self->_ckRecord;
    keyCopy2 = key;
    [(CKRecord *)ckRecord setObject:0 forKey:keyCopy2];
  }
}

- (void)requestRecordWithID:(id)d cloudKitScope:(id)scope forKey:(id)key completionHandler:(id)handler
{
  dCopy = d;
  scopeCopy = scope;
  keyCopy = key;
  handlerCopy = handler;
  v15 = +[NSAssertionHandler currentHandler];
  v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKRecordBuilder.m"];
  v17 = NSStringFromSelector(a2);
  [v15 handleFailureInMethod:a2 object:self file:v16 lineNumber:88 description:{@"%@ is not supported by %@", v17, objc_opt_class()}];

  abort();
}

@end