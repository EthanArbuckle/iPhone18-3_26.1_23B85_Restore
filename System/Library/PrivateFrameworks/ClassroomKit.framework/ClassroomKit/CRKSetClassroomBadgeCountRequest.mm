@interface CRKSetClassroomBadgeCountRequest
- (CRKSetClassroomBadgeCountRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKSetClassroomBadgeCountRequest

- (CRKSetClassroomBadgeCountRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRKSetClassroomBadgeCountRequest;
  v5 = [(CATTaskRequest *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"badgeCount"];
    v5->_badgeCount = [v6 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRKSetClassroomBadgeCountRequest;
  v4 = a3;
  [(CATTaskRequest *)&v6 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKSetClassroomBadgeCountRequest badgeCount](self, "badgeCount", v6.receiver, v6.super_class)}];
  [v4 encodeObject:v5 forKey:@"badgeCount"];
}

@end