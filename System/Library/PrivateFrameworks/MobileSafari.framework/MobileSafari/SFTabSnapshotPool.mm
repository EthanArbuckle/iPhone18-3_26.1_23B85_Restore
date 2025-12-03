@interface SFTabSnapshotPool
- (NSArray)sortedSnapshotIdentifiers;
- (id)contentProvider;
- (id)registrationForIdentifier:(id)identifier;
- (id)sortedSnapshotIdentifiersDidChangeHandler;
- (id)visibilityForIdentifier:(id)identifier;
- (void)contentDidChangeForSnapshotsWithIdentifier:(id)identifier;
- (void)discardRegistration:(id)registration;
- (void)setSortedSnapshotIdentifiersDidChangeHandler:(id)handler;
@end

@implementation SFTabSnapshotPool

- (void)setSortedSnapshotIdentifiersDidChangeHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(self + OBJC_IVAR___SFTabSnapshotPool_wrapped);
  swift_beginAccess();
  *(v6 + 56) = sub_18BA2A69C;
  *(v6 + 64) = v5;
}

- (id)contentProvider
{
  v2 = *(self + OBJC_IVAR___SFTabSnapshotPool_contentProvider + 8);
  v5[4] = *(self + OBJC_IVAR___SFTabSnapshotPool_contentProvider);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18B8571CC;
  v5[3] = &block_descriptor_28;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (NSArray)sortedSnapshotIdentifiers
{
  swift_beginAccess();
  sub_18BC1EC08();
  sub_18BC1E3F8();
  v2 = sub_18BC20D88();

  return v2;
}

- (id)sortedSnapshotIdentifiersDidChangeHandler
{
  v2 = *(self + OBJC_IVAR___SFTabSnapshotPool_wrapped);
  swift_beginAccess();
  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  aBlock[4] = v3;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18B7B0DB0;
  aBlock[3] = &block_descriptor_19_3;
  v5 = _Block_copy(aBlock);
  sub_18BC1E1A8();

  return v5;
}

- (void)contentDidChangeForSnapshotsWithIdentifier:(id)identifier
{
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EBE8();
  selfCopy = self;
  sub_18BC1E1A8();
  sub_18BA773E4(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)discardRegistration:(id)registration
{
  registrationCopy = registration;
  selfCopy = self;
  sub_18BC1E1A8();
  v5 = sub_18BC1E1A8();
  sub_18BA7832C(v5);
}

- (id)registrationForIdentifier:(id)identifier
{
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EBE8();
  selfCopy = self;
  sub_18BC1E1A8();
  v9 = sub_18B856BBC(v7);

  v10 = objc_allocWithZone(SFTabSnapshotRegistration);
  v11 = &v10[OBJC_IVAR___SFTabSnapshotRegistration_contentObserver];
  *v11 = CGRectMake;
  *(v11 + 1) = 0;
  *&v10[OBJC_IVAR___SFTabSnapshotRegistration_wrapped] = v9;
  v14.receiver = v10;
  v14.super_class = SFTabSnapshotRegistration;
  sub_18BC1E1A8();
  v12 = [(SFTabSnapshotPool *)&v14 init];

  (*(v5 + 8))(v7, v4);

  return v12;
}

- (id)visibilityForIdentifier:(id)identifier
{
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1EBE8();
  selfCopy = self;
  v9 = sub_18BC0E784(v7);

  (*(v5 + 8))(v7, v4);

  return v9;
}

@end