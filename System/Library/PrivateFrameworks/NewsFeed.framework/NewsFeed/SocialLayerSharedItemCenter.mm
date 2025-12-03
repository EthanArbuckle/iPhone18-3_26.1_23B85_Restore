@interface SocialLayerSharedItemCenter
- (_TtC8NewsFeed27SocialLayerSharedItemCenter)init;
- (void)highlightCenter:(id)center didRemoveHighlights:(id)highlights;
- (void)highlightCenterDidAddHighlights:(id)highlights;
@end

@implementation SocialLayerSharedItemCenter

- (_TtC8NewsFeed27SocialLayerSharedItemCenter)init
{
  ObjectType = swift_getObjectType();
  v4 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v4, v5);
  *&self->lazyHighlightCenter[OBJC_IVAR____TtC8NewsFeed27SocialLayerSharedItemCenter_delegate] = 0;
  swift_unknownObjectWeakInit();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D5B76508(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
  sub_1D5B765B4(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1D5B7667C();
  sub_1D7263B6C();
  sub_1D5B76704(0, &qword_1EDF3BA78, &unk_1EDF1AA20, 0x1E69D3818, MEMORY[0x1E69D6A80]);
  swift_allocObject();
  *(&self->super.isa + OBJC_IVAR____TtC8NewsFeed27SocialLayerSharedItemCenter_lazyHighlightCenter) = sub_1D725B7AC();
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(SocialLayerSharedItemCenter *)&v7 init];
}

- (void)highlightCenter:(id)center didRemoveHighlights:(id)highlights
{
  sub_1D5B5A498(0, &qword_1EDF3C798);
  v6 = sub_1D726267C();
  centerCopy = center;
  selfCopy = self;
  SocialLayerSharedItemCenter.highlightCenter(_:didRemove:)(centerCopy, v6);
}

- (void)highlightCenterDidAddHighlights:(id)highlights
{
  highlightsCopy = highlights;
  selfCopy = self;
  _s8NewsFeed27SocialLayerSharedItemCenterC09highlightG16DidAddHighlightsyySo011SLHighlightG0CF_0();
}

@end