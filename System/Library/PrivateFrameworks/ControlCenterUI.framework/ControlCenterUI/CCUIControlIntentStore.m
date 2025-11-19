@interface CCUIControlIntentStore
- (CCUIControlIntentStore)init;
- (id)acquireIntentPersistenceAssertionWithBundleIdentifier:(id)a3 dataSourceIdentifier:(id)a4;
- (id)intentWithBundleIdentifier:(id)a3 dataSourceIdentifier:(id)a4 defaultIntentProvider:(id)a5;
- (void)deleteIntentWithBundleIdentifier:(id)a3 dataSourceIdentifier:(id)a4;
- (void)storeIntent:(id)a3 bundleIdentifier:(id)a4 dataSourceIdentifier:(id)a5;
@end

@implementation CCUIControlIntentStore

- (void)storeIntent:(id)a3 bundleIdentifier:(id)a4 dataSourceIdentifier:(id)a5
{
  v7 = sub_21EAA8E00();
  v9 = v8;
  v10 = sub_21EAA8E00();
  v12 = v11;
  v13 = a3;
  v14 = self;
  sub_21EA5FB48(v7, v9, v10, v12);
  sub_21EA5FE30(v13, v7, v9, v10, v12);
  sub_21EA67554(v13, v7, v9, v10, v12);
}

- (void)deleteIntentWithBundleIdentifier:(id)a3 dataSourceIdentifier:(id)a4
{
  v6 = sub_21EAA8E00();
  v8 = v7;
  if (a4)
  {
    v9 = sub_21EAA8E00();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = self;
  sub_21EA600EC(v6, v8, v9, a4);
}

- (id)intentWithBundleIdentifier:(id)a3 dataSourceIdentifier:(id)a4 defaultIntentProvider:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_21EAA8E00();
  v9 = v8;
  v10 = sub_21EAA8E00();
  v12 = v11;
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_21EA689CC;
  }

  v13 = self;
  v14 = sub_21EA616B0(v7, v9, v10, v12, v6);
  sub_21E9FFAF0(v6);

  return v14;
}

- (id)acquireIntentPersistenceAssertionWithBundleIdentifier:(id)a3 dataSourceIdentifier:(id)a4
{
  v5 = sub_21EAA8E00();
  v7 = v6;
  v8 = sub_21EAA8E00();
  v10 = v9;
  v11 = self;
  v12 = sub_21EA6196C(v5, v7, v8, v10);

  return v12;
}

- (CCUIControlIntentStore)init
{
  v3 = OBJC_IVAR___CCUIControlIntentStore_localIntentsCache;
  v4 = MEMORY[0x277D84F90];
  *(&self->super.isa + v3) = sub_21EA514C0(MEMORY[0x277D84F90]);
  v5 = OBJC_IVAR___CCUIControlIntentStore_intentPersistenceAssertions;
  *(&self->super.isa + v5) = sub_21EA514D4(v4);
  v6 = OBJC_IVAR___CCUIControlIntentStore_pendingRemovalState;
  *(&self->super.isa + v6) = sub_21EA514E8(v4);
  v8.receiver = self;
  v8.super_class = type metadata accessor for ControlIntentStore();
  return [(CCUIControlIntentStore *)&v8 init];
}

@end