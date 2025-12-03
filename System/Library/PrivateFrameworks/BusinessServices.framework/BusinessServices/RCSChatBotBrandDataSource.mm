@interface RCSChatBotBrandDataSource
- (void)didFinishFetchChatBotRenderInformation:(id)information forChatBot:(id)bot withRenderData:(id)data withResult:(id)result;
@end

@implementation RCSChatBotBrandDataSource

- (void)didFinishFetchChatBotRenderInformation:(id)information forChatBot:(id)bot withRenderData:(id)data withResult:(id)result
{
  informationCopy = information;
  botCopy = bot;
  dataCopy = data;
  resultCopy = result;

  sub_2155C9AD0(botCopy, data, resultCopy);
}

@end