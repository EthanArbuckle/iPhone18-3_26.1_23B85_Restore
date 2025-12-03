@interface GPImageDescriptionViewController
- (UIViewController)presentingViewController;
- (_TtC23ImagePlaygroundInternal32GPImageDescriptionViewController)initWithContentSnapshot:(id)snapshot;
@end

@implementation GPImageDescriptionViewController

- (UIViewController)presentingViewController
{
  v3 = sub_1D28720B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_1D28720A8();
  v8 = sub_1D2872098();
  (*(v4 + 8))(v6, v3);
  v9 = type metadata accessor for GPImageDescriptionViewController();
  if (v8)
  {
    v13.receiver = selfCopy;
    v13.super_class = v9;
    presentingViewController = [(GPImageDescriptionViewController *)&v13 presentingViewController];
  }

  else
  {
    v14.receiver = selfCopy;
    v14.super_class = v9;
    presentingViewController2 = [(GPImageDescriptionViewController *)&v14 presentingViewController];
    if (presentingViewController2)
    {
      goto LABEL_6;
    }

    presentingViewController = sub_1D259F748();
  }

  presentingViewController2 = presentingViewController;
LABEL_6:

  return presentingViewController2;
}

- (_TtC23ImagePlaygroundInternal32GPImageDescriptionViewController)initWithContentSnapshot:(id)snapshot
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for GPImageDescriptionViewController();
  return [(AXSSImageDescriptionViewController *)&v5 initWithContentSnapshot:snapshot];
}

@end