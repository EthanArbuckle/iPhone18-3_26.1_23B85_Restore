@interface ICURLRequest(MPCHelper)
- (id)mpc_requestID;
@end

@implementation ICURLRequest(MPCHelper)

- (id)mpc_requestID
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([a1 requestID], (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", a1];
  }

  return v2;
}

@end