@interface PARSafariSearchResponse
+ (id)responseFromReply:(id)a3;
- (PARSafariSearchResponse)initWithReply:(id)a3 factory:(id)a4 data:(id)a5;
@end

@implementation PARSafariSearchResponse

- (PARSafariSearchResponse)initWithReply:(id)a3 factory:(id)a4 data:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = sub_1B11218CC();
  v11 = v10;

  PARSafariSearchResponse.init(reply:factory:data:)(v7, a4, v9, v11);
  return result;
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

    if (v13)
    {
      v12 = [v3 data];

      if (v12)
      {
        v14 = [PARSafariSearchResponse alloc];
        v15 = [v3 data];
        v12 = [(PARSafariSearchResponse *)v14 initWithReply:v3 factory:v13 data:v15];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end