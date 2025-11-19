@interface FeedItemTableViewCell
- (_TtC8NewsFeed21FeedItemTableViewCell)initWithCoder:(id)a3;
- (_TtC8NewsFeed21FeedItemTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)prepareForReuse;
@end

@implementation FeedItemTableViewCell

- (_TtC8NewsFeed21FeedItemTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_1D726207C();
    v7 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed21FeedItemTableViewCell_identifier);
    *v7 = 0;
    v7[1] = 0;
    a4 = sub_1D726203C();
  }

  else
  {
    v8 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed21FeedItemTableViewCell_identifier);
    *v8 = 0;
    v8[1] = 0;
  }

  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(FeedItemTableViewCell *)&v11 initWithStyle:3 reuseIdentifier:a4];

  return v9;
}

- (_TtC8NewsFeed21FeedItemTableViewCell)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed21FeedItemTableViewCell_identifier);
  *v3 = 0;
  v3[1] = 0;
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(FeedItemTableViewCell *)&v4 prepareForReuse];
  v3 = &v2[OBJC_IVAR____TtC8NewsFeed21FeedItemTableViewCell_identifier];
  *v3 = 0;
  *(v3 + 1) = 0;
}

@end