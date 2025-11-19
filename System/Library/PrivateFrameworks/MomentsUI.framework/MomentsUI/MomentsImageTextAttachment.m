@interface MomentsImageTextAttachment
- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7;
- (_TtC9MomentsUI26MomentsImageTextAttachment)initWithCoder:(id)a3;
- (_TtC9MomentsUI26MomentsImageTextAttachment)initWithData:(id)a3 ofType:(id)a4;
- (id)viewProviderForParentView:(id)a3 location:(id)a4 textContainer:(id)a5;
@end

@implementation MomentsImageTextAttachment

- (_TtC9MomentsUI26MomentsImageTextAttachment)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_imageView) = 0;
  v3 = (&self->super.super.isa + OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_size);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC9MomentsUI26MomentsImageTextAttachment_viewProvider) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)viewProviderForParentView:(id)a3 location:(id)a4 textContainer:(id)a5
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = a5;
  v11 = self;
  v12 = MomentsImageTextAttachment.viewProvider(for:location:textContainer:)(a3, a4, a5);

  swift_unknownObjectRelease();

  return v12;
}

- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  height = a6.size.height;
  width = a6.size.width;
  v11 = a6.origin.y;
  v12 = a6.origin.x;
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v16 = a5;
  v17 = self;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v28.receiver = v17;
  v28.super_class = type metadata accessor for MomentsImageTextAttachment();
  [(MomentsImageTextAttachment *)&v28 attachmentBoundsForAttributes:isa location:a4 textContainer:v16 proposedLineFragment:v12 position:v11, width, height, x, y];
  v20 = v19;

  v21 = (*((*MEMORY[0x277D85000] & v17->super.super.isa) + 0x80))();
  v23 = v22;
  swift_unknownObjectRelease();

  v24 = round(v23 / -5.0);
  v25 = v20;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v24;
  result.origin.x = v25;
  return result;
}

- (_TtC9MomentsUI26MomentsImageTextAttachment)initWithData:(id)a3 ofType:(id)a4
{
  if (a3)
  {
    v4 = a3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    outlined consume of Data._Representation(v5, v6);
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end