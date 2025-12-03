@interface PARLookupSearchResponse
+ (id)responseFromReply:(id)reply;
- (PARLookupSearchResponse)initWithReply:(id)reply factory:(id)factory data:(id)data;
@end

@implementation PARLookupSearchResponse

- (PARLookupSearchResponse)initWithReply:(id)reply factory:(id)factory data:(id)data
{
  replyCopy = reply;
  swift_unknownObjectRetain();
  dataCopy = data;
  sub_1B11218CC();

  return PARLookupSearchResponse.init(reply:factory:data:)(replyCopy, factory);
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
        v14 = [PARLookupSearchResponse alloc];
        data2 = [replyCopy data];
        data = [(PARLookupSearchResponse *)v14 initWithReply:replyCopy factory:v13 data:data2];
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