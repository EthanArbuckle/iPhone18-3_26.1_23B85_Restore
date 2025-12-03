@interface ParticipantViewLabelContainerView
+ (Class)layerClass;
- (CGSize)intrinsicContentSize;
- (UILabel)label;
@end

@implementation ParticipantViewLabelContainerView

- (UILabel)label
{
  v2 = ParticipantViewLabelContainerView.label.getter();

  return v2;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = ParticipantViewLabelContainerView.intrinsicContentSize.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

+ (Class)layerClass
{
  static ParticipantViewLabelContainerView.layerClass.getter();

  return swift_getObjCClassFromMetadata();
}

@end