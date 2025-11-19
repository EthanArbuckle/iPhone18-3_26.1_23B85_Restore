@interface DebugFormatUploadDiffTableViewCell
- (_TtC8NewsFeed34DebugFormatUploadDiffTableViewCell)initWithCoder:(id)a3;
- (_TtC8NewsFeed34DebugFormatUploadDiffTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation DebugFormatUploadDiffTableViewCell

- (_TtC8NewsFeed34DebugFormatUploadDiffTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_1D726207C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1D69E5A54(a3, a4, v6);
}

- (_TtC8NewsFeed34DebugFormatUploadDiffTableViewCell)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC8NewsFeed34DebugFormatUploadDiffTableViewCell_label;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

@end