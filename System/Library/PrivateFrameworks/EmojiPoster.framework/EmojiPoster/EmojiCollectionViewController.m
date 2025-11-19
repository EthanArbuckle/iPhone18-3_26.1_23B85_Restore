@interface EmojiCollectionViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (_TtC11EmojiPoster29EmojiCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC11EmojiPoster29EmojiCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation EmojiCollectionViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_249FFD3A4();
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  sub_24A021698();
  v9 = a3;
  v10 = self;
  sub_249FFE264(v9, location, length);

  return 0;
}

- (_TtC11EmojiPoster29EmojiCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11EmojiPoster29EmojiCollectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end