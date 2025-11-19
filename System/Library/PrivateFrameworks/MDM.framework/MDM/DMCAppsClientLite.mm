@interface DMCAppsClientLite
- (DMCAppsClientLite)init;
- (id)preservedAppIDsAndReturnError:(id *)a3;
@end

@implementation DMCAppsClientLite

- (id)preservedAppIDsAndReturnError:(id *)a3
{
  v3 = sub_25624D42C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_25624D47C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 104))(v7, *MEMORY[0x277D03160], v3);
  sub_25624D46C();
  sub_25624D44C();
  (*(v9 + 8))(v12, v8);
  v13 = sub_25624D4CC();

  return v13;
}

- (DMCAppsClientLite)init
{
  v3.receiver = self;
  v3.super_class = DMCAppsClientLite;
  return [(DMCAppsClientLite *)&v3 init];
}

@end