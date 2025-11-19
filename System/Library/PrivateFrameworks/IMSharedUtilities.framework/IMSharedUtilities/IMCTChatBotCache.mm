@interface IMCTChatBotCache
- (void)destinationCapabilitiesUpdated:(id)a3 withCapabilities:(id)a4;
- (void)didDiscover:(id)a3 destination:(id)a4 withCapabilities:(id)a5 withResult:(id)a6;
- (void)didFinishFetchChatBotRenderInformation:(id)a3 forChatBot:(id)a4 withRenderData:(id)a5 withResult:(id)a6;
@end

@implementation IMCTChatBotCache

- (void)destinationCapabilitiesUpdated:(id)a3 withCapabilities:(id)a4
{
  v11 = a4;
  v5 = self;
  v6 = [v11 discovered];
  [v11 isBot];
  v7 = *(&v5->super.isa + OBJC_IVAR____TtC17IMSharedUtilities16IMCTChatBotCache_cache);
  v8 = sub_1A88C86C8();
  v9 = [v6 uri];
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

- (void)didDiscover:(id)a3 destination:(id)a4 withCapabilities:(id)a5 withResult:(id)a6
{
  if (a5)
  {
    v14 = a4;
    v8 = self;
    v9 = a5;
    [v9 isBot];
    v10 = *(&v8->super.isa + OBJC_IVAR____TtC17IMSharedUtilities16IMCTChatBotCache_cache);
    v11 = sub_1A88C86C8();
    v12 = [v14 uri];
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

- (void)didFinishFetchChatBotRenderInformation:(id)a3 forChatBot:(id)a4 withRenderData:(id)a5 withResult:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_1A87AAC04(v11, a5);
}

@end