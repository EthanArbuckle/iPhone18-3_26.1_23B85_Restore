@interface MFLivePreviewView
+ (Class)layerClass;
- (NSString)accessibilityLabel;
- (_TtC16MagnifierSupport17MFLivePreviewView)initWithCoder:(id)coder;
- (_TtC16MagnifierSupport17MFLivePreviewView)initWithFrame:(CGRect)frame;
- (id)accessibilityExpandedTextValue;
@end

@implementation MFLivePreviewView

+ (Class)layerClass
{
  sub_257C7C0F8();

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

- (id)accessibilityExpandedTextValue
{

  v2 = sub_257ECF4C0();

  return v2;
}

- (_TtC16MagnifierSupport17MFLivePreviewView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = (&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport17MFLivePreviewView_textValue);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(MFLivePreviewView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC16MagnifierSupport17MFLivePreviewView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport17MFLivePreviewView_textValue);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v10.receiver = self;
  v10.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(MFLivePreviewView *)&v10 initWithCoder:coderCopy];

  if (v8)
  {
  }

  return v8;
}

@end