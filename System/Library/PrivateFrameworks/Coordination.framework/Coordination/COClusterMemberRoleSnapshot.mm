@interface COClusterMemberRoleSnapshot
+ (id)snapshotWithParticipantRoleForMember:(id)member;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSnapshot:(id)snapshot;
- (COClusterMemberRoleSnapshot)initWithCoder:(id)coder;
- (COClusterMemberRoleSnapshot)initWithMember:(id)member role:(id)role;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COClusterMemberRoleSnapshot

- (COClusterMemberRoleSnapshot)initWithMember:(id)member role:(id)role
{
  memberCopy = member;
  roleCopy = role;
  v12.receiver = self;
  v12.super_class = COClusterMemberRoleSnapshot;
  v9 = [(COClusterMemberRoleSnapshot *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_member, member);
    objc_storeStrong(&v10->_role, role);
    v10->_stale = 0;
  }

  return v10;
}

+ (id)snapshotWithParticipantRoleForMember:(id)member
{
  memberCopy = member;
  v4 = [COClusterMemberRoleSnapshot alloc];
  v5 = +[COClusterRole roleForParticipant];
  v6 = [(COClusterMemberRoleSnapshot *)v4 initWithMember:memberCopy role:v5];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  isStale = [(COClusterMemberRoleSnapshot *)self isStale];
  member = [(COClusterMemberRoleSnapshot *)self member];
  role = [(COClusterMemberRoleSnapshot *)self role];
  v9 = 78;
  if (isStale)
  {
    v9 = 89;
  }

  v10 = [v3 stringWithFormat:@"<%@: %p, stale = %c member = %@ role = %@>", v5, self, v9, member, role];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(COClusterMemberRoleSnapshot *)self isEqualToSnapshot:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  isStale = [(COClusterMemberRoleSnapshot *)self isStale];
  if (isStale == [snapshotCopy isStale])
  {
    member = [(COClusterMemberRoleSnapshot *)self member];
    member2 = [snapshotCopy member];
    if ([member isEqual:member2])
    {
      role = [(COClusterMemberRoleSnapshot *)self role];
      role2 = [snapshotCopy role];
      v6 = [role isEqual:role2];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  member = [(COClusterMemberRoleSnapshot *)self member];
  v3 = [member hash];

  return v3;
}

- (COClusterMemberRoleSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"member"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"role"];
  v7 = [coderCopy decodeBoolForKey:@"stale"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {

    v9 = 0;
  }

  else
  {
    v10 = [(COClusterMemberRoleSnapshot *)self initWithMember:v5 role:v6];
    v9 = v10;
    if (v10)
    {
      v10->_stale = v7;
    }
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  member = [(COClusterMemberRoleSnapshot *)self member];
  [coderCopy encodeObject:member forKey:@"member"];

  role = [(COClusterMemberRoleSnapshot *)self role];
  [coderCopy encodeObject:role forKey:@"role"];

  [coderCopy encodeBool:-[COClusterMemberRoleSnapshot isStale](self forKey:{"isStale"), @"stale"}];
}

@end