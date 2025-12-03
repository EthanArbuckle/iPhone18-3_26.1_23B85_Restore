@interface CRKBrowseForCourseInvitationsRequest
- (CRKBrowseForCourseInvitationsRequest)init;
- (CRKBrowseForCourseInvitationsRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKBrowseForCourseInvitationsRequest

- (CRKBrowseForCourseInvitationsRequest)init
{
  v5.receiver = self;
  v5.super_class = CRKBrowseForCourseInvitationsRequest;
  v2 = [(CATTaskRequest *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CATTaskRequest *)v2 setHandlesNotifications:1];
  }

  return v3;
}

- (CRKBrowseForCourseInvitationsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CRKBrowseForCourseInvitationsRequest;
  v5 = [(CATTaskRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ignoresDeviceIdleState"];
    *(&v5->super._handlesNotifications + 1) = [v6 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKBrowseForCourseInvitationsRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKBrowseForCourseInvitationsRequest ignoresDeviceIdleState](self, "ignoresDeviceIdleState", v6.receiver, v6.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"ignoresDeviceIdleState"];
}

@end