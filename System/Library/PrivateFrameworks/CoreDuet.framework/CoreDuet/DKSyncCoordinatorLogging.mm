@interface DKSyncCoordinatorLogging
@end

@implementation DKSyncCoordinatorLogging

void __48___DKSyncCoordinatorLogging_portraitStreamNames__block_invoke()
{
  v9[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = +[_CDPortraitStreams topicStream];
  v2 = [v1 name];
  v9[0] = v2;
  v3 = +[_CDPortraitStreams entityStream];
  v4 = [v3 name];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v0 setWithArray:v5];
  v7 = qword_1EADBD680;
  qword_1EADBD680 = v6;

  v8 = *MEMORY[0x1E69E9840];
}

void __53___DKSyncCoordinatorLogging_typeValueWithStreamName___block_invoke()
{
  v8[2] = *MEMORY[0x1E69E9840];
  v0 = +[_CDPortraitStreams entityStream];
  v1 = [v0 name];
  v7[0] = v1;
  v8[0] = @"entity";
  v2 = +[_CDPortraitStreams topicStream];
  v3 = [v2 name];
  v7[1] = v3;
  v8[1] = @"topic";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = qword_1EADBD690;
  qword_1EADBD690 = v4;

  v6 = *MEMORY[0x1E69E9840];
}

void __91___DKSyncCoordinatorLogging__sendDistributedNotificationName_object_throttledActivityName___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v2 postNotificationName:*(a1 + 32) object:*(a1 + 40) userInfo:0 deliverImmediately:0];
}

uint64_t __94___DKSyncCoordinatorLogging_syncCoordinator_didInsertLocalAdditionEventsWithStreamNameCounts___block_invoke()
{
  v0 = [_DKEventTypeStatsCounter counterInCollection:@"sync_up" withEventName:@"type" eventType:&unk_1F05EF758 eventTypePossibleValues:?];
  v1 = qword_1EADBD698;
  qword_1EADBD698 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __91___DKSyncCoordinatorLogging_syncCoordinator_didAddRemoteEventsWithStreamNameCounts_events___block_invoke()
{
  v0 = [_DKEventTypeStatsCounter counterInCollection:@"sync_down" withEventName:@"type" eventType:&unk_1F05EF770 eventTypePossibleValues:?];
  v1 = qword_1EADBD6A8;
  qword_1EADBD6A8 = v0;

  v2 = [_DKEventTypeStatsTimerCounter counterInCollection:@"addition_sync_latency" withEventName:@"type" eventType:&unk_1F05EF788 eventTypePossibleValues:?];
  v3 = qword_1EADBD6B0;
  qword_1EADBD6B0 = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

uint64_t __76___DKSyncCoordinatorLogging_syncCoordinator_didDeleteRemoteEventsWithCount___block_invoke()
{
  v0 = [_DKEventStatsCounter counterInCollection:@"delete" withEventName:?];
  v1 = qword_1EADBD6C0;
  qword_1EADBD6C0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __70___DKSyncCoordinatorLogging__syncCoordinatorDidCreateChangeSetOfType___block_invoke()
{
  v0 = [_DKEventTypeStatsCounter counterInCollection:@"create_changeset" withEventName:@"type" eventType:&unk_1F05EF7A0 eventTypePossibleValues:?];
  v1 = qword_1EADBD6D0;
  qword_1EADBD6D0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end