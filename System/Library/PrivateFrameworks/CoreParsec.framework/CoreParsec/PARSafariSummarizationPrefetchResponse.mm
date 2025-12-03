@interface PARSafariSummarizationPrefetchResponse
+ (id)responseFromReply:(id)reply;
@end

@implementation PARSafariSummarizationPrefetchResponse

+ (id)responseFromReply:(id)reply
{
  replyCopy = reply;
  v4 = [PARSafariSummarizationPrefetchResponse alloc];
  v5 = objc_alloc_init(PARDefaultFactory);
  data = [replyCopy data];
  v7 = [(PARSafariSummarizationPrefetchResponse *)v4 initWithReply:replyCopy factory:v5 data:data];

  return v7;
}

@end