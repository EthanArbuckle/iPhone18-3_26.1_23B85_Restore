@interface COClusterMemberRoleSnapshot
+ (id)snapshotWithParticipantRoleForMember:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSnapshot:(id)a3;
- (COClusterMemberRoleSnapshot)initWithCoder:(id)a3;
- (COClusterMemberRoleSnapshot)initWithMember:(id)a3 role:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COClusterMemberRoleSnapshot

- (COClusterMemberRoleSnapshot)initWithMember:(id)a3 role:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = COClusterMemberRoleSnapshot;
  v9 = [(COClusterMemberRoleSnapshot *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_member, a3);
    objc_storeStrong(&v10->_role, a4);
    v10->_stale = 0;
  }

  return v10;
}

+ (id)snapshotWithParticipantRoleForMember:(id)a3
{
  v3 = a3;
  v4 = [COClusterMemberRoleSnapshot alloc];
  v5 = +[COClusterRole roleForParticipant];
  v6 = [(COClusterMemberRoleSnapshot *)v4 initWithMember:v3 role:v5];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(COClusterMemberRoleSnapshot *)self isStale];
  v7 = [(COClusterMemberRoleSnapshot *)self member];
  v8 = [(COClusterMemberRoleSnapshot *)self role];
  v9 = 78;
  if (v6)
  {
    v9 = 89;
  }

  v10 = [v3 stringWithFormat:@"<%@: %p, stale = %c member = %@ role = %@>", v5, self, v9, v7, v8];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(COClusterMemberRoleSnapshot *)self isEqualToSnapshot:v4];
  }

  return v5;
}

- (BOOL)isEqualToSnapshot:(id)a3
{
  v4 = a3;
  v5 = [(COClusterMemberRoleSnapshot *)self isStale];
  if (v5 == [v4 isStale])
  {
    v7 = [(COClusterMemberRoleSnapshot *)self member];
    v8 = [v4 member];
    if ([v7 isEqual:v8])
    {
      v9 = [(COClusterMemberRoleSnapshot *)self role];
      v10 = [v4 role];
      v6 = [v9 isEqual:v10];
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
  v2 = [(COClusterMemberRoleSnapshot *)self member];
  v3 = [v2 hash];

  return v3;
}

- (COClusterMemberRoleSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"member"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"role"];
  v7 = [v4 decodeBoolForKey:@"stale"];

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

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(COClusterMemberRoleSnapshot *)self member];
  [v6 encodeObject:v4 forKey:@"member"];

  v5 = [(COClusterMemberRoleSnapshot *)self role];
  [v6 encodeObject:v5 forKey:@"role"];

  [v6 encodeBool:-[COClusterMemberRoleSnapshot isStale](self forKey:{"isStale"), @"stale"}];
}

@end