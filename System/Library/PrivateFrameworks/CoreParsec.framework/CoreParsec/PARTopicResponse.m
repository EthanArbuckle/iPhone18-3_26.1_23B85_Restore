@interface PARTopicResponse
+ (id)responseFromReply:(id)a3;
- (PARTopicResponse)initWithReply:(id)a3 factory:(id)a4 dataZKW:(id)a5;
@end

@implementation PARTopicResponse

- (PARTopicResponse)initWithReply:(id)a3 factory:(id)a4 dataZKW:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a5;
  sub_1B11218CC();

  return PARTopicResponse.init(reply:factory:dataZKW:)(v7, a4);
}

+ (id)responseFromReply:(id)a3
{
  v3 = a3;
  v4 = [v3 task];
  v5 = [v4 request];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 session];
    v8 = [v7 configuration];
    v9 = [v8 factory];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_alloc_init(PARDefaultFactory);
    }

    v13 = v11;

    v14 = [PARTopicResponse alloc];
    v15 = [v3 data];
    v12 = [(PARTopicResponse *)v14 initWithReply:v3 factory:v13 dataZKW:v15];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end