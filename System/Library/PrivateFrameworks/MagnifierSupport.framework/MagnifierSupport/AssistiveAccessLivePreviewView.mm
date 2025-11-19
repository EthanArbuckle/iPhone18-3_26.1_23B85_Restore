@interface AssistiveAccessLivePreviewView
+ (Class)layerClass;
- (NSString)accessibilityLabel;
- (_TtC16MagnifierSupport30AssistiveAccessLivePreviewView)initWithCoder:(id)a3;
- (_TtC16MagnifierSupport30AssistiveAccessLivePreviewView)initWithFrame:(CGRect)a3;
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

- (_TtC16MagnifierSupport30AssistiveAccessLivePreviewView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(AssistiveAccessLivePreviewView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC16MagnifierSupport30AssistiveAccessLivePreviewView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(AssistiveAccessLivePreviewView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end