@interface CHSReplicatedControlDescriptorsBox
- (CHSReplicatedControlDescriptorsBox)init;
- (CHSReplicatedControlDescriptorsBox)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSReplicatedControlDescriptorsBox

- (void)encodeWithCoder:(id)coder
{
  v5 = *(&self->super.isa + OBJC_IVAR___CHSReplicatedControlDescriptorsBox_descriptors);
  sub_224A3B79C(0, &qword_2813509B8, 0x277CFA210);
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_224DAEFF8();

  v8 = sub_224DAEDE8();

  [coderCopy encodeObject:v7 forKey:v8];
}

- (CHSReplicatedControlDescriptorsBox)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_224B3372C();

  return v4;
}

- (CHSReplicatedControlDescriptorsBox)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end