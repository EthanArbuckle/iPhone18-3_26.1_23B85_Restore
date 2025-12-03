@interface IMPollOption
- (IMPollOption)init;
- (IMPollOption)initWithOptionIdentifier:(id)identifier pollText:(id)text attributedPollText:(id)pollText;
@end

@implementation IMPollOption

- (IMPollOption)initWithOptionIdentifier:(id)identifier pollText:(id)text attributedPollText:(id)pollText
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
  *(self + OBJC_IVAR___IMPollOption_attributedPollText) = pollText;
  v16.receiver = self;
  v16.super_class = IMPollOption;
  pollTextCopy = pollText;
  return [(IMPollOption *)&v16 init];
}

- (IMPollOption)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end