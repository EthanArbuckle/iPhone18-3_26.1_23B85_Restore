@interface CNKParticipantScreenShareInfoViewInternal
- (UIImage)avatarImage;
- (double)preferredHeight;
- (void)configureWith:(id)with isFullScreenMode:(BOOL)mode;
- (void)layoutSubviews;
- (void)setAvatarImage:(id)image;
- (void)setCustomCornerRadius:(double)radius;
@end

@implementation CNKParticipantScreenShareInfoViewInternal

- (void)setCustomCornerRadius:(double)radius
{
  selfCopy = self;
  ParticipantScreenShareInfoView.customCornerRadius.setter(radius);
}

- (double)preferredHeight
{
  selfCopy = self;
  v3 = ParticipantScreenShareInfoView.preferredHeight.getter();

  return v3;
}

- (UIImage)avatarImage
{
  v2 = ParticipantScreenShareInfoView.avatarImage.getter();

  return v2;
}

- (void)setAvatarImage:(id)image
{
  imageCopy = image;
  selfCopy = self;
  ParticipantScreenShareInfoView.avatarImage.setter(image);
}

- (void)layoutSubviews
{
  selfCopy = self;
  ParticipantScreenShareInfoView.layoutSubviews()(&selRef_layoutSubviews);
}

- (void)configureWith:(id)with isFullScreenMode:(BOOL)mode
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  ParticipantScreenShareInfoView.configure(with:isFullScreenMode:)(v10, mode);
}

@end