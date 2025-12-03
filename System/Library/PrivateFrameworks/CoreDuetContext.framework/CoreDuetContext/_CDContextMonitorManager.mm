@interface _CDContextMonitorManager
+ (id)cleanKBEventNameKey:(id)key;
+ (void)activateMonitorForKeyPath:(id)path;
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

+ (id)cleanKBEventNameKey:(id)key
{
  v3 = [key stringByReplacingOccurrencesOfString:@"/device" withString:@"/system"];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"/user" withString:&stru_1F1D12BE0];

  return v4;
}

+ (void)activateMonitorForKeyPath:(id)path
{
  pathCopy = path;
  +[_CDContextMonitorManager initializeKeyPathEventStreamMapping];
  v4 = MEMORY[0x1E6997888];
  mEMORY[0x1E69978C0] = [MEMORY[0x1E69978C0] sharedInstance];
  v7 = [v4 monitorManagerForEventStreams:mEMORY[0x1E69978C0] domain:1];

  v6 = [keyPathToEventStream objectForKeyedSubscript:pathCopy];

  [v7 populateCurrentValueForStreamName:v6];
}

@end