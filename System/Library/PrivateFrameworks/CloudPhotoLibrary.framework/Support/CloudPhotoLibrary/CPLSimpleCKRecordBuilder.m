@interface CPLSimpleCKRecordBuilder
- (CPLSimpleCKRecordBuilder)initWithBaseCKRecord:(id)a3 scopeProvider:(id)a4 currentUserRecordID:(id)a5 targetMapping:(id)a6;
- (id)_recordIDFromScopedIdentifier:(id)a3 cloudKitScope:(id *)a4 error:(id *)a5;
- (id)recordIDForResourcesOfRecordWithScopedIdentifier:(id)a3 cloudKitScope:(id *)a4 error:(id *)a5;
- (void)requestRecordWithID:(id)a3 cloudKitScope:(id)a4 forKey:(id)a5 completionHandler:(id)a6;
- (void)setCKReferenceWithScopedIdentifier:(id)a3 forKey:(id)a4 referenceAction:(unint64_t)a5;
@end

@implementation CPLSimpleCKRecordBuilder

- (CPLSimpleCKRecordBuilder)initWithBaseCKRecord:(id)a3 scopeProvider:(id)a4 currentUserRecordID:(id)a5 targetMapping:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CPLSimpleCKRecordBuilder;
  v15 = [(CPLSimpleCKRecordBuilder *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_ckRecord, a3);
    objc_storeStrong(&v16->_scopeProvider, a4);
    objc_storeStrong(&v16->_currentUserRecordID, a5);
    objc_storeStrong(&v16->_targetMapping, a6);
  }

  return v16;
}

- (id)_recordIDFromScopedIdentifier:(id)a3 cloudKitScope:(id *)a4 error:(id *)a5
{
  v8 = a3;
  scopeProvider = self->_scopeProvider;
  v10 = [v8 scopeIdentifier];
  v11 = [(CPLCloudKitScopeProvider *)scopeProvider cloudKitScopeForScopeIdentifier:v10];

  if (v11)
  {
    v12 = [v8 identifier];
    a5 = [v11 recordIDWithRecordName:v12];

    v13 = v11;
    *a4 = v11;
  }

  else if (a5)
  {
    v14 = [v8 scopeIdentifier];
    *a5 = [CPLErrors cplErrorWithCode:2001 description:@"Can't find CloudKit scope for %@", v14];

    a5 = 0;
  }

  return a5;
}

- (id)recordIDForResourcesOfRecordWithScopedIdentifier:(id)a3 cloudKitScope:(id *)a4 error:(id *)a5
{
  v9 = a3;
  v10 = [(CPLRecordTargetMapping *)self->_targetMapping targetForRecordWithScopedIdentifier:v9];
  if (!v10)
  {
    sub_1001983A4(a2, self, v9);
  }

  v11 = v10;
  v12 = [v10 resourceScopedIdentifier];
  v13 = [(CPLSimpleCKRecordBuilder *)self _recordIDFromScopedIdentifier:v12 cloudKitScope:a4 error:a5];

  return v13;
}

- (void)setCKReferenceWithScopedIdentifier:(id)a3 forKey:(id)a4 referenceAction:(unint64_t)a5
{
  v16 = a3;
  if (v16)
  {
    v8 = a4;
    v9 = [CKRecordID alloc];
    v10 = [v16 identifier];
    v11 = [(CKRecord *)self->_ckRecord recordID];
    v12 = [v11 zoneID];
    v13 = [v9 initWithRecordName:v10 zoneID:v12];

    v14 = [[CKReference alloc] initWithRecordID:v13 action:a5];
    [(CKRecord *)self->_ckRecord setObject:v14 forKey:v8];
  }

  else
  {
    ckRecord = self->_ckRecord;
    v13 = a4;
    [(CKRecord *)ckRecord setObject:0 forKey:v13];
  }
}

- (void)requestRecordWithID:(id)a3 cloudKitScope:(id)a4 forKey:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = +[NSAssertionHandler currentHandler];
  v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/CloudKit/CPLCKRecordBuilder.m"];
  v17 = NSStringFromSelector(a2);
  [v15 handleFailureInMethod:a2 object:self file:v16 lineNumber:88 description:{@"%@ is not supported by %@", v17, objc_opt_class()}];

  abort();
}

@end