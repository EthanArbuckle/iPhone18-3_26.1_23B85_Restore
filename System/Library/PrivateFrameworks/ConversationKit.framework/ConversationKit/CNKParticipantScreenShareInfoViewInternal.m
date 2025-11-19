@interface CNKParticipantScreenShareInfoViewInternal
- (UIImage)avatarImage;
- (double)preferredHeight;
- (void)configureWith:(id)a3 isFullScreenMode:(BOOL)a4;
- (void)layoutSubviews;
- (void)setAvatarImage:(id)a3;
- (void)setCustomCornerRadius:(double)a3;
@end

@implementation CNKParticipantScreenShareInfoViewInternal

- (void)setCustomCornerRadius:(double)a3
{
  v4 = self;
  ParticipantScreenShareInfoView.customCornerRadius.setter(a3);
}

- (double)preferredHeight
{
  v2 = self;
  v3 = ParticipantScreenShareInfoView.preferredHeight.getter();

  return v3;
}

- (UIImage)avatarImage
{
  v2 = ParticipantScreenShareInfoView.avatarImage.getter();

  return v2;
}

- (void)setAvatarImage:(id)a3
{
  v5 = a3;
  v6 = self;
  ParticipantScreenShareInfoView.avatarImage.setter(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  ParticipantScreenShareInfoView.layoutSubviews()(&selRef_layoutSubviews);
}

- (void)configureWith:(id)a3 isFullScreenMode:(BOOL)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  ParticipantScreenShareInfoView.configure(with:isFullScreenMode:)(v10, a4);
}

@end