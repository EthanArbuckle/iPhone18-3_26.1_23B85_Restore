@interface DDIGroup
+ (id)groupWithUUID:(id)d gid:(unsigned int)gid name:(id)name fullName:(id)fullName;
- (id)initWithUUID:(int)d gid:(void *)gid name:(void *)name fullName:;
@end

@implementation DDIGroup

+ (id)groupWithUUID:(id)d gid:(unsigned int)gid name:(id)name fullName:(id)fullName
{
  fullNameCopy = fullName;
  nameCopy = name;
  dCopy = d;
  v12 = [[DDIGroup alloc] initWithUUID:dCopy gid:gid name:nameCopy fullName:fullNameCopy];

  return v12;
}

- (id)initWithUUID:(int)d gid:(void *)gid name:(void *)name fullName:
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a2;
  gidCopy = gid;
  nameCopy = name;
  if (self)
  {
    v23.receiver = self;
    v23.super_class = DDIGroup;
    v13 = objc_msgSendSuper2(&v23, sel_init);
    if (!v13)
    {
      [DDIUser initWithUUID:v24 uid:? name:? primaryGroupUUID:? fullName:? homeDirectory:? shell:? memberships:?];
    }

    self = v13;

    objc_storeStrong(self + 2, a2);
    *(self + 2) = d;
    v14 = [gidCopy copy];
    v15 = self[3];
    self[3] = v14;

    v16 = [nameCopy copy];
    v17 = self[4];
    self[4] = v16;

    v18 = [MEMORY[0x277CBEB58] set];
    v19 = self[5];
    self[5] = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return self;
}

@end