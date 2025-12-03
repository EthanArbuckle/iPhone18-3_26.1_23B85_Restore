@interface MFPageViewController
- (_TtC16MagnifierSupport20MFPageViewController)initWithCoder:(id)coder;
- (_TtC16MagnifierSupport20MFPageViewController)initWithTransitionStyle:(int64_t)style navigationOrientation:(int64_t)orientation options:(id)options;
@end

@implementation MFPageViewController

- (_TtC16MagnifierSupport20MFPageViewController)initWithTransitionStyle:(int64_t)style navigationOrientation:(int64_t)orientation options:(id)options
{
  ObjectType = swift_getObjectType();
  if (options)
  {
    type metadata accessor for OptionsKey(0);
    sub_257BE3CDC(&qword_27F8F5098, type metadata accessor for OptionsKey);
    sub_257ECF3D0();
    options = sub_257ECF3C0();
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(MFPageViewController *)&v12 initWithTransitionStyle:style navigationOrientation:orientation options:options];

  return v10;
}

- (_TtC16MagnifierSupport20MFPageViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(MFPageViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end