@interface HUControlCenterSharedStateManager
+ (HUControlCenterSharedStateManager)sharedManager;
- (void)bootstrap;
- (void)enterModuleViewWillAppear;
- (void)exitModuleViewDidDisappear;
- (void)setModuleWithIdentifier:(id)a3 subscribedToHome:(id)a4;
@end

@implementation HUControlCenterSharedStateManager

+ (HUControlCenterSharedStateManager)sharedManager
{
  if (qword_28111FD40 != -1)
  {
    swift_once();
  }

  v2 = qword_28111FD48;
  os_unfair_lock_lock((qword_28111FD48 + 16));
  if (qword_28111FD28 != -1)
  {
    swift_once();
  }

  v3 = qword_28111FD30;
  os_unfair_lock_unlock(v2 + 4);

  return v3;
}

- (void)enterModuleViewWillAppear
{
  v2 = *(&self->super.isa + OBJC_IVAR___HUControlCenterSharedStateManager_isVisibleRefCounter);
  v3 = self;

  os_unfair_lock_lock((v2 + 24));
  sub_20CFD7018((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

- (void)exitModuleViewDidDisappear
{
  v2 = *(&self->super.isa + OBJC_IVAR___HUControlCenterSharedStateManager_isVisibleRefCounter);
  v3 = self;

  os_unfair_lock_lock((v2 + 24));
  sub_20CFD6F2C((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
}

- (void)setModuleWithIdentifier:(id)a3 subscribedToHome:(id)a4
{
  v6 = sub_20D563818();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D5637E8();
  v10 = a4;
  v11 = self;
  HUControlCenterSharedStateManager.setModuleWithIdentifier(_:subscribedTo:)(v9, a4);

  (*(v7 + 8))(v9, v6);
}

- (void)bootstrap
{
  v0 = sub_20D563EB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  sub_20CECF940(0, &qword_28111FE08);
  v5 = sub_20D5682A8();
  [v4 setConfiguration_];

  [v4 setAutomaticallySynchronizesHomeDataModel_];
  v6 = [v4 sharedDispatcher];
  [v6 warmup];

  sub_20D563F48();
  v7 = sub_20D563F18();
  (*(v1 + 104))(v3, *MEMORY[0x277D15400], v0);
  sub_20D563F08();

  (*(v1 + 8))(v3, v0);
  v8 = [v4 sharedDispatcher];
  v9 = [v8 homeManager];

  if (qword_281120950 != -1)
  {
    swift_once();
  }

  v10 = sub_20D565988();
  __swift_project_value_buffer(v10, qword_281120958);
  v11 = v9;
  v12 = sub_20D565968();
  v13 = sub_20D567EC8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v9;
    v16 = v11;
    _os_log_impl(&dword_20CEB6000, v12, v13, "ControlCenterSharedStateManager is bootstrapped: %@", v14, 0xCu);
    sub_20CEF928C(v15, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v15, -1, -1);
    MEMORY[0x20F31FC70](v14, -1, -1);
    v11 = v12;
    v12 = v16;
  }
}

@end