@interface SFBrowsingAssistantMainButton
- (SFBrowsingAssistantMainButton)initWithCoder:(id)a3;
- (SFBrowsingAssistantMainButton)initWithFrame:(CGRect)a3;
- (void)updateConfiguration;
@end

@implementation SFBrowsingAssistantMainButton

- (SFBrowsingAssistantMainButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___SFBrowsingAssistantMainButton_cornerRadius) = 0;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (void)updateConfiguration
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for MainButton();
  v8.receiver = self;
  v8.super_class = v6;
  v7 = self;
  [(SFBrowsingAssistantMainButton *)&v8 updateConfiguration];
  sub_18BC1879C(v7, v5);
  sub_18BC21828();
}

- (SFBrowsingAssistantMainButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end