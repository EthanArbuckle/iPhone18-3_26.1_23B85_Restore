@interface FakePresentingViewController#1inGPImageDescriptionViewController.fakePresentingVieController.getter
- (_TtCFC23ImagePlaygroundInternal32GPImageDescriptionViewControllergP33_5475699B788A0A9CD9CC836EEF562C8327fakePresentingVieControllerCSo16UIViewControllerL_28FakePresentingViewController)initWithCoder:(id)coder;
- (_TtCFC23ImagePlaygroundInternal32GPImageDescriptionViewControllergP33_5475699B788A0A9CD9CC836EEF562C8327fakePresentingVieControllerCSo16UIViewControllerL_28FakePresentingViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation FakePresentingViewController#1inGPImageDescriptionViewController.fakePresentingVieController.getter

- (_TtCFC23ImagePlaygroundInternal32GPImageDescriptionViewControllergP33_5475699B788A0A9CD9CC836EEF562C8327fakePresentingVieControllerCSo16UIViewControllerL_28FakePresentingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1D28780A8();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = OBJC_IVAR____TtCFC23ImagePlaygroundInternal32GPImageDescriptionViewControllergP33_5475699B788A0A9CD9CC836EEF562C8327fakePresentingVieControllerCSo16UIViewControllerL_28FakePresentingViewController_traits;
  v9 = objc_allocWithZone(MEMORY[0x1E69DD1B8]);
  bundleCopy = bundle;
  *(&self->super.super.super.isa + v8) = [v9 init];
  if (v7)
  {
    v11 = sub_1D2878068();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = self;
  v14.super_class = type metadata accessor for GPImageDescriptionViewController.FakePresentingViewController();
  v12 = [(FakePresentingViewController *)&v14 #1:v11];

  return v12;
}

- (_TtCFC23ImagePlaygroundInternal32GPImageDescriptionViewControllergP33_5475699B788A0A9CD9CC836EEF562C8327fakePresentingVieControllerCSo16UIViewControllerL_28FakePresentingViewController)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtCFC23ImagePlaygroundInternal32GPImageDescriptionViewControllergP33_5475699B788A0A9CD9CC836EEF562C8327fakePresentingVieControllerCSo16UIViewControllerL_28FakePresentingViewController_traits;
  v6 = objc_allocWithZone(MEMORY[0x1E69DD1B8]);
  coderCopy = coder;
  *(&self->super.super.super.isa + v5) = [v6 init];
  v10.receiver = self;
  v10.super_class = type metadata accessor for GPImageDescriptionViewController.FakePresentingViewController();
  v8 = [(FakePresentingViewController *)&v10 #1];

  if (v8)
  {
  }

  return v8;
}

@end