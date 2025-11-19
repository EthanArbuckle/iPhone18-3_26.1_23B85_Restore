@interface DDIGroup
+ (id)groupWithUUID:(id)a3 gid:(unsigned int)a4 name:(id)a5 fullName:(id)a6;
- (id)initWithUUID:(int)a3 gid:(void *)a4 name:(void *)a5 fullName:;
@end

@implementation DDIGroup

+ (id)groupWithUUID:(id)a3 gid:(unsigned int)a4 name:(id)a5 fullName:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [[DDIGroup alloc] initWithUUID:v11 gid:a4 name:v10 fullName:v9];

  return v12;
}

- (id)initWithUUID:(int)a3 gid:(void *)a4 name:(void *)a5 fullName:
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v23.receiver = a1;
    v23.super_class = DDIGroup;
    v13 = objc_msgSendSuper2(&v23, sel_init);
    if (!v13)
    {
      [DDIUser initWithUUID:v24 uid:? name:? primaryGroupUUID:? fullName:? homeDirectory:? shell:? memberships:?];
    }

    a1 = v13;

    objc_storeStrong(a1 + 2, a2);
    *(a1 + 2) = a3;
    v14 = [v11 copy];
    v15 = a1[3];
    a1[3] = v14;

    v16 = [v12 copy];
    v17 = a1[4];
    a1[4] = v16;

    v18 = [MEMORY[0x277CBEB58] set];
    v19 = a1[5];
    a1[5] = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return a1;
}

@end