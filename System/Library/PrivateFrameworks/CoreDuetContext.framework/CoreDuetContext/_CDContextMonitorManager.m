@interface _CDContextMonitorManager
+ (id)cleanKBEventNameKey:(id)a3;
+ (void)activateMonitorForKeyPath:(id)a3;
+ (void)initializeKeyPathEventStreamMapping;
@end

@implementation _CDContextMonitorManager

+ (void)initializeKeyPathEventStreamMapping
{
  if (initializeKeyPathEventStreamMapping_onceToken != -1)
  {
    +[_CDContextMonitorManager initializeKeyPathEventStreamMapping];
  }
}

+ (id)cleanKBEventNameKey:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@"/device" withString:@"/system"];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"/user" withString:&stru_1F1D12BE0];

  return v4;
}

+ (void)activateMonitorForKeyPath:(id)a3
{
  v3 = a3;
  +[_CDContextMonitorManager initializeKeyPathEventStreamMapping];
  v4 = MEMORY[0x1E6997888];
  v5 = [MEMORY[0x1E69978C0] sharedInstance];
  v7 = [v4 monitorManagerForEventStreams:v5 domain:1];

  v6 = [keyPathToEventStream objectForKeyedSubscript:v3];

  [v7 populateCurrentValueForStreamName:v6];
}

@end