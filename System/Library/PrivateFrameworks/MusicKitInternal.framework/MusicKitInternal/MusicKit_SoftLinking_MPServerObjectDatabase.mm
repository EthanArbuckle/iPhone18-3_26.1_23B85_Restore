@interface MusicKit_SoftLinking_MPServerObjectDatabase
+ (MusicKit_SoftLinking_MPServerObjectDatabase)sharedServerObjectDatabase;
- (id)_initWithUnderlyingServerObjectDatabase:(id)a3;
- (id)importObjectsFromRequest:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)payloadDataForIdentifier:(id)a3 identifierKinds:(int64_t)a4 error:(id *)a5;
@end

@implementation MusicKit_SoftLinking_MPServerObjectDatabase

+ (MusicKit_SoftLinking_MPServerObjectDatabase)sharedServerObjectDatabase
{
  if (sharedServerObjectDatabase_sSharedServerObjectDatabaseOnceToken != -1)
  {
    +[MusicKit_SoftLinking_MPServerObjectDatabase sharedServerObjectDatabase];
  }

  v3 = sharedServerObjectDatabase_sSharedServerObjectDatabase;

  return v3;
}

- (id)_initWithUnderlyingServerObjectDatabase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPServerObjectDatabase;
  v6 = [(MusicKit_SoftLinking_MPServerObjectDatabase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingServerObjectDatabase, a3);
  }

  return v7;
}

- (id)importObjectsFromRequest:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v6 = a4;
  v8 = [a3 _underlyingImportRequest];
  v9 = [(MPServerObjectDatabase *)self->_underlyingServerObjectDatabase importObjectsFromRequest:v8 options:v6 & 1 error:a5];
  v10 = [[MusicKit_SoftLinking_MPServerObjectDatabaseImportResult alloc] _initWithUnderlyingImportResult:v9];

  return v10;
}

- (id)payloadDataForIdentifier:(id)a3 identifierKinds:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v9 = getMPModelGenericObjectKindClass_softClass;
  v31 = getMPModelGenericObjectKindClass_softClass;
  if (!getMPModelGenericObjectKindClass_softClass)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getMPModelGenericObjectKindClass_block_invoke;
    v26 = &unk_1E84C3838;
    v27 = &v28;
    __getMPModelGenericObjectKindClass_block_invoke(&v23);
    v9 = v29[3];
  }

  v10 = v9;
  _Block_object_dispose(&v28, 8);
  v11 = [v9 identityKind];
  v12 = [MEMORY[0x1E69775E0] rawSourceFromSource:12];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v13 = getMPIdentifierSetClass_softClass_1;
  v31 = getMPIdentifierSetClass_softClass_1;
  if (!getMPIdentifierSetClass_softClass_1)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getMPIdentifierSetClass_block_invoke_1;
    v26 = &unk_1E84C3838;
    v27 = &v28;
    __getMPIdentifierSetClass_block_invoke_1(&v23);
    v13 = v29[3];
  }

  v14 = v13;
  _Block_object_dispose(&v28, 8);
  v15 = [v13 alloc];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __94__MusicKit_SoftLinking_MPServerObjectDatabase_payloadDataForIdentifier_identifierKinds_error___block_invoke;
  v20[3] = &unk_1E84C3F40;
  v21 = v8;
  v22 = a4;
  v16 = v8;
  v17 = [v15 initWithSource:v12 modelKind:v11 block:v20];
  v18 = [(MPServerObjectDatabase *)self->_underlyingServerObjectDatabase payloadDataForIdentifierSet:v17 outError:a5];

  return v18;
}

@end