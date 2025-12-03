@interface GKViceroyBluetoothSupport
+ (void)turnOnAndObserveWith:(id)with selector:(SEL)selector;
@end

@implementation GKViceroyBluetoothSupport

+ (void)turnOnAndObserveWith:(id)with selector:(SEL)selector
{
  v5 = MEMORY[0x277CCAB98];
  withCopy = with;
  defaultCenter = [v5 defaultCenter];
  [defaultCenter addObserver:withCopy selector:selector name:*MEMORY[0x277D0C908] object:0];

  v8 = MEMORY[0x277D0C920];

  [v8 turnBluetoothOn];
}

@end