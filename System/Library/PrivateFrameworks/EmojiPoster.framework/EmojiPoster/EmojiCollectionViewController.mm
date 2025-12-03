@interface EmojiCollectionViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtC11EmojiPoster29EmojiCollectionViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC11EmojiPoster29EmojiCollectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation EmojiCollectionViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_249FFD3A4();
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  sub_24A021698();
  fieldCopy = field;
  selfCopy = self;
  sub_249FFE264(fieldCopy, location, length);

  return 0;
}

- (_TtC11EmojiPoster29EmojiCollectionViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC11EmojiPoster29EmojiCollectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end