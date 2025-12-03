@interface CSFFollowUpExtension
- (_TtC20CSFFollowUpExtension20CSFFollowUpExtension)initWithCoder:(id)coder;
- (_TtC20CSFFollowUpExtension20CSFFollowUpExtension)initWithNibName:(id)name bundle:(id)bundle;
- (void)followUpPerformUpdateWithCompletionHandler:(id)handler;
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
@end

@implementation CSFFollowUpExtension

- (void)followUpPerformUpdateWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v4 = sub_1000049B8;
  }

  selfCopy = self;
  sub_100003570(v4);
  sub_1000028D0(v4);
}

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_100002918;
  }

  else
  {
    v9 = 0;
  }

  itemCopy = item;
  actionCopy = action;
  selfCopy = self;
  sub_100001364(item, action, v8, v9);
  sub_1000028D0(v8);
}

- (_TtC20CSFFollowUpExtension20CSFFollowUpExtension)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_100004B20();
    bundleCopy = bundle;
    v7 = sub_100004B10();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CSFFollowUpExtension();
  v9 = [(CSFFollowUpExtension *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC20CSFFollowUpExtension20CSFFollowUpExtension)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CSFFollowUpExtension();
  coderCopy = coder;
  v5 = [(CSFFollowUpExtension *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end