@interface CHSReplicatedDescriptorsBox
- (CHSReplicatedDescriptorsBox)init;
- (CHSReplicatedDescriptorsBox)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSReplicatedDescriptorsBox

- (void)encodeWithCoder:(id)coder
{
  v5 = *(&self->super.isa + OBJC_IVAR___CHSReplicatedDescriptorsBox_descriptors);
  sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_224DAEFF8();

  v8 = sub_224DAEDE8();

  [coderCopy encodeObject:v7 forKey:v8];
}

- (CHSReplicatedDescriptorsBox)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_224B6BD00();

  return v4;
}

- (CHSReplicatedDescriptorsBox)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end