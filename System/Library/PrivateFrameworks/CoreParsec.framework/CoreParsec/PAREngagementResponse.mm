@interface PAREngagementResponse
+ (id)responseFromReply:(id)reply;
@end

@implementation PAREngagementResponse

+ (id)responseFromReply:(id)reply
{
  replyCopy = reply;
  task = [replyCopy task];
  session = [task session];
  configuration = [session configuration];
  factory = [configuration factory];
  v8 = factory;
  if (factory)
  {
    v9 = factory;
  }

  else
  {
    v9 = objc_alloc_init(PARDefaultFactory);
  }

  v10 = v9;

  v11 = [PAREngagementResponse alloc];
  data = [replyCopy data];
  v13 = [(PARResponse *)v11 initWithReply:replyCopy factory:v10 responseData:data];

  return v13;
}

@end