@interface TapbackPickerBackgroundContainerView
- (_TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E36TapbackPickerBackgroundContainerView)initWithFrame:(CGRect)frame;
@end

@implementation TapbackPickerBackgroundContainerView

- (_TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E36TapbackPickerBackgroundContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E36TapbackPickerBackgroundContainerView_gradientView;
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(CKGradientView) init];
  v9 = OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E36TapbackPickerBackgroundContainerView_materialView;
  type metadata accessor for TapbackMaterialView();
  *(&self->super.super.super.super.isa + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for TapbackPickerBackgroundContainerView();
  return [(TapbackPickerMaskedViewContainer *)&v11 initWithFrame:x, y, width, height];
}

@end