@interface FBSDataResetRequest
- (FBSDataResetRequest)initWithMode:(int64_t)a3 options:(int64_t)a4 reason:(id)a5;
@end

@implementation FBSDataResetRequest

- (FBSDataResetRequest)initWithMode:(int64_t)a3 options:(int64_t)a4 reason:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = FBSDataResetRequest;
  v9 = [(FBSDataResetRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(FBSDataResetRequest *)v9 setMode:a3];
    [(FBSDataResetRequest *)v10 setOptions:a4];
    [(FBSDataResetRequest *)v10 setReason:v8];
  }

  return v10;
}

@end