@interface NPTLogger
+ (id)cellular;
+ (id)fileSystem;
+ (id)metadata;
+ (id)network;
+ (id)wifiVelocity;
@end

@implementation NPTLogger

+ (id)network
{
  v2 = os_log_create("com.apple.wifiqa.NPTKit", "networking");

  return v2;
}

+ (id)fileSystem
{
  v2 = os_log_create("com.apple.wifiqa.NPTKit", "fileSystem");

  return v2;
}

+ (id)wifiVelocity
{
  v2 = os_log_create("com.apple.wifiqa.NPTKit", "wifiVelocity");

  return v2;
}

+ (id)cellular
{
  v2 = os_log_create("com.apple.wifiqa.NPTKit", "cellular");

  return v2;
}

+ (id)metadata
{
  v2 = os_log_create("com.apple.wifiqa.NPTKit", "metadata");

  return v2;
}

@end