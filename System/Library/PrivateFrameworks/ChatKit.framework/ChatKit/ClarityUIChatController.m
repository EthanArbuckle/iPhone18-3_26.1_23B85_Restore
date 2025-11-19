@interface ClarityUIChatController
+ (Class)transcriptControllerClass;
- (CKComposition)composition;
- (UIEdgeInsets)navigationBarInsetsWithoutPalette;
- (_TtC7ChatKit23ClarityUIChatController)initWithConversation:(id)a3;
- (_TtC7ChatKit23ClarityUIChatController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (void)sendCompositionWithNotification:(id)a3;
- (void)setComposition:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)transcriptCollectionViewController:(id)a3 balloonView:(id)a4 doubleTappedItemAtIndexPath:(id)a5;
- (void)transcriptCollectionViewController:(id)a3 balloonView:(id)a4 tappedForChatItem:(id)a5;
- (void)transcriptCollectionViewController:(id)a3 didScroll:(CGPoint)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ClarityUIChatController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ClarityUIChatController();
  v2 = v4.receiver;
  [(CKChatController *)&v4 viewDidLoad];
  v3 = [objc_opt_self() defaultCenter];
  if (qword_1EAD51E58 != -1)
  {
    swift_once();
  }

  [v3 addObserver:v2 selector:? name:? object:?];

  [*&v2[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_synthesizer] setUsesApplicationAudioSession_];
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1909016F8();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_19090182C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClarityUIChatController();
  v4 = v7.receiver;
  [(CKChatController *)&v7 viewDidDisappear:v3];
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v4 conversation];
  [v5 removeConversation_];
}

- (void)sendCompositionWithNotification:(id)a3
{
  v4 = sub_190D50FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  v8 = self;
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

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ClarityUIChatController();
  v6 = v9.receiver;
  [(CKChatController *)&v9 setEditing:v5 animated:v4];
  v7 = [v6 navigationController];
  if (v7)
  {
    v8 = v7;
    [v7 setToolbarHidden:1 animated:0];
  }
}

- (CKComposition)composition
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ClarityUIChatController();
  v2 = [(CKChatController *)&v4 composition];

  return v2;
}

- (void)setComposition:(id)a3
{
  v5 = type metadata accessor for ClarityUIChatController();
  v10.receiver = self;
  v10.super_class = v5;
  v6 = a3;
  v7 = self;
  v8 = [(CKChatController *)&v10 composition];
  v9.receiver = v7;
  v9.super_class = v5;
  [(CKChatController *)&v9 setComposition:v6];
  sub_190902038(v8);
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
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

- (void)transcriptCollectionViewController:(id)a3 didScroll:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  sub_190902600(v7, x, y);
}

- (void)transcriptCollectionViewController:(id)a3 balloonView:(id)a4 tappedForChatItem:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1909032D4(v10);
}

- (void)transcriptCollectionViewController:(id)a3 balloonView:(id)a4 doubleTappedItemAtIndexPath:(id)a5
{
  v5 = sub_190D51C00();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51BC0();
  (*(v6 + 8))(v8, v5);
}

- (_TtC7ChatKit23ClarityUIChatController)initWithConversation:(id)a3
{
  v3 = a3;
  v4 = sub_190903414(v3);

  return v4;
}

- (_TtC7ChatKit23ClarityUIChatController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_190D56F10();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_190902F5C(v5, v7, a4);
}

@end