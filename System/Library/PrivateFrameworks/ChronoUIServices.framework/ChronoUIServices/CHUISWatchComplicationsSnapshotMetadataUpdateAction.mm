@interface CHUISWatchComplicationsSnapshotMetadataUpdateAction
- (CHUISWatchComplicationsSnapshotMetadataUpdateAction)initWithMetadata:(id)metadata completion:(id)completion;
- (CHUISWatchComplicationsSnapshotMetadataUpdateAction)initWithMetadata:(id)metadata directory:(id)directory completion:(id)completion;
- (CHUISWatchComplicationsWidgetSnapshotMetadata)metadata;
@end

@implementation CHUISWatchComplicationsSnapshotMetadataUpdateAction

- (CHUISWatchComplicationsSnapshotMetadataUpdateAction)initWithMetadata:(id)metadata completion:(id)completion
{
  metadataCopy = metadata;
  completionCopy = completion;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  temporaryDirectory = [defaultManager temporaryDirectory];
  v10 = [temporaryDirectory URLByAppendingPathComponent:@"SnapshotMetadataImageData"];

  v11 = [(CHUISWatchComplicationsSnapshotMetadataUpdateAction *)self initWithMetadata:metadataCopy directory:v10 completion:completionCopy];
  return v11;
}

- (CHUISWatchComplicationsSnapshotMetadataUpdateAction)initWithMetadata:(id)metadata directory:(id)directory completion:(id)completion
{
  metadataCopy = metadata;
  directoryCopy = directory;
  completionCopy = completion;
  v11 = MEMORY[0x1E698E5F8];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __93__CHUISWatchComplicationsSnapshotMetadataUpdateAction_initWithMetadata_directory_completion___block_invoke;
  v21[3] = &unk_1E8575460;
  v12 = completionCopy;
  v22 = v12;
  v13 = [v11 responderWithHandler:v21];
  [v13 setQueue:MEMORY[0x1E69E96A0]];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager createDirectoryAtURL:directoryCopy withIntermediateDirectories:1 attributes:0 error:0];

  v15 = [metadataCopy copyForEncodingAtUrlDirectory:directoryCopy];
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
  info = [(CHUISWatchComplicationsSnapshotMetadataUpdateAction *)self info];
  v3 = [info objectForSetting:0];

  return v3;
}

@end