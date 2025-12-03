@interface CRKSetClassroomBadgeCountRequest
- (CRKSetClassroomBadgeCountRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKSetClassroomBadgeCountRequest

- (CRKSetClassroomBadgeCountRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CRKSetClassroomBadgeCountRequest;
  v5 = [(CATTaskRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"badgeCount"];
    v5->_badgeCount = [v6 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKSetClassroomBadgeCountRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKSetClassroomBadgeCountRequest badgeCount](self, "badgeCount", v6.receiver, v6.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"badgeCount"];
}

@end