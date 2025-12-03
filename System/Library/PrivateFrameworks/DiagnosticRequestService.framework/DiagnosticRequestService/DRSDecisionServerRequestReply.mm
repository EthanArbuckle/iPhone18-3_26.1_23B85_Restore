@interface DRSDecisionServerRequestReply
- (DRSDecisionServerRequestReply)initWithOriginalRequest:(id)request errorString:(id)string;
- (DRSDecisionServerRequestReply)initWithOriginalRequest:(id)request reply:(id)reply;
@end

@implementation DRSDecisionServerRequestReply

- (DRSDecisionServerRequestReply)initWithOriginalRequest:(id)request reply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v8 = replyCopy;
  if (replyCopy)
  {
    if ([replyCopy hasAccepted])
    {
      accepted = [v8 accepted];
      rejectionReason = [v8 rejectionReason];
      v11 = [(DRSDecisionServerRequestReply *)self initWithOriginalRequest:requestCopy requestAccepted:accepted rejectionReason:rejectionReason];
    }

    else
    {
      rejectionReason2 = [v8 rejectionReason];
      rejectionReason = rejectionReason2;
      if (rejectionReason2)
      {
        v14 = rejectionReason2;
      }

      else
      {
        v14 = @"Unknown";
      }

      v11 = [(DRSDecisionServerRequestReply *)self initWithOriginalRequest:requestCopy errorString:v14];
    }

    self = v11;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (DRSDecisionServerRequestReply)initWithOriginalRequest:(id)request errorString:(id)string
{
  requestCopy = request;
  stringCopy = string;
  if (requestCopy)
  {
    v13.receiver = self;
    v13.super_class = DRSDecisionServerRequestReply;
    v9 = [(DRSDecisionServerRequestReply *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_request, request);
      objc_storeStrong(p_isa + 4, string);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end