@interface GKViceroyBluetoothSupport
+ (void)turnOnAndObserveWith:(id)a3 selector:(SEL)a4;
@end

@implementation GKViceroyBluetoothSupport

+ (void)turnOnAndObserveWith:(id)a3 selector:(SEL)a4
{
  v5 = MEMORY[0x277CCAB98];
  v6 = a3;
  v7 = [v5 defaultCenter];
  [v7 addObserver:v6 selector:a4 name:*MEMORY[0x277D0C908] object:0];

  v8 = MEMORY[0x277D0C920];

  [v8 turnBluetoothOn];
}

@end