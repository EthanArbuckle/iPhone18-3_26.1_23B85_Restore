@interface HMDDemoModeManagerFactory
+ (id)demoManagerWithHomeManager:(id)a3 messageDispatcher:(id)a4;
+ (void)loadDemoModeConfiguration;
+ (void)saveDemoModeConfiguration;
- (HMDDemoModeManagerFactory)init;
@end

@implementation HMDDemoModeManagerFactory

+ (id)demoManagerWithHomeManager:(id)a3 messageDispatcher:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_22988EE64(v5, v6);

  return v7;
}

- (HMDDemoModeManagerFactory)init
{
  v3.receiver = self;
  v3.super_class = HMDDemoModeManagerFactory;
  return [(HMDDemoModeManagerFactory *)&v3 init];
}

+ (void)loadDemoModeConfiguration
{
  v0 = sub_22A4DD07C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  v6 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v7 = sub_22A4DDCCC();
  v8 = sub_22A4DD05C();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_229538000, v8, v7, "Loading demo mode configuration", v9, 2u);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  (*(v1 + 8))(v5, v0);
  type metadata accessor for DemoModeManager();
  v10 = [objc_allocWithZone(HMDFileManager) init];
  sub_22988DE3C(v10);
}

+ (void)saveDemoModeConfiguration
{
  v0 = sub_22A4DD07C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  initializePaths();
  v6 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v7 = sub_22A4DDCCC();
  v8 = sub_22A4DD05C();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_229538000, v8, v7, "Saving demo mode configuration", v9, 2u);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  (*(v1 + 8))(v5, v0);
  type metadata accessor for DemoModeManager();
  v10 = [objc_allocWithZone(HMDFileManager) init];
  sub_22988E688(v10);
}

@end