@interface GPImageDescriptionViewController
- (UIViewController)presentingViewController;
- (_TtC23ImagePlaygroundInternal32GPImageDescriptionViewController)initWithContentSnapshot:(id)a3;
@end

@implementation GPImageDescriptionViewController

- (UIViewController)presentingViewController
{
  v3 = sub_1D28720B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  sub_1D28720A8();
  v8 = sub_1D2872098();
  (*(v4 + 8))(v6, v3);
  v9 = type metadata accessor for GPImageDescriptionViewController();
  if (v8)
  {
    v13.receiver = v7;
    v13.super_class = v9;
    v10 = [(GPImageDescriptionViewController *)&v13 presentingViewController];
  }

  else
  {
    v14.receiver = v7;
    v14.super_class = v9;
    v11 = [(GPImageDescriptionViewController *)&v14 presentingViewController];
    if (v11)
    {
      goto LABEL_6;
    }

    v10 = sub_1D259F748();
  }

  v11 = v10;
LABEL_6:

  return v11;
}

- (_TtC23ImagePlaygroundInternal32GPImageDescriptionViewController)initWithContentSnapshot:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for GPImageDescriptionViewController();
  return [(AXSSImageDescriptionViewController *)&v5 initWithContentSnapshot:a3];
}

@end