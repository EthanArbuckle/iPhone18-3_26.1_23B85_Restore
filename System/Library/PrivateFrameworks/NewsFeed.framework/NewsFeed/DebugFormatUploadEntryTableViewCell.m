@interface DebugFormatUploadEntryTableViewCell
- (_TtC8NewsFeed35DebugFormatUploadEntryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
@end

@implementation DebugFormatUploadEntryTableViewCell

- (_TtC8NewsFeed35DebugFormatUploadEntryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    v4 = sub_1D726207C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_1D6717190(v4, v5);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(DebugFormatUploadEntryTableViewCell *)&v3 prepareForReuse];
}

@end