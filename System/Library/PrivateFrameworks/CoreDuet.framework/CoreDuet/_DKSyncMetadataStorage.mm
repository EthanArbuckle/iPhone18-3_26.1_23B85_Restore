@interface _DKSyncMetadataStorage
+ (id)bookmarkStreamNameWithSourceDeviceID:(uint64_t)d;
+ (id)eventFromFetchedWindow:(void *)window windowStreamName:(void *)name transportName:;
+ (id)eventFromStartDate:(void *)date endDate:(void *)endDate bookmarkStreamName:(void *)name transportName:;
+ (id)windowStreamNameWithSourceDeviceID:(uint64_t)d;
@end

@implementation _DKSyncMetadataStorage

+ (id)windowStreamNameWithSourceDeviceID:(uint64_t)d
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

+ (id)bookmarkStreamNameWithSourceDeviceID:(uint64_t)d
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

+ (id)eventFromFetchedWindow:(void *)window windowStreamName:(void *)name transportName:
{
  nameCopy = name;
  windowCopy = window;
  v8 = a2;
  objc_opt_self();
  v9 = +[_DKAnyStringIdentifier type];
  v10 = [_DKEventStream eventStreamWithName:windowCopy valueType:v9];

  date = [MEMORY[0x1E695DF00] date];
  startDate = [(_DKSyncWindow *)v8 startDate];
  urgency = [(_DKSyncType *)v8 urgency];

  v14 = [_DKEvent eventWithStream:v10 startDate:startDate endDate:urgency identifierStringValue:nameCopy metadata:0];

  [v14 setCreationDate:date];

  return v14;
}

+ (id)eventFromStartDate:(void *)date endDate:(void *)endDate bookmarkStreamName:(void *)name transportName:
{
  nameCopy = name;
  endDateCopy = endDate;
  dateCopy = date;
  v11 = a2;
  objc_opt_self();
  v12 = +[_DKAnyStringIdentifier type];
  v13 = [_DKEventStream eventStreamWithName:endDateCopy valueType:v12];

  date = [MEMORY[0x1E695DF00] date];
  v15 = [_DKEvent eventWithStream:v13 startDate:v11 endDate:dateCopy identifierStringValue:nameCopy metadata:0];

  [v15 setCreationDate:date];

  return v15;
}

@end