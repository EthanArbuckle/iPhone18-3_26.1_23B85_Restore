@interface _DKSyncMetadataStorage
+ (id)bookmarkStreamNameWithSourceDeviceID:(uint64_t)a1;
+ (id)eventFromFetchedWindow:(void *)a3 windowStreamName:(void *)a4 transportName:;
+ (id)eventFromStartDate:(void *)a3 endDate:(void *)a4 bookmarkStreamName:(void *)a5 transportName:;
+ (id)windowStreamNameWithSourceDeviceID:(uint64_t)a1;
@end

@implementation _DKSyncMetadataStorage

+ (id)windowStreamNameWithSourceDeviceID:(uint64_t)a1
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v7[0] = @"/knowledge-sync-addition-window";
  v7[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [MEMORY[0x1E696AEC0] pathWithComponents:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)bookmarkStreamNameWithSourceDeviceID:(uint64_t)a1
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v7[0] = @"/knowledge-sync-deletion-bookmark";
  v7[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [MEMORY[0x1E696AEC0] pathWithComponents:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)eventFromFetchedWindow:(void *)a3 windowStreamName:(void *)a4 transportName:
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  v9 = +[_DKAnyStringIdentifier type];
  v10 = [_DKEventStream eventStreamWithName:v7 valueType:v9];

  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [(_DKSyncWindow *)v8 startDate];
  v13 = [(_DKSyncType *)v8 urgency];

  v14 = [_DKEvent eventWithStream:v10 startDate:v12 endDate:v13 identifierStringValue:v6 metadata:0];

  [v14 setCreationDate:v11];

  return v14;
}

+ (id)eventFromStartDate:(void *)a3 endDate:(void *)a4 bookmarkStreamName:(void *)a5 transportName:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  objc_opt_self();
  v12 = +[_DKAnyStringIdentifier type];
  v13 = [_DKEventStream eventStreamWithName:v9 valueType:v12];

  v14 = [MEMORY[0x1E695DF00] date];
  v15 = [_DKEvent eventWithStream:v13 startDate:v11 endDate:v10 identifierStringValue:v8 metadata:0];

  [v15 setCreationDate:v14];

  return v15;
}

@end