@interface ArtworkControl
- (BOOL)isHighlighted;
- (_TtC13MediaControls14ArtworkControl)initWithCoder:(id)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)updateVisualStyling;
@end

@implementation ArtworkControl

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ArtworkControl();
  return [(ArtworkControl *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for ArtworkControl();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(ArtworkControl *)&v9 isHighlighted];
  v8.receiver = v6;
  v8.super_class = v5;
  [(ArtworkControl *)&v8 setHighlighted:v3];
  sub_1A22B5584(v7);
}

- (_TtC13MediaControls14ArtworkControl)initWithCoder:(id)a3
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
  v2 = self;
  sub_1A22B5A54();
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  sub_1A2115288(0, &qword_1EB088D28);
  v6 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC13MediaControls14ArtworkControl_artworkView);
  v7 = self;
  v8 = [(ArtworkControl *)v7 bounds];
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0xD0))(v8);
  v9 = sub_1A22E6AB8();

  return v9;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1A22B5E3C();

  return v9;
}

@end