@interface ObjCRenameSequence
- (NSString)description;
- (_TtC9Coherence18ObjCRenameSequence)init;
- (void)addTemporaryAddedByVersion:(id)version;
@end

@implementation ObjCRenameSequence

- (_TtC9Coherence18ObjCRenameSequence)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC9Coherence18ObjCRenameSequence_renameSequence);
  v4 = MEMORY[0x1E69E7CC0];
  *v3 = MEMORY[0x1E69E7CC0];
  v3[1] = 0;
  v3[2] = 0;
  v5 = self + OBJC_IVAR____TtC9Coherence18ObjCRenameSequence_renameAddedBySequence;
  *(&self->super.isa + OBJC_IVAR____TtC9Coherence18ObjCRenameSequence_renameAddedBySequence) = v4;
  v6 = type metadata accessor for ObjCRenameSequence();
  *(v5 + 1) = 0;
  *(v5 + 2) = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(ObjCRenameSequence *)&v8 init];
}

- (void)addTemporaryAddedByVersion:(id)version
{
  versionCopy = version;
  selfCopy = self;
  sub_1AE225C08(versionCopy);
}

- (NSString)description
{
  selfCopy = self;
  sub_1AE226C04();

  v3 = sub_1AE23CCDC();

  return v3;
}

@end