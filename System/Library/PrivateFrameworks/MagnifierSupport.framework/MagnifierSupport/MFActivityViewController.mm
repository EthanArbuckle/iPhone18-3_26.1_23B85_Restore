@interface MFActivityViewController
- (_TtC16MagnifierSupport24MFActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4;
@end

@implementation MFActivityViewController

- (_TtC16MagnifierSupport24MFActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_257C6CF5C();
    sub_257ECF810();
    v8 = a3;
    a4 = sub_257ECF7F0();
  }

  else
  {
    v9 = a3;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(MFActivityViewController *)&v12 initWithActivityItems:a3 applicationActivities:a4];

  return v10;
}

@end