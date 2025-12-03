@interface PillBadgeTextAttachment
- (_TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment)initWithData:(id)data ofType:(id)type;
@end

@implementation PillBadgeTextAttachment

- (_TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment)initWithData:(id)data ofType:(id)type
{
  MEMORY[0x1E69E5928](data);
  MEMORY[0x1E69E5928](type);
  if (data)
  {
    sub_1AC3B7214();
    MEMORY[0x1E69E5920](data);
  }

  if (type)
  {
    sub_1AC3B7EF4();
    v6 = v4;
    MEMORY[0x1E69E5920](type);
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  sub_1AC37AD64(v5);
}

@end