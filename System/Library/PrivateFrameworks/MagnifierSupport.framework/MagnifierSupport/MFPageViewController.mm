@interface MFPageViewController
- (_TtC16MagnifierSupport20MFPageViewController)initWithCoder:(id)a3;
- (_TtC16MagnifierSupport20MFPageViewController)initWithTransitionStyle:(int64_t)a3 navigationOrientation:(int64_t)a4 options:(id)a5;
@end

@implementation MFPageViewController

- (_TtC16MagnifierSupport20MFPageViewController)initWithTransitionStyle:(int64_t)a3 navigationOrientation:(int64_t)a4 options:(id)a5
{
  ObjectType = swift_getObjectType();
  if (a5)
  {
    type metadata accessor for OptionsKey(0);
    sub_257BE3CDC(&qword_27F8F5098, type metadata accessor for OptionsKey);
    sub_257ECF3D0();
    a5 = sub_257ECF3C0();
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(MFPageViewController *)&v12 initWithTransitionStyle:a3 navigationOrientation:a4 options:a5];

  return v10;
}

- (_TtC16MagnifierSupport20MFPageViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(MFPageViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end