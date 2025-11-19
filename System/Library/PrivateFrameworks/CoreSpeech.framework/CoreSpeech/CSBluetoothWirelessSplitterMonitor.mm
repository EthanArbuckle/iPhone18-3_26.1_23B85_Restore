@interface CSBluetoothWirelessSplitterMonitor
+ (id)sharedInstance;
@end

@implementation CSBluetoothWirelessSplitterMonitor

+ (id)sharedInstance
{
  if (qword_10029E518 != -1)
  {
    dispatch_once(&qword_10029E518, &stru_100252BD8);
  }

  v3 = qword_10029E520;

  return v3;
}

@end