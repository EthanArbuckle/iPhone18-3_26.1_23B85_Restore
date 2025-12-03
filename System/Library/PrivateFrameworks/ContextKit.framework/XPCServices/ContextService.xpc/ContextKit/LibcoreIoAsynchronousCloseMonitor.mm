@interface LibcoreIoAsynchronousCloseMonitor
+ (void)signalBlockedThreadsWithJavaIoFileDescriptor:(id)descriptor;
@end

@implementation LibcoreIoAsynchronousCloseMonitor

+ (void)signalBlockedThreadsWithJavaIoFileDescriptor:(id)descriptor
{
  v3 = [descriptor getInt$];

  [AsynchronousSocketCloseMonitor signalBlockedThreads:v3];
}

@end