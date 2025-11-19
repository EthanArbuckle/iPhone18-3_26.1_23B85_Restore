@interface ThreadNetworkLoggingCategory
@end

@implementation ThreadNetworkLoggingCategory

void __ThreadNetworkLoggingCategory_block_invoke(id a1)
{
  v1 = os_log_create("com.apple.ThreadNetwork", "THClient");
  v2 = ThreadNetworkLoggingCategory_logHandles[0];
  ThreadNetworkLoggingCategory_logHandles[0] = v1;

  v3 = os_log_create("com.apple.ThreadNetwork", "THServer");
  v4 = qword_10052D890;
  qword_10052D890 = v3;
}

@end