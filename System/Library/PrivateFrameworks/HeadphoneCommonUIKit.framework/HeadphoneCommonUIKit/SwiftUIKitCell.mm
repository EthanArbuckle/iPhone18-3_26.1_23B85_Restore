@interface SwiftUIKitCell
+ (NSString)swiftUIHostKey;
- (_TtC20HeadphoneCommonUIKit14SwiftUIKitCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC20HeadphoneCommonUIKit14SwiftUIKitCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation SwiftUIKitCell

+ (NSString)swiftUIHostKey
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static SwiftUIKitCell.swiftUIHostKey.getter();
  v3 = sub_1AC3B7EE4();

  return v3;
}

- (_TtC20HeadphoneCommonUIKit14SwiftUIKitCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  MEMORY[0x1E69E5928](identifier);
  MEMORY[0x1E69E5928](specifier);
  if (identifier)
  {
    v7 = sub_1AC3B7EF4();
    v8 = v5;
    MEMORY[0x1E69E5920](identifier);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return sub_1AC399FF8(style, v9, v10, specifier);
}

- (_TtC20HeadphoneCommonUIKit14SwiftUIKitCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  MEMORY[0x1E69E5928](identifier);
  if (identifier)
  {
    v6 = sub_1AC3B7EF4();
    v7 = v4;
    MEMORY[0x1E69E5920](identifier);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return sub_1AC39A2A4(style, v8, v9);
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  MEMORY[0x1E69E5928](specifier);
  MEMORY[0x1E69E5928](self);
  sub_1AC39A600(specifier);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](specifier);
}

@end