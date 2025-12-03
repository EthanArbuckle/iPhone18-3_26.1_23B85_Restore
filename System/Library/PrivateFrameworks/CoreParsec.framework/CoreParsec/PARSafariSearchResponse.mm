@interface PARSafariSearchResponse
+ (id)responseFromReply:(id)reply;
- (PARSafariSearchResponse)initWithReply:(id)reply factory:(id)factory data:(id)data;
@end

@implementation PARSafariSearchResponse

- (PARSafariSearchResponse)initWithReply:(id)reply factory:(id)factory data:(id)data
{
  replyCopy = reply;
  swift_unknownObjectRetain();
  dataCopy = data;
  v9 = sub_1B11218CC();
  v11 = v10;

  PARSafariSearchResponse.init(reply:factory:data:)(replyCopy, factory, v9, v11);
  return result;
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

    if (v13)
    {
      data = [replyCopy data];

      if (data)
      {
        v14 = [PARSafariSearchResponse alloc];
        data2 = [replyCopy data];
        data = [(PARSafariSearchResponse *)v14 initWithReply:replyCopy factory:v13 data:data2];
      }
    }

    else
    {
      data = 0;
    }
  }

  else
  {
    data = 0;
  }

  return data;
}

@end