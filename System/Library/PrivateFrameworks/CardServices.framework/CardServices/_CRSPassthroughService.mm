@interface _CRSPassthroughService
- (BOOL)canSatisfyCardRequest:(id)a3;
- (void)requestCard:(id)a3 reply:(id)a4;
@end

@implementation _CRSPassthroughService

- (void)requestCard:(id)a3 reply:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v8 = v5;
    v6 = [a3 content];
    if ([v6 conformsToProtocol:&unk_2855F3B18])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8[2](v8, v7, 0);

    v5 = v8;
  }
}

- (BOOL)canSatisfyCardRequest:(id)a3
{
  v3 = [a3 content];
  v4 = [v3 conformsToProtocol:&unk_2855F3B18];

  return v4;
}

@end