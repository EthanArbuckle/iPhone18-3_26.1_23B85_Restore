@interface Relevance
@end

@implementation Relevance

void __pk_Relevance_log_block_invoke()
{
  v0 = os_log_create("com.apple.passkit", "Relevance");
  v1 = pk_Relevance_log___logger;
  pk_Relevance_log___logger = v0;
}

@end