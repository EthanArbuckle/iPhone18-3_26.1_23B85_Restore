@interface TodayFeedConfigDecodingService
- (_TtC22TodayFeedConfigDecoder30TodayFeedConfigDecodingService)init;
- (void)decodeTodayFeedConfigData:(id)data completion:(id)completion;
@end

@implementation TodayFeedConfigDecodingService

- (void)decodeTodayFeedConfigData:(id)data completion:(id)completion
{
  v6 = _Block_copy(completion);
  dataCopy = data;
  selfCopy = self;
  v9 = sub_100007B7C();
  v11 = v10;

  v12 = sub_1000039AC();
  v13 = v6[2];
  v14 = v12;
  v13(v6, v14, 0);

  sub_100003D44(v9, v11);
  _Block_release(v6);
}

- (_TtC22TodayFeedConfigDecoder30TodayFeedConfigDecodingService)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TodayFeedConfigDecodingService *)&v3 init];
}

@end