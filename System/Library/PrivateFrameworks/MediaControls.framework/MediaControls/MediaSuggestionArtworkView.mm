@interface MediaSuggestionArtworkView
- (_TtC13MediaControls26MediaSuggestionArtworkView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation MediaSuggestionArtworkView

- (_TtC13MediaControls26MediaSuggestionArtworkView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC13MediaControls26MediaSuggestionArtworkView_iconView;
  type metadata accessor for ArtworkView();
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13MediaControls26MediaSuggestionArtworkView_icon) = 0;
  result = sub_1A22E7028();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1A22CDA00();
}

@end