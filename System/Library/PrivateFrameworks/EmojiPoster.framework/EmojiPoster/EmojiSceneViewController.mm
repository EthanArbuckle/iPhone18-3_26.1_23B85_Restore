@interface EmojiSceneViewController
- (_TtC11EmojiPoster24EmojiSceneViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation EmojiSceneViewController

- (void)loadView
{
  selfCopy = self;
  sub_24A0086F8();
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EmojiSceneViewController();
  v2 = v3.receiver;
  [(EmojiSceneViewController *)&v3 viewDidLoad];
  sub_24A008AE0();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8 = swift_allocObject();
  *(v8 + 2) = self;
  v8[3] = width;
  v8[4] = height;
  aBlock[4] = sub_24A00A410;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A0093F4;
  aBlock[3] = &block_descriptor_23;
  v9 = _Block_copy(aBlock);
  selfCopy = self;
  swift_unknownObjectRetain();

  [coordinator animateAlongsideTransition:v9 completion:0];
  _Block_release(v9);
  v11.receiver = selfCopy;
  v11.super_class = type metadata accessor for EmojiSceneViewController();
  [(EmojiSceneViewController *)&v11 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  swift_unknownObjectRelease();
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 30;
  }

  else
  {
    return 26;
  }
}

- (_TtC11EmojiPoster24EmojiSceneViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_24A021698();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return EmojiSceneViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end