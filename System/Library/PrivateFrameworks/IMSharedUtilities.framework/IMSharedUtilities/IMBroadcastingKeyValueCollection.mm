@interface IMBroadcastingKeyValueCollection
- (void)_notifyListeners;
@end

@implementation IMBroadcastingKeyValueCollection

- (void)_notifyListeners
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = IMBroadcastingKeyValueCollection;
  [(IMKeyValueCollection *)&v7 _notifyListeners];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = @"IMKeyValueCollectionChangedValuesKey";
  recordedChanges = [(IMKeyValueCollection *)self recordedChanges];
  v5 = [recordedChanges copy];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [defaultCenter postNotificationName:@"IMKeyValueCollectionChangedNotification" object:self userInfo:v6];
}

@end