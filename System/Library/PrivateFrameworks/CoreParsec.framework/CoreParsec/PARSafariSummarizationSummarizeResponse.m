@interface PARSafariSummarizationSummarizeResponse
+ (id)responseFromReply:(id)a3;
@end

@implementation PARSafariSummarizationSummarizeResponse

+ (id)responseFromReply:(id)a3
{
  v3 = a3;
  v4 = [PARSafariSummarizationSummarizeResponse alloc];
  v5 = objc_alloc_init(PARDefaultFactory);
  v6 = [v3 data];
  v7 = [(PARSafariSummarizationSummarizeResponse *)v4 initWithReply:v3 factory:v5 data:v6];

  return v7;
}

@end