@interface THCredentialsServerLogHandleForCategory
@end

@implementation THCredentialsServerLogHandleForCategory

void __THCredentialsServerLogHandleForCategory_block_invoke(id a1)
{
  v1 = os_log_create("com.apple.thread", "unspecified");
  v2 = THCredentialsServerLogHandleForCategory_logHandles[0];
  THCredentialsServerLogHandleForCategory_logHandles[0] = v1;

  v3 = os_log_create("com.apple.thread", "store");
  v4 = qword_10052D790;
  qword_10052D790 = v3;
}

@end