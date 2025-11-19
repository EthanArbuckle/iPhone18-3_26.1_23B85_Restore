@interface IMPollOption
- (IMPollOption)init;
- (IMPollOption)initWithOptionIdentifier:(id)a3 pollText:(id)a4 attributedPollText:(id)a5;
@end

@implementation IMPollOption

- (IMPollOption)initWithOptionIdentifier:(id)a3 pollText:(id)a4 attributedPollText:(id)a5
{
  v7 = sub_1A84E5DBC();
  v9 = v8;
  v10 = sub_1A84E5DBC();
  v11 = (self + OBJC_IVAR___IMPollOption_optionIdentifier);
  *v11 = v7;
  v11[1] = v9;
  v12 = (self + OBJC_IVAR___IMPollOption_pollText);
  *v12 = v10;
  v12[1] = v13;
  *(self + OBJC_IVAR___IMPollOption_attributedPollText) = a5;
  v16.receiver = self;
  v16.super_class = IMPollOption;
  v14 = a5;
  return [(IMPollOption *)&v16 init];
}

- (IMPollOption)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end