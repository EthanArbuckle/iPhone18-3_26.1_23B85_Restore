@interface ScaledLabelConstraint
- (UILabel)referenceLabel;
- (_TtC18HealthExperienceUI21ScaledLabelConstraint)init;
- (void)awakeFromNib;
- (void)textSizeChanged;
@end

@implementation ScaledLabelConstraint

- (UILabel)referenceLabel
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ScaledLabelConstraint();
  v2 = v4.receiver;
  [(ScaledLabelConstraint *)&v4 awakeFromNib];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    sub_1BA095D78();
  }

  else
  {
    sub_1BA4A8018();
    __break(1u);
  }
}

- (void)textSizeChanged
{
  selfCopy = self;
  sub_1BA095EAC();
}

- (_TtC18HealthExperienceUI21ScaledLabelConstraint)init
{
  *(self + OBJC_IVAR____TtC18HealthExperienceUI21ScaledLabelConstraint_rawConstant) = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for ScaledLabelConstraint();
  return [(ScaledLabelConstraint *)&v4 init];
}

@end