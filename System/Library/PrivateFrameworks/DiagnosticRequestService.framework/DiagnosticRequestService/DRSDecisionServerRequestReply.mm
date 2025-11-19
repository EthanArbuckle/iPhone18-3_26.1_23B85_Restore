@interface DRSDecisionServerRequestReply
- (DRSDecisionServerRequestReply)initWithOriginalRequest:(id)a3 errorString:(id)a4;
- (DRSDecisionServerRequestReply)initWithOriginalRequest:(id)a3 reply:(id)a4;
@end

@implementation DRSDecisionServerRequestReply

- (DRSDecisionServerRequestReply)initWithOriginalRequest:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    if ([v7 hasAccepted])
    {
      v9 = [v8 accepted];
      v10 = [v8 rejectionReason];
      v11 = [(DRSDecisionServerRequestReply *)self initWithOriginalRequest:v6 requestAccepted:v9 rejectionReason:v10];
    }

    else
    {
      v13 = [v8 rejectionReason];
      v10 = v13;
      if (v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = @"Unknown";
      }

      v11 = [(DRSDecisionServerRequestReply *)self initWithOriginalRequest:v6 errorString:v14];
    }

    self = v11;

    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (DRSDecisionServerRequestReply)initWithOriginalRequest:(id)a3 errorString:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v13.receiver = self;
    v13.super_class = DRSDecisionServerRequestReply;
    v9 = [(DRSDecisionServerRequestReply *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_request, a3);
      objc_storeStrong(p_isa + 4, a4);
    }

    self = p_isa;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end