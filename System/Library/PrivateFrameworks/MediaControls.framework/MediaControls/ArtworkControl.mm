@interface ArtworkControl
- (BOOL)isHighlighted;
- (_TtC13MediaControls14ArtworkControl)initWithCoder:(id)coder;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)updateVisualStyling;
@end

@implementation ArtworkControl

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ArtworkControl();
  return [(ArtworkControl *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5 = type metadata accessor for ArtworkControl();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isHighlighted = [(ArtworkControl *)&v9 isHighlighted];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(ArtworkControl *)&v8 setHighlighted:highlightedCopy];
  sub_1A22B5584(isHighlighted);
}

- (_TtC13MediaControls14ArtworkControl)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC13MediaControls14ArtworkControl_artworkView;
  type metadata accessor for ArtworkView();
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13MediaControls14ArtworkControl_visualStylingProvider) = 0;
  result = sub_1A22E7028();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ArtworkControl();
  v2 = v3.receiver;
  [(ArtworkControl *)&v3 layoutSubviews];
  [v2 bounds];
  [*&v2[OBJC_IVAR____TtC13MediaControls14ArtworkControl_artworkView] setFrame_];
}

- (void)updateVisualStyling
{
  selfCopy = self;
  sub_1A22B5A54();
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  sub_1A2115288(0, &qword_1EB088D28);
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13MediaControls14ArtworkControl_artworkView);
  selfCopy = self;
  bounds = [(ArtworkControl *)selfCopy bounds];
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0xD0))(bounds);
  v9 = sub_1A22E6AB8();

  return v9;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = sub_1A22B5E3C();

  return v9;
}

@end