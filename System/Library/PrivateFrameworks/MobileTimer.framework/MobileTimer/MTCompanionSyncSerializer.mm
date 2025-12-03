@interface MTCompanionSyncSerializer
- (id)changeFromData:(id)data ofType:(int64_t)type;
- (id)dataFromChange:(id)change;
@end

@implementation MTCompanionSyncSerializer

- (id)dataFromChange:(id)change
{
  changeCopy = change;
  if (([changeCopy conformsToProtocol:&unk_1F2976660] & 1) == 0)
  {
    [(MTCompanionSyncSerializer *)a2 dataFromChange:changeCopy];
  }

  serialize = [changeCopy serialize];
  data = [serialize data];

  return data;
}

- (id)changeFromData:(id)data ofType:(int64_t)type
{
  dataCopy = data;
  v5 = [[MTPBSyncMessage alloc] initWithData:dataCopy];

  if ([(MTPBSyncMessage *)v5 hasDismissAction])
  {
    v6 = MTSyncDismiss;
LABEL_5:
    v7 = [(__objc2_class *)v6 deserialize:v5];
    goto LABEL_9;
  }

  if ([(MTPBSyncMessage *)v5 hasSnoozeAction])
  {
    v6 = MTSyncSnooze;
    goto LABEL_5;
  }

  v8 = MTLogForCategory(6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [MTCompanionSyncSerializer changeFromData:v8 ofType:?];
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (void)dataFromChange:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MTCompanionSyncSerializer.m" lineNumber:25 description:{@"%@ not protobuffer serializable", a3}];
}

- (void)changeFromData:(NSObject *)a1 ofType:.cold.1(NSObject *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = +[MTPairedDeviceListener sharedListener];
  v3 = [v2 pairedDeviceVersion];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_1B1F9F000, a1, OS_LOG_TYPE_ERROR, "Dropping undecodeable sync data from %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end