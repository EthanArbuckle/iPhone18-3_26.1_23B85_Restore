@interface PlaceCardTypeCell
+ (NSString)deviceKey;
+ (NSString)hideDisclosureKey;
+ (NSString)useCaseKey;
- (_TtC20HeadphoneCommonUIKit17PlaceCardTypeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC20HeadphoneCommonUIKit17PlaceCardTypeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation PlaceCardTypeCell

+ (NSString)useCaseKey
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static PlaceCardTypeCell.useCaseKey.getter();
  v3 = sub_1AC3B7EE4();

  return v3;
}

+ (NSString)deviceKey
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static PlaceCardTypeCell.deviceKey.getter();
  v3 = sub_1AC3B7EE4();

  return v3;
}

+ (NSString)hideDisclosureKey
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static PlaceCardTypeCell.hideDisclosureKey.getter();
  v3 = sub_1AC3B7EE4();

  return v3;
}

- (_TtC20HeadphoneCommonUIKit17PlaceCardTypeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  if (a4)
  {
    v7 = sub_1AC3B7EF4();
    v8 = v5;
    MEMORY[0x1E69E5920](a4);
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return sub_1AC394A10(a3, v9, v10, a5);
}

- (_TtC20HeadphoneCommonUIKit17PlaceCardTypeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  MEMORY[0x1E69E5928](a4);
  if (a4)
  {
    v6 = sub_1AC3B7EF4();
    v7 = v4;
    MEMORY[0x1E69E5920](a4);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return sub_1AC394CE4(a3, v8, v9);
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  sub_1AC395040(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

@end