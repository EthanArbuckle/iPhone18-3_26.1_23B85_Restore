@interface CCUIControlIntentStore
- (CCUIControlIntentStore)init;
- (id)acquireIntentPersistenceAssertionWithBundleIdentifier:(id)identifier dataSourceIdentifier:(id)sourceIdentifier;
- (id)intentWithBundleIdentifier:(id)identifier dataSourceIdentifier:(id)sourceIdentifier defaultIntentProvider:(id)provider;
- (void)deleteIntentWithBundleIdentifier:(id)identifier dataSourceIdentifier:(id)sourceIdentifier;
- (void)storeIntent:(id)intent bundleIdentifier:(id)identifier dataSourceIdentifier:(id)sourceIdentifier;
@end

@implementation CCUIControlIntentStore

- (void)storeIntent:(id)intent bundleIdentifier:(id)identifier dataSourceIdentifier:(id)sourceIdentifier
{
  v7 = sub_21EAA8E00();
  v9 = v8;
  v10 = sub_21EAA8E00();
  v12 = v11;
  intentCopy = intent;
  selfCopy = self;
  sub_21EA5FB48(v7, v9, v10, v12);
  sub_21EA5FE30(intentCopy, v7, v9, v10, v12);
  sub_21EA67554(intentCopy, v7, v9, v10, v12);
}

- (void)deleteIntentWithBundleIdentifier:(id)identifier dataSourceIdentifier:(id)sourceIdentifier
{
  v6 = sub_21EAA8E00();
  v8 = v7;
  if (sourceIdentifier)
  {
    v9 = sub_21EAA8E00();
    sourceIdentifier = v10;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  sub_21EA600EC(v6, v8, v9, sourceIdentifier);
}

- (id)intentWithBundleIdentifier:(id)identifier dataSourceIdentifier:(id)sourceIdentifier defaultIntentProvider:(id)provider
{
  v6 = _Block_copy(provider);
  v7 = sub_21EAA8E00();
  v9 = v8;
  v10 = sub_21EAA8E00();
  v12 = v11;
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_21EA689CC;
  }

  selfCopy = self;
  v14 = sub_21EA616B0(v7, v9, v10, v12, v6);
  sub_21E9FFAF0(v6);

  return v14;
}

- (id)acquireIntentPersistenceAssertionWithBundleIdentifier:(id)identifier dataSourceIdentifier:(id)sourceIdentifier
{
  v5 = sub_21EAA8E00();
  v7 = v6;
  v8 = sub_21EAA8E00();
  v10 = v9;
  selfCopy = self;
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