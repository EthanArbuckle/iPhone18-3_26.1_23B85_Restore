@interface DDIUser
+ (id)userWithUUID:(id)d uid:(unsigned int)uid name:(id)name primaryGroupUUID:(id)iD fullName:(id)fullName homeDirectory:(id)directory shell:(id)shell memberships:(id)self0;
- (id)initWithUUID:(int)d uid:(void *)uid name:(void *)name primaryGroupUUID:(void *)iD fullName:(void *)fullName homeDirectory:(void *)directory shell:(void *)shell memberships:;
@end

@implementation DDIUser

+ (id)userWithUUID:(id)d uid:(unsigned int)uid name:(id)name primaryGroupUUID:(id)iD fullName:(id)fullName homeDirectory:(id)directory shell:(id)shell memberships:(id)self0
{
  membershipsCopy = memberships;
  shellCopy = shell;
  directoryCopy = directory;
  fullNameCopy = fullName;
  iDCopy = iD;
  nameCopy = name;
  dCopy = d;
  v23 = [[DDIUser alloc] initWithUUID:dCopy uid:uid name:nameCopy primaryGroupUUID:iDCopy fullName:fullNameCopy homeDirectory:directoryCopy shell:shellCopy memberships:membershipsCopy];

  return v23;
}

- (id)initWithUUID:(int)d uid:(void *)uid name:(void *)name primaryGroupUUID:(void *)iD fullName:(void *)fullName homeDirectory:(void *)directory shell:(void *)shell memberships:
{
  v40 = *MEMORY[0x277D85DE8];
  v36 = a2;
  uidCopy = uid;
  nameCopy = name;
  iDCopy = iD;
  fullNameCopy = fullName;
  directoryCopy = directory;
  shellCopy = shell;
  if (self)
  {
    v38.receiver = self;
    v38.super_class = DDIUser;
    v23 = objc_msgSendSuper2(&v38, sel_init);
    if (!v23)
    {
      [DDIUser initWithUUID:v39 uid:? name:? primaryGroupUUID:? fullName:? homeDirectory:? shell:? memberships:?];
    }

    self = v23;

    objc_storeStrong(self + 2, a2);
    *(self + 2) = d;
    v24 = [uidCopy copy];
    v25 = self[3];
    self[3] = v24;

    objc_storeStrong(self + 4, name);
    v26 = [iDCopy copy];
    v27 = self[5];
    self[5] = v26;

    v28 = [fullNameCopy copy];
    v29 = self[6];
    self[6] = v28;

    v30 = [directoryCopy copy];
    v31 = self[7];
    self[7] = v30;

    v32 = [shellCopy mutableCopy];
    v33 = self[8];
    self[8] = v32;
  }

  v34 = *MEMORY[0x277D85DE8];
  return self;
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