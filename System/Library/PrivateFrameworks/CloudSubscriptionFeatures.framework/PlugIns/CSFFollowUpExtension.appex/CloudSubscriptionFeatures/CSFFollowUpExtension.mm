@interface CSFFollowUpExtension
- (_TtC20CSFFollowUpExtension20CSFFollowUpExtension)initWithCoder:(id)a3;
- (_TtC20CSFFollowUpExtension20CSFFollowUpExtension)initWithNibName:(id)a3 bundle:(id)a4;
- (void)followUpPerformUpdateWithCompletionHandler:(id)a3;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
@end

@implementation CSFFollowUpExtension

- (void)followUpPerformUpdateWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v4 = sub_1000049B8;
  }

  v5 = self;
  sub_100003570(v4);
  sub_1000028D0(v4);
}

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
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

  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_100001364(a3, a4, v8, v9);
  sub_1000028D0(v8);
}

- (_TtC20CSFFollowUpExtension20CSFFollowUpExtension)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_100004B20();
    v6 = a4;
    v7 = sub_100004B10();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CSFFollowUpExtension();
  v9 = [(CSFFollowUpExtension *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC20CSFFollowUpExtension20CSFFollowUpExtension)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CSFFollowUpExtension();
  v4 = a3;
  v5 = [(CSFFollowUpExtension *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end