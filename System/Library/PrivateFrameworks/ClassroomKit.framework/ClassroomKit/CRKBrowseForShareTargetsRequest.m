@interface CRKBrowseForShareTargetsRequest
- (CRKBrowseForShareTargetsRequest)init;
@end

@implementation CRKBrowseForShareTargetsRequest

- (CRKBrowseForShareTargetsRequest)init
{
  v5.receiver = self;
  v5.super_class = CRKBrowseForShareTargetsRequest;
  v2 = [(CATTaskRequest *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CATTaskRequest *)v2 setHandlesNotifications:1];
  }

  return v3;
}

@end