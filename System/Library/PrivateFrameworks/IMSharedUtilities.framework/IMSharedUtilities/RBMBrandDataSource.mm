@interface RBMBrandDataSource
- (void)didFinishFetchChatBotRenderInformation:(id)information forChatBot:(id)bot withRenderData:(id)data withResult:(id)result;
@end

@implementation RBMBrandDataSource

- (void)didFinishFetchChatBotRenderInformation:(id)information forChatBot:(id)bot withRenderData:(id)data withResult:(id)result
{
  informationCopy = information;
  botCopy = bot;
  dataCopy = data;
  resultCopy = result;

  sub_1A88599E0(botCopy, data, resultCopy);
}

@end