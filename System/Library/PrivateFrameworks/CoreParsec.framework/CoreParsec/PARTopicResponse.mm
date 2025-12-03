@interface PARTopicResponse
+ (id)responseFromReply:(id)reply;
- (PARTopicResponse)initWithReply:(id)reply factory:(id)factory dataZKW:(id)w;
@end

@implementation PARTopicResponse

- (PARTopicResponse)initWithReply:(id)reply factory:(id)factory dataZKW:(id)w
{
  replyCopy = reply;
  swift_unknownObjectRetain();
  wCopy = w;
  sub_1B11218CC();

  return PARTopicResponse.init(reply:factory:dataZKW:)(replyCopy, factory);
}

+ (id)responseFromReply:(id)reply
{
  replyCopy = reply;
  task = [replyCopy task];
  request = [task request];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    session = [task session];
    configuration = [session configuration];
    factory = [configuration factory];
    v10 = factory;
    if (factory)
    {
      v11 = factory;
    }

    else
    {
      v11 = objc_alloc_init(PARDefaultFactory);
    }

    v13 = v11;

    v14 = [PARTopicResponse alloc];
    data = [replyCopy data];
    v12 = [(PARTopicResponse *)v14 initWithReply:replyCopy factory:v13 dataZKW:data];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end