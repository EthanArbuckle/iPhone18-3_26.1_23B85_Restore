@interface FBSDataResetRequest
- (FBSDataResetRequest)initWithMode:(int64_t)mode options:(int64_t)options reason:(id)reason;
@end

@implementation FBSDataResetRequest

- (FBSDataResetRequest)initWithMode:(int64_t)mode options:(int64_t)options reason:(id)reason
{
  reasonCopy = reason;
  v12.receiver = self;
  v12.super_class = FBSDataResetRequest;
  v9 = [(FBSDataResetRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(FBSDataResetRequest *)v9 setMode:mode];
    [(FBSDataResetRequest *)v10 setOptions:options];
    [(FBSDataResetRequest *)v10 setReason:reasonCopy];
  }

  return v10;
}

@end