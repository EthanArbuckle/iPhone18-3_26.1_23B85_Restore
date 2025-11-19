@interface PillBadgeTextAttachment
- (_TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment)initWithData:(id)a3 ofType:(id)a4;
@end

@implementation PillBadgeTextAttachment

- (_TtC20HeadphoneCommonUIKit23PillBadgeTextAttachment)initWithData:(id)a3 ofType:(id)a4
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  if (a3)
  {
    sub_1AC3B7214();
    MEMORY[0x1E69E5920](a3);
  }

  if (a4)
  {
    sub_1AC3B7EF4();
    v6 = v4;
    MEMORY[0x1E69E5920](a4);
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  sub_1AC37AD64(v5);
}

@end