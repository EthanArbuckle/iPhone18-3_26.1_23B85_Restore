@interface DDIUser
+ (id)userWithUUID:(id)a3 uid:(unsigned int)a4 name:(id)a5 primaryGroupUUID:(id)a6 fullName:(id)a7 homeDirectory:(id)a8 shell:(id)a9 memberships:(id)a10;
- (id)initWithUUID:(int)a3 uid:(void *)a4 name:(void *)a5 primaryGroupUUID:(void *)a6 fullName:(void *)a7 homeDirectory:(void *)a8 shell:(void *)a9 memberships:;
@end

@implementation DDIUser

+ (id)userWithUUID:(id)a3 uid:(unsigned int)a4 name:(id)a5 primaryGroupUUID:(id)a6 fullName:(id)a7 homeDirectory:(id)a8 shell:(id)a9 memberships:(id)a10
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a3;
  v23 = [[DDIUser alloc] initWithUUID:v22 uid:a4 name:v21 primaryGroupUUID:v20 fullName:v19 homeDirectory:v18 shell:v17 memberships:v16];

  return v23;
}

- (id)initWithUUID:(int)a3 uid:(void *)a4 name:(void *)a5 primaryGroupUUID:(void *)a6 fullName:(void *)a7 homeDirectory:(void *)a8 shell:(void *)a9 memberships:
{
  v40 = *MEMORY[0x277D85DE8];
  v36 = a2;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (a1)
  {
    v38.receiver = a1;
    v38.super_class = DDIUser;
    v23 = objc_msgSendSuper2(&v38, sel_init);
    if (!v23)
    {
      [DDIUser initWithUUID:v39 uid:? name:? primaryGroupUUID:? fullName:? homeDirectory:? shell:? memberships:?];
    }

    a1 = v23;

    objc_storeStrong(a1 + 2, a2);
    *(a1 + 2) = a3;
    v24 = [v17 copy];
    v25 = a1[3];
    a1[3] = v24;

    objc_storeStrong(a1 + 4, a5);
    v26 = [v19 copy];
    v27 = a1[5];
    a1[5] = v26;

    v28 = [v20 copy];
    v29 = a1[6];
    a1[6] = v28;

    v30 = [v21 copy];
    v31 = a1[7];
    a1[7] = v30;

    v32 = [v22 mutableCopy];
    v33 = a1[8];
    a1[8] = v32;
  }

  v34 = *MEMORY[0x277D85DE8];
  return a1;
}

- (void)initWithUUID:(uint64_t *)a1 uid:(_OWORD *)a2 name:primaryGroupUUID:fullName:homeDirectory:shell:memberships:.cold.1(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  OUTLINED_FUNCTION_1(v6, v3, v4, v5, &dword_2480DF000);
  v7 = *a1;
  _os_crash_msg();
  __break(1u);
  sub_2481240A8();
}

@end