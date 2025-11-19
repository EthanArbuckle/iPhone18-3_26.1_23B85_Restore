@interface MusicKit_SoftLinking_MPServerObjectDatabaseMediaKitImportRequest
- (MusicKit_SoftLinking_MPServerObjectDatabaseMediaKitImportRequest)initWithPayload:(id)a3;
@end

@implementation MusicKit_SoftLinking_MPServerObjectDatabaseMediaKitImportRequest

- (MusicKit_SoftLinking_MPServerObjectDatabaseMediaKitImportRequest)initWithPayload:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MusicKit_SoftLinking_MPServerObjectDatabaseMediaKitImportRequest;
  v5 = [(MusicKit_SoftLinking_MPServerObjectDatabaseMediaKitImportRequest *)&v11 init];
  if (v5)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v6 = getMPServerObjectDatabaseMediaKitImportRequestClass_softClass;
    v16 = getMPServerObjectDatabaseMediaKitImportRequestClass_softClass;
    if (!getMPServerObjectDatabaseMediaKitImportRequestClass_softClass)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __getMPServerObjectDatabaseMediaKitImportRequestClass_block_invoke;
      v12[3] = &unk_1E84C3838;
      v12[4] = &v13;
      __getMPServerObjectDatabaseMediaKitImportRequestClass_block_invoke(v12);
      v6 = v14[3];
    }

    v7 = v6;
    _Block_object_dispose(&v13, 8);
    v8 = [[v6 alloc] initWithPayload:v4];
    underlyingImportRequest = v5->_underlyingImportRequest;
    v5->_underlyingImportRequest = v8;
  }

  return v5;
}

@end