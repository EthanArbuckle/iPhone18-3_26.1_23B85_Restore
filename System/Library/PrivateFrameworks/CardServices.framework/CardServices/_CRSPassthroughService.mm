@interface _CRSPassthroughService
- (BOOL)canSatisfyCardRequest:(id)request;
- (void)requestCard:(id)card reply:(id)reply;
@end

@implementation _CRSPassthroughService

- (void)requestCard:(id)card reply:(id)reply
{
  replyCopy = reply;
  if (replyCopy)
  {
    v8 = replyCopy;
    content = [card content];
    if ([content conformsToProtocol:&unk_2855F3B18])
    {
      v7 = content;
    }

    else
    {
      v7 = 0;
    }

    v8[2](v8, v7, 0);

    replyCopy = v8;
  }
}

- (BOOL)canSatisfyCardRequest:(id)request
{
  content = [request content];
  v4 = [content conformsToProtocol:&unk_2855F3B18];

  return v4;
}

@end