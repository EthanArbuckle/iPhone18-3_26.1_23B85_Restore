@interface ICURLRequest(MPCHelper)
- (id)mpc_requestID;
@end

@implementation ICURLRequest(MPCHelper)

- (id)mpc_requestID
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([self requestID], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];
  }

  return v2;
}

@end