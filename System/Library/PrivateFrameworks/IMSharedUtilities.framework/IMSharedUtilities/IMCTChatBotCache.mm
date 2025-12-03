@interface IMCTChatBotCache
- (void)destinationCapabilitiesUpdated:(id)updated withCapabilities:(id)capabilities;
- (void)didDiscover:(id)discover destination:(id)destination withCapabilities:(id)capabilities withResult:(id)result;
- (void)didFinishFetchChatBotRenderInformation:(id)information forChatBot:(id)bot withRenderData:(id)data withResult:(id)result;
@end

@implementation IMCTChatBotCache

- (void)destinationCapabilitiesUpdated:(id)updated withCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  selfCopy = self;
  discovered = [capabilitiesCopy discovered];
  [capabilitiesCopy isBot];
  v7 = *(&selfCopy->super.isa + OBJC_IVAR____TtC17IMSharedUtilities16IMCTChatBotCache_cache);
  v8 = sub_1A88C86C8();
  v9 = [discovered uri];
  if (v9)
  {
    v10 = v9;
    [v7 setObject:v8 forKey:v9];
  }

  else
  {
    __break(1u);
  }
}

- (void)didDiscover:(id)discover destination:(id)destination withCapabilities:(id)capabilities withResult:(id)result
{
  if (capabilities)
  {
    destinationCopy = destination;
    selfCopy = self;
    capabilitiesCopy = capabilities;
    [capabilitiesCopy isBot];
    v10 = *(&selfCopy->super.isa + OBJC_IVAR____TtC17IMSharedUtilities16IMCTChatBotCache_cache);
    v11 = sub_1A88C86C8();
    v12 = [destinationCopy uri];
    if (v12)
    {
      v13 = v12;
      [v10 setObject:v11 forKey:v12];
    }

    else
    {
      __break(1u);
    }
  }
}

- (void)didFinishFetchChatBotRenderInformation:(id)information forChatBot:(id)bot withRenderData:(id)data withResult:(id)result
{
  informationCopy = information;
  botCopy = bot;
  dataCopy = data;
  resultCopy = result;
  selfCopy = self;
  sub_1A87AAC04(botCopy, data);
}

@end