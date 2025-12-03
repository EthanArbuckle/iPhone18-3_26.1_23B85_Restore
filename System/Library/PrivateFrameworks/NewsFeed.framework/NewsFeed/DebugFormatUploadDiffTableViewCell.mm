@interface DebugFormatUploadDiffTableViewCell
- (_TtC8NewsFeed34DebugFormatUploadDiffTableViewCell)initWithCoder:(id)coder;
- (_TtC8NewsFeed34DebugFormatUploadDiffTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation DebugFormatUploadDiffTableViewCell

- (_TtC8NewsFeed34DebugFormatUploadDiffTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_1D726207C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1D69E5A54(style, identifier, v6);
}

- (_TtC8NewsFeed34DebugFormatUploadDiffTableViewCell)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC8NewsFeed34DebugFormatUploadDiffTableViewCell_label;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

@end