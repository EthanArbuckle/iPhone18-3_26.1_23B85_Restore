@interface AssistiveAccessLivePreviewView
+ (Class)layerClass;
- (NSString)accessibilityLabel;
- (_TtC16MagnifierSupport30AssistiveAccessLivePreviewView)initWithCoder:(id)coder;
- (_TtC16MagnifierSupport30AssistiveAccessLivePreviewView)initWithFrame:(CGRect)frame;
@end

@implementation AssistiveAccessLivePreviewView

+ (Class)layerClass
{
  sub_257BD2C2C(0, &qword_27F8F6B78);

  return swift_getObjCClassFromMetadata();
}

- (NSString)accessibilityLabel
{
  sub_257C6C1F8();
  if (v2)
  {
    v3 = sub_257ECF4C0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (_TtC16MagnifierSupport30AssistiveAccessLivePreviewView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(AssistiveAccessLivePreviewView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC16MagnifierSupport30AssistiveAccessLivePreviewView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(AssistiveAccessLivePreviewView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end