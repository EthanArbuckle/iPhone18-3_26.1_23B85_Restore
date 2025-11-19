@interface HandleWillSendMessage
@end

@implementation HandleWillSendMessage

void ___HandleWillSendMessage_f_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) debugDelegate];
  [v2 httpClient:*(a1 + 32) willSendHTTPMessageWithHeaders:*(a1 + 40) body:*(a1 + 48)];
}

@end