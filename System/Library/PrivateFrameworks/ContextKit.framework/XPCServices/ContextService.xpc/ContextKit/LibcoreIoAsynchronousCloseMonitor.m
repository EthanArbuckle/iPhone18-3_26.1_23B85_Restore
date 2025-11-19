@interface LibcoreIoAsynchronousCloseMonitor
+ (void)signalBlockedThreadsWithJavaIoFileDescriptor:(id)a3;
@end

@implementation LibcoreIoAsynchronousCloseMonitor

+ (void)signalBlockedThreadsWithJavaIoFileDescriptor:(id)a3
{
  v3 = [a3 getInt$];

  [AsynchronousSocketCloseMonitor signalBlockedThreads:v3];
}

@end