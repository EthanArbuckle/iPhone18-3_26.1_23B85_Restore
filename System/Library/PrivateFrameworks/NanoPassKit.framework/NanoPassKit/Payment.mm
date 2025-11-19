@interface Payment
@end

@implementation Payment

void __pk_Payment_log_block_invoke()
{
  v0 = os_log_create("com.apple.passkit", "Payment");
  v1 = pk_Payment_log___logger;
  pk_Payment_log___logger = v0;
}

@end