@interface _DKTombstoneNotifier
+ (void)sendDistributedNotificationsForTombstoneRequirementIdentifiers:(id)a3 queue:(id)a4;
@end

@implementation _DKTombstoneNotifier

+ (void)sendDistributedNotificationsForTombstoneRequirementIdentifiers:(id)a3 queue:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[_DKThrottledActivity standardInstance];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __93___DKTombstoneNotifier_sendDistributedNotificationsForTombstoneRequirementIdentifiers_queue___block_invoke;
        v16[3] = &unk_1E7367440;
        v16[4] = v12;
        v13 = MEMORY[0x193B00C50](v16);
        [v7 performWithMinimumIntervalInSecondsOf:v12 name:v6 queue:v13 activityBlock:2.0];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end