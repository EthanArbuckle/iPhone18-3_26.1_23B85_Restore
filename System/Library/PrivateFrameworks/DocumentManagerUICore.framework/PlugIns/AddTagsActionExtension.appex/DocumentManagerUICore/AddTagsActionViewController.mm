@interface AddTagsActionViewController
- (_TtC22AddTagsActionExtension27AddTagsActionViewController)initWithCoder:(id)coder;
- (_TtC22AddTagsActionExtension27AddTagsActionViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC22AddTagsActionExtension27AddTagsActionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AddTagsActionViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for AddTagsActionViewController();
  [(AddTagsActionViewController *)&v2 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100002D1C(appear);
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  selfCopy = self;
  sub_100002EAC(animated, v6, v7);
  sub_10000324C(v6);
}

- (_TtC22AddTagsActionExtension27AddTagsActionViewController)initWithCollectionViewLayout:(id)layout
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AddTagsActionViewController();
  return [(AddTagsActionViewController *)&v5 initWithCollectionViewLayout:layout];
}

- (_TtC22AddTagsActionExtension27AddTagsActionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1000041A8();
    bundleCopy = bundle;
    v7 = sub_100004198();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AddTagsActionViewController();
  v9 = [(AddTagsActionViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC22AddTagsActionExtension27AddTagsActionViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AddTagsActionViewController();
  coderCopy = coder;
  v5 = [(AddTagsActionViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end