@interface AddTagsActionViewController
- (_TtC22AddTagsActionExtension27AddTagsActionViewController)initWithCoder:(id)a3;
- (_TtC22AddTagsActionExtension27AddTagsActionViewController)initWithCollectionViewLayout:(id)a3;
- (_TtC22AddTagsActionExtension27AddTagsActionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AddTagsActionViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for AddTagsActionViewController();
  [(AddTagsActionViewController *)&v2 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100002D1C(a3);
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100003294;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_100002EAC(a3, v6, v7);
  sub_10000324C(v6);
}

- (_TtC22AddTagsActionExtension27AddTagsActionViewController)initWithCollectionViewLayout:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AddTagsActionViewController();
  return [(AddTagsActionViewController *)&v5 initWithCollectionViewLayout:a3];
}

- (_TtC22AddTagsActionExtension27AddTagsActionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1000041A8();
    v6 = a4;
    v7 = sub_100004198();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AddTagsActionViewController();
  v9 = [(AddTagsActionViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC22AddTagsActionExtension27AddTagsActionViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AddTagsActionViewController();
  v4 = a3;
  v5 = [(AddTagsActionViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end