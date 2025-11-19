@interface PAREngagementResponse
+ (id)responseFromReply:(id)a3;
@end

@implementation PAREngagementResponse

+ (id)responseFromReply:(id)a3
{
  v3 = a3;
  v4 = [v3 task];
  v5 = [v4 session];
  v6 = [v5 configuration];
  v7 = [v6 factory];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_alloc_init(PARDefaultFactory);
  }

  v10 = v9;

  v11 = [PAREngagementResponse alloc];
  v12 = [v3 data];
  v13 = [(PARResponse *)v11 initWithReply:v3 factory:v10 responseData:v12];

  return v13;
}

@end