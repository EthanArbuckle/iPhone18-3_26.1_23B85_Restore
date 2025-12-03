@interface EmojiCollectionViewCell
- (_TtC11EmojiPoster23EmojiCollectionViewCell)initWithCoder:(id)coder;
- (_TtC11EmojiPoster23EmojiCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation EmojiCollectionViewCell

- (_TtC11EmojiPoster23EmojiCollectionViewCell)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC11EmojiPoster23EmojiCollectionViewCell_emojiView;
  v6 = objc_allocWithZone(MEMORY[0x277D756B8]);
  coderCopy = coder;
  *(&self->super.super.super.super.super.isa + v5) = [v6 init];
  v12.receiver = self;
  v12.super_class = type metadata accessor for EmojiCollectionViewCell();
  v8 = [(EmojiCollectionViewCell *)&v12 initWithCoder:coderCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_249FFCD24();
  }

  return v9;
}

- (_TtC11EmojiPoster23EmojiCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC11EmojiPoster23EmojiCollectionViewCell_emojiView;
  *(&self->super.super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for EmojiCollectionViewCell();
  height = [(EmojiCollectionViewCell *)&v11 initWithFrame:x, y, width, height];
  sub_249FFCD24();

  return height;
}

@end