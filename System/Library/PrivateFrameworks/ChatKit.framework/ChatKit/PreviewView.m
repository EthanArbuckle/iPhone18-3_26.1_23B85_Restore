@interface PreviewView
+ (Class)layerClass;
- (_TtC7ChatKitP33_DAFF86AC1D8D225BD7289D5FA0BF23D211PreviewView)initWithCoder:(id)a3;
- (_TtC7ChatKitP33_DAFF86AC1D8D225BD7289D5FA0BF23D211PreviewView)initWithFrame:(CGRect)a3;
@end

@implementation PreviewView

+ (Class)layerClass
{
  sub_1902188FC(0, &qword_1EAD5F7B8);

  return swift_getObjCClassFromMetadata();
}

- (_TtC7ChatKitP33_DAFF86AC1D8D225BD7289D5FA0BF23D211PreviewView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PreviewView();
  return [(PreviewView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKitP33_DAFF86AC1D8D225BD7289D5FA0BF23D211PreviewView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PreviewView();
  v4 = a3;
  v5 = [(PreviewView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end