@interface PreviewView
+ (Class)layerClass;
- (_TtC7ChatKitP33_DAFF86AC1D8D225BD7289D5FA0BF23D211PreviewView)initWithCoder:(id)coder;
- (_TtC7ChatKitP33_DAFF86AC1D8D225BD7289D5FA0BF23D211PreviewView)initWithFrame:(CGRect)frame;
@end

@implementation PreviewView

+ (Class)layerClass
{
  sub_1902188FC(0, &qword_1EAD5F7B8);

  return swift_getObjCClassFromMetadata();
}

- (_TtC7ChatKitP33_DAFF86AC1D8D225BD7289D5FA0BF23D211PreviewView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for PreviewView();
  return [(PreviewView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7ChatKitP33_DAFF86AC1D8D225BD7289D5FA0BF23D211PreviewView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PreviewView();
  coderCopy = coder;
  v5 = [(PreviewView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end