@interface CHUISWatchComplicationsSnapshotMetadataUpdateAction
- (CHUISWatchComplicationsSnapshotMetadataUpdateAction)initWithMetadata:(id)a3 completion:(id)a4;
- (CHUISWatchComplicationsSnapshotMetadataUpdateAction)initWithMetadata:(id)a3 directory:(id)a4 completion:(id)a5;
- (CHUISWatchComplicationsWidgetSnapshotMetadata)metadata;
@end

@implementation CHUISWatchComplicationsSnapshotMetadataUpdateAction

- (CHUISWatchComplicationsSnapshotMetadataUpdateAction)initWithMetadata:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v8 temporaryDirectory];
  v10 = [v9 URLByAppendingPathComponent:@"SnapshotMetadataImageData"];

  v11 = [(CHUISWatchComplicationsSnapshotMetadataUpdateAction *)self initWithMetadata:v6 directory:v10 completion:v7];
  return v11;
}

- (CHUISWatchComplicationsSnapshotMetadataUpdateAction)initWithMetadata:(id)a3 directory:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x1E698E5F8];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __93__CHUISWatchComplicationsSnapshotMetadataUpdateAction_initWithMetadata_directory_completion___block_invoke;
  v21[3] = &unk_1E8575460;
  v12 = v10;
  v22 = v12;
  v13 = [v11 responderWithHandler:v21];
  [v13 setQueue:MEMORY[0x1E69E96A0]];
  v14 = [MEMORY[0x1E696AC08] defaultManager];
  [v14 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:0];

  v15 = [v8 copyForEncodingAtUrlDirectory:v9];
  v16 = objc_opt_new();
  [v16 setObject:v15 forSetting:0];
  v17 = [v16 copy];
  v20.receiver = self;
  v20.super_class = CHUISWatchComplicationsSnapshotMetadataUpdateAction;
  v18 = [(CHUISWatchComplicationsSnapshotMetadataUpdateAction *)&v20 initWithInfo:v17 responder:v13];

  return v18;
}

void __93__CHUISWatchComplicationsSnapshotMetadataUpdateAction_initWithMetadata_directory_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (*(a1 + 32))
  {
    v3 = [v6 error];

    v4 = *(a1 + 32);
    if (v3)
    {
      v5 = [v6 error];
      (*(v4 + 16))(v4, v5);
    }

    else
    {
      (*(v4 + 16))(v4, 0);
    }
  }
}

- (CHUISWatchComplicationsWidgetSnapshotMetadata)metadata
{
  v2 = [(CHUISWatchComplicationsSnapshotMetadataUpdateAction *)self info];
  v3 = [v2 objectForSetting:0];

  return v3;
}

@end