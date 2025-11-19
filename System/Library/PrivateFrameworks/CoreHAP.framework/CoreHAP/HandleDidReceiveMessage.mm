@interface HandleDidReceiveMessage
@end

@implementation HandleDidReceiveMessage

void ___HandleDidReceiveMessage_f_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) debugDelegate];
  [v2 httpClient:*(a1 + 32) didReceiveHTTPMessageWithHeaders:*(a1 + 40) body:*(a1 + 48)];
}

@end