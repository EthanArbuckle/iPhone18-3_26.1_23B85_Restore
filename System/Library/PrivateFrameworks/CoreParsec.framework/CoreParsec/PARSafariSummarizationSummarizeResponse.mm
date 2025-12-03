@interface PARSafariSummarizationSummarizeResponse
+ (id)responseFromReply:(id)reply;
@end

@implementation PARSafariSummarizationSummarizeResponse

+ (id)responseFromReply:(id)reply
{
  replyCopy = reply;
  v4 = [PARSafariSummarizationSummarizeResponse alloc];
  v5 = objc_alloc_init(PARDefaultFactory);
  data = [replyCopy data];
  v7 = [(PARSafariSummarizationSummarizeResponse *)v4 initWithReply:replyCopy factory:v5 data:data];

  return v7;
}

@end