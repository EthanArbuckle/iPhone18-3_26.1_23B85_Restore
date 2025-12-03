@interface MultiLinkableFooterView
+ (NSString)footerLinkActionsKey;
+ (NSString)footerLinkRangesKey;
+ (NSString)footerLinkReuseIDKey;
+ (NSString)footerLinkStringsKey;
+ (NSString)footerLinkTargetsKey;
- (_TtC16HeadphoneConfigs23MultiLinkableFooterView)initWithCoder:(id)coder;
- (_TtC16HeadphoneConfigs23MultiLinkableFooterView)initWithReuseIdentifier:(id)identifier;
- (double)preferredHeightForWidth:(double)width;
- (double)preferredHeightForWidth:(double)width inTableView:(id)view;
- (void)refreshContentsWithSpecifier:(id)specifier;
@end

@implementation MultiLinkableFooterView

+ (NSString)footerLinkStringsKey
{
  v2 = sub_25121176C();

  return v2;
}

+ (NSString)footerLinkTargetsKey
{
  v2 = sub_25121176C();

  return v2;
}

+ (NSString)footerLinkActionsKey
{
  v2 = sub_25121176C();

  return v2;
}

+ (NSString)footerLinkRangesKey
{
  v2 = sub_25121176C();

  return v2;
}

+ (NSString)footerLinkReuseIDKey
{
  v2 = sub_25121176C();

  return v2;
}

- (void)refreshContentsWithSpecifier:(id)specifier
{
  selfCopy = self;
  [(MultiLinkableFooterView *)selfCopy setNeedsLayout];
  [(MultiLinkableFooterView *)selfCopy layoutIfNeeded];
}

- (double)preferredHeightForWidth:(double)width
{
  selfCopy = self;
  v4 = sub_2511FBA28();
  [v4 intrinsicContentSize];
  v6 = v5;

  return v6;
}

- (double)preferredHeightForWidth:(double)width inTableView:(id)view
{
  selfCopy = self;
  v5 = sub_2511FBA28();
  [v5 intrinsicContentSize];
  v7 = v6;

  return v7;
}

- (_TtC16HeadphoneConfigs23MultiLinkableFooterView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs23MultiLinkableFooterView_heightConstraints) = MEMORY[0x277D84F90];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs23MultiLinkableFooterView____lazy_storage___container) = 0;
  result = sub_251211C4C();
  __break(1u);
  return result;
}

- (_TtC16HeadphoneConfigs23MultiLinkableFooterView)initWithReuseIdentifier:(id)identifier
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end