@interface ClarityUIChatController
+ (Class)transcriptControllerClass;
- (CKComposition)composition;
- (UIEdgeInsets)navigationBarInsetsWithoutPalette;
- (_TtC7ChatKit23ClarityUIChatController)initWithConversation:(id)conversation;
- (_TtC7ChatKit23ClarityUIChatController)initWithNibName:(id)name bundle:(id)bundle;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (void)sendCompositionWithNotification:(id)notification;
- (void)setComposition:(id)composition;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)transcriptCollectionViewController:(id)controller balloonView:(id)view doubleTappedItemAtIndexPath:(id)path;
- (void)transcriptCollectionViewController:(id)controller balloonView:(id)view tappedForChatItem:(id)item;
- (void)transcriptCollectionViewController:(id)controller didScroll:(CGPoint)scroll;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ClarityUIChatController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ClarityUIChatController();
  v2 = v4.receiver;
  [(CKChatController *)&v4 viewDidLoad];
  defaultCenter = [objc_opt_self() defaultCenter];
  if (qword_1EAD51E58 != -1)
  {
    swift_once();
  }

  [defaultCenter addObserver:v2 selector:? name:? object:?];

  [*&v2[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_synthesizer] setUsesApplicationAudioSession_];
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1909016F8();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_19090182C(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClarityUIChatController();
  v4 = v7.receiver;
  [(CKChatController *)&v7 viewDidDisappear:disappearCopy];
  sharedInstance = [objc_opt_self() sharedInstance];
  conversation = [v4 conversation];
  [sharedInstance removeConversation_];
}

- (void)sendCompositionWithNotification:(id)notification
{
  v4 = sub_190D50FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  selfCopy = self;
  sub_190901A40();

  (*(v5 + 8))(v7, v4);
}

- (UIEdgeInsets)navigationBarInsetsWithoutPalette
{
  v2 = *(&self->super.super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_navigationBarTopInset);
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ClarityUIChatController();
  v6 = v9.receiver;
  [(CKChatController *)&v9 setEditing:editingCopy animated:animatedCopy];
  navigationController = [v6 navigationController];
  if (navigationController)
  {
    v8 = navigationController;
    [navigationController setToolbarHidden:1 animated:0];
  }
}

- (CKComposition)composition
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ClarityUIChatController();
  composition = [(CKChatController *)&v4 composition];

  return composition;
}

- (void)setComposition:(id)composition
{
  v5 = type metadata accessor for ClarityUIChatController();
  v10.receiver = self;
  v10.super_class = v5;
  compositionCopy = composition;
  selfCopy = self;
  composition = [(CKChatController *)&v10 composition];
  v9.receiver = selfCopy;
  v9.super_class = v5;
  [(CKChatController *)&v9 setComposition:compositionCopy];
  sub_190902038(composition);
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  sub_1902188FC(0, &qword_1EAD56AD8);
  v4 = sub_190D57160();

  return v4;
}

+ (Class)transcriptControllerClass
{
  type metadata accessor for ClarityUIChatController.TranscriptController();

  return swift_getObjCClassFromMetadata();
}

- (void)transcriptCollectionViewController:(id)controller didScroll:(CGPoint)scroll
{
  y = scroll.y;
  x = scroll.x;
  controllerCopy = controller;
  selfCopy = self;
  sub_190902600(controllerCopy, x, y);
}

- (void)transcriptCollectionViewController:(id)controller balloonView:(id)view tappedForChatItem:(id)item
{
  controllerCopy = controller;
  viewCopy = view;
  itemCopy = item;
  selfCopy = self;
  sub_1909032D4(itemCopy);
}

- (void)transcriptCollectionViewController:(id)controller balloonView:(id)view doubleTappedItemAtIndexPath:(id)path
{
  v5 = sub_190D51C00();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51BC0();
  (*(v6 + 8))(v8, v5);
}

- (_TtC7ChatKit23ClarityUIChatController)initWithConversation:(id)conversation
{
  conversationCopy = conversation;
  v4 = sub_190903414(conversationCopy);

  return v4;
}

- (_TtC7ChatKit23ClarityUIChatController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_190D56F10();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_190902F5C(v5, v7, bundle);
}

@end