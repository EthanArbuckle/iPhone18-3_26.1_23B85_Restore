@interface MultiLinkableFooterView
+ (NSString)footerLinkActionsKey;
+ (NSString)footerLinkRangesKey;
+ (NSString)footerLinkReuseIDKey;
+ (NSString)footerLinkStringsKey;
+ (NSString)footerLinkTargetsKey;
- (_TtC20HeadphoneCommonUIKit23MultiLinkableFooterView)initWithReuseIdentifier:(id)identifier;
- (double)preferredHeightForWidth:(double)width;
- (double)preferredHeightForWidth:(double)width inTableView:(id)view;
- (void)refreshContentsWithSpecifier:(id)specifier;
@end

@implementation MultiLinkableFooterView

+ (NSString)footerLinkStringsKey
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static MultiLinkableFooterView.footerLinkStringsKey.getter();
  v3 = sub_1AC3B7EE4();

  return v3;
}

+ (NSString)footerLinkTargetsKey
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static MultiLinkableFooterView.footerLinkTargetsKey.getter();
  v3 = sub_1AC3B7EE4();

  return v3;
}

+ (NSString)footerLinkActionsKey
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static MultiLinkableFooterView.footerLinkActionsKey.getter();
  v3 = sub_1AC3B7EE4();

  return v3;
}

+ (NSString)footerLinkRangesKey
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static MultiLinkableFooterView.footerLinkRangesKey.getter();
  v3 = sub_1AC3B7EE4();

  return v3;
}

+ (NSString)footerLinkReuseIDKey
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static MultiLinkableFooterView.footerLinkReuseIDKey.getter();
  v3 = sub_1AC3B7EE4();

  return v3;
}

- (void)refreshContentsWithSpecifier:(id)specifier
{
  MEMORY[0x1E69E5928](specifier);
  MEMORY[0x1E69E5928](self);
  sub_1AC390E00();
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](specifier);
}

- (double)preferredHeightForWidth:(double)width
{
  MEMORY[0x1E69E5928](self);
  v5 = sub_1AC390ED8();
  MEMORY[0x1E69E5920](self);
  return v5;
}

- (double)preferredHeightForWidth:(double)width inTableView:(id)view
{
  MEMORY[0x1E69E5928](view);
  MEMORY[0x1E69E5928](self);
  v8 = sub_1AC390FA0();
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](view);
  return v8;
}

- (_TtC20HeadphoneCommonUIKit23MultiLinkableFooterView)initWithReuseIdentifier:(id)identifier
{
  MEMORY[0x1E69E5928](identifier);
  if (identifier)
  {
    sub_1AC3B7EF4();
    v5 = v3;
    MEMORY[0x1E69E5920](identifier);
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  MultiLinkableFooterView.init(reuseIdentifier:)(v4);
}

@end